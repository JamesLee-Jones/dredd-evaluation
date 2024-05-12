; ModuleID = 'optimized-instrumented.cc'
source_filename = "optimized-instrumented.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL5no_op = internal unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4testii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !8 {
  %3 = load i64, i64* @_ZL5no_op, align 8, !dbg !11, !tbaa !14
  %4 = add i64 %3, 2, !dbg !18
  %5 = icmp eq i32 %0, 0, !dbg !19
  %6 = zext i1 %5 to i32, !dbg !19
  %7 = icmp ne i32 %6, %0, !dbg !19
  %8 = zext i1 %7 to i64, !dbg !19
  %9 = add i64 %4, %8, !dbg !19
  br i1 %5, label %10, label %12, !dbg !22

10:                                               ; preds = %2
  %11 = add i64 %9, 2, !dbg !23
  br label %18, !dbg !24

12:                                               ; preds = %2
  %13 = add i64 %9, 3, !dbg !25
  %14 = icmp eq i32 %0, 1, !dbg !23
  br i1 %14, label %18, label %15, !dbg !23

15:                                               ; preds = %12
  %16 = add i64 %9, 4, !dbg !23
  %17 = icmp eq i32 %0, -1, !dbg !24
  br i1 %17, label %21, label %18, !dbg !24

18:                                               ; preds = %15, %12, %10
  %19 = phi i64 [ %11, %10 ], [ %13, %12 ], [ %16, %15 ], !dbg !24
  %20 = add i64 %19, 1, !dbg !24
  br label %21, !dbg !24

21:                                               ; preds = %15, %18
  %22 = phi i64 [ %20, %18 ], [ %16, %15 ], !dbg !26
  %23 = add i64 %22, 2, !dbg !27
  %24 = icmp eq i32 %1, 0, !dbg !29
  %25 = zext i1 %24 to i32, !dbg !29
  %26 = icmp ne i32 %25, %1, !dbg !29
  %27 = zext i1 %26 to i64, !dbg !29
  %28 = add i64 %23, %27, !dbg !29
  %29 = add i64 %28, 3, !dbg !31
  br i1 %24, label %45, label %30, !dbg !32

30:                                               ; preds = %21
  %31 = icmp eq i32 %1, 1, !dbg !33
  br i1 %31, label %35, label %32, !dbg !33

32:                                               ; preds = %30
  %33 = add i64 %28, 4, !dbg !33
  %34 = icmp eq i32 %1, -1, !dbg !34
  br i1 %34, label %38, label %35, !dbg !34

35:                                               ; preds = %30, %32
  %36 = phi i64 [ %33, %32 ], [ %29, %30 ]
  %37 = add i64 %36, 1, !dbg !34
  br label %38, !dbg !35

38:                                               ; preds = %32, %35
  %39 = phi i64 [ %37, %35 ], [ %33, %32 ]
  %40 = add nsw i32 %1, %0, !dbg !38
  %41 = sdiv i32 %0, %1, !dbg !35
  %42 = icmp ne i32 %41, %40, !dbg !35
  %43 = zext i1 %42 to i64, !dbg !35
  %44 = add i64 %39, %43, !dbg !35
  br label %45, !dbg !35

45:                                               ; preds = %38, %21
  %46 = phi i64 [ %29, %21 ], [ %44, %38 ]
  %47 = phi i32 [ %0, %21 ], [ %40, %38 ]
  %48 = mul nsw i32 %1, %0, !dbg !39
  %49 = icmp ne i32 %48, %47, !dbg !39
  %50 = zext i1 %49 to i64, !dbg !39
  %51 = add i64 %46, %50, !dbg !39
  br i1 %24, label %57, label %52, !dbg !40

52:                                               ; preds = %45
  %53 = srem i32 %0, %1, !dbg !40
  %54 = icmp ne i32 %53, %47, !dbg !40
  %55 = zext i1 %54 to i64, !dbg !40
  %56 = add i64 %51, %55, !dbg !40
  br label %57, !dbg !40

57:                                               ; preds = %52, %45
  %58 = phi i64 [ %51, %45 ], [ %56, %52 ]
  %59 = sub nsw i32 %0, %1, !dbg !41
  %60 = icmp ne i32 %59, %47, !dbg !41
  %61 = zext i1 %60 to i64, !dbg !41
  %62 = add i64 %58, %61, !dbg !41
  %63 = xor i1 %24, true, !dbg !42
  %64 = zext i1 %63 to i64, !dbg !42
  %65 = add i64 %62, %64, !dbg !42
  %66 = xor i1 %5, true, !dbg !43
  %67 = zext i1 %66 to i64, !dbg !43
  %68 = add i64 %65, %67, !dbg !43
  %69 = icmp eq i32 %47, 0, !dbg !44
  %70 = zext i1 %69 to i32, !dbg !44
  %71 = icmp ne i32 %47, %70, !dbg !44
  %72 = zext i1 %71 to i64, !dbg !44
  %73 = add i64 %68, %72, !dbg !44
  br i1 %69, label %74, label %76, !dbg !46

74:                                               ; preds = %57
  %75 = add i64 %73, 2, !dbg !47
  br label %82, !dbg !48

