; ModuleID = 'out.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Enter the value of a: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Enter the value of b: \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Enter the value of c: \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Enter the value of d: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Enter the value of e: \00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"The result  is: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #3
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %7 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %1)
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %9 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %2)
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %11 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %3)
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  %13 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %4)
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5)
  %15 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %5)
  %16 = load i8, ptr %1, align 1, !tbaa !5
  %17 = load i8, ptr %2, align 1, !tbaa !5
  %18 = and i8 %17, %16
  %19 = mul i8 2, %18
  %20 = xor i8 %17, %16
  %21 = add i8 %20, %19
  %22 = mul i8 39, %21
  %23 = add i8 23, %22
  %24 = mul i8 -105, %23
  %25 = add i8 111, %24
  %26 = sext i8 %25 to i32
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %26)
  %28 = load i8, ptr %3, align 1, !tbaa !5
  %29 = and i8 %28, %25
  %30 = mul i8 2, %29
  %31 = xor i8 %28, %25
  %32 = add i8 %31, %30
  %33 = mul i8 39, %32
  %34 = add i8 23, %33
  %35 = mul i8 -105, %34
  %36 = add i8 111, %35
  %37 = sext i8 %36 to i32
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %37)
  %39 = load i8, ptr %4, align 1, !tbaa !5
  %40 = and i8 %39, %36
  %41 = mul i8 2, %40
  %42 = xor i8 %39, %36
  %43 = add i8 %42, %41
  %44 = mul i8 39, %43
  %45 = add i8 23, %44
  %46 = mul i8 -105, %45
  %47 = add i8 111, %46
  %48 = sext i8 %47 to i32
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %48)
  %50 = load i8, ptr %5, align 1, !tbaa !5
  %51 = and i8 %50, %47
  %52 = mul i8 2, %51
  %53 = xor i8 %50, %47
  %54 = add i8 %53, %52
  %55 = mul i8 39, %54
  %56 = add i8 23, %55
  %57 = mul i8 -105, %56
  %58 = add i8 111, %57
  %59 = sext i8 %58 to i32
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %59)
  %61 = load i8, ptr %5, align 1, !tbaa !5
  %62 = and i8 %61, %58
  %63 = mul i8 2, %62
  %64 = xor i8 %61, %58
  %65 = add i8 %64, %63
  %66 = mul i8 39, %65
  %67 = add i8 23, %66
  %68 = mul i8 -105, %67
  %69 = add i8 111, %68
  %70 = sext i8 %69 to i32
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %70)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
