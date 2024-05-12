; ModuleID = 'optimized-instrumented.cc'
source_filename = "optimized-instrumented.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL5no_op = internal unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4testii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !8 {
  %3 = load i64, i64* @_ZL5no_op, align 8, !dbg !11, !tbaa !14
  %4 = icmp eq i32 %0, 0, !dbg !18
  %5 = zext i1 %4 to i32, !dbg !18
  %6 = icmp eq i32 %5, %0, !dbg !18
  %7 = select i1 %6, i64 2, i64 3, !dbg !18
  %8 = add i64 %3, %7, !dbg !18
  %9 = select i1 %4, i64 1, i64 3, !dbg !21
  %10 = add i64 %8, %9, !dbg !21
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !22, !tbaa !14
  %11 = icmp eq i32 %0, 1, !dbg !23
  br i1 %11, label %15, label %12, !dbg !23

12:                                               ; preds = %2
  %13 = add i64 %10, 1, !dbg !23
  store i64 %13, i64* @_ZL5no_op, align 8, !dbg !23, !tbaa !14
  %14 = icmp eq i32 %0, -1, !dbg !24
  br i1 %14, label %18, label %15, !dbg !24

15:                                               ; preds = %12, %2
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !24, !tbaa !14
  %17 = add i64 %16, 1, !dbg !24
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !24, !tbaa !14
  br label %18, !dbg !24

18:                                               ; preds = %12, %15
  %19 = load i64, i64* @_ZL5no_op, align 8, !dbg !25, !tbaa !14
  %20 = icmp eq i32 %1, 0, !dbg !27
  %21 = zext i1 %20 to i32, !dbg !27
  %22 = icmp eq i32 %21, %1, !dbg !27
  %23 = select i1 %22, i64 2, i64 3, !dbg !27
  %24 = add i64 %19, %23, !dbg !27
  %25 = select i1 %20, i64 1, i64 3, !dbg !29
  %26 = add i64 %24, %25, !dbg !29
  store i64 %26, i64* @_ZL5no_op, align 8, !dbg !30, !tbaa !14
  %27 = icmp eq i32 %1, 1, !dbg !31
  br i1 %27, label %31, label %28, !dbg !31

28:                                               ; preds = %18
  %29 = add i64 %26, 1, !dbg !31
  store i64 %29, i64* @_ZL5no_op, align 8, !dbg !31, !tbaa !14
  %30 = icmp eq i32 %1, -1, !dbg !32
  br i1 %30, label %34, label %31, !dbg !32

31:                                               ; preds = %28, %18
  %32 = load i64, i64* @_ZL5no_op, align 8, !dbg !32, !tbaa !14
  %33 = add i64 %32, 1, !dbg !32
  store i64 %33, i64* @_ZL5no_op, align 8, !dbg !32, !tbaa !14
  br label %34, !dbg !32

34:                                               ; preds = %28, %31
  %35 = add nsw i32 %1, %0, !dbg !33
  br i1 %20, label %42, label %36, !dbg !36

36:                                               ; preds = %34
  %37 = sdiv i32 %0, %1, !dbg !36
  %38 = icmp eq i32 %37, %35, !dbg !36
  br i1 %38, label %42, label %39, !dbg !36

39:                                               ; preds = %36
  %40 = load i64, i64* @_ZL5no_op, align 8, !dbg !36, !tbaa !14
  %41 = add i64 %40, 1, !dbg !36
  store i64 %41, i64* @_ZL5no_op, align 8, !dbg !36, !tbaa !14
  br label %42, !dbg !36

42:                                               ; preds = %39, %36, %34
  %43 = mul nsw i32 %1, %0, !dbg !37
  %44 = icmp eq i32 %43, %35, !dbg !37
  br i1 %44, label %48, label %45, !dbg !37

45:                                               ; preds = %42
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !37, !tbaa !14
  %47 = add i64 %46, 1, !dbg !37
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !37, !tbaa !14
  br label %48, !dbg !37

48:                                               ; preds = %45, %42
  br i1 %20, label %55, label %49, !dbg !38

49:                                               ; preds = %48
  %50 = srem i32 %0, %1, !dbg !38
  %51 = icmp eq i32 %50, %35, !dbg !38
  br i1 %51, label %55, label %52, !dbg !38

52:                                               ; preds = %49
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !38, !tbaa !14
  %54 = add i64 %53, 1, !dbg !38
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !38, !tbaa !14
  br label %55, !dbg !38

55:                                               ; preds = %52, %49, %48
  %56 = sub nsw i32 %0, %1, !dbg !39
  %57 = icmp eq i32 %56, %35, !dbg !39
  br i1 %57, label %61, label %58, !dbg !39

58:                                               ; preds = %55
  %59 = load i64, i64* @_ZL5no_op, align 8, !dbg !39, !tbaa !14
  %60 = add i64 %59, 1, !dbg !39
  store i64 %60, i64* @_ZL5no_op, align 8, !dbg !39, !tbaa !14
  br label %61, !dbg !39

61:                                               ; preds = %58, %55
  br i1 %20, label %65, label %62, !dbg !40

