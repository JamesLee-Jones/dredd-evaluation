; ModuleID = 'unoptimized.cc'
source_filename = "unoptimized.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @_Z4testii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store volatile i32 %0, i32* %3, align 4, !tbaa !11
  store volatile i32 %1, i32* %4, align 4, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !15, !tbaa !11
  %6 = load volatile i32, i32* %4, align 4, !dbg !16, !tbaa !11
  %7 = add nsw i32 %6, %5, !dbg !17
  ret i32 %7, !dbg !18
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3)
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4)
  store volatile i32 0, i32* %1, align 4, !tbaa !11
  store volatile i32 0, i32* %2, align 4, !tbaa !11
  %5 = load volatile i32, i32* %1, align 4, !dbg !20, !tbaa !11
  %6 = load volatile i32, i32* %2, align 4, !dbg !22, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "unoptimized.cc", directory: "/home/jlj/dev/dredd-evalutation/Experiments/basic-blocks-and-control-flow")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!8 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!9 = !DISubroutineType(types: !10)
!10 = !{}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C++ TBAA"}
!15 = !DILocation(line: 2, column: 10, scope: !8)
!16 = !DILocation(line: 2, column: 14, scope: !8)
!17 = !DILocation(line: 2, column: 12, scope: !8)
!18 = !DILocation(line: 2, column: 3, scope: !8)
!19 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !9, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!20 = !DILocation(line: 2, column: 10, scope: !8, inlinedAt: !21)
!21 = distinct !DILocation(line: 8, column: 3, scope: !19)
!22 = !DILocation(line: 2, column: 14, scope: !8, inlinedAt: !21)
!23 = !DILocation(line: 2, column: 3, scope: !8, inlinedAt: !21)
!24 = !DILocation(line: 9, column: 1, scope: !19)