76:                                               ; preds = %57
  %77 = add i64 %73, 3, !dbg !49
  %78 = icmp eq i32 %47, 1, !dbg !47
  br i1 %78, label %82, label %79, !dbg !47

79:                                               ; preds = %76
  %80 = add i64 %73, 4, !dbg !47
  %81 = icmp eq i32 %47, -1, !dbg !48
  br i1 %81, label %85, label %82, !dbg !48

82:                                               ; preds = %79, %76, %74
  %83 = phi i64 [ %75, %74 ], [ %77, %76 ], [ %80, %79 ], !dbg !48
  %84 = add i64 %83, 1, !dbg !48
  br label %85, !dbg !48

85:                                               ; preds = %79, %82
  %86 = phi i64 [ %84, %82 ], [ %80, %79 ], !dbg !50
  store i64 %86, i64* @_ZL5no_op, align 8, !dbg !50, !tbaa !14
  ret i32 %47, !dbg !51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 !dbg !52 {
  %1 = load i64, i64* @_ZL5no_op, align 8, !dbg !53, !tbaa !14
  %2 = add i64 %1, 16, !dbg !56
  store i64 %2, i64* @_ZL5no_op, align 8, !dbg !58, !tbaa !14
  %3 = tail call noundef i32 @_Z4testii(i32 noundef 0, i32 noundef 0), !dbg !59
  ret i32 0, !dbg !60
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "optimized-instrumented.cc", directory: "/home/jlj/dev/dredd-evalutation/Experiments/basic-blocks-and-control-flow")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!8 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 100, type: !9, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!9 = !DISubroutineType(types: !10)
!10 = !{}
!11 = !DILocation(line: 73, column: 3, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "__dredd_replace_expr_int_lvalue", scope: !1, file: !1, line: 71, type: !9, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!13 = distinct !DILocation(line: 101, column: 114, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C++ TBAA"}
!18 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !13)
!19 = !DILocation(line: 80, column: 3, scope: !20, inlinedAt: !21)
!20 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 78, type: !9, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!21 = distinct !DILocation(line: 101, column: 89, scope: !8)
!22 = !DILocation(line: 82, column: 3, scope: !20, inlinedAt: !21)
!23 = !DILocation(line: 84, column: 3, scope: !20, inlinedAt: !21)
!24 = !DILocation(line: 85, column: 3, scope: !20, inlinedAt: !21)
!25 = !DILocation(line: 83, column: 3, scope: !20, inlinedAt: !21)
!26 = !DILocation(line: 0, scope: !20, inlinedAt: !21)
!27 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !28)
!28 = distinct !DILocation(line: 101, column: 183, scope: !8)
!29 = !DILocation(line: 80, column: 3, scope: !20, inlinedAt: !30)
!30 = distinct !DILocation(line: 101, column: 158, scope: !8)
!31 = !DILocation(line: 0, scope: !20, inlinedAt: !30)
!32 = !DILocation(line: 82, column: 3, scope: !20, inlinedAt: !30)
!33 = !DILocation(line: 84, column: 3, scope: !20, inlinedAt: !30)
!34 = !DILocation(line: 85, column: 3, scope: !20, inlinedAt: !30)
!35 = !DILocation(line: 91, column: 3, scope: !36, inlinedAt: !37)
!36 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 89, type: !9, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!37 = distinct !DILocation(line: 101, column: 35, scope: !8)
!38 = !DILocation(line: 90, column: 3, scope: !36, inlinedAt: !37)
!39 = !DILocation(line: 92, column: 3, scope: !36, inlinedAt: !37)
!40 = !DILocation(line: 93, column: 3, scope: !36, inlinedAt: !37)
!41 = !DILocation(line: 94, column: 3, scope: !36, inlinedAt: !37)
!42 = !DILocation(line: 95, column: 3, scope: !36, inlinedAt: !37)
!43 = !DILocation(line: 96, column: 3, scope: !36, inlinedAt: !37)
!44 = !DILocation(line: 80, column: 3, scope: !20, inlinedAt: !45)
!45 = distinct !DILocation(line: 101, column: 10, scope: !8)
!46 = !DILocation(line: 82, column: 3, scope: !20, inlinedAt: !45)
!47 = !DILocation(line: 84, column: 3, scope: !20, inlinedAt: !45)
!48 = !DILocation(line: 85, column: 3, scope: !20, inlinedAt: !45)
!49 = !DILocation(line: 83, column: 3, scope: !20, inlinedAt: !45)
!50 = !DILocation(line: 0, scope: !20, inlinedAt: !45)
!51 = !DILocation(line: 101, column: 3, scope: !8)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 104, type: !9, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!53 = !DILocation(line: 66, column: 3, scope: !54, inlinedAt: !55)
!54 = distinct !DISubprogram(name: "__dredd_replace_expr_int_zero", scope: !1, file: !1, line: 64, type: !9, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!55 = distinct !DILocation(line: 105, column: 11, scope: !52)
!56 = !DILocation(line: 85, column: 3, scope: !20, inlinedAt: !57)
!57 = distinct !DILocation(line: 107, column: 78, scope: !52)
!58 = !DILocation(line: 0, scope: !20, inlinedAt: !57)
!59 = !DILocation(line: 107, column: 3, scope: !52)
!60 = !DILocation(line: 108, column: 1, scope: !52)
