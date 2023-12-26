
//    equality:
//      a - b == (a + ~b) + 1



#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include <random>
#include <iostream>
using namespace llvm;


#define DEBUG_TYPE "mba-sub"
STATISTIC(SubstCount, "The # of substituted instructions");//在 LLVM 中，STATISTIC 宏用于定义一种称为“统计量”（Statistic）的调试信息

//本来是head
struct MBASub : public llvm::PassInfoMixin<MBASub> {
  llvm::PreservedAnalyses run(llvm::Function &F,
                              llvm::FunctionAnalysisManager &);
  bool runOnBasicBlock(llvm::BasicBlock &B);

  
  static bool isRequired() { return true; }//1
};
//-----------------------------------------------------------------------------
// MBASub 实现
//-----------------------------------------------------------------------------
bool MBASub::runOnBasicBlock(BasicBlock &BB) {
  bool Changed = false;
//在 LLVM 中，BasicBlock（基本块）是一个基本的控制流单元，它包含一系列按照程序的控制流路径顺序排列的指令。因此，在 LLVM 中，将基本块中的指令作为迭代器的元素是很自然的选择，因为基本块实际上就是一个指令序列
  //循环块中的所有指令。 替换指令需要迭代器
  for (auto Inst = BB.begin(), IE = BB.end(); Inst != IE; ++Inst) {//初始化了一个名为 Inst 的迭代器,指向基本块（BB）中的指令的起始位置
  //IE = BB.end(): 这里初始化了另一个名为 IE 的迭代器，指向基本块中指令的结束位置

    // 跳过非二元指令
    auto *BinOp = dyn_cast<BinaryOperator>(Inst);//在LLVM中，BinaryOperator 是表示二元操作符的一种特殊指令类型。它用于表示诸如加法、减法、乘法等二元操作的指令。BinaryOperator 继承自 Instruction 类，因此它是指令的一种
    if (!BinOp)
      continue;

    /// 跳过不是减法,或者不是整数的指令
    unsigned Opcode = BinOp->getOpcode();
    if (Opcode != Instruction::Sub || !BinOp->getType()->isIntegerTy())
      continue;

    
    IRBuilder<> Builder(BinOp);//创建了一个 IRBuilder 对象,插入新的指令、操作数等到当前基本块所需的

    // Create an instruction representing (a + ~b) + 1
    Instruction *NewValue = BinaryOperator::CreateAdd(
        Builder.CreateAdd(BinOp->getOperand(0),
                          Builder.CreateNot(BinOp->getOperand(1))),
        ConstantInt::get(BinOp->getType(), 1));

    // Replace `(a - b)` (original instructions) with `(a + ~b) + 1`
    // 替换!
    ReplaceInstWithInst(&BB, Inst, NewValue);
    Changed = true;

    // 更新统计量
    ++SubstCount;
  }
  return Changed;
}
//
PreservedAnalyses MBASub::run(llvm::Function &F,
                              llvm::FunctionAnalysisManager &) {//ModulePass 需要这里是 llvm::Module 和 ModuleAnalysisManager，FunctionPass 需要这里是 Function 和 FunctionAnalysisManager
  bool Changed = false;
std::cout << "HAHAHAHAHAHAHAHAHA MyPass Loaded" << std::endl;
  for (auto &BB : F) {
    Changed |= runOnBasicBlock(BB);
  }
  return (Changed ? llvm::PreservedAnalyses::none()
                  : llvm::PreservedAnalyses::all());//作用
}

//-----------------------------------------------------------------------------
// New PM Registration 写pass套这个就行 
//-----------------------------------------------------------------------------
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "mba-sub", LLVM_VERSION_STRING,//llvm版本号环境取值,第二个是插件名字,第三个是插件版本号都是随便传
          [](PassBuilder &PB) {   //第四个参数比较重要,回调函数传递PassBuilder &PB对象
            PB.registerPipelineParsingCallback(   
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "mba-sub") {
                    FPM.addPass(MBASub());
                    return true;
                  }
                  return false;
                });
          }};
}


