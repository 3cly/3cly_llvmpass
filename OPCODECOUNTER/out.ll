; ModuleID = 'input.c'
source_filename = "input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Binnode = type { i8, ptr, ptr }

@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [16 x i8] c"take one tree!:\00", align 1
@str.7 = private unnamed_addr constant [16 x i8] c"Tree Create OK!\00", align 1
@str.8 = private unnamed_addr constant [6 x i8] c"fffff\00", align 1
@str.9 = private unnamed_addr constant [7 x i8] c"\0Azzzzz\00", align 1
@str.10 = private unnamed_addr constant [8 x i8] c"\0Ahhhhhh\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @Create_Bintree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi ptr [ %0, %1 ], [ %14, %9 ]
  %4 = load ptr, ptr @stdin, align 8, !tbaa !5
  %5 = tail call i32 @getc(ptr noundef %4)
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !5
  ret void

9:                                                ; preds = %2
  %10 = trunc i32 %5 to i8
  %11 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #5
  store ptr %11, ptr %3, align 8, !tbaa !5
  store i8 %10, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.Binnode, ptr %11, i64 0, i32 1
  tail call void @Create_Bintree(ptr noundef nonnull %12)
  %13 = load ptr, ptr %3, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.Binnode, ptr %13, i64 0, i32 2
  br label %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @Preorder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 8, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = tail call i32 @putchar(i32 %8)
  %10 = load ptr, ptr %3, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.Binnode, ptr %10, i64 0, i32 1
  tail call void @Preorder(ptr noundef nonnull %11)
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.Binnode, ptr %12, i64 0, i32 2
  br label %2

14:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @Inorder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Binnode, ptr %4, i64 0, i32 1
  tail call void @Inorder(ptr noundef nonnull %7)
  %8 = load ptr, ptr %3, align 8, !tbaa !5
  %9 = load i8, ptr %8, align 8, !tbaa !9
  %10 = sext i8 %9 to i32
  %11 = tail call i32 @putchar(i32 %10)
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.Binnode, ptr %12, i64 0, i32 2
  br label %2

14:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @Posorder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1, %5
  ret void

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Binnode, ptr %2, i64 0, i32 1
  tail call void @Posorder(ptr noundef nonnull %6)
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.Binnode, ptr %7, i64 0, i32 2
  tail call void @Posorder(ptr noundef nonnull %8)
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = load i8, ptr %9, align 8, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = tail call i32 @putchar(i32 %11)
  br label %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @main() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @Create_Bintree(ptr noundef nonnull %1)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  call void @Preorder(ptr noundef nonnull %1)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  call void @Inorder(ptr noundef nonnull %1)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  call void @Posorder(ptr noundef nonnull %1)
  %7 = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !7, i64 0}
!10 = !{!"Binnode", !7, i64 0, !6, i64 8, !6, i64 16}