62:                                               ; preds = %61
  %63 = load i64, i64* @_ZL5no_op, align 8, !dbg !40, !tbaa !14
  %64 = add i64 %63, 1, !dbg !40
  store i64 %64, i64* @_ZL5no_op, align 8, !dbg !40, !tbaa !14
  br label %65, !dbg !40

65:                                               ; preds = %62, %61
  br i1 %4, label %69, label %66, !dbg !41

66:                                               ; preds = %65
  %67 = load i64, i64* @_ZL5no_op, align 8, !dbg !41, !tbaa !14
  %68 = add i64 %67, 1, !dbg !41
  store i64 %68, i64* @_ZL5no_op, align 8, !dbg !41, !tbaa !14
  br label %69, !dbg !41

69:                                               ; preds = %65, %66
  %70 = icmp eq i32 %35, 0, !dbg !42
  %71 = zext i1 %70 to i32, !dbg !42
  %72 = icmp eq i32 %35, %71, !dbg !42
  br i1 %72, label %76, label %73, !dbg !42

73:                                               ; preds = %69
  %74 = load i64, i64* @_ZL5no_op, align 8, !dbg !42, !tbaa !14
  %75 = add i64 %74, 1, !dbg !42
  store i64 %75, i64* @_ZL5no_op, align 8, !dbg !42, !tbaa !14
  br label %76, !dbg !42

76:                                               ; preds = %73, %69
  %77 = load i64, i64* @_ZL5no_op, align 8, !dbg !44, !tbaa !14
  %78 = select i1 %70, i64 1, i64 3, !dbg !45
  %79 = add i64 %77, %78, !dbg !45
  store i64 %79, i64* @_ZL5no_op, align 8, !dbg !46, !tbaa !14
  %80 = icmp eq i32 %35, 1, !dbg !47
  br i1 %80, label %84, label %81, !dbg !47

81:                                               ; preds = %76
  %82 = add i64 %79, 1, !dbg !47
  store i64 %82, i64* @_ZL5no_op, align 8, !dbg !47, !tbaa !14
  %83 = icmp eq i32 %35, -1, !dbg !48
  br i1 %83, label %87, label %84, !dbg !48

84:                                               ; preds = %81, %76
  %85 = load i64, i64* @_ZL5no_op, align 8, !dbg !48, !tbaa !14
  %86 = add i64 %85, 1, !dbg !48
  store i64 %86, i64* @_ZL5no_op, align 8, !dbg !48, !tbaa !14
  br label %87, !dbg !48

87:                                               ; preds = %81, %84
  ret i32 %35, !dbg !49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 !dbg !50 {
  %1 = load i64, i64* @_ZL5no_op, align 8, !dbg !51, !tbaa !14
  %2 = add i64 %1, 16, !dbg !54
  store i64 %2, i64* @_ZL5no_op, align 8, !dbg !54, !tbaa !14
  %3 = call noundef i32 @_Z4testii(i32 noundef 0, i32 noundef 0), !dbg !56
  ret i32 0, !dbg !57
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
!18 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !20)
!19 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 78, type: !9, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!20 = distinct !DILocation(line: 101, column: 89, scope: !8)
!21 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !20)
!22 = !DILocation(line: 0, scope: !19, inlinedAt: !20)
!23 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !20)
!24 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !20)
!25 = !DILocation(line: 73, column: 3, scope: !12, inlinedAt: !26)
!26 = distinct !DILocation(line: 101, column: 183, scope: !8)
!27 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !28)
!28 = distinct !DILocation(line: 101, column: 158, scope: !8)
!29 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !28)
!30 = !DILocation(line: 0, scope: !19, inlinedAt: !28)
!31 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !28)
!32 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !28)
!33 = !DILocation(line: 90, column: 3, scope: !34, inlinedAt: !35)
!34 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 89, type: !9, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!35 = distinct !DILocation(line: 101, column: 35, scope: !8)
!36 = !DILocation(line: 91, column: 3, scope: !34, inlinedAt: !35)
!37 = !DILocation(line: 92, column: 3, scope: !34, inlinedAt: !35)
!38 = !DILocation(line: 93, column: 3, scope: !34, inlinedAt: !35)
!39 = !DILocation(line: 94, column: 3, scope: !34, inlinedAt: !35)
!40 = !DILocation(line: 95, column: 3, scope: !34, inlinedAt: !35)
!41 = !DILocation(line: 96, column: 3, scope: !34, inlinedAt: !35)
!42 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !43)
!43 = distinct !DILocation(line: 101, column: 10, scope: !8)
!44 = !DILocation(line: 81, column: 3, scope: !19, inlinedAt: !43)
!45 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !43)
!46 = !DILocation(line: 0, scope: !19, inlinedAt: !43)
!47 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !43)
!48 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !43)
!49 = !DILocation(line: 101, column: 3, scope: !8)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 104, type: !9, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!51 = !DILocation(line: 66, column: 3, scope: !52, inlinedAt: !53)
!52 = distinct !DISubprogram(name: "__dredd_replace_expr_int_zero", scope: !1, file: !1, line: 64, type: !9, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!53 = distinct !DILocation(line: 105, column: 11, scope: !50)
!54 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !55)
!55 = distinct !DILocation(line: 107, column: 78, scope: !50)
!56 = !DILocation(line: 107, column: 3, scope: !50)
!57 = !DILocation(line: 108, column: 1, scope: !50)
