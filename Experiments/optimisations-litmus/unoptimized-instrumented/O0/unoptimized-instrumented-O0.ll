; ModuleID = 'unoptimized-instrumented.cc'
source_filename = "unoptimized-instrumented.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", i32 (%"union.std::_Any_data"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon = type { i32*, i32* }
%"struct.std::_Maybe_unary_or_binary_function" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"struct.std::__invoke_other" = type { i8 }
%class.anon.0 = type { i32* }
%class.anon.1 = type { i32* }
%class.anon.2 = type { i32* }
%class.anon.3 = type { i32* }

$_ZNSt8functionIFivEED2Ev = comdat any

$_ZNKSt8functionIFivEEclEv = comdat any

$_ZNKSt14_Function_base8_M_emptyEv = comdat any

$_ZNSt14_Function_baseD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt14_Function_baseC2Ev = comdat any

$_ZNSt9_Any_data9_M_accessEv = comdat any

$_ZNKSt9_Any_data9_M_accessEv = comdat any

$_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v = comdat any

@_ZL5no_op = internal global i64 0, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@"_ZTSZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_" = internal constant [40 x i8] c"ZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_\00", align 1
@"_ZTIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"_ZTSZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_", i32 0, i32 0) }, align 8
@"_ZTSZZ4testiiENK3$_0clEvEUlvE_" = internal constant [27 x i8] c"ZZ4testiiENK3$_0clEvEUlvE_\00", align 1
@"_ZTIZZ4testiiENK3$_0clEvEUlvE_" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"_ZTSZZ4testiiENK3$_0clEvEUlvE_", i32 0, i32 0) }, align 8
@"_ZTSZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_" = internal constant [41 x i8] c"ZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_\00", align 1
@"_ZTIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"_ZTSZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_", i32 0, i32 0) }, align 8
@"_ZTSZZ4testiiENK3$_0clEvEUlvE0_" = internal constant [28 x i8] c"ZZ4testiiENK3$_0clEvEUlvE0_\00", align 1
@"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"_ZTSZZ4testiiENK3$_0clEvEUlvE0_", i32 0, i32 0) }, align 8
@"_ZTSZ4testiiE3$_0" = internal constant [14 x i8] c"Z4testiiE3$_0\00", align 1
@"_ZTIZ4testiiE3$_0" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"_ZTSZ4testiiE3$_0", i32 0, i32 0) }, align 8

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4testii(i32 noundef %0, i32 noundef %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !9 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::function", align 8
  %8 = alloca %class.anon, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store volatile i32 %0, i32* %5, align 4
  store volatile i32 %1, i32* %6, align 4
  %11 = getelementptr inbounds %class.anon, %class.anon* %8, i32 0, i32 0, !dbg !12
  store i32* %5, i32** %11, align 8, !dbg !12
  %12 = getelementptr inbounds %class.anon, %class.anon* %8, i32 0, i32 1, !dbg !12
  store i32* %6, i32** %12, align 8, !dbg !12
  call void @"_ZNSt8functionIFivEEC2IZ4testiiE3$_0vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7, %class.anon* noundef nonnull align 8 dereferenceable(16) %8) #8, !dbg !12
  store i32 22, i32* %3, align 4
  %13 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %14 unwind label %64, !dbg !13

14:                                               ; preds = %2
  store i32 %13, i32* %4, align 4, !dbg !13
  %15 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %16 unwind label %64, !dbg !16

16:                                               ; preds = %14
  %17 = icmp ne i32 %15, 0, !dbg !16
  %18 = xor i1 %17, true, !dbg !16
  %19 = zext i1 %18 to i32, !dbg !16
  %20 = load i32, i32* %4, align 4, !dbg !16
  %21 = icmp ne i32 %19, %20, !dbg !16
  br i1 %21, label %22, label %25, !dbg !16

22:                                               ; preds = %16
  %23 = load i64, i64* @_ZL5no_op, align 8, !dbg !16
  %24 = add i64 %23, 1, !dbg !16
  store i64 %24, i64* @_ZL5no_op, align 8, !dbg !16
  br label %25, !dbg !16

25:                                               ; preds = %22, %16
  %26 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %27 unwind label %64, !dbg !17

27:                                               ; preds = %25
  %28 = xor i32 %26, -1, !dbg !17
  %29 = load i32, i32* %4, align 4, !dbg !17
  %30 = icmp ne i32 %28, %29, !dbg !17
  br i1 %30, label %31, label %34, !dbg !17

31:                                               ; preds = %27
  %32 = load i64, i64* @_ZL5no_op, align 8, !dbg !17
  %33 = add i64 %32, 1, !dbg !17
  store i64 %33, i64* @_ZL5no_op, align 8, !dbg !17
  br label %34, !dbg !17

34:                                               ; preds = %31, %27
  %35 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %36 unwind label %64, !dbg !18

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %35, !dbg !18
  %38 = load i32, i32* %4, align 4, !dbg !18
  %39 = icmp ne i32 %37, %38, !dbg !18
  br i1 %39, label %40, label %43, !dbg !18

40:                                               ; preds = %36
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !18
  %42 = add i64 %41, 1, !dbg !18
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !18
  br label %43, !dbg !18

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %4, align 4, !dbg !19
  %45 = icmp ne i32 0, %44, !dbg !19
  br i1 %45, label %46, label %49, !dbg !19

46:                                               ; preds = %43
  %47 = load i64, i64* @_ZL5no_op, align 8, !dbg !19
  %48 = add i64 %47, 1, !dbg !19
  store i64 %48, i64* @_ZL5no_op, align 8, !dbg !19
  br label %49, !dbg !19

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %4, align 4, !dbg !20
  %51 = icmp ne i32 1, %50, !dbg !20
  br i1 %51, label %52, label %55, !dbg !20

52:                                               ; preds = %49
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !20
  %54 = add i64 %53, 1, !dbg !20
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !20
  br label %55, !dbg !20

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %4, align 4, !dbg !21
  %57 = icmp ne i32 -1, %56, !dbg !21
  br i1 %57, label %58, label %61, !dbg !21

58:                                               ; preds = %55
  %59 = load i64, i64* @_ZL5no_op, align 8, !dbg !21
  %60 = add i64 %59, 1, !dbg !21
  store i64 %60, i64* @_ZL5no_op, align 8, !dbg !21
  br label %61, !dbg !21

61:                                               ; preds = %55, %58
  %62 = load i32, i32* %4, align 4, !dbg !22
  br label %63, !dbg !23

63:                                               ; preds = %61
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7) #8, !dbg !24
  ret i32 %62, !dbg !24

64:                                               ; preds = %34, %25, %14, %2
  %65 = landingpad { i8*, i32 }
          cleanup, !dbg !25
  %66 = extractvalue { i8*, i32 } %65, 0, !dbg !25
  store i8* %66, i8** %9, align 8, !dbg !25
  %67 = extractvalue { i8*, i32 } %65, 1, !dbg !25
  store i32 %67, i32* %10, align 4, !dbg !25
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7) #8, !dbg !24
  br label %68, !dbg !24

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8, !dbg !24
  %70 = load i32, i32* %10, align 4, !dbg !24
  %71 = insertvalue { i8*, i32 } undef, i8* %69, 0, !dbg !24
  %72 = insertvalue { i8*, i32 } %71, i32 %70, 1, !dbg !24
  resume { i8*, i32 } %72, !dbg !24
}

; Function Attrs: noinline nounwind uwtable
define internal void @"_ZNSt8functionIFivEEC2IZ4testiiE3$_0vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %class.anon* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !26 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %class.anon*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %class.anon* %1, %class.anon** %4, align 8
  %7 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %8 = bitcast %"class.std::function"* %7 to %"struct.std::_Maybe_unary_or_binary_function"*, !dbg !28
  %9 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !28
  %10 = bitcast %"class.std::_Function_base"* %9 to i8*, !dbg !29
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false), !dbg !29
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %9) #8, !dbg !29
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !30
  store i32 (%"union.std::_Any_data"*)* null, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !30
  %13 = load %class.anon*, %class.anon** %4, align 8, !dbg !31
  %14 = invoke noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E21_M_not_empty_functionIS1_EEbRKT_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %13)
          to label %15 unwind label %24, !dbg !32

15:                                               ; preds = %2
  br i1 %14, label %16, label %29, !dbg !32

16:                                               ; preds = %15
  %17 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !33
  %18 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %17, i32 0, i32 0, !dbg !33
  %19 = load %class.anon*, %class.anon** %4, align 8, !dbg !34
  %20 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIZ4testiiE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %19) #8, !dbg !35
  call void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E15_M_init_functorIS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon* noundef nonnull align 8 dereferenceable(16) %20) #8, !dbg !36
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !37
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %21, align 8, !dbg !38
  %22 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !39
  %23 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %22, i32 0, i32 1, !dbg !39
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !dbg !40
  br label %29, !dbg !41

24:                                               ; preds = %2
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !42
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !42
  store i8* %26, i8** %5, align 8, !dbg !42
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !42
  store i32 %27, i32* %6, align 4, !dbg !42
  %28 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !42
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %28) #8, !dbg !42
  br label %30, !dbg !42

29:                                               ; preds = %16, %15
  ret void, !dbg !42

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !42
  call void @__clang_call_terminate(i8* %31) #9, !dbg !42
  unreachable, !dbg !42
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !dbg !43 {
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"*, %"class.std::function"** %2, align 8
  %4 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*, !dbg !44
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %4) #8, !dbg !44
  ret void, !dbg !44
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 !dbg !45 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %13, align 4
  store i32 29, i32* %14, align 4
  %21 = load i32, i32* %13, align 4, !dbg !46
  store i32 %21, i32* %15, align 4, !dbg !46
  %22 = load i32, i32* %15, align 4, !dbg !49
  %23 = icmp ne i32 1, %22, !dbg !49
  br i1 %23, label %24, label %27, !dbg !49

24:                                               ; preds = %0
  %25 = load i64, i64* @_ZL5no_op, align 8, !dbg !49
  %26 = add i64 %25, 1, !dbg !49
  store i64 %26, i64* @_ZL5no_op, align 8, !dbg !49
  br label %27, !dbg !49

27:                                               ; preds = %24, %0
  %28 = load i32, i32* %15, align 4, !dbg !50
  %29 = icmp ne i32 -1, %28, !dbg !50
  br i1 %29, label %30, label %33, !dbg !50

30:                                               ; preds = %27
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !50
  %32 = add i64 %31, 1, !dbg !50
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !50
  br label %33, !dbg !50

33:                                               ; preds = %27, %30
  %34 = load i32, i32* %15, align 4, !dbg !51
  store i32 %34, i32* %19, align 4, !dbg !52
  store i32 0, i32* %16, align 4
  store i32 31, i32* %17, align 4
  %35 = load i32, i32* %16, align 4, !dbg !53
  store i32 %35, i32* %18, align 4, !dbg !53
  %36 = load i32, i32* %18, align 4, !dbg !55
  %37 = icmp ne i32 1, %36, !dbg !55
  br i1 %37, label %38, label %41, !dbg !55

38:                                               ; preds = %33
  %39 = load i64, i64* @_ZL5no_op, align 8, !dbg !55
  %40 = add i64 %39, 1, !dbg !55
  store i64 %40, i64* @_ZL5no_op, align 8, !dbg !55
  br label %41, !dbg !55

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %18, align 4, !dbg !56
  %43 = icmp ne i32 -1, %42, !dbg !56
  br i1 %43, label %44, label %47, !dbg !56

44:                                               ; preds = %41
  %45 = load i64, i64* @_ZL5no_op, align 8, !dbg !56
  %46 = add i64 %45, 1, !dbg !56
  store i64 %46, i64* @_ZL5no_op, align 8, !dbg !56
  br label %47, !dbg !56

47:                                               ; preds = %41, %44
  %48 = load i32, i32* %18, align 4, !dbg !57
  store i32 %48, i32* %20, align 4, !dbg !58
  store i32* %19, i32** %1, align 8
  store i32 33, i32* %2, align 4
  %49 = load i32*, i32** %1, align 8, !dbg !59
  %50 = load i32, i32* %49, align 4, !dbg !59
  store i32 %50, i32* %3, align 4, !dbg !59
  %51 = load i32*, i32** %1, align 8, !dbg !62
  %52 = load i32, i32* %51, align 4, !dbg !62
  %53 = add nsw i32 %52, 1, !dbg !62
  %54 = load i32, i32* %3, align 4, !dbg !62
  %55 = icmp ne i32 %53, %54, !dbg !62
  br i1 %55, label %56, label %59, !dbg !62

56:                                               ; preds = %47
  %57 = load i64, i64* @_ZL5no_op, align 8, !dbg !62
  %58 = add i64 %57, 1, !dbg !62
  store i64 %58, i64* @_ZL5no_op, align 8, !dbg !62
  br label %59, !dbg !62

59:                                               ; preds = %56, %47
  %60 = load i32*, i32** %1, align 8, !dbg !63
  %61 = load i32, i32* %60, align 4, !dbg !63
  %62 = sub nsw i32 %61, 1, !dbg !63
  %63 = load i32, i32* %3, align 4, !dbg !63
  %64 = icmp ne i32 %62, %63, !dbg !63
  br i1 %64, label %65, label %68, !dbg !63

65:                                               ; preds = %59
  %66 = load i64, i64* @_ZL5no_op, align 8, !dbg !63
  %67 = add i64 %66, 1, !dbg !63
  store i64 %67, i64* @_ZL5no_op, align 8, !dbg !63
  br label %68, !dbg !63

68:                                               ; preds = %59, %65
  %69 = load i32, i32* %3, align 4, !dbg !64
  store i32 %69, i32* %7, align 4
  store i32 35, i32* %8, align 4
  %70 = load i32, i32* %7, align 4, !dbg !65
  store i32 %70, i32* %9, align 4, !dbg !65
  %71 = load i32, i32* %7, align 4, !dbg !68
  %72 = icmp ne i32 %71, 0, !dbg !68
  %73 = xor i1 %72, true, !dbg !68
  %74 = zext i1 %73 to i32, !dbg !68
  %75 = load i32, i32* %9, align 4, !dbg !68
  %76 = icmp ne i32 %74, %75, !dbg !68
  br i1 %76, label %77, label %80, !dbg !68

77:                                               ; preds = %68
  %78 = load i64, i64* @_ZL5no_op, align 8, !dbg !68
  %79 = add i64 %78, 1, !dbg !68
  store i64 %79, i64* @_ZL5no_op, align 8, !dbg !68
  br label %80, !dbg !68

80:                                               ; preds = %77, %68
  %81 = load i32, i32* %7, align 4, !dbg !69
  %82 = xor i32 %81, -1, !dbg !69
  %83 = load i32, i32* %9, align 4, !dbg !69
  %84 = icmp ne i32 %82, %83, !dbg !69
  br i1 %84, label %85, label %88, !dbg !69

85:                                               ; preds = %80
  %86 = load i64, i64* @_ZL5no_op, align 8, !dbg !69
  %87 = add i64 %86, 1, !dbg !69
  store i64 %87, i64* @_ZL5no_op, align 8, !dbg !69
  br label %88, !dbg !69

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %7, align 4, !dbg !70
  %90 = sub nsw i32 0, %89, !dbg !70
  %91 = load i32, i32* %9, align 4, !dbg !70
  %92 = icmp ne i32 %90, %91, !dbg !70
  br i1 %92, label %93, label %96, !dbg !70

93:                                               ; preds = %88
  %94 = load i64, i64* @_ZL5no_op, align 8, !dbg !70
  %95 = add i64 %94, 1, !dbg !70
  store i64 %95, i64* @_ZL5no_op, align 8, !dbg !70
  br label %96, !dbg !70

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %9, align 4, !dbg !71
  %98 = icmp ne i32 0, %97, !dbg !71
  br i1 %98, label %99, label %102, !dbg !71

99:                                               ; preds = %96
  %100 = load i64, i64* @_ZL5no_op, align 8, !dbg !71
  %101 = add i64 %100, 1, !dbg !71
  store i64 %101, i64* @_ZL5no_op, align 8, !dbg !71
  br label %102, !dbg !71

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %9, align 4, !dbg !72
  %104 = icmp ne i32 1, %103, !dbg !72
  br i1 %104, label %105, label %108, !dbg !72

105:                                              ; preds = %102
  %106 = load i64, i64* @_ZL5no_op, align 8, !dbg !72
  %107 = add i64 %106, 1, !dbg !72
  store i64 %107, i64* @_ZL5no_op, align 8, !dbg !72
  br label %108, !dbg !72

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %9, align 4, !dbg !73
  %110 = icmp ne i32 -1, %109, !dbg !73
  br i1 %110, label %111, label %114, !dbg !73

111:                                              ; preds = %108
  %112 = load i64, i64* @_ZL5no_op, align 8, !dbg !73
  %113 = add i64 %112, 1, !dbg !73
  store i64 %113, i64* @_ZL5no_op, align 8, !dbg !73
  br label %114, !dbg !73

114:                                              ; preds = %108, %111
  %115 = load i32, i32* %9, align 4, !dbg !74
  store i32* %20, i32** %4, align 8
  store i32 41, i32* %5, align 4
  %116 = load i32*, i32** %4, align 8, !dbg !75
  %117 = load i32, i32* %116, align 4, !dbg !75
  store i32 %117, i32* %6, align 4, !dbg !75
  %118 = load i32*, i32** %4, align 8, !dbg !77
  %119 = load i32, i32* %118, align 4, !dbg !77
  %120 = add nsw i32 %119, 1, !dbg !77
  %121 = load i32, i32* %6, align 4, !dbg !77
  %122 = icmp ne i32 %120, %121, !dbg !77
  br i1 %122, label %123, label %126, !dbg !77

123:                                              ; preds = %114
  %124 = load i64, i64* @_ZL5no_op, align 8, !dbg !77
  %125 = add i64 %124, 1, !dbg !77
  store i64 %125, i64* @_ZL5no_op, align 8, !dbg !77
  br label %126, !dbg !77

126:                                              ; preds = %123, %114
  %127 = load i32*, i32** %4, align 8, !dbg !78
  %128 = load i32, i32* %127, align 4, !dbg !78
  %129 = sub nsw i32 %128, 1, !dbg !78
  %130 = load i32, i32* %6, align 4, !dbg !78
  %131 = icmp ne i32 %129, %130, !dbg !78
  br i1 %131, label %132, label %135, !dbg !78

132:                                              ; preds = %126
  %133 = load i64, i64* @_ZL5no_op, align 8, !dbg !78
  %134 = add i64 %133, 1, !dbg !78
  store i64 %134, i64* @_ZL5no_op, align 8, !dbg !78
  br label %135, !dbg !78

135:                                              ; preds = %126, %132
  %136 = load i32, i32* %6, align 4, !dbg !79
  store i32 %136, i32* %10, align 4
  store i32 43, i32* %11, align 4
  %137 = load i32, i32* %10, align 4, !dbg !80
  store i32 %137, i32* %12, align 4, !dbg !80
  %138 = load i32, i32* %10, align 4, !dbg !82
  %139 = icmp ne i32 %138, 0, !dbg !82
  %140 = xor i1 %139, true, !dbg !82
  %141 = zext i1 %140 to i32, !dbg !82
  %142 = load i32, i32* %12, align 4, !dbg !82
  %143 = icmp ne i32 %141, %142, !dbg !82
  br i1 %143, label %144, label %147, !dbg !82

144:                                              ; preds = %135
  %145 = load i64, i64* @_ZL5no_op, align 8, !dbg !82
  %146 = add i64 %145, 1, !dbg !82
  store i64 %146, i64* @_ZL5no_op, align 8, !dbg !82
  br label %147, !dbg !82

147:                                              ; preds = %144, %135
  %148 = load i32, i32* %10, align 4, !dbg !83
  %149 = xor i32 %148, -1, !dbg !83
  %150 = load i32, i32* %12, align 4, !dbg !83
  %151 = icmp ne i32 %149, %150, !dbg !83
  br i1 %151, label %152, label %155, !dbg !83

152:                                              ; preds = %147
  %153 = load i64, i64* @_ZL5no_op, align 8, !dbg !83
  %154 = add i64 %153, 1, !dbg !83
  store i64 %154, i64* @_ZL5no_op, align 8, !dbg !83
  br label %155, !dbg !83

155:                                              ; preds = %152, %147
  %156 = load i32, i32* %10, align 4, !dbg !84
  %157 = sub nsw i32 0, %156, !dbg !84
  %158 = load i32, i32* %12, align 4, !dbg !84
  %159 = icmp ne i32 %157, %158, !dbg !84
  br i1 %159, label %160, label %163, !dbg !84

160:                                              ; preds = %155
  %161 = load i64, i64* @_ZL5no_op, align 8, !dbg !84
  %162 = add i64 %161, 1, !dbg !84
  store i64 %162, i64* @_ZL5no_op, align 8, !dbg !84
  br label %163, !dbg !84

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %12, align 4, !dbg !85
  %165 = icmp ne i32 0, %164, !dbg !85
  br i1 %165, label %166, label %169, !dbg !85

166:                                              ; preds = %163
  %167 = load i64, i64* @_ZL5no_op, align 8, !dbg !85
  %168 = add i64 %167, 1, !dbg !85
  store i64 %168, i64* @_ZL5no_op, align 8, !dbg !85
  br label %169, !dbg !85

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %12, align 4, !dbg !86
  %171 = icmp ne i32 1, %170, !dbg !86
  br i1 %171, label %172, label %175, !dbg !86

172:                                              ; preds = %169
  %173 = load i64, i64* @_ZL5no_op, align 8, !dbg !86
  %174 = add i64 %173, 1, !dbg !86
  store i64 %174, i64* @_ZL5no_op, align 8, !dbg !86
  br label %175, !dbg !86

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %12, align 4, !dbg !87
  %177 = icmp ne i32 -1, %176, !dbg !87
  br i1 %177, label %178, label %181, !dbg !87

178:                                              ; preds = %175
  %179 = load i64, i64* @_ZL5no_op, align 8, !dbg !87
  %180 = add i64 %179, 1, !dbg !87
  store i64 %180, i64* @_ZL5no_op, align 8, !dbg !87
  br label %181, !dbg !87

181:                                              ; preds = %175, %178
  %182 = load i32, i32* %12, align 4, !dbg !88
  %183 = call noundef i32 @_Z4testii(i32 noundef %115, i32 noundef %182), !dbg !89
  ret i32 0, !dbg !90
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 !dbg !91 {
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"*, %"class.std::function"** %2, align 8
  %4 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*, !dbg !92
  %5 = call noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %4), !dbg !92
  br i1 %5, label %6, label %7, !dbg !92

6:                                                ; preds = %1
  call void @_ZSt25__throw_bad_function_callv() #10, !dbg !93
  unreachable, !dbg !93

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i32 0, i32 1, !dbg !94
  %9 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !94
  %10 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*, !dbg !95
  %11 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %10, i32 0, i32 0, !dbg !95
  %12 = call noundef i32 %9(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11), !dbg !94
  ret i32 %12, !dbg !96
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !97 {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1, !dbg !98
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8, !dbg !98
  %6 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, null, !dbg !98
  %7 = xor i1 %6, true, !dbg !99
  ret i1 %7, !dbg !100
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !101 {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1, !dbg !102
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8, !dbg !102
  %6 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, null, !dbg !102
  br i1 %6, label %7, label %14, !dbg !102

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1, !dbg !103
  %9 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !103
  %10 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0, !dbg !104
  %11 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0, !dbg !105
  %12 = invoke noundef zeroext i1 %9(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 3)
          to label %13 unwind label %15, !dbg !103

13:                                               ; preds = %7
  br label %14, !dbg !103

14:                                               ; preds = %13, %1
  ret void, !dbg !106

15:                                               ; preds = %7
  %16 = landingpad { i8*, i32 }
          catch i8* null, !dbg !103
  %17 = extractvalue { i8*, i32 } %16, 0, !dbg !103
  call void @__clang_call_terminate(i8* %17) #9, !dbg !103
  unreachable, !dbg !103
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #5 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8
  call void @_ZSt9terminatev() #9
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !dbg !107 {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0, !dbg !108
  %5 = bitcast %"union.std::_Any_data"* %4 to %"union.std::_Nocopy_types"*, !dbg !109
  %6 = bitcast %"union.std::_Nocopy_types"* %5 to i8**, !dbg !110
  store i8* null, i8** %6, align 8, !dbg !110
  %7 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1, !dbg !111
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !dbg !111
  ret void, !dbg !112
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E21_M_not_empty_functionIS1_EEbRKT_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !113 {
  %2 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %2, align 8
  ret i1 true, !dbg !114
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E15_M_init_functorIS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon* noundef nonnull align 8 dereferenceable(16) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !115 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon* %1, %class.anon** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !116
  %7 = load %class.anon*, %class.anon** %4, align 8, !dbg !117
  %8 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIZ4testiiE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %7) #8, !dbg !118
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E9_M_createIS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon* noundef nonnull align 8 dereferenceable(16) %8)
          to label %9 unwind label %10, !dbg !119

9:                                                ; preds = %2
  ret void, !dbg !120

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !119
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !119
  call void @__clang_call_terminate(i8* %12) #9, !dbg !119
  unreachable, !dbg !119
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIZ4testiiE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #3 !dbg !121 {
  %2 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %2, align 8
  %3 = load %class.anon*, %class.anon** %2, align 8, !dbg !123
  ret %class.anon* %3, !dbg !124
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !125 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !126
  %4 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !127
  %5 = call noundef i32 @"_ZSt10__invoke_rIiRZ4testiiE3$_0JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES5_EEE5valueES5_E4typeEOSA_DpOSB_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %4), !dbg !128
  ret i32 %5, !dbg !129
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !130 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4, !dbg !131
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !132

8:                                                ; preds = %3
  %9 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !133
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %9), !dbg !134
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4testiiE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %10, align 8, !dbg !135
  br label %21, !dbg !136

11:                                               ; preds = %3
  %12 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !137
  %13 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12), !dbg !138
  %14 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !139
  %15 = call noundef nonnull align 8 dereferenceable(8) %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ4testiiE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %14), !dbg !140
  store %class.anon* %13, %class.anon** %15, align 8, !dbg !141
  br label %21, !dbg !142

16:                                               ; preds = %3
  %17 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !143
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !144
  %19 = load i32, i32* %6, align 4, !dbg !145
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !146
  br label %21, !dbg !147

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !148
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E9_M_createIS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon* noundef nonnull align 8 dereferenceable(16) %1) #0 align 2 !dbg !149 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon* %1, %class.anon** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !150
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !151
  %8 = bitcast i8* %7 to %class.anon*, !dbg !152
  %9 = load %class.anon*, %class.anon** %5, align 8, !dbg !153
  %10 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIZ4testiiE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %9) #8, !dbg !154
  %11 = bitcast %class.anon* %8 to i8*, !dbg !155
  %12 = bitcast %class.anon* %10 to i8*, !dbg !155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false), !dbg !155
  ret void, !dbg !156
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 comdat align 2 !dbg !157 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = bitcast %"union.std::_Any_data"* %3 to [16 x i8]*, !dbg !158
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !158
  ret i8* %5, !dbg !159
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZ4testiiE3$_0JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES5_EEE5valueES5_E4typeEOSA_DpOSB_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #0 !dbg !160 {
  %2 = alloca %class.anon*, align 8
  %3 = alloca %"struct.std::__invoke_other", align 1
  store %class.anon* %0, %class.anon** %2, align 8
  %4 = load %class.anon*, %class.anon** %2, align 8, !dbg !162
  %5 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIRZ4testiiE3$_0EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %4) #8, !dbg !163
  %6 = call noundef i32 @"_ZSt13__invoke_implIiRZ4testiiE3$_0JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %5), !dbg !164
  ret i32 %6, !dbg !165
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !166 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !167
  %5 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZNKSt9_Any_data9_M_accessIZ4testiiE3$_0EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !168
  store %class.anon* %5, %class.anon** %3, align 8, !dbg !169
  %6 = load %class.anon*, %class.anon** %3, align 8, !dbg !170
  %7 = call noundef %class.anon* @"_ZSt11__addressofIKZ4testiiE3$_0EPT_RS2_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %6) #8, !dbg !171
  ret %class.anon* %7, !dbg !172
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZ4testiiE3$_0JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #0 !dbg !173 {
  %2 = alloca %"struct.std::__invoke_other", align 1
  %3 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %3, align 8
  %4 = load %class.anon*, %class.anon** %3, align 8, !dbg !174
  %5 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIRZ4testiiE3$_0EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %4) #8, !dbg !175
  %6 = call noundef i32 @"_ZZ4testiiENK3$_0clEv"(%class.anon* noundef nonnull align 8 dereferenceable(16) %5), !dbg !175
  ret i32 %6, !dbg !176
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIRZ4testiiE3$_0EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #3 !dbg !177 {
  %2 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %2, align 8
  %3 = load %class.anon*, %class.anon** %2, align 8, !dbg !178
  ret %class.anon* %3, !dbg !179
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZZ4testiiENK3$_0clEv"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !180 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.anon*, align 8
  %5 = alloca %"class.std::function", align 8
  %6 = alloca %class.anon.0, align 8
  %7 = alloca %"class.std::function", align 8
  %8 = alloca %class.anon.1, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %class.anon* %0, %class.anon** %4, align 8
  %11 = load %class.anon*, %class.anon** %4, align 8
  %12 = getelementptr inbounds %class.anon.0, %class.anon.0* %6, i32 0, i32 0, !dbg !181
  %13 = getelementptr inbounds %class.anon, %class.anon* %11, i32 0, i32 0, !dbg !182
  %14 = load i32*, i32** %13, align 8, !dbg !182
  store i32* %14, i32** %12, align 8, !dbg !181
  call void @"_ZNSt8functionIFivEEC2IZZ4testiiENK3$_0clEvEUlvE_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !181
  %15 = getelementptr inbounds %class.anon.1, %class.anon.1* %8, i32 0, i32 0, !dbg !183
  %16 = getelementptr inbounds %class.anon, %class.anon* %11, i32 0, i32 1, !dbg !184
  %17 = load i32*, i32** %16, align 8, !dbg !184
  store i32* %17, i32** %15, align 8, !dbg !183
  call void @"_ZNSt8functionIFivEEC2IZZ4testiiENK3$_0clEvEUlvE0_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %8) #8, !dbg !183
  store i32 16, i32* %2, align 4
  %18 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %19 unwind label %93, !dbg !185

19:                                               ; preds = %1
  %20 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %21 unwind label %93, !dbg !185

21:                                               ; preds = %19
  %22 = add nsw i32 %18, %20, !dbg !185
  store i32 %22, i32* %3, align 4, !dbg !185
  %23 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %24 unwind label %93, !dbg !188

24:                                               ; preds = %21
  %25 = icmp ne i32 %23, 0, !dbg !188
  br i1 %25, label %26, label %37, !dbg !188

26:                                               ; preds = %24
  %27 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %28 unwind label %93, !dbg !188

28:                                               ; preds = %26
  %29 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %30 unwind label %93, !dbg !188

30:                                               ; preds = %28
  %31 = sdiv i32 %27, %29, !dbg !188
  %32 = load i32, i32* %3, align 4, !dbg !188
  %33 = icmp ne i32 %31, %32, !dbg !188
  br i1 %33, label %34, label %37, !dbg !188

34:                                               ; preds = %30
  %35 = load i64, i64* @_ZL5no_op, align 8, !dbg !188
  %36 = add i64 %35, 1, !dbg !188
  store i64 %36, i64* @_ZL5no_op, align 8, !dbg !188
  br label %37, !dbg !188

37:                                               ; preds = %34, %30, %24
  %38 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %39 unwind label %93, !dbg !189

39:                                               ; preds = %37
  %40 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %41 unwind label %93, !dbg !189

41:                                               ; preds = %39
  %42 = mul nsw i32 %38, %40, !dbg !189
  %43 = load i32, i32* %3, align 4, !dbg !189
  %44 = icmp ne i32 %42, %43, !dbg !189
  br i1 %44, label %45, label %48, !dbg !189

45:                                               ; preds = %41
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !189
  %47 = add i64 %46, 1, !dbg !189
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !189
  br label %48, !dbg !189

48:                                               ; preds = %45, %41
  %49 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %50 unwind label %93, !dbg !190

50:                                               ; preds = %48
  %51 = icmp ne i32 %49, 0, !dbg !190
  br i1 %51, label %52, label %63, !dbg !190

52:                                               ; preds = %50
  %53 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %54 unwind label %93, !dbg !190

54:                                               ; preds = %52
  %55 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %56 unwind label %93, !dbg !190

56:                                               ; preds = %54
  %57 = srem i32 %53, %55, !dbg !190
  %58 = load i32, i32* %3, align 4, !dbg !190
  %59 = icmp ne i32 %57, %58, !dbg !190
  br i1 %59, label %60, label %63, !dbg !190

60:                                               ; preds = %56
  %61 = load i64, i64* @_ZL5no_op, align 8, !dbg !190
  %62 = add i64 %61, 1, !dbg !190
  store i64 %62, i64* @_ZL5no_op, align 8, !dbg !190
  br label %63, !dbg !190

63:                                               ; preds = %60, %56, %50
  %64 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %65 unwind label %93, !dbg !191

65:                                               ; preds = %63
  %66 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %67 unwind label %93, !dbg !191

67:                                               ; preds = %65
  %68 = sub nsw i32 %64, %66, !dbg !191
  %69 = load i32, i32* %3, align 4, !dbg !191
  %70 = icmp ne i32 %68, %69, !dbg !191
  br i1 %70, label %71, label %74, !dbg !191

71:                                               ; preds = %67
  %72 = load i64, i64* @_ZL5no_op, align 8, !dbg !191
  %73 = add i64 %72, 1, !dbg !191
  store i64 %73, i64* @_ZL5no_op, align 8, !dbg !191
  br label %74, !dbg !191

74:                                               ; preds = %71, %67
  %75 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %76 unwind label %93, !dbg !192

76:                                               ; preds = %74
  %77 = load i32, i32* %3, align 4, !dbg !192
  %78 = icmp ne i32 %75, %77, !dbg !192
  br i1 %78, label %79, label %82, !dbg !192

79:                                               ; preds = %76
  %80 = load i64, i64* @_ZL5no_op, align 8, !dbg !192
  %81 = add i64 %80, 1, !dbg !192
  store i64 %81, i64* @_ZL5no_op, align 8, !dbg !192
  br label %82, !dbg !192

82:                                               ; preds = %79, %76
  %83 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %84 unwind label %93, !dbg !193

84:                                               ; preds = %82
  %85 = load i32, i32* %3, align 4, !dbg !193
  %86 = icmp ne i32 %83, %85, !dbg !193
  br i1 %86, label %87, label %90, !dbg !193

87:                                               ; preds = %84
  %88 = load i64, i64* @_ZL5no_op, align 8, !dbg !193
  %89 = add i64 %88, 1, !dbg !193
  store i64 %89, i64* @_ZL5no_op, align 8, !dbg !193
  br label %90, !dbg !193

90:                                               ; preds = %84, %87
  %91 = load i32, i32* %3, align 4, !dbg !194
  br label %92, !dbg !195

92:                                               ; preds = %90
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7) #8, !dbg !196
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5) #8, !dbg !196
  ret i32 %91, !dbg !196

93:                                               ; preds = %82, %74, %65, %63, %54, %52, %48, %39, %37, %28, %26, %21, %19, %1
  %94 = landingpad { i8*, i32 }
          cleanup, !dbg !197
  %95 = extractvalue { i8*, i32 } %94, 0, !dbg !197
  store i8* %95, i8** %9, align 8, !dbg !197
  %96 = extractvalue { i8*, i32 } %94, 1, !dbg !197
  store i32 %96, i32* %10, align 4, !dbg !197
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %7) #8, !dbg !196
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5) #8, !dbg !196
  br label %97, !dbg !196

97:                                               ; preds = %93
  %98 = load i8*, i8** %9, align 8, !dbg !196
  %99 = load i32, i32* %10, align 4, !dbg !196
  %100 = insertvalue { i8*, i32 } undef, i8* %98, 0, !dbg !196
  %101 = insertvalue { i8*, i32 } %100, i32 %99, 1, !dbg !196
  resume { i8*, i32 } %101, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define internal void @"_ZNSt8functionIFivEEC2IZZ4testiiENK3$_0clEvEUlvE_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !198 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %class.anon.0*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %class.anon.0* %1, %class.anon.0** %4, align 8
  %7 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %8 = bitcast %"class.std::function"* %7 to %"struct.std::_Maybe_unary_or_binary_function"*, !dbg !199
  %9 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !199
  %10 = bitcast %"class.std::_Function_base"* %9 to i8*, !dbg !200
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !200
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false), !dbg !200
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %9) #8, !dbg !200
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !201
  store i32 (%"union.std::_Any_data"*)* null, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !201
  %13 = load %class.anon.0*, %class.anon.0** %4, align 8, !dbg !202
  %14 = invoke noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E21_M_not_empty_functionIS2_EEbRKT_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %13)
          to label %15 unwind label %24, !dbg !203

15:                                               ; preds = %2
  br i1 %14, label %16, label %29, !dbg !203

16:                                               ; preds = %15
  %17 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !204
  %18 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %17, i32 0, i32 0, !dbg !204
  %19 = load %class.anon.0*, %class.anon.0** %4, align 8, !dbg !205
  %20 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %19) #8, !dbg !206
  call void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E15_M_init_functorIS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !207
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !208
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %21, align 8, !dbg !209
  %22 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !210
  %23 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %22, i32 0, i32 1, !dbg !210
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !dbg !211
  br label %29, !dbg !212

24:                                               ; preds = %2
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !213
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !213
  store i8* %26, i8** %5, align 8, !dbg !213
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !213
  store i32 %27, i32* %6, align 4, !dbg !213
  %28 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !213
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %28) #8, !dbg !213
  br label %30, !dbg !213

29:                                               ; preds = %16, %15
  ret void, !dbg !213

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !213
  call void @__clang_call_terminate(i8* %31) #9, !dbg !213
  unreachable, !dbg !213
}

; Function Attrs: noinline nounwind uwtable
define internal void @"_ZNSt8functionIFivEEC2IZZ4testiiENK3$_0clEvEUlvE0_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !214 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %class.anon.1*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %class.anon.1* %1, %class.anon.1** %4, align 8
  %7 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %8 = bitcast %"class.std::function"* %7 to %"struct.std::_Maybe_unary_or_binary_function"*, !dbg !215
  %9 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !215
  %10 = bitcast %"class.std::_Function_base"* %9 to i8*, !dbg !216
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false), !dbg !216
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %9) #8, !dbg !216
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !217
  store i32 (%"union.std::_Any_data"*)* null, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !217
  %13 = load %class.anon.1*, %class.anon.1** %4, align 8, !dbg !218
  %14 = invoke noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E21_M_not_empty_functionIS2_EEbRKT_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %13)
          to label %15 unwind label %24, !dbg !219

15:                                               ; preds = %2
  br i1 %14, label %16, label %29, !dbg !219

16:                                               ; preds = %15
  %17 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !220
  %18 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %17, i32 0, i32 0, !dbg !220
  %19 = load %class.anon.1*, %class.anon.1** %4, align 8, !dbg !221
  %20 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %19) #8, !dbg !222
  call void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E15_M_init_functorIS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !223
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !224
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %21, align 8, !dbg !225
  %22 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !226
  %23 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %22, i32 0, i32 1, !dbg !226
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !dbg !227
  br label %29, !dbg !228

24:                                               ; preds = %2
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !229
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !229
  store i8* %26, i8** %5, align 8, !dbg !229
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !229
  store i32 %27, i32* %6, align 4, !dbg !229
  %28 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !229
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %28) #8, !dbg !229
  br label %30, !dbg !229

29:                                               ; preds = %16, %15
  ret void, !dbg !229

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !229
  call void @__clang_call_terminate(i8* %31) #9, !dbg !229
  unreachable, !dbg !229
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E21_M_not_empty_functionIS2_EEbRKT_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 !dbg !230 {
  %2 = alloca %class.anon.0*, align 8
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  ret i1 true, !dbg !231
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E15_M_init_functorIS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !232 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.0*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.0* %1, %class.anon.0** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !233
  %7 = load %class.anon.0*, %class.anon.0** %4, align 8, !dbg !234
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !235
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E9_M_createIS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !236

9:                                                ; preds = %2
  ret void, !dbg !237

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !236
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !236
  call void @__clang_call_terminate(i8* %12) #9, !dbg !236
  unreachable, !dbg !236
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !238 {
  %2 = alloca %class.anon.0*, align 8
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  %3 = load %class.anon.0*, %class.anon.0** %2, align 8, !dbg !239
  ret %class.anon.0* %3, !dbg !240
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !241 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !242
  %4 = call noundef %class.anon.0* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !243
  %5 = call noundef i32 @"_ZSt10__invoke_rIiRZZ4testiiENK3$_0clEvEUlvE_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES6_EEE5valueES6_E4typeEOSB_DpOSC_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %4), !dbg !244
  ret i32 %5, !dbg !245
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !246 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4, !dbg !247
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !248

8:                                                ; preds = %3
  %9 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !249
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %9), !dbg !250
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %10, align 8, !dbg !251
  br label %21, !dbg !252

11:                                               ; preds = %3
  %12 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !253
  %13 = call noundef %class.anon.0* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12), !dbg !254
  %14 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !255
  %15 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0** @"_ZNSt9_Any_data9_M_accessIPZZ4testiiENK3$_0clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %14), !dbg !256
  store %class.anon.0* %13, %class.anon.0** %15, align 8, !dbg !257
  br label %21, !dbg !258

16:                                               ; preds = %3
  %17 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !259
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !260
  %19 = load i32, i32* %6, align 4, !dbg !261
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !262
  br label %21, !dbg !263

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !264
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E9_M_createIS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !265 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.0*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.0* %1, %class.anon.0** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !266
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !267
  %8 = bitcast i8* %7 to %class.anon.0*, !dbg !268
  %9 = load %class.anon.0*, %class.anon.0** %5, align 8, !dbg !269
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !270
  %11 = bitcast %class.anon.0* %8 to i8*, !dbg !271
  %12 = bitcast %class.anon.0* %10 to i8*, !dbg !271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZZ4testiiENK3$_0clEvEUlvE_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES6_EEE5valueES6_E4typeEOSB_DpOSC_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !273 {
  %2 = alloca %class.anon.0*, align 8
  %3 = alloca %"struct.std::__invoke_other", align 1
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  %4 = load %class.anon.0*, %class.anon.0** %2, align 8, !dbg !274
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIRZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !275
  %6 = call noundef i32 @"_ZSt13__invoke_implIiRZZ4testiiENK3$_0clEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %5), !dbg !276
  ret i32 %6, !dbg !277
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef %class.anon.0* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !278 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %class.anon.0*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !279
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZNKSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !280
  store %class.anon.0* %5, %class.anon.0** %3, align 8, !dbg !281
  %6 = load %class.anon.0*, %class.anon.0** %3, align 8, !dbg !282
  %7 = call noundef %class.anon.0* @"_ZSt11__addressofIKZZ4testiiENK3$_0clEvEUlvE_EPT_RS3_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !283
  ret %class.anon.0* %7, !dbg !284
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZZ4testiiENK3$_0clEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !285 {
  %2 = alloca %"struct.std::__invoke_other", align 1
  %3 = alloca %class.anon.0*, align 8
  store %class.anon.0* %0, %class.anon.0** %3, align 8
  %4 = load %class.anon.0*, %class.anon.0** %3, align 8, !dbg !286
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIRZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !287
  %6 = call noundef i32 @"_ZZZ4testiiENK3$_0clEvENKUlvE_clEv"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %5), !dbg !287
  ret i32 %6, !dbg !288
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIRZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !289 {
  %2 = alloca %class.anon.0*, align 8
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  %3 = load %class.anon.0*, %class.anon.0** %2, align 8, !dbg !290
  ret %class.anon.0* %3, !dbg !291
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZZZ4testiiENK3$_0clEvENKUlvE_clEv"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !292 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.anon.0*, align 8
  %5 = alloca %"class.std::function", align 8
  %6 = alloca %class.anon.2, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %class.anon.0* %0, %class.anon.0** %4, align 8
  %9 = load %class.anon.0*, %class.anon.0** %4, align 8
  %10 = getelementptr inbounds %class.anon.2, %class.anon.2* %6, i32 0, i32 0, !dbg !293
  %11 = getelementptr inbounds %class.anon.0, %class.anon.0* %9, i32 0, i32 0, !dbg !294
  %12 = load i32*, i32** %11, align 8, !dbg !294
  store i32* %12, i32** %10, align 8, !dbg !293
  call void @"_ZNSt8functionIFivEEC2IZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !293
  store i32 2, i32* %2, align 4
  %13 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %14 unwind label %64, !dbg !295

14:                                               ; preds = %1
  store i32 %13, i32* %3, align 4, !dbg !295
  %15 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %16 unwind label %64, !dbg !297

16:                                               ; preds = %14
  %17 = icmp ne i32 %15, 0, !dbg !297
  %18 = xor i1 %17, true, !dbg !297
  %19 = zext i1 %18 to i32, !dbg !297
  %20 = load i32, i32* %3, align 4, !dbg !297
  %21 = icmp ne i32 %19, %20, !dbg !297
  br i1 %21, label %22, label %25, !dbg !297

22:                                               ; preds = %16
  %23 = load i64, i64* @_ZL5no_op, align 8, !dbg !297
  %24 = add i64 %23, 1, !dbg !297
  store i64 %24, i64* @_ZL5no_op, align 8, !dbg !297
  br label %25, !dbg !297

25:                                               ; preds = %22, %16
  %26 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %27 unwind label %64, !dbg !298

27:                                               ; preds = %25
  %28 = xor i32 %26, -1, !dbg !298
  %29 = load i32, i32* %3, align 4, !dbg !298
  %30 = icmp ne i32 %28, %29, !dbg !298
  br i1 %30, label %31, label %34, !dbg !298

31:                                               ; preds = %27
  %32 = load i64, i64* @_ZL5no_op, align 8, !dbg !298
  %33 = add i64 %32, 1, !dbg !298
  store i64 %33, i64* @_ZL5no_op, align 8, !dbg !298
  br label %34, !dbg !298

34:                                               ; preds = %31, %27
  %35 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %36 unwind label %64, !dbg !299

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %35, !dbg !299
  %38 = load i32, i32* %3, align 4, !dbg !299
  %39 = icmp ne i32 %37, %38, !dbg !299
  br i1 %39, label %40, label %43, !dbg !299

40:                                               ; preds = %36
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !299
  %42 = add i64 %41, 1, !dbg !299
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !299
  br label %43, !dbg !299

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %3, align 4, !dbg !300
  %45 = icmp ne i32 0, %44, !dbg !300
  br i1 %45, label %46, label %49, !dbg !300

46:                                               ; preds = %43
  %47 = load i64, i64* @_ZL5no_op, align 8, !dbg !300
  %48 = add i64 %47, 1, !dbg !300
  store i64 %48, i64* @_ZL5no_op, align 8, !dbg !300
  br label %49, !dbg !300

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %3, align 4, !dbg !301
  %51 = icmp ne i32 1, %50, !dbg !301
  br i1 %51, label %52, label %55, !dbg !301

52:                                               ; preds = %49
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !301
  %54 = add i64 %53, 1, !dbg !301
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !301
  br label %55, !dbg !301

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %3, align 4, !dbg !302
  %57 = icmp ne i32 -1, %56, !dbg !302
  br i1 %57, label %58, label %61, !dbg !302

58:                                               ; preds = %55
  %59 = load i64, i64* @_ZL5no_op, align 8, !dbg !302
  %60 = add i64 %59, 1, !dbg !302
  store i64 %60, i64* @_ZL5no_op, align 8, !dbg !302
  br label %61, !dbg !302

61:                                               ; preds = %55, %58
  %62 = load i32, i32* %3, align 4, !dbg !303
  br label %63, !dbg !304

63:                                               ; preds = %61
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5) #8, !dbg !305
  ret i32 %62, !dbg !305

64:                                               ; preds = %34, %25, %14, %1
  %65 = landingpad { i8*, i32 }
          cleanup, !dbg !306
  %66 = extractvalue { i8*, i32 } %65, 0, !dbg !306
  store i8* %66, i8** %7, align 8, !dbg !306
  %67 = extractvalue { i8*, i32 } %65, 1, !dbg !306
  store i32 %67, i32* %8, align 4, !dbg !306
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5) #8, !dbg !305
  br label %68, !dbg !305

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8, !dbg !305
  %70 = load i32, i32* %8, align 4, !dbg !305
  %71 = insertvalue { i8*, i32 } undef, i8* %69, 0, !dbg !305
  %72 = insertvalue { i8*, i32 } %71, i32 %70, 1, !dbg !305
  resume { i8*, i32 } %72, !dbg !305
}

; Function Attrs: noinline nounwind uwtable
define internal void @"_ZNSt8functionIFivEEC2IZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !307 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %class.anon.2*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %class.anon.2* %1, %class.anon.2** %4, align 8
  %7 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %8 = bitcast %"class.std::function"* %7 to %"struct.std::_Maybe_unary_or_binary_function"*, !dbg !308
  %9 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !308
  %10 = bitcast %"class.std::_Function_base"* %9 to i8*, !dbg !309
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !309
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false), !dbg !309
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %9) #8, !dbg !309
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !310
  store i32 (%"union.std::_Any_data"*)* null, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !310
  %13 = load %class.anon.2*, %class.anon.2** %4, align 8, !dbg !311
  %14 = invoke noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E21_M_not_empty_functionIS3_EEbRKT_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %13)
          to label %15 unwind label %24, !dbg !312

15:                                               ; preds = %2
  br i1 %14, label %16, label %29, !dbg !312

16:                                               ; preds = %15
  %17 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !313
  %18 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %17, i32 0, i32 0, !dbg !313
  %19 = load %class.anon.2*, %class.anon.2** %4, align 8, !dbg !314
  %20 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %19) #8, !dbg !315
  call void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E15_M_init_functorIS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !316
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !317
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %21, align 8, !dbg !318
  %22 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !319
  %23 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %22, i32 0, i32 1, !dbg !319
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !dbg !320
  br label %29, !dbg !321

24:                                               ; preds = %2
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !322
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !322
  store i8* %26, i8** %5, align 8, !dbg !322
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !322
  store i32 %27, i32* %6, align 4, !dbg !322
  %28 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !322
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %28) #8, !dbg !322
  br label %30, !dbg !322

29:                                               ; preds = %16, %15
  ret void, !dbg !322

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !322
  call void @__clang_call_terminate(i8* %31) #9, !dbg !322
  unreachable, !dbg !322
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E21_M_not_empty_functionIS3_EEbRKT_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 !dbg !323 {
  %2 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %2, align 8
  ret i1 true, !dbg !324
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E15_M_init_functorIS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !325 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.2*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.2* %1, %class.anon.2** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !326
  %7 = load %class.anon.2*, %class.anon.2** %4, align 8, !dbg !327
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !328
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E9_M_createIS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !329

9:                                                ; preds = %2
  ret void, !dbg !330

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !329
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !329
  call void @__clang_call_terminate(i8* %12) #9, !dbg !329
  unreachable, !dbg !329
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !331 {
  %2 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %2, align 8
  %3 = load %class.anon.2*, %class.anon.2** %2, align 8, !dbg !332
  ret %class.anon.2* %3, !dbg !333
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !334 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !335
  %4 = call noundef %class.anon.2* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !336
  %5 = call noundef i32 @"_ZSt10__invoke_rIiRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES7_EEE5valueES7_E4typeEOSC_DpOSD_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %4), !dbg !337
  ret i32 %5, !dbg !338
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !339 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4, !dbg !340
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !341

8:                                                ; preds = %3
  %9 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !342
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %9), !dbg !343
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %10, align 8, !dbg !344
  br label %21, !dbg !345

11:                                               ; preds = %3
  %12 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !346
  %13 = call noundef %class.anon.2* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12), !dbg !347
  %14 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !348
  %15 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2** @"_ZNSt9_Any_data9_M_accessIPZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %14), !dbg !349
  store %class.anon.2* %13, %class.anon.2** %15, align 8, !dbg !350
  br label %21, !dbg !351

16:                                               ; preds = %3
  %17 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !352
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !353
  %19 = load i32, i32* %6, align 4, !dbg !354
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !355
  br label %21, !dbg !356

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !357
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E9_M_createIS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !358 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.2*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.2* %1, %class.anon.2** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !359
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !360
  %8 = bitcast i8* %7 to %class.anon.2*, !dbg !361
  %9 = load %class.anon.2*, %class.anon.2** %5, align 8, !dbg !362
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !363
  %11 = bitcast %class.anon.2* %8 to i8*, !dbg !364
  %12 = bitcast %class.anon.2* %10 to i8*, !dbg !364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES7_EEE5valueES7_E4typeEOSC_DpOSD_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !366 {
  %2 = alloca %class.anon.2*, align 8
  %3 = alloca %"struct.std::__invoke_other", align 1
  store %class.anon.2* %0, %class.anon.2** %2, align 8
  %4 = load %class.anon.2*, %class.anon.2** %2, align 8, !dbg !367
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !368
  %6 = call noundef i32 @"_ZSt13__invoke_implIiRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %5), !dbg !369
  ret i32 %6, !dbg !370
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef %class.anon.2* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !371 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %class.anon.2*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !372
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZNKSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !373
  store %class.anon.2* %5, %class.anon.2** %3, align 8, !dbg !374
  %6 = load %class.anon.2*, %class.anon.2** %3, align 8, !dbg !375
  %7 = call noundef %class.anon.2* @"_ZSt11__addressofIKZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EPT_RS4_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !376
  ret %class.anon.2* %7, !dbg !377
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !378 {
  %2 = alloca %"struct.std::__invoke_other", align 1
  %3 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %3, align 8
  %4 = load %class.anon.2*, %class.anon.2** %3, align 8, !dbg !379
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !380
  %6 = call noundef i32 @"_ZZZZ4testiiENK3$_0clEvENKUlvE_clEvENKUlvE_clEv"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %5), !dbg !380
  ret i32 %6, !dbg !381
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIRZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !382 {
  %2 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %2, align 8
  %3 = load %class.anon.2*, %class.anon.2** %2, align 8, !dbg !383
  ret %class.anon.2* %3, !dbg !384
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZZZZ4testiiENK3$_0clEvENKUlvE_clEvENKUlvE_clEv"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #0 align 2 !dbg !385 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %5, align 8
  %6 = load %class.anon.2*, %class.anon.2** %5, align 8
  %7 = getelementptr inbounds %class.anon.2, %class.anon.2* %6, i32 0, i32 0, !dbg !386
  %8 = load i32*, i32** %7, align 8, !dbg !386
  store i32* %8, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8, !dbg !387
  %10 = load volatile i32, i32* %9, align 4, !dbg !387
  store i32 %10, i32* %4, align 4, !dbg !387
  %11 = load i32*, i32** %2, align 8, !dbg !390
  %12 = load volatile i32, i32* %11, align 4, !dbg !390
  %13 = add nsw i32 %12, 1, !dbg !390
  %14 = load i32, i32* %4, align 4, !dbg !390
  %15 = icmp ne i32 %13, %14, !dbg !390
  br i1 %15, label %16, label %19, !dbg !390

16:                                               ; preds = %1
  %17 = load i64, i64* @_ZL5no_op, align 8, !dbg !390
  %18 = add i64 %17, 1, !dbg !390
  store i64 %18, i64* @_ZL5no_op, align 8, !dbg !390
  br label %19, !dbg !390

19:                                               ; preds = %16, %1
  %20 = load i32*, i32** %2, align 8, !dbg !391
  %21 = load volatile i32, i32* %20, align 4, !dbg !391
  %22 = sub nsw i32 %21, 1, !dbg !391
  %23 = load i32, i32* %4, align 4, !dbg !391
  %24 = icmp ne i32 %22, %23, !dbg !391
  br i1 %24, label %25, label %28, !dbg !391

25:                                               ; preds = %19
  %26 = load i64, i64* @_ZL5no_op, align 8, !dbg !391
  %27 = add i64 %26, 1, !dbg !391
  store i64 %27, i64* @_ZL5no_op, align 8, !dbg !391
  br label %28, !dbg !391

28:                                               ; preds = %19, %25
  %29 = load i32, i32* %4, align 4, !dbg !392
  ret i32 %29, !dbg !393
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZNKSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !394 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !395
  %5 = bitcast i8* %4 to %class.anon.2*, !dbg !396
  ret %class.anon.2* %5, !dbg !397
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef %class.anon.2* @"_ZSt11__addressofIKZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EPT_RS4_"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !398 {
  %2 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %2, align 8
  %3 = load %class.anon.2*, %class.anon.2** %2, align 8, !dbg !399
  ret %class.anon.2* %3, !dbg !400
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 comdat align 2 !dbg !401 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = bitcast %"union.std::_Any_data"* %3 to [16 x i8]*, !dbg !402
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !402
  ret i8* %5, !dbg !403
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 comdat align 2 !dbg !404 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !405
  %5 = bitcast i8* %4 to %"class.std::type_info"**, !dbg !406
  ret %"class.std::type_info"** %5, !dbg !407
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.2** @"_ZNSt9_Any_data9_M_accessIPZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !408 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !409
  %5 = bitcast i8* %4 to %class.anon.2**, !dbg !410
  ret %class.anon.2** %5, !dbg !411
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !412 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4, !dbg !413
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !414

9:                                                ; preds = %3
  %10 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !415
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10), !dbg !416
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %11, align 8, !dbg !417
  br label %23, !dbg !418

12:                                               ; preds = %3
  %13 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !419
  %14 = call noundef %class.anon.2* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13), !dbg !420
  %15 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !421
  %16 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2** @"_ZNSt9_Any_data9_M_accessIPZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15), !dbg !422
  store %class.anon.2* %14, %class.anon.2** %16, align 8, !dbg !423
  br label %23, !dbg !424

17:                                               ; preds = %3
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !425
  %19 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !426
  %20 = call noundef %class.anon.2* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19), !dbg !427
  call void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !428
  br label %23, !dbg !429

21:                                               ; preds = %3
  %22 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !430
  call void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22), !dbg !431
  br label %23, !dbg !432

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !433
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !434 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.2*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.2* %1, %class.anon.2** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !435
  %7 = load %class.anon.2*, %class.anon.2** %4, align 8, !dbg !436
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIRKZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS5_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !437
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E9_M_createIRKS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !438

9:                                                ; preds = %2
  ret void, !dbg !439

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !438
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !438
  call void @__clang_call_terminate(i8* %12) #9, !dbg !438
  unreachable, !dbg !438
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !440 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !441
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZNSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_E9_M_createIRKS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.2* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !444 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.2*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.2* %1, %class.anon.2** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !445
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !446
  %8 = bitcast i8* %7 to %class.anon.2*, !dbg !447
  %9 = load %class.anon.2*, %class.anon.2** %5, align 8, !dbg !448
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIRKZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS5_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !449
  %11 = bitcast %class.anon.2* %8 to i8*, !dbg !450
  %12 = bitcast %class.anon.2* %10 to i8*, !dbg !450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZSt7forwardIRKZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EOT_RNSt16remove_referenceIS5_E4typeE"(%class.anon.2* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !452 {
  %2 = alloca %class.anon.2*, align 8
  store %class.anon.2* %0, %class.anon.2** %2, align 8
  %3 = load %class.anon.2*, %class.anon.2** %2, align 8, !dbg !453
  ret %class.anon.2* %3, !dbg !454
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.2* @"_ZNSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !455 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !456
  %5 = bitcast i8* %4 to %class.anon.2*, !dbg !457
  ret %class.anon.2* %5, !dbg !458
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZNKSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !459 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !460
  %5 = bitcast i8* %4 to %class.anon.0*, !dbg !461
  ret %class.anon.0* %5, !dbg !462
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef %class.anon.0* @"_ZSt11__addressofIKZZ4testiiENK3$_0clEvEUlvE_EPT_RS3_"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !463 {
  %2 = alloca %class.anon.0*, align 8
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  %3 = load %class.anon.0*, %class.anon.0** %2, align 8, !dbg !464
  ret %class.anon.0* %3, !dbg !465
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.0** @"_ZNSt9_Any_data9_M_accessIPZZ4testiiENK3$_0clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !466 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !467
  %5 = bitcast i8* %4 to %class.anon.0**, !dbg !468
  ret %class.anon.0** %5, !dbg !469
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !470 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4, !dbg !471
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !472

9:                                                ; preds = %3
  %10 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !473
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10), !dbg !474
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %11, align 8, !dbg !475
  br label %23, !dbg !476

12:                                               ; preds = %3
  %13 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !477
  %14 = call noundef %class.anon.0* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13), !dbg !478
  %15 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !479
  %16 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0** @"_ZNSt9_Any_data9_M_accessIPZZ4testiiENK3$_0clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15), !dbg !480
  store %class.anon.0* %14, %class.anon.0** %16, align 8, !dbg !481
  br label %23, !dbg !482

17:                                               ; preds = %3
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !483
  %19 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !484
  %20 = call noundef %class.anon.0* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19), !dbg !485
  call void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !486
  br label %23, !dbg !487

21:                                               ; preds = %3
  %22 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !488
  call void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22), !dbg !489
  br label %23, !dbg !490

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !491
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !492 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.0*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.0* %1, %class.anon.0** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !493
  %7 = load %class.anon.0*, %class.anon.0** %4, align 8, !dbg !494
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIRKZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !495
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E9_M_createIRKS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !496

9:                                                ; preds = %2
  ret void, !dbg !497

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !496
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !496
  call void @__clang_call_terminate(i8* %12) #9, !dbg !496
  unreachable, !dbg !496
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !498 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !499
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZNSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE_E9_M_createIRKS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.0* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !502 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.0*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.0* %1, %class.anon.0** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !503
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !504
  %8 = bitcast i8* %7 to %class.anon.0*, !dbg !505
  %9 = load %class.anon.0*, %class.anon.0** %5, align 8, !dbg !506
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIRKZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !507
  %11 = bitcast %class.anon.0* %8 to i8*, !dbg !508
  %12 = bitcast %class.anon.0* %10 to i8*, !dbg !508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZSt7forwardIRKZZ4testiiENK3$_0clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.0* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !510 {
  %2 = alloca %class.anon.0*, align 8
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  %3 = load %class.anon.0*, %class.anon.0** %2, align 8, !dbg !511
  ret %class.anon.0* %3, !dbg !512
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.0* @"_ZNSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !513 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !514
  %5 = bitcast i8* %4 to %class.anon.0*, !dbg !515
  ret %class.anon.0* %5, !dbg !516
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E21_M_not_empty_functionIS2_EEbRKT_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 !dbg !517 {
  %2 = alloca %class.anon.1*, align 8
  store %class.anon.1* %0, %class.anon.1** %2, align 8
  ret i1 true, !dbg !518
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E15_M_init_functorIS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !519 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.1*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.1* %1, %class.anon.1** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !520
  %7 = load %class.anon.1*, %class.anon.1** %4, align 8, !dbg !521
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !522
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E9_M_createIS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !523

9:                                                ; preds = %2
  ret void, !dbg !524

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !523
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !523
  call void @__clang_call_terminate(i8* %12) #9, !dbg !523
  unreachable, !dbg !523
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !525 {
  %2 = alloca %class.anon.1*, align 8
  store %class.anon.1* %0, %class.anon.1** %2, align 8
  %3 = load %class.anon.1*, %class.anon.1** %2, align 8, !dbg !526
  ret %class.anon.1* %3, !dbg !527
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !528 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !529
  %4 = call noundef %class.anon.1* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !530
  %5 = call noundef i32 @"_ZSt10__invoke_rIiRZZ4testiiENK3$_0clEvEUlvE0_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES6_EEE5valueES6_E4typeEOSB_DpOSC_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %4), !dbg !531
  ret i32 %5, !dbg !532
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !533 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4, !dbg !534
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !535

8:                                                ; preds = %3
  %9 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !536
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %9), !dbg !537
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" to %"class.std::type_info"*), %"class.std::type_info"** %10, align 8, !dbg !538
  br label %21, !dbg !539

11:                                               ; preds = %3
  %12 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !540
  %13 = call noundef %class.anon.1* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12), !dbg !541
  %14 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !542
  %15 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1** @"_ZNSt9_Any_data9_M_accessIPZZ4testiiENK3$_0clEvEUlvE0_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %14), !dbg !543
  store %class.anon.1* %13, %class.anon.1** %15, align 8, !dbg !544
  br label %21, !dbg !545

16:                                               ; preds = %3
  %17 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !546
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !547
  %19 = load i32, i32* %6, align 4, !dbg !548
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !549
  br label %21, !dbg !550

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !551
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E9_M_createIS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !552 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.1*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.1* %1, %class.anon.1** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !553
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !554
  %8 = bitcast i8* %7 to %class.anon.1*, !dbg !555
  %9 = load %class.anon.1*, %class.anon.1** %5, align 8, !dbg !556
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !557
  %11 = bitcast %class.anon.1* %8 to i8*, !dbg !558
  %12 = bitcast %class.anon.1* %10 to i8*, !dbg !558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZZ4testiiENK3$_0clEvEUlvE0_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES6_EEE5valueES6_E4typeEOSB_DpOSC_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !560 {
  %2 = alloca %class.anon.1*, align 8
  %3 = alloca %"struct.std::__invoke_other", align 1
  store %class.anon.1* %0, %class.anon.1** %2, align 8
  %4 = load %class.anon.1*, %class.anon.1** %2, align 8, !dbg !561
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIRZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !562
  %6 = call noundef i32 @"_ZSt13__invoke_implIiRZZ4testiiENK3$_0clEvEUlvE0_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %5), !dbg !563
  ret i32 %6, !dbg !564
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef %class.anon.1* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !565 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %class.anon.1*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !566
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZNKSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE0_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !567
  store %class.anon.1* %5, %class.anon.1** %3, align 8, !dbg !568
  %6 = load %class.anon.1*, %class.anon.1** %3, align 8, !dbg !569
  %7 = call noundef %class.anon.1* @"_ZSt11__addressofIKZZ4testiiENK3$_0clEvEUlvE0_EPT_RS3_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !570
  ret %class.anon.1* %7, !dbg !571
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZZ4testiiENK3$_0clEvEUlvE0_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !572 {
  %2 = alloca %"struct.std::__invoke_other", align 1
  %3 = alloca %class.anon.1*, align 8
  store %class.anon.1* %0, %class.anon.1** %3, align 8
  %4 = load %class.anon.1*, %class.anon.1** %3, align 8, !dbg !573
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIRZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !574
  %6 = call noundef i32 @"_ZZZ4testiiENK3$_0clEvENKUlvE0_clEv"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %5), !dbg !574
  ret i32 %6, !dbg !575
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIRZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !576 {
  %2 = alloca %class.anon.1*, align 8
  store %class.anon.1* %0, %class.anon.1** %2, align 8
  %3 = load %class.anon.1*, %class.anon.1** %2, align 8, !dbg !577
  ret %class.anon.1* %3, !dbg !578
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZZZ4testiiENK3$_0clEvENKUlvE0_clEv"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !579 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.anon.1*, align 8
  %5 = alloca %"class.std::function", align 8
  %6 = alloca %class.anon.3, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %class.anon.1* %0, %class.anon.1** %4, align 8
  %9 = load %class.anon.1*, %class.anon.1** %4, align 8
  %10 = getelementptr inbounds %class.anon.3, %class.anon.3* %6, i32 0, i32 0, !dbg !580
  %11 = getelementptr inbounds %class.anon.1, %class.anon.1* %9, i32 0, i32 0, !dbg !581
  %12 = load i32*, i32** %11, align 8, !dbg !581
  store i32* %12, i32** %10, align 8, !dbg !580
  call void @"_ZNSt8functionIFivEEC2IZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !580
  store i32 10, i32* %2, align 4
  %13 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %14 unwind label %64, !dbg !582

14:                                               ; preds = %1
  store i32 %13, i32* %3, align 4, !dbg !582
  %15 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %16 unwind label %64, !dbg !584

16:                                               ; preds = %14
  %17 = icmp ne i32 %15, 0, !dbg !584
  %18 = xor i1 %17, true, !dbg !584
  %19 = zext i1 %18 to i32, !dbg !584
  %20 = load i32, i32* %3, align 4, !dbg !584
  %21 = icmp ne i32 %19, %20, !dbg !584
  br i1 %21, label %22, label %25, !dbg !584

22:                                               ; preds = %16
  %23 = load i64, i64* @_ZL5no_op, align 8, !dbg !584
  %24 = add i64 %23, 1, !dbg !584
  store i64 %24, i64* @_ZL5no_op, align 8, !dbg !584
  br label %25, !dbg !584

25:                                               ; preds = %22, %16
  %26 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %27 unwind label %64, !dbg !585

27:                                               ; preds = %25
  %28 = xor i32 %26, -1, !dbg !585
  %29 = load i32, i32* %3, align 4, !dbg !585
  %30 = icmp ne i32 %28, %29, !dbg !585
  br i1 %30, label %31, label %34, !dbg !585

31:                                               ; preds = %27
  %32 = load i64, i64* @_ZL5no_op, align 8, !dbg !585
  %33 = add i64 %32, 1, !dbg !585
  store i64 %33, i64* @_ZL5no_op, align 8, !dbg !585
  br label %34, !dbg !585

34:                                               ; preds = %31, %27
  %35 = invoke noundef i32 @_ZNKSt8functionIFivEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %36 unwind label %64, !dbg !586

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %35, !dbg !586
  %38 = load i32, i32* %3, align 4, !dbg !586
  %39 = icmp ne i32 %37, %38, !dbg !586
  br i1 %39, label %40, label %43, !dbg !586

40:                                               ; preds = %36
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !586
  %42 = add i64 %41, 1, !dbg !586
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !586
  br label %43, !dbg !586

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %3, align 4, !dbg !587
  %45 = icmp ne i32 0, %44, !dbg !587
  br i1 %45, label %46, label %49, !dbg !587

46:                                               ; preds = %43
  %47 = load i64, i64* @_ZL5no_op, align 8, !dbg !587
  %48 = add i64 %47, 1, !dbg !587
  store i64 %48, i64* @_ZL5no_op, align 8, !dbg !587
  br label %49, !dbg !587

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %3, align 4, !dbg !588
  %51 = icmp ne i32 1, %50, !dbg !588
  br i1 %51, label %52, label %55, !dbg !588

52:                                               ; preds = %49
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !588
  %54 = add i64 %53, 1, !dbg !588
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !588
  br label %55, !dbg !588

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %3, align 4, !dbg !589
  %57 = icmp ne i32 -1, %56, !dbg !589
  br i1 %57, label %58, label %61, !dbg !589

58:                                               ; preds = %55
  %59 = load i64, i64* @_ZL5no_op, align 8, !dbg !589
  %60 = add i64 %59, 1, !dbg !589
  store i64 %60, i64* @_ZL5no_op, align 8, !dbg !589
  br label %61, !dbg !589

61:                                               ; preds = %55, %58
  %62 = load i32, i32* %3, align 4, !dbg !590
  br label %63, !dbg !591

63:                                               ; preds = %61
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5) #8, !dbg !592
  ret i32 %62, !dbg !592

64:                                               ; preds = %34, %25, %14, %1
  %65 = landingpad { i8*, i32 }
          cleanup, !dbg !593
  %66 = extractvalue { i8*, i32 } %65, 0, !dbg !593
  store i8* %66, i8** %7, align 8, !dbg !593
  %67 = extractvalue { i8*, i32 } %65, 1, !dbg !593
  store i32 %67, i32* %8, align 4, !dbg !593
  call void @_ZNSt8functionIFivEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %5) #8, !dbg !592
  br label %68, !dbg !592

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8, !dbg !592
  %70 = load i32, i32* %8, align 4, !dbg !592
  %71 = insertvalue { i8*, i32 } undef, i8* %69, 0, !dbg !592
  %72 = insertvalue { i8*, i32 } %71, i32 %70, 1, !dbg !592
  resume { i8*, i32 } %72, !dbg !592
}

; Function Attrs: noinline nounwind uwtable
define internal void @"_ZNSt8functionIFivEEC2IZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !594 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %class.anon.3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %class.anon.3* %1, %class.anon.3** %4, align 8
  %7 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %8 = bitcast %"class.std::function"* %7 to %"struct.std::_Maybe_unary_or_binary_function"*, !dbg !595
  %9 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !595
  %10 = bitcast %"class.std::_Function_base"* %9 to i8*, !dbg !596
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !596
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false), !dbg !596
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %9) #8, !dbg !596
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !597
  store i32 (%"union.std::_Any_data"*)* null, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !597
  %13 = load %class.anon.3*, %class.anon.3** %4, align 8, !dbg !598
  %14 = invoke noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E21_M_not_empty_functionIS3_EEbRKT_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %13)
          to label %15 unwind label %24, !dbg !599

15:                                               ; preds = %2
  br i1 %14, label %16, label %29, !dbg !599

16:                                               ; preds = %15
  %17 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !600
  %18 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %17, i32 0, i32 0, !dbg !600
  %19 = load %class.anon.3*, %class.anon.3** %4, align 8, !dbg !601
  %20 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %19) #8, !dbg !602
  call void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E15_M_init_functorIS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !603
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %7, i32 0, i32 1, !dbg !604
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %21, align 8, !dbg !605
  %22 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !606
  %23 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %22, i32 0, i32 1, !dbg !606
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !dbg !607
  br label %29, !dbg !608

24:                                               ; preds = %2
  %25 = landingpad { i8*, i32 }
          catch i8* null, !dbg !609
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !609
  store i8* %26, i8** %5, align 8, !dbg !609
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !609
  store i32 %27, i32* %6, align 4, !dbg !609
  %28 = bitcast %"class.std::function"* %7 to %"class.std::_Function_base"*, !dbg !609
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %28) #8, !dbg !609
  br label %30, !dbg !609

29:                                               ; preds = %16, %15
  ret void, !dbg !609

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !609
  call void @__clang_call_terminate(i8* %31) #9, !dbg !609
  unreachable, !dbg !609
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E21_M_not_empty_functionIS3_EEbRKT_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 !dbg !610 {
  %2 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %2, align 8
  ret i1 true, !dbg !611
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E15_M_init_functorIS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !612 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.3*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.3* %1, %class.anon.3** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !613
  %7 = load %class.anon.3*, %class.anon.3** %4, align 8, !dbg !614
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !615
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E9_M_createIS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !616

9:                                                ; preds = %2
  ret void, !dbg !617

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !616
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !616
  call void @__clang_call_terminate(i8* %12) #9, !dbg !616
  unreachable, !dbg !616
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !618 {
  %2 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %2, align 8
  %3 = load %class.anon.3*, %class.anon.3** %2, align 8, !dbg !619
  ret %class.anon.3* %3, !dbg !620
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !621 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !622
  %4 = call noundef %class.anon.3* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !623
  %5 = call noundef i32 @"_ZSt10__invoke_rIiRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES7_EEE5valueES7_E4typeEOSC_DpOSD_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %4), !dbg !624
  ret i32 %5, !dbg !625
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !626 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4, !dbg !627
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ], !dbg !628

8:                                                ; preds = %3
  %9 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !629
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %9), !dbg !630
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %10, align 8, !dbg !631
  br label %21, !dbg !632

11:                                               ; preds = %3
  %12 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !633
  %13 = call noundef %class.anon.3* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12), !dbg !634
  %14 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !635
  %15 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3** @"_ZNSt9_Any_data9_M_accessIPZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %14), !dbg !636
  store %class.anon.3* %13, %class.anon.3** %15, align 8, !dbg !637
  br label %21, !dbg !638

16:                                               ; preds = %3
  %17 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !639
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !640
  %19 = load i32, i32* %6, align 4, !dbg !641
  %20 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19), !dbg !642
  br label %21, !dbg !643

21:                                               ; preds = %16, %11, %8
  ret i1 false, !dbg !644
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E9_M_createIS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !645 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.3*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.3* %1, %class.anon.3** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !646
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !647
  %8 = bitcast i8* %7 to %class.anon.3*, !dbg !648
  %9 = load %class.anon.3*, %class.anon.3** %5, align 8, !dbg !649
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !650
  %11 = bitcast %class.anon.3* %8 to i8*, !dbg !651
  %12 = bitcast %class.anon.3* %10 to i8*, !dbg !651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt10__invoke_rIiRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_JEENSt9enable_ifIXsr6__and_ISt6__not_ISt7is_voidIT_EESt14is_convertibleINSt15__invoke_resultIT0_JDpT1_EE4typeES7_EEE5valueES7_E4typeEOSC_DpOSD_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !653 {
  %2 = alloca %class.anon.3*, align 8
  %3 = alloca %"struct.std::__invoke_other", align 1
  store %class.anon.3* %0, %class.anon.3** %2, align 8
  %4 = load %class.anon.3*, %class.anon.3** %2, align 8, !dbg !654
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !655
  %6 = call noundef i32 @"_ZSt13__invoke_implIiRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %5), !dbg !656
  ret i32 %6, !dbg !657
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef %class.anon.3* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !658 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %class.anon.3*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8, !dbg !659
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZNKSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !660
  store %class.anon.3* %5, %class.anon.3** %3, align 8, !dbg !661
  %6 = load %class.anon.3*, %class.anon.3** %3, align 8, !dbg !662
  %7 = call noundef %class.anon.3* @"_ZSt11__addressofIKZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EPT_RS4_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %6) #8, !dbg !663
  ret %class.anon.3* %7, !dbg !664
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @"_ZSt13__invoke_implIiRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #0 !dbg !665 {
  %2 = alloca %"struct.std::__invoke_other", align 1
  %3 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %3, align 8
  %4 = load %class.anon.3*, %class.anon.3** %3, align 8, !dbg !666
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %4) #8, !dbg !667
  %6 = call noundef i32 @"_ZZZZ4testiiENK3$_0clEvENKUlvE0_clEvENKUlvE_clEv"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %5), !dbg !667
  ret i32 %6, !dbg !668
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIRZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !669 {
  %2 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %2, align 8
  %3 = load %class.anon.3*, %class.anon.3** %2, align 8, !dbg !670
  ret %class.anon.3* %3, !dbg !671
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @"_ZZZZ4testiiENK3$_0clEvENKUlvE0_clEvENKUlvE_clEv"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 !dbg !672 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %5, align 8
  %6 = load %class.anon.3*, %class.anon.3** %5, align 8
  %7 = getelementptr inbounds %class.anon.3, %class.anon.3* %6, i32 0, i32 0, !dbg !673
  %8 = load i32*, i32** %7, align 8, !dbg !673
  store i32* %8, i32** %2, align 8
  store i32 8, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8, !dbg !674
  %10 = load volatile i32, i32* %9, align 4, !dbg !674
  store i32 %10, i32* %4, align 4, !dbg !674
  %11 = load i32*, i32** %2, align 8, !dbg !676
  %12 = load volatile i32, i32* %11, align 4, !dbg !676
  %13 = add nsw i32 %12, 1, !dbg !676
  %14 = load i32, i32* %4, align 4, !dbg !676
  %15 = icmp ne i32 %13, %14, !dbg !676
  br i1 %15, label %16, label %19, !dbg !676

16:                                               ; preds = %1
  %17 = load i64, i64* @_ZL5no_op, align 8, !dbg !676
  %18 = add i64 %17, 1, !dbg !676
  store i64 %18, i64* @_ZL5no_op, align 8, !dbg !676
  br label %19, !dbg !676

19:                                               ; preds = %16, %1
  %20 = load i32*, i32** %2, align 8, !dbg !677
  %21 = load volatile i32, i32* %20, align 4, !dbg !677
  %22 = sub nsw i32 %21, 1, !dbg !677
  %23 = load i32, i32* %4, align 4, !dbg !677
  %24 = icmp ne i32 %22, %23, !dbg !677
  br i1 %24, label %25, label %28, !dbg !677

25:                                               ; preds = %19
  %26 = load i64, i64* @_ZL5no_op, align 8, !dbg !677
  %27 = add i64 %26, 1, !dbg !677
  store i64 %27, i64* @_ZL5no_op, align 8, !dbg !677
  br label %28, !dbg !677

28:                                               ; preds = %19, %25
  %29 = load i32, i32* %4, align 4, !dbg !678
  ret i32 %29, !dbg !679
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZNKSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !680 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !681
  %5 = bitcast i8* %4 to %class.anon.3*, !dbg !682
  ret %class.anon.3* %5, !dbg !683
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef %class.anon.3* @"_ZSt11__addressofIKZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EPT_RS4_"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !684 {
  %2 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %2, align 8
  %3 = load %class.anon.3*, %class.anon.3** %2, align 8, !dbg !685
  ret %class.anon.3* %3, !dbg !686
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.3** @"_ZNSt9_Any_data9_M_accessIPZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !687 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !688
  %5 = bitcast i8* %4 to %class.anon.3**, !dbg !689
  ret %class.anon.3** %5, !dbg !690
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !691 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4, !dbg !692
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !693

9:                                                ; preds = %3
  %10 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !694
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10), !dbg !695
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %11, align 8, !dbg !696
  br label %23, !dbg !697

12:                                               ; preds = %3
  %13 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !698
  %14 = call noundef %class.anon.3* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13), !dbg !699
  %15 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !700
  %16 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3** @"_ZNSt9_Any_data9_M_accessIPZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15), !dbg !701
  store %class.anon.3* %14, %class.anon.3** %16, align 8, !dbg !702
  br label %23, !dbg !703

17:                                               ; preds = %3
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !704
  %19 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !705
  %20 = call noundef %class.anon.3* @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19), !dbg !706
  call void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !707
  br label %23, !dbg !708

21:                                               ; preds = %3
  %22 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !709
  call void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22), !dbg !710
  br label %23, !dbg !711

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !712
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !713 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.3*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.3* %1, %class.anon.3** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !714
  %7 = load %class.anon.3*, %class.anon.3** %4, align 8, !dbg !715
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIRKZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS5_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !716
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E9_M_createIRKS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !717

9:                                                ; preds = %2
  ret void, !dbg !718

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !717
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !717
  call void @__clang_call_terminate(i8* %12) #9, !dbg !717
  unreachable, !dbg !717
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !719 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !720
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZNSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !721
  ret void, !dbg !722
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_E9_M_createIRKS3_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.3* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !723 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.3*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.3* %1, %class.anon.3** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !724
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !725
  %8 = bitcast i8* %7 to %class.anon.3*, !dbg !726
  %9 = load %class.anon.3*, %class.anon.3** %5, align 8, !dbg !727
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIRKZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS5_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !728
  %11 = bitcast %class.anon.3* %8 to i8*, !dbg !729
  %12 = bitcast %class.anon.3* %10 to i8*, !dbg !729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !729
  ret void, !dbg !730
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZSt7forwardIRKZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EOT_RNSt16remove_referenceIS5_E4typeE"(%class.anon.3* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !731 {
  %2 = alloca %class.anon.3*, align 8
  store %class.anon.3* %0, %class.anon.3** %2, align 8
  %3 = load %class.anon.3*, %class.anon.3** %2, align 8, !dbg !732
  ret %class.anon.3* %3, !dbg !733
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.3* @"_ZNSt9_Any_data9_M_accessIZZZ4testiiENK3$_0clEvENKUlvE0_clEvEUlvE_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !734 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !735
  %5 = bitcast i8* %4 to %class.anon.3*, !dbg !736
  ret %class.anon.3* %5, !dbg !737
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZNKSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE0_EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !738 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !739
  %5 = bitcast i8* %4 to %class.anon.1*, !dbg !740
  ret %class.anon.1* %5, !dbg !741
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef %class.anon.1* @"_ZSt11__addressofIKZZ4testiiENK3$_0clEvEUlvE0_EPT_RS3_"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !742 {
  %2 = alloca %class.anon.1*, align 8
  store %class.anon.1* %0, %class.anon.1** %2, align 8
  %3 = load %class.anon.1*, %class.anon.1** %2, align 8, !dbg !743
  ret %class.anon.1* %3, !dbg !744
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.1** @"_ZNSt9_Any_data9_M_accessIPZZ4testiiENK3$_0clEvEUlvE0_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !745 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !746
  %5 = bitcast i8* %4 to %class.anon.1**, !dbg !747
  ret %class.anon.1** %5, !dbg !748
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !749 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4, !dbg !750
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !751

9:                                                ; preds = %3
  %10 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !752
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10), !dbg !753
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" to %"class.std::type_info"*), %"class.std::type_info"** %11, align 8, !dbg !754
  br label %23, !dbg !755

12:                                               ; preds = %3
  %13 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !756
  %14 = call noundef %class.anon.1* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13), !dbg !757
  %15 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !758
  %16 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1** @"_ZNSt9_Any_data9_M_accessIPZZ4testiiENK3$_0clEvEUlvE0_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15), !dbg !759
  store %class.anon.1* %14, %class.anon.1** %16, align 8, !dbg !760
  br label %23, !dbg !761

17:                                               ; preds = %3
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !762
  %19 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !763
  %20 = call noundef %class.anon.1* @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19), !dbg !764
  call void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %20) #8, !dbg !765
  br label %23, !dbg !766

21:                                               ; preds = %3
  %22 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !767
  call void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22), !dbg !768
  br label %23, !dbg !769

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !770
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !771 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon.1*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon.1* %1, %class.anon.1** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !772
  %7 = load %class.anon.1*, %class.anon.1** %4, align 8, !dbg !773
  %8 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIRKZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %7) #8, !dbg !774
  invoke void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E9_M_createIRKS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !dbg !775

9:                                                ; preds = %2
  ret void, !dbg !776

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !775
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !775
  call void @__clang_call_terminate(i8* %12) #9, !dbg !775
  unreachable, !dbg !775
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !777 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !778
  %5 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZNSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE0_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !779
  ret void, !dbg !780
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ4testiiENK3$_0clEvEUlvE0_E9_M_createIRKS2_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon.1* noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !dbg !781 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon.1*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon.1* %1, %class.anon.1** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !782
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !783
  %8 = bitcast i8* %7 to %class.anon.1*, !dbg !784
  %9 = load %class.anon.1*, %class.anon.1** %5, align 8, !dbg !785
  %10 = call noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIRKZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !786
  %11 = bitcast %class.anon.1* %8 to i8*, !dbg !787
  %12 = bitcast %class.anon.1* %10 to i8*, !dbg !787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !787
  ret void, !dbg !788
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZSt7forwardIRKZZ4testiiENK3$_0clEvEUlvE0_EOT_RNSt16remove_referenceIS4_E4typeE"(%class.anon.1* noundef nonnull align 8 dereferenceable(8) %0) #3 !dbg !789 {
  %2 = alloca %class.anon.1*, align 8
  store %class.anon.1* %0, %class.anon.1** %2, align 8
  %3 = load %class.anon.1*, %class.anon.1** %2, align 8, !dbg !790
  ret %class.anon.1* %3, !dbg !791
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon.1* @"_ZNSt9_Any_data9_M_accessIZZ4testiiENK3$_0clEvEUlvE0_EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !792 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !793
  %5 = bitcast i8* %4 to %class.anon.1*, !dbg !794
  ret %class.anon.1* %5, !dbg !795
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZNKSt9_Any_data9_M_accessIZ4testiiE3$_0EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !796 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !797
  %5 = bitcast i8* %4 to %class.anon*, !dbg !798
  ret %class.anon* %5, !dbg !799
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef %class.anon* @"_ZSt11__addressofIKZ4testiiE3$_0EPT_RS2_"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #3 !dbg !800 {
  %2 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %2, align 8
  %3 = load %class.anon*, %class.anon** %2, align 8, !dbg !801
  ret %class.anon* %3, !dbg !802
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ4testiiE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !803 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !804
  %5 = bitcast i8* %4 to %class.anon**, !dbg !805
  ret %class.anon** %5, !dbg !806
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 align 2 !dbg !807 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4, !dbg !808
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ], !dbg !809

9:                                                ; preds = %3
  %10 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !810
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10), !dbg !811
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4testiiE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %11, align 8, !dbg !812
  br label %23, !dbg !813

12:                                               ; preds = %3
  %13 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !814
  %14 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13), !dbg !815
  %15 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !816
  %16 = call noundef nonnull align 8 dereferenceable(8) %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ4testiiE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15), !dbg !817
  store %class.anon* %14, %class.anon** %16, align 8, !dbg !818
  br label %23, !dbg !819

17:                                               ; preds = %3
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !820
  %19 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8, !dbg !821
  %20 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19), !dbg !822
  call void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, %class.anon* noundef nonnull align 8 dereferenceable(16) %20) #8, !dbg !823
  br label %23, !dbg !824

21:                                               ; preds = %3
  %22 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !825
  call void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22), !dbg !826
  br label %23, !dbg !827

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false, !dbg !828
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon* noundef nonnull align 8 dereferenceable(16) %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !829 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %class.anon*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %class.anon* %1, %class.anon** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !830
  %7 = load %class.anon*, %class.anon** %4, align 8, !dbg !831
  %8 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIRKZ4testiiE3$_0EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %7) #8, !dbg !832
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, %class.anon* noundef nonnull align 8 dereferenceable(16) %8)
          to label %9 unwind label %10, !dbg !833

9:                                                ; preds = %2
  ret void, !dbg !834

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !833
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !833
  call void @__clang_call_terminate(i8* %12) #9, !dbg !833
  unreachable, !dbg !833
}

; Function Attrs: mustprogress noinline uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 !dbg !835 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8, !dbg !836
  %5 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZNSt9_Any_data9_M_accessIZ4testiiE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4), !dbg !837
  ret void, !dbg !838
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4testiiE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon* noundef nonnull align 8 dereferenceable(16) %1) #3 align 2 !dbg !839 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %class.anon* %1, %class.anon** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8, !dbg !840
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6), !dbg !841
  %8 = bitcast i8* %7 to %class.anon*, !dbg !842
  %9 = load %class.anon*, %class.anon** %5, align 8, !dbg !843
  %10 = call noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIRKZ4testiiE3$_0EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %9) #8, !dbg !844
  %11 = bitcast %class.anon* %8 to i8*, !dbg !845
  %12 = bitcast %class.anon* %10 to i8*, !dbg !845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false), !dbg !845
  ret void, !dbg !846
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZSt7forwardIRKZ4testiiE3$_0EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon* noundef nonnull align 8 dereferenceable(16) %0) #3 !dbg !847 {
  %2 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %2, align 8
  %3 = load %class.anon*, %class.anon** %2, align 8, !dbg !848
  ret %class.anon* %3, !dbg !849
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(16) %class.anon* @"_ZNSt9_Any_data9_M_accessIZ4testiiE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 !dbg !850 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3), !dbg !851
  %5 = bitcast i8* %4 to %class.anon*, !dbg !852
  ret %class.anon* %5, !dbg !853
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "unoptimized-instrumented.cc", directory: "/home/jlj/dev/dredd-evalutation/Experiments/basic-blocks-and-control-flow")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!9 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 121, type: !10, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 122, column: 35, scope: !9)
!13 = !DILocation(line: 89, column: 3, scope: !14, inlinedAt: !15)
!14 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 88, type: !10, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!15 = distinct !DILocation(line: 122, column: 10, scope: !9)
!16 = !DILocation(line: 90, column: 3, scope: !14, inlinedAt: !15)
!17 = !DILocation(line: 91, column: 3, scope: !14, inlinedAt: !15)
!18 = !DILocation(line: 92, column: 3, scope: !14, inlinedAt: !15)
!19 = !DILocation(line: 93, column: 3, scope: !14, inlinedAt: !15)
!20 = !DILocation(line: 94, column: 3, scope: !14, inlinedAt: !15)
!21 = !DILocation(line: 95, column: 3, scope: !14, inlinedAt: !15)
!22 = !DILocation(line: 96, column: 10, scope: !14, inlinedAt: !15)
!23 = !DILocation(line: 96, column: 3, scope: !14, inlinedAt: !15)
!24 = !DILocation(line: 122, column: 3, scope: !9)
!25 = !DILocation(line: 123, column: 1, scope: !9)
!26 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:35), void>", scope: !27, file: !27, line: 435, type: !10, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_function.h", directory: "")
!28 = !DILocation(line: 438, column: 2, scope: !26)
!29 = !DILocation(line: 437, column: 4, scope: !26)
!30 = !DILocation(line: 667, column: 21, scope: !26)
!31 = !DILocation(line: 447, column: 43, scope: !26)
!32 = !DILocation(line: 447, column: 8, scope: !26)
!33 = !DILocation(line: 449, column: 37, scope: !26)
!34 = !DILocation(line: 450, column: 32, scope: !26)
!35 = !DILocation(line: 450, column: 9, scope: !26)
!36 = !DILocation(line: 449, column: 8, scope: !26)
!37 = !DILocation(line: 451, column: 8, scope: !26)
!38 = !DILocation(line: 451, column: 19, scope: !26)
!39 = !DILocation(line: 452, column: 8, scope: !26)
!40 = !DILocation(line: 452, column: 19, scope: !26)
!41 = !DILocation(line: 453, column: 6, scope: !26)
!42 = !DILocation(line: 454, column: 2, scope: !26)
!43 = distinct !DISubprogram(name: "~function", scope: !27, file: !27, line: 111, type: !10, scopeLine: 111, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!44 = !DILocation(line: 111, column: 11, scope: !43)
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 125, type: !10, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!46 = !DILocation(line: 75, column: 3, scope: !47, inlinedAt: !48)
!47 = distinct !DISubprogram(name: "__dredd_replace_expr_int_zero", scope: !1, file: !1, line: 74, type: !10, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!48 = distinct !DILocation(line: 126, column: 10, scope: !45)
!49 = !DILocation(line: 76, column: 3, scope: !47, inlinedAt: !48)
!50 = !DILocation(line: 77, column: 3, scope: !47, inlinedAt: !48)
!51 = !DILocation(line: 78, column: 10, scope: !47, inlinedAt: !48)
!52 = !DILocation(line: 126, column: 6, scope: !45)
!53 = !DILocation(line: 75, column: 3, scope: !47, inlinedAt: !54)
!54 = distinct !DILocation(line: 127, column: 10, scope: !45)
!55 = !DILocation(line: 76, column: 3, scope: !47, inlinedAt: !54)
!56 = !DILocation(line: 77, column: 3, scope: !47, inlinedAt: !54)
!57 = !DILocation(line: 78, column: 10, scope: !47, inlinedAt: !54)
!58 = !DILocation(line: 127, column: 6, scope: !45)
!59 = !DILocation(line: 82, column: 3, scope: !60, inlinedAt: !61)
!60 = distinct !DISubprogram(name: "__dredd_replace_expr_int_lvalue", scope: !1, file: !1, line: 81, type: !10, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!61 = distinct !DILocation(line: 128, column: 33, scope: !45)
!62 = !DILocation(line: 83, column: 3, scope: !60, inlinedAt: !61)
!63 = !DILocation(line: 84, column: 3, scope: !60, inlinedAt: !61)
!64 = !DILocation(line: 85, column: 10, scope: !60, inlinedAt: !61)
!65 = !DILocation(line: 100, column: 3, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 99, type: !10, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!67 = distinct !DILocation(line: 128, column: 8, scope: !45)
!68 = !DILocation(line: 101, column: 3, scope: !66, inlinedAt: !67)
!69 = !DILocation(line: 102, column: 3, scope: !66, inlinedAt: !67)
!70 = !DILocation(line: 103, column: 3, scope: !66, inlinedAt: !67)
!71 = !DILocation(line: 104, column: 3, scope: !66, inlinedAt: !67)
!72 = !DILocation(line: 105, column: 3, scope: !66, inlinedAt: !67)
!73 = !DILocation(line: 106, column: 3, scope: !66, inlinedAt: !67)
!74 = !DILocation(line: 107, column: 10, scope: !66, inlinedAt: !67)
!75 = !DILocation(line: 82, column: 3, scope: !60, inlinedAt: !76)
!76 = distinct !DILocation(line: 128, column: 103, scope: !45)
!77 = !DILocation(line: 83, column: 3, scope: !60, inlinedAt: !76)
!78 = !DILocation(line: 84, column: 3, scope: !60, inlinedAt: !76)
!79 = !DILocation(line: 85, column: 10, scope: !60, inlinedAt: !76)
!80 = !DILocation(line: 100, column: 3, scope: !66, inlinedAt: !81)
!81 = distinct !DILocation(line: 128, column: 78, scope: !45)
!82 = !DILocation(line: 101, column: 3, scope: !66, inlinedAt: !81)
!83 = !DILocation(line: 102, column: 3, scope: !66, inlinedAt: !81)
!84 = !DILocation(line: 103, column: 3, scope: !66, inlinedAt: !81)
!85 = !DILocation(line: 104, column: 3, scope: !66, inlinedAt: !81)
!86 = !DILocation(line: 105, column: 3, scope: !66, inlinedAt: !81)
!87 = !DILocation(line: 106, column: 3, scope: !66, inlinedAt: !81)
!88 = !DILocation(line: 107, column: 10, scope: !66, inlinedAt: !81)
!89 = !DILocation(line: 128, column: 3, scope: !45)
!90 = !DILocation(line: 129, column: 1, scope: !45)
!91 = distinct !DISubprogram(name: "operator()", scope: !27, file: !27, line: 586, type: !10, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!92 = !DILocation(line: 588, column: 6, scope: !91)
!93 = !DILocation(line: 589, column: 4, scope: !91)
!94 = !DILocation(line: 590, column: 9, scope: !91)
!95 = !DILocation(line: 590, column: 20, scope: !91)
!96 = !DILocation(line: 590, column: 2, scope: !91)
!97 = distinct !DISubprogram(name: "_M_empty", scope: !27, file: !27, line: 247, type: !10, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!98 = !DILocation(line: 247, column: 37, scope: !97)
!99 = !DILocation(line: 247, column: 36, scope: !97)
!100 = !DILocation(line: 247, column: 29, scope: !97)
!101 = distinct !DISubprogram(name: "~_Function_base", scope: !27, file: !27, line: 241, type: !10, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!102 = !DILocation(line: 243, column: 11, scope: !101)
!103 = !DILocation(line: 244, column: 2, scope: !101)
!104 = !DILocation(line: 244, column: 13, scope: !101)
!105 = !DILocation(line: 244, column: 25, scope: !101)
!106 = !DILocation(line: 245, column: 5, scope: !101)
!107 = distinct !DISubprogram(name: "_Function_base", scope: !27, file: !27, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!108 = !DILocation(line: 252, column: 19, scope: !107)
!109 = !DILocation(line: 252, column: 29, scope: !107)
!110 = !DILocation(line: 252, column: 30, scope: !107)
!111 = !DILocation(line: 253, column: 19, scope: !107)
!112 = !DILocation(line: 239, column: 30, scope: !107)
!113 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !27, file: !27, line: 235, type: !10, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!114 = !DILocation(line: 236, column: 6, scope: !113)
!115 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!116 = !DILocation(line: 215, column: 16, scope: !115)
!117 = !DILocation(line: 215, column: 45, scope: !115)
!118 = !DILocation(line: 215, column: 27, scope: !115)
!119 = !DILocation(line: 215, column: 6, scope: !115)
!120 = !DILocation(line: 216, column: 4, scope: !115)
!121 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!122 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/move.h", directory: "")
!123 = !DILocation(line: 78, column: 33, scope: !121)
!124 = !DILocation(line: 78, column: 7, scope: !121)
!125 = distinct !DISubprogram(name: "_M_invoke", scope: !27, file: !27, line: 288, type: !10, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!126 = !DILocation(line: 290, column: 54, scope: !125)
!127 = !DILocation(line: 290, column: 32, scope: !125)
!128 = !DILocation(line: 290, column: 9, scope: !125)
!129 = !DILocation(line: 290, column: 2, scope: !125)
!130 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 267, type: !10, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!131 = !DILocation(line: 270, column: 10, scope: !130)
!132 = !DILocation(line: 270, column: 2, scope: !130)
!133 = !DILocation(line: 274, column: 6, scope: !130)
!134 = !DILocation(line: 274, column: 13, scope: !130)
!135 = !DILocation(line: 274, column: 43, scope: !130)
!136 = !DILocation(line: 275, column: 6, scope: !130)
!137 = !DILocation(line: 278, column: 60, scope: !130)
!138 = !DILocation(line: 278, column: 38, scope: !130)
!139 = !DILocation(line: 278, column: 6, scope: !130)
!140 = !DILocation(line: 278, column: 13, scope: !130)
!141 = !DILocation(line: 278, column: 36, scope: !130)
!142 = !DILocation(line: 279, column: 6, scope: !130)
!143 = !DILocation(line: 282, column: 24, scope: !130)
!144 = !DILocation(line: 282, column: 32, scope: !130)
!145 = !DILocation(line: 282, column: 42, scope: !130)
!146 = !DILocation(line: 282, column: 6, scope: !130)
!147 = !DILocation(line: 283, column: 4, scope: !130)
!148 = !DILocation(line: 284, column: 2, scope: !130)
!149 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!150 = !DILocation(line: 152, column: 13, scope: !149)
!151 = !DILocation(line: 152, column: 20, scope: !149)
!152 = !DILocation(line: 152, column: 6, scope: !149)
!153 = !DILocation(line: 152, column: 60, scope: !149)
!154 = !DILocation(line: 152, column: 42, scope: !149)
!155 = !DILocation(line: 152, column: 33, scope: !149)
!156 = !DILocation(line: 153, column: 4, scope: !149)
!157 = distinct !DISubprogram(name: "_M_access", scope: !27, file: !27, line: 85, type: !10, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!158 = !DILocation(line: 85, column: 45, scope: !157)
!159 = !DILocation(line: 85, column: 37, scope: !157)
!160 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !161, file: !161, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!161 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/invoke.h", directory: "")
!162 = !DILocation(line: 142, column: 74, scope: !160)
!163 = !DILocation(line: 142, column: 50, scope: !160)
!164 = !DILocation(line: 142, column: 14, scope: !160)
!165 = !DILocation(line: 142, column: 7, scope: !160)
!166 = distinct !DISubprogram(name: "_M_get_pointer", scope: !27, file: !27, line: 134, type: !10, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!167 = !DILocation(line: 138, column: 30, scope: !166)
!168 = !DILocation(line: 138, column: 39, scope: !166)
!169 = !DILocation(line: 138, column: 24, scope: !166)
!170 = !DILocation(line: 139, column: 54, scope: !166)
!171 = !DILocation(line: 139, column: 37, scope: !166)
!172 = !DILocation(line: 139, column: 8, scope: !166)
!173 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !161, file: !161, line: 60, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!174 = !DILocation(line: 61, column: 32, scope: !173)
!175 = !DILocation(line: 61, column: 14, scope: !173)
!176 = !DILocation(line: 61, column: 7, scope: !173)
!177 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:35) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!178 = !DILocation(line: 78, column: 33, scope: !177)
!179 = !DILocation(line: 78, column: 7, scope: !177)
!180 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !10, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!181 = !DILocation(line: 122, column: 128, scope: !180)
!182 = !DILocation(line: 122, column: 129, scope: !180)
!183 = !DILocation(line: 122, column: 292, scope: !180)
!184 = !DILocation(line: 122, column: 293, scope: !180)
!185 = !DILocation(line: 111, column: 3, scope: !186, inlinedAt: !187)
!186 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 110, type: !10, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!187 = distinct !DILocation(line: 122, column: 74, scope: !180)
!188 = !DILocation(line: 112, column: 3, scope: !186, inlinedAt: !187)
!189 = !DILocation(line: 113, column: 3, scope: !186, inlinedAt: !187)
!190 = !DILocation(line: 114, column: 3, scope: !186, inlinedAt: !187)
!191 = !DILocation(line: 115, column: 3, scope: !186, inlinedAt: !187)
!192 = !DILocation(line: 116, column: 3, scope: !186, inlinedAt: !187)
!193 = !DILocation(line: 117, column: 3, scope: !186, inlinedAt: !187)
!194 = !DILocation(line: 118, column: 10, scope: !186, inlinedAt: !187)
!195 = !DILocation(line: 118, column: 3, scope: !186, inlinedAt: !187)
!196 = !DILocation(line: 122, column: 50, scope: !180)
!197 = !DILocation(line: 122, column: 462, scope: !180)
!198 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:128), void>", scope: !27, file: !27, line: 435, type: !10, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!199 = !DILocation(line: 438, column: 2, scope: !198)
!200 = !DILocation(line: 437, column: 4, scope: !198)
!201 = !DILocation(line: 667, column: 21, scope: !198)
!202 = !DILocation(line: 447, column: 43, scope: !198)
!203 = !DILocation(line: 447, column: 8, scope: !198)
!204 = !DILocation(line: 449, column: 37, scope: !198)
!205 = !DILocation(line: 450, column: 32, scope: !198)
!206 = !DILocation(line: 450, column: 9, scope: !198)
!207 = !DILocation(line: 449, column: 8, scope: !198)
!208 = !DILocation(line: 451, column: 8, scope: !198)
!209 = !DILocation(line: 451, column: 19, scope: !198)
!210 = !DILocation(line: 452, column: 8, scope: !198)
!211 = !DILocation(line: 452, column: 19, scope: !198)
!212 = !DILocation(line: 453, column: 6, scope: !198)
!213 = !DILocation(line: 454, column: 2, scope: !198)
!214 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:292), void>", scope: !27, file: !27, line: 435, type: !10, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!215 = !DILocation(line: 438, column: 2, scope: !214)
!216 = !DILocation(line: 437, column: 4, scope: !214)
!217 = !DILocation(line: 667, column: 21, scope: !214)
!218 = !DILocation(line: 447, column: 43, scope: !214)
!219 = !DILocation(line: 447, column: 8, scope: !214)
!220 = !DILocation(line: 449, column: 37, scope: !214)
!221 = !DILocation(line: 450, column: 32, scope: !214)
!222 = !DILocation(line: 450, column: 9, scope: !214)
!223 = !DILocation(line: 449, column: 8, scope: !214)
!224 = !DILocation(line: 451, column: 8, scope: !214)
!225 = !DILocation(line: 451, column: 19, scope: !214)
!226 = !DILocation(line: 452, column: 8, scope: !214)
!227 = !DILocation(line: 452, column: 19, scope: !214)
!228 = !DILocation(line: 453, column: 6, scope: !214)
!229 = !DILocation(line: 454, column: 2, scope: !214)
!230 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !27, file: !27, line: 235, type: !10, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!231 = !DILocation(line: 236, column: 6, scope: !230)
!232 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!233 = !DILocation(line: 215, column: 16, scope: !232)
!234 = !DILocation(line: 215, column: 45, scope: !232)
!235 = !DILocation(line: 215, column: 27, scope: !232)
!236 = !DILocation(line: 215, column: 6, scope: !232)
!237 = !DILocation(line: 216, column: 4, scope: !232)
!238 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!239 = !DILocation(line: 78, column: 33, scope: !238)
!240 = !DILocation(line: 78, column: 7, scope: !238)
!241 = distinct !DISubprogram(name: "_M_invoke", scope: !27, file: !27, line: 288, type: !10, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!242 = !DILocation(line: 290, column: 54, scope: !241)
!243 = !DILocation(line: 290, column: 32, scope: !241)
!244 = !DILocation(line: 290, column: 9, scope: !241)
!245 = !DILocation(line: 290, column: 2, scope: !241)
!246 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 267, type: !10, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!247 = !DILocation(line: 270, column: 10, scope: !246)
!248 = !DILocation(line: 270, column: 2, scope: !246)
!249 = !DILocation(line: 274, column: 6, scope: !246)
!250 = !DILocation(line: 274, column: 13, scope: !246)
!251 = !DILocation(line: 274, column: 43, scope: !246)
!252 = !DILocation(line: 275, column: 6, scope: !246)
!253 = !DILocation(line: 278, column: 60, scope: !246)
!254 = !DILocation(line: 278, column: 38, scope: !246)
!255 = !DILocation(line: 278, column: 6, scope: !246)
!256 = !DILocation(line: 278, column: 13, scope: !246)
!257 = !DILocation(line: 278, column: 36, scope: !246)
!258 = !DILocation(line: 279, column: 6, scope: !246)
!259 = !DILocation(line: 282, column: 24, scope: !246)
!260 = !DILocation(line: 282, column: 32, scope: !246)
!261 = !DILocation(line: 282, column: 42, scope: !246)
!262 = !DILocation(line: 282, column: 6, scope: !246)
!263 = !DILocation(line: 283, column: 4, scope: !246)
!264 = !DILocation(line: 284, column: 2, scope: !246)
!265 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!266 = !DILocation(line: 152, column: 13, scope: !265)
!267 = !DILocation(line: 152, column: 20, scope: !265)
!268 = !DILocation(line: 152, column: 6, scope: !265)
!269 = !DILocation(line: 152, column: 60, scope: !265)
!270 = !DILocation(line: 152, column: 42, scope: !265)
!271 = !DILocation(line: 152, column: 33, scope: !265)
!272 = !DILocation(line: 153, column: 4, scope: !265)
!273 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !161, file: !161, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!274 = !DILocation(line: 142, column: 74, scope: !273)
!275 = !DILocation(line: 142, column: 50, scope: !273)
!276 = !DILocation(line: 142, column: 14, scope: !273)
!277 = !DILocation(line: 142, column: 7, scope: !273)
!278 = distinct !DISubprogram(name: "_M_get_pointer", scope: !27, file: !27, line: 134, type: !10, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!279 = !DILocation(line: 138, column: 30, scope: !278)
!280 = !DILocation(line: 138, column: 39, scope: !278)
!281 = !DILocation(line: 138, column: 24, scope: !278)
!282 = !DILocation(line: 139, column: 54, scope: !278)
!283 = !DILocation(line: 139, column: 37, scope: !278)
!284 = !DILocation(line: 139, column: 8, scope: !278)
!285 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !161, file: !161, line: 60, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!286 = !DILocation(line: 61, column: 32, scope: !285)
!287 = !DILocation(line: 61, column: 14, scope: !285)
!288 = !DILocation(line: 61, column: 7, scope: !285)
!289 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:128) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!290 = !DILocation(line: 78, column: 33, scope: !289)
!291 = !DILocation(line: 78, column: 7, scope: !289)
!292 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !10, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!293 = !DILocation(line: 122, column: 192, scope: !292)
!294 = !DILocation(line: 122, column: 193, scope: !292)
!295 = !DILocation(line: 89, column: 3, scope: !14, inlinedAt: !296)
!296 = distinct !DILocation(line: 122, column: 167, scope: !292)
!297 = !DILocation(line: 90, column: 3, scope: !14, inlinedAt: !296)
!298 = !DILocation(line: 91, column: 3, scope: !14, inlinedAt: !296)
!299 = !DILocation(line: 92, column: 3, scope: !14, inlinedAt: !296)
!300 = !DILocation(line: 93, column: 3, scope: !14, inlinedAt: !296)
!301 = !DILocation(line: 94, column: 3, scope: !14, inlinedAt: !296)
!302 = !DILocation(line: 95, column: 3, scope: !14, inlinedAt: !296)
!303 = !DILocation(line: 96, column: 10, scope: !14, inlinedAt: !296)
!304 = !DILocation(line: 96, column: 3, scope: !14, inlinedAt: !296)
!305 = !DILocation(line: 122, column: 143, scope: !292)
!306 = !DILocation(line: 122, column: 288, scope: !292)
!307 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:192), void>", scope: !27, file: !27, line: 435, type: !10, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!308 = !DILocation(line: 438, column: 2, scope: !307)
!309 = !DILocation(line: 437, column: 4, scope: !307)
!310 = !DILocation(line: 667, column: 21, scope: !307)
!311 = !DILocation(line: 447, column: 43, scope: !307)
!312 = !DILocation(line: 447, column: 8, scope: !307)
!313 = !DILocation(line: 449, column: 37, scope: !307)
!314 = !DILocation(line: 450, column: 32, scope: !307)
!315 = !DILocation(line: 450, column: 9, scope: !307)
!316 = !DILocation(line: 449, column: 8, scope: !307)
!317 = !DILocation(line: 451, column: 8, scope: !307)
!318 = !DILocation(line: 451, column: 19, scope: !307)
!319 = !DILocation(line: 452, column: 8, scope: !307)
!320 = !DILocation(line: 452, column: 19, scope: !307)
!321 = !DILocation(line: 453, column: 6, scope: !307)
!322 = !DILocation(line: 454, column: 2, scope: !307)
!323 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at unoptimized-instrumented.cc:122:192)>", scope: !27, file: !27, line: 235, type: !10, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!324 = !DILocation(line: 236, column: 6, scope: !323)
!325 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:192)>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!326 = !DILocation(line: 215, column: 16, scope: !325)
!327 = !DILocation(line: 215, column: 45, scope: !325)
!328 = !DILocation(line: 215, column: 27, scope: !325)
!329 = !DILocation(line: 215, column: 6, scope: !325)
!330 = !DILocation(line: 216, column: 4, scope: !325)
!331 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:192)>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!332 = !DILocation(line: 78, column: 33, scope: !331)
!333 = !DILocation(line: 78, column: 7, scope: !331)
!334 = distinct !DISubprogram(name: "_M_invoke", scope: !27, file: !27, line: 288, type: !10, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!335 = !DILocation(line: 290, column: 54, scope: !334)
!336 = !DILocation(line: 290, column: 32, scope: !334)
!337 = !DILocation(line: 290, column: 9, scope: !334)
!338 = !DILocation(line: 290, column: 2, scope: !334)
!339 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 267, type: !10, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!340 = !DILocation(line: 270, column: 10, scope: !339)
!341 = !DILocation(line: 270, column: 2, scope: !339)
!342 = !DILocation(line: 274, column: 6, scope: !339)
!343 = !DILocation(line: 274, column: 13, scope: !339)
!344 = !DILocation(line: 274, column: 43, scope: !339)
!345 = !DILocation(line: 275, column: 6, scope: !339)
!346 = !DILocation(line: 278, column: 60, scope: !339)
!347 = !DILocation(line: 278, column: 38, scope: !339)
!348 = !DILocation(line: 278, column: 6, scope: !339)
!349 = !DILocation(line: 278, column: 13, scope: !339)
!350 = !DILocation(line: 278, column: 36, scope: !339)
!351 = !DILocation(line: 279, column: 6, scope: !339)
!352 = !DILocation(line: 282, column: 24, scope: !339)
!353 = !DILocation(line: 282, column: 32, scope: !339)
!354 = !DILocation(line: 282, column: 42, scope: !339)
!355 = !DILocation(line: 282, column: 6, scope: !339)
!356 = !DILocation(line: 283, column: 4, scope: !339)
!357 = !DILocation(line: 284, column: 2, scope: !339)
!358 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:192)>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!359 = !DILocation(line: 152, column: 13, scope: !358)
!360 = !DILocation(line: 152, column: 20, scope: !358)
!361 = !DILocation(line: 152, column: 6, scope: !358)
!362 = !DILocation(line: 152, column: 60, scope: !358)
!363 = !DILocation(line: 152, column: 42, scope: !358)
!364 = !DILocation(line: 152, column: 33, scope: !358)
!365 = !DILocation(line: 153, column: 4, scope: !358)
!366 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !161, file: !161, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!367 = !DILocation(line: 142, column: 74, scope: !366)
!368 = !DILocation(line: 142, column: 50, scope: !366)
!369 = !DILocation(line: 142, column: 14, scope: !366)
!370 = !DILocation(line: 142, column: 7, scope: !366)
!371 = distinct !DISubprogram(name: "_M_get_pointer", scope: !27, file: !27, line: 134, type: !10, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!372 = !DILocation(line: 138, column: 30, scope: !371)
!373 = !DILocation(line: 138, column: 39, scope: !371)
!374 = !DILocation(line: 138, column: 24, scope: !371)
!375 = !DILocation(line: 139, column: 54, scope: !371)
!376 = !DILocation(line: 139, column: 37, scope: !371)
!377 = !DILocation(line: 139, column: 8, scope: !371)
!378 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !161, file: !161, line: 60, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!379 = !DILocation(line: 61, column: 32, scope: !378)
!380 = !DILocation(line: 61, column: 14, scope: !378)
!381 = !DILocation(line: 61, column: 7, scope: !378)
!382 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:192) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!383 = !DILocation(line: 78, column: 33, scope: !382)
!384 = !DILocation(line: 78, column: 7, scope: !382)
!385 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !10, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!386 = !DILocation(line: 122, column: 272, scope: !385)
!387 = !DILocation(line: 68, column: 3, scope: !388, inlinedAt: !389)
!388 = distinct !DISubprogram(name: "__dredd_replace_expr_volatile_int_lvalue", scope: !1, file: !1, line: 67, type: !10, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!389 = distinct !DILocation(line: 122, column: 231, scope: !385)
!390 = !DILocation(line: 69, column: 3, scope: !388, inlinedAt: !389)
!391 = !DILocation(line: 70, column: 3, scope: !388, inlinedAt: !389)
!392 = !DILocation(line: 71, column: 10, scope: !388, inlinedAt: !389)
!393 = !DILocation(line: 122, column: 207, scope: !385)
!394 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:192)>", scope: !27, file: !27, line: 95, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!395 = !DILocation(line: 96, column: 41, scope: !394)
!396 = !DILocation(line: 96, column: 17, scope: !394)
!397 = !DILocation(line: 96, column: 9, scope: !394)
!398 = distinct !DISubprogram(name: "__addressof<const (lambda at unoptimized-instrumented.cc:122:192)>", scope: !122, file: !122, line: 49, type: !10, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!399 = !DILocation(line: 50, column: 34, scope: !398)
!400 = !DILocation(line: 50, column: 7, scope: !398)
!401 = distinct !DISubprogram(name: "_M_access", scope: !27, file: !27, line: 86, type: !10, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!402 = !DILocation(line: 86, column: 45, scope: !401)
!403 = !DILocation(line: 86, column: 37, scope: !401)
!404 = distinct !DISubprogram(name: "_M_access<const std::type_info *>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!405 = !DILocation(line: 91, column: 35, scope: !404)
!406 = !DILocation(line: 91, column: 17, scope: !404)
!407 = !DILocation(line: 91, column: 9, scope: !404)
!408 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:192) *>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!409 = !DILocation(line: 91, column: 35, scope: !408)
!410 = !DILocation(line: 91, column: 17, scope: !408)
!411 = !DILocation(line: 91, column: 9, scope: !408)
!412 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 180, type: !10, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!413 = !DILocation(line: 183, column: 12, scope: !412)
!414 = !DILocation(line: 183, column: 4, scope: !412)
!415 = !DILocation(line: 187, column: 8, scope: !412)
!416 = !DILocation(line: 187, column: 15, scope: !412)
!417 = !DILocation(line: 187, column: 45, scope: !412)
!418 = !DILocation(line: 191, column: 8, scope: !412)
!419 = !DILocation(line: 194, column: 55, scope: !412)
!420 = !DILocation(line: 194, column: 40, scope: !412)
!421 = !DILocation(line: 194, column: 8, scope: !412)
!422 = !DILocation(line: 194, column: 15, scope: !412)
!423 = !DILocation(line: 194, column: 38, scope: !412)
!424 = !DILocation(line: 195, column: 8, scope: !412)
!425 = !DILocation(line: 198, column: 24, scope: !412)
!426 = !DILocation(line: 199, column: 49, scope: !412)
!427 = !DILocation(line: 199, column: 34, scope: !412)
!428 = !DILocation(line: 198, column: 8, scope: !412)
!429 = !DILocation(line: 200, column: 8, scope: !412)
!430 = !DILocation(line: 203, column: 19, scope: !412)
!431 = !DILocation(line: 203, column: 8, scope: !412)
!432 = !DILocation(line: 204, column: 8, scope: !412)
!433 = !DILocation(line: 206, column: 4, scope: !412)
!434 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!435 = !DILocation(line: 215, column: 16, scope: !434)
!436 = !DILocation(line: 215, column: 45, scope: !434)
!437 = !DILocation(line: 215, column: 27, scope: !434)
!438 = !DILocation(line: 215, column: 6, scope: !434)
!439 = !DILocation(line: 216, column: 4, scope: !434)
!440 = distinct !DISubprogram(name: "_M_destroy", scope: !27, file: !27, line: 166, type: !10, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!441 = !DILocation(line: 168, column: 4, scope: !440)
!442 = !DILocation(line: 168, column: 13, scope: !440)
!443 = !DILocation(line: 169, column: 2, scope: !440)
!444 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!445 = !DILocation(line: 152, column: 13, scope: !444)
!446 = !DILocation(line: 152, column: 20, scope: !444)
!447 = !DILocation(line: 152, column: 6, scope: !444)
!448 = !DILocation(line: 152, column: 60, scope: !444)
!449 = !DILocation(line: 152, column: 42, scope: !444)
!450 = !DILocation(line: 152, column: 33, scope: !444)
!451 = !DILocation(line: 153, column: 4, scope: !444)
!452 = distinct !DISubprogram(name: "forward<const (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!453 = !DILocation(line: 78, column: 33, scope: !452)
!454 = !DILocation(line: 78, column: 7, scope: !452)
!455 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:192)>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!456 = !DILocation(line: 91, column: 35, scope: !455)
!457 = !DILocation(line: 91, column: 17, scope: !455)
!458 = !DILocation(line: 91, column: 9, scope: !455)
!459 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !27, file: !27, line: 95, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!460 = !DILocation(line: 96, column: 41, scope: !459)
!461 = !DILocation(line: 96, column: 17, scope: !459)
!462 = !DILocation(line: 96, column: 9, scope: !459)
!463 = distinct !DISubprogram(name: "__addressof<const (lambda at unoptimized-instrumented.cc:122:128)>", scope: !122, file: !122, line: 49, type: !10, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!464 = !DILocation(line: 50, column: 34, scope: !463)
!465 = !DILocation(line: 50, column: 7, scope: !463)
!466 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:128) *>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!467 = !DILocation(line: 91, column: 35, scope: !466)
!468 = !DILocation(line: 91, column: 17, scope: !466)
!469 = !DILocation(line: 91, column: 9, scope: !466)
!470 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 180, type: !10, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!471 = !DILocation(line: 183, column: 12, scope: !470)
!472 = !DILocation(line: 183, column: 4, scope: !470)
!473 = !DILocation(line: 187, column: 8, scope: !470)
!474 = !DILocation(line: 187, column: 15, scope: !470)
!475 = !DILocation(line: 187, column: 45, scope: !470)
!476 = !DILocation(line: 191, column: 8, scope: !470)
!477 = !DILocation(line: 194, column: 55, scope: !470)
!478 = !DILocation(line: 194, column: 40, scope: !470)
!479 = !DILocation(line: 194, column: 8, scope: !470)
!480 = !DILocation(line: 194, column: 15, scope: !470)
!481 = !DILocation(line: 194, column: 38, scope: !470)
!482 = !DILocation(line: 195, column: 8, scope: !470)
!483 = !DILocation(line: 198, column: 24, scope: !470)
!484 = !DILocation(line: 199, column: 49, scope: !470)
!485 = !DILocation(line: 199, column: 34, scope: !470)
!486 = !DILocation(line: 198, column: 8, scope: !470)
!487 = !DILocation(line: 200, column: 8, scope: !470)
!488 = !DILocation(line: 203, column: 19, scope: !470)
!489 = !DILocation(line: 203, column: 8, scope: !470)
!490 = !DILocation(line: 204, column: 8, scope: !470)
!491 = !DILocation(line: 206, column: 4, scope: !470)
!492 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!493 = !DILocation(line: 215, column: 16, scope: !492)
!494 = !DILocation(line: 215, column: 45, scope: !492)
!495 = !DILocation(line: 215, column: 27, scope: !492)
!496 = !DILocation(line: 215, column: 6, scope: !492)
!497 = !DILocation(line: 216, column: 4, scope: !492)
!498 = distinct !DISubprogram(name: "_M_destroy", scope: !27, file: !27, line: 166, type: !10, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!499 = !DILocation(line: 168, column: 4, scope: !498)
!500 = !DILocation(line: 168, column: 13, scope: !498)
!501 = !DILocation(line: 169, column: 2, scope: !498)
!502 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!503 = !DILocation(line: 152, column: 13, scope: !502)
!504 = !DILocation(line: 152, column: 20, scope: !502)
!505 = !DILocation(line: 152, column: 6, scope: !502)
!506 = !DILocation(line: 152, column: 60, scope: !502)
!507 = !DILocation(line: 152, column: 42, scope: !502)
!508 = !DILocation(line: 152, column: 33, scope: !502)
!509 = !DILocation(line: 153, column: 4, scope: !502)
!510 = distinct !DISubprogram(name: "forward<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!511 = !DILocation(line: 78, column: 33, scope: !510)
!512 = !DILocation(line: 78, column: 7, scope: !510)
!513 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!514 = !DILocation(line: 91, column: 35, scope: !513)
!515 = !DILocation(line: 91, column: 17, scope: !513)
!516 = !DILocation(line: 91, column: 9, scope: !513)
!517 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !27, file: !27, line: 235, type: !10, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!518 = !DILocation(line: 236, column: 6, scope: !517)
!519 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!520 = !DILocation(line: 215, column: 16, scope: !519)
!521 = !DILocation(line: 215, column: 45, scope: !519)
!522 = !DILocation(line: 215, column: 27, scope: !519)
!523 = !DILocation(line: 215, column: 6, scope: !519)
!524 = !DILocation(line: 216, column: 4, scope: !519)
!525 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!526 = !DILocation(line: 78, column: 33, scope: !525)
!527 = !DILocation(line: 78, column: 7, scope: !525)
!528 = distinct !DISubprogram(name: "_M_invoke", scope: !27, file: !27, line: 288, type: !10, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!529 = !DILocation(line: 290, column: 54, scope: !528)
!530 = !DILocation(line: 290, column: 32, scope: !528)
!531 = !DILocation(line: 290, column: 9, scope: !528)
!532 = !DILocation(line: 290, column: 2, scope: !528)
!533 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 267, type: !10, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!534 = !DILocation(line: 270, column: 10, scope: !533)
!535 = !DILocation(line: 270, column: 2, scope: !533)
!536 = !DILocation(line: 274, column: 6, scope: !533)
!537 = !DILocation(line: 274, column: 13, scope: !533)
!538 = !DILocation(line: 274, column: 43, scope: !533)
!539 = !DILocation(line: 275, column: 6, scope: !533)
!540 = !DILocation(line: 278, column: 60, scope: !533)
!541 = !DILocation(line: 278, column: 38, scope: !533)
!542 = !DILocation(line: 278, column: 6, scope: !533)
!543 = !DILocation(line: 278, column: 13, scope: !533)
!544 = !DILocation(line: 278, column: 36, scope: !533)
!545 = !DILocation(line: 279, column: 6, scope: !533)
!546 = !DILocation(line: 282, column: 24, scope: !533)
!547 = !DILocation(line: 282, column: 32, scope: !533)
!548 = !DILocation(line: 282, column: 42, scope: !533)
!549 = !DILocation(line: 282, column: 6, scope: !533)
!550 = !DILocation(line: 283, column: 4, scope: !533)
!551 = !DILocation(line: 284, column: 2, scope: !533)
!552 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!553 = !DILocation(line: 152, column: 13, scope: !552)
!554 = !DILocation(line: 152, column: 20, scope: !552)
!555 = !DILocation(line: 152, column: 6, scope: !552)
!556 = !DILocation(line: 152, column: 60, scope: !552)
!557 = !DILocation(line: 152, column: 42, scope: !552)
!558 = !DILocation(line: 152, column: 33, scope: !552)
!559 = !DILocation(line: 153, column: 4, scope: !552)
!560 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !161, file: !161, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!561 = !DILocation(line: 142, column: 74, scope: !560)
!562 = !DILocation(line: 142, column: 50, scope: !560)
!563 = !DILocation(line: 142, column: 14, scope: !560)
!564 = !DILocation(line: 142, column: 7, scope: !560)
!565 = distinct !DISubprogram(name: "_M_get_pointer", scope: !27, file: !27, line: 134, type: !10, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!566 = !DILocation(line: 138, column: 30, scope: !565)
!567 = !DILocation(line: 138, column: 39, scope: !565)
!568 = !DILocation(line: 138, column: 24, scope: !565)
!569 = !DILocation(line: 139, column: 54, scope: !565)
!570 = !DILocation(line: 139, column: 37, scope: !565)
!571 = !DILocation(line: 139, column: 8, scope: !565)
!572 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !161, file: !161, line: 60, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!573 = !DILocation(line: 61, column: 32, scope: !572)
!574 = !DILocation(line: 61, column: 14, scope: !572)
!575 = !DILocation(line: 61, column: 7, scope: !572)
!576 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:292) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!577 = !DILocation(line: 78, column: 33, scope: !576)
!578 = !DILocation(line: 78, column: 7, scope: !576)
!579 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !10, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!580 = !DILocation(line: 122, column: 356, scope: !579)
!581 = !DILocation(line: 122, column: 357, scope: !579)
!582 = !DILocation(line: 89, column: 3, scope: !14, inlinedAt: !583)
!583 = distinct !DILocation(line: 122, column: 331, scope: !579)
!584 = !DILocation(line: 90, column: 3, scope: !14, inlinedAt: !583)
!585 = !DILocation(line: 91, column: 3, scope: !14, inlinedAt: !583)
!586 = !DILocation(line: 92, column: 3, scope: !14, inlinedAt: !583)
!587 = !DILocation(line: 93, column: 3, scope: !14, inlinedAt: !583)
!588 = !DILocation(line: 94, column: 3, scope: !14, inlinedAt: !583)
!589 = !DILocation(line: 95, column: 3, scope: !14, inlinedAt: !583)
!590 = !DILocation(line: 96, column: 10, scope: !14, inlinedAt: !583)
!591 = !DILocation(line: 96, column: 3, scope: !14, inlinedAt: !583)
!592 = !DILocation(line: 122, column: 307, scope: !579)
!593 = !DILocation(line: 122, column: 453, scope: !579)
!594 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:356), void>", scope: !27, file: !27, line: 435, type: !10, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!595 = !DILocation(line: 438, column: 2, scope: !594)
!596 = !DILocation(line: 437, column: 4, scope: !594)
!597 = !DILocation(line: 667, column: 21, scope: !594)
!598 = !DILocation(line: 447, column: 43, scope: !594)
!599 = !DILocation(line: 447, column: 8, scope: !594)
!600 = !DILocation(line: 449, column: 37, scope: !594)
!601 = !DILocation(line: 450, column: 32, scope: !594)
!602 = !DILocation(line: 450, column: 9, scope: !594)
!603 = !DILocation(line: 449, column: 8, scope: !594)
!604 = !DILocation(line: 451, column: 8, scope: !594)
!605 = !DILocation(line: 451, column: 19, scope: !594)
!606 = !DILocation(line: 452, column: 8, scope: !594)
!607 = !DILocation(line: 452, column: 19, scope: !594)
!608 = !DILocation(line: 453, column: 6, scope: !594)
!609 = !DILocation(line: 454, column: 2, scope: !594)
!610 = distinct !DISubprogram(name: "_M_not_empty_function<(lambda at unoptimized-instrumented.cc:122:356)>", scope: !27, file: !27, line: 235, type: !10, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!611 = !DILocation(line: 236, column: 6, scope: !610)
!612 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:356)>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!613 = !DILocation(line: 215, column: 16, scope: !612)
!614 = !DILocation(line: 215, column: 45, scope: !612)
!615 = !DILocation(line: 215, column: 27, scope: !612)
!616 = !DILocation(line: 215, column: 6, scope: !612)
!617 = !DILocation(line: 216, column: 4, scope: !612)
!618 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:356)>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!619 = !DILocation(line: 78, column: 33, scope: !618)
!620 = !DILocation(line: 78, column: 7, scope: !618)
!621 = distinct !DISubprogram(name: "_M_invoke", scope: !27, file: !27, line: 288, type: !10, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!622 = !DILocation(line: 290, column: 54, scope: !621)
!623 = !DILocation(line: 290, column: 32, scope: !621)
!624 = !DILocation(line: 290, column: 9, scope: !621)
!625 = !DILocation(line: 290, column: 2, scope: !621)
!626 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 267, type: !10, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!627 = !DILocation(line: 270, column: 10, scope: !626)
!628 = !DILocation(line: 270, column: 2, scope: !626)
!629 = !DILocation(line: 274, column: 6, scope: !626)
!630 = !DILocation(line: 274, column: 13, scope: !626)
!631 = !DILocation(line: 274, column: 43, scope: !626)
!632 = !DILocation(line: 275, column: 6, scope: !626)
!633 = !DILocation(line: 278, column: 60, scope: !626)
!634 = !DILocation(line: 278, column: 38, scope: !626)
!635 = !DILocation(line: 278, column: 6, scope: !626)
!636 = !DILocation(line: 278, column: 13, scope: !626)
!637 = !DILocation(line: 278, column: 36, scope: !626)
!638 = !DILocation(line: 279, column: 6, scope: !626)
!639 = !DILocation(line: 282, column: 24, scope: !626)
!640 = !DILocation(line: 282, column: 32, scope: !626)
!641 = !DILocation(line: 282, column: 42, scope: !626)
!642 = !DILocation(line: 282, column: 6, scope: !626)
!643 = !DILocation(line: 283, column: 4, scope: !626)
!644 = !DILocation(line: 284, column: 2, scope: !626)
!645 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:356)>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!646 = !DILocation(line: 152, column: 13, scope: !645)
!647 = !DILocation(line: 152, column: 20, scope: !645)
!648 = !DILocation(line: 152, column: 6, scope: !645)
!649 = !DILocation(line: 152, column: 60, scope: !645)
!650 = !DILocation(line: 152, column: 42, scope: !645)
!651 = !DILocation(line: 152, column: 33, scope: !645)
!652 = !DILocation(line: 153, column: 4, scope: !645)
!653 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !161, file: !161, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!654 = !DILocation(line: 142, column: 74, scope: !653)
!655 = !DILocation(line: 142, column: 50, scope: !653)
!656 = !DILocation(line: 142, column: 14, scope: !653)
!657 = !DILocation(line: 142, column: 7, scope: !653)
!658 = distinct !DISubprogram(name: "_M_get_pointer", scope: !27, file: !27, line: 134, type: !10, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!659 = !DILocation(line: 138, column: 30, scope: !658)
!660 = !DILocation(line: 138, column: 39, scope: !658)
!661 = !DILocation(line: 138, column: 24, scope: !658)
!662 = !DILocation(line: 139, column: 54, scope: !658)
!663 = !DILocation(line: 139, column: 37, scope: !658)
!664 = !DILocation(line: 139, column: 8, scope: !658)
!665 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !161, file: !161, line: 60, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!666 = !DILocation(line: 61, column: 32, scope: !665)
!667 = !DILocation(line: 61, column: 14, scope: !665)
!668 = !DILocation(line: 61, column: 7, scope: !665)
!669 = distinct !DISubprogram(name: "forward<(lambda at unoptimized-instrumented.cc:122:356) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!670 = !DILocation(line: 78, column: 33, scope: !669)
!671 = !DILocation(line: 78, column: 7, scope: !669)
!672 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !10, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!673 = !DILocation(line: 122, column: 436, scope: !672)
!674 = !DILocation(line: 68, column: 3, scope: !388, inlinedAt: !675)
!675 = distinct !DILocation(line: 122, column: 395, scope: !672)
!676 = !DILocation(line: 69, column: 3, scope: !388, inlinedAt: !675)
!677 = !DILocation(line: 70, column: 3, scope: !388, inlinedAt: !675)
!678 = !DILocation(line: 71, column: 10, scope: !388, inlinedAt: !675)
!679 = !DILocation(line: 122, column: 371, scope: !672)
!680 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:356)>", scope: !27, file: !27, line: 95, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!681 = !DILocation(line: 96, column: 41, scope: !680)
!682 = !DILocation(line: 96, column: 17, scope: !680)
!683 = !DILocation(line: 96, column: 9, scope: !680)
!684 = distinct !DISubprogram(name: "__addressof<const (lambda at unoptimized-instrumented.cc:122:356)>", scope: !122, file: !122, line: 49, type: !10, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!685 = !DILocation(line: 50, column: 34, scope: !684)
!686 = !DILocation(line: 50, column: 7, scope: !684)
!687 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:356) *>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!688 = !DILocation(line: 91, column: 35, scope: !687)
!689 = !DILocation(line: 91, column: 17, scope: !687)
!690 = !DILocation(line: 91, column: 9, scope: !687)
!691 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 180, type: !10, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!692 = !DILocation(line: 183, column: 12, scope: !691)
!693 = !DILocation(line: 183, column: 4, scope: !691)
!694 = !DILocation(line: 187, column: 8, scope: !691)
!695 = !DILocation(line: 187, column: 15, scope: !691)
!696 = !DILocation(line: 187, column: 45, scope: !691)
!697 = !DILocation(line: 191, column: 8, scope: !691)
!698 = !DILocation(line: 194, column: 55, scope: !691)
!699 = !DILocation(line: 194, column: 40, scope: !691)
!700 = !DILocation(line: 194, column: 8, scope: !691)
!701 = !DILocation(line: 194, column: 15, scope: !691)
!702 = !DILocation(line: 194, column: 38, scope: !691)
!703 = !DILocation(line: 195, column: 8, scope: !691)
!704 = !DILocation(line: 198, column: 24, scope: !691)
!705 = !DILocation(line: 199, column: 49, scope: !691)
!706 = !DILocation(line: 199, column: 34, scope: !691)
!707 = !DILocation(line: 198, column: 8, scope: !691)
!708 = !DILocation(line: 200, column: 8, scope: !691)
!709 = !DILocation(line: 203, column: 19, scope: !691)
!710 = !DILocation(line: 203, column: 8, scope: !691)
!711 = !DILocation(line: 204, column: 8, scope: !691)
!712 = !DILocation(line: 206, column: 4, scope: !691)
!713 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!714 = !DILocation(line: 215, column: 16, scope: !713)
!715 = !DILocation(line: 215, column: 45, scope: !713)
!716 = !DILocation(line: 215, column: 27, scope: !713)
!717 = !DILocation(line: 215, column: 6, scope: !713)
!718 = !DILocation(line: 216, column: 4, scope: !713)
!719 = distinct !DISubprogram(name: "_M_destroy", scope: !27, file: !27, line: 166, type: !10, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!720 = !DILocation(line: 168, column: 4, scope: !719)
!721 = !DILocation(line: 168, column: 13, scope: !719)
!722 = !DILocation(line: 169, column: 2, scope: !719)
!723 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!724 = !DILocation(line: 152, column: 13, scope: !723)
!725 = !DILocation(line: 152, column: 20, scope: !723)
!726 = !DILocation(line: 152, column: 6, scope: !723)
!727 = !DILocation(line: 152, column: 60, scope: !723)
!728 = !DILocation(line: 152, column: 42, scope: !723)
!729 = !DILocation(line: 152, column: 33, scope: !723)
!730 = !DILocation(line: 153, column: 4, scope: !723)
!731 = distinct !DISubprogram(name: "forward<const (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!732 = !DILocation(line: 78, column: 33, scope: !731)
!733 = !DILocation(line: 78, column: 7, scope: !731)
!734 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:356)>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!735 = !DILocation(line: 91, column: 35, scope: !734)
!736 = !DILocation(line: 91, column: 17, scope: !734)
!737 = !DILocation(line: 91, column: 9, scope: !734)
!738 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !27, file: !27, line: 95, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!739 = !DILocation(line: 96, column: 41, scope: !738)
!740 = !DILocation(line: 96, column: 17, scope: !738)
!741 = !DILocation(line: 96, column: 9, scope: !738)
!742 = distinct !DISubprogram(name: "__addressof<const (lambda at unoptimized-instrumented.cc:122:292)>", scope: !122, file: !122, line: 49, type: !10, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!743 = !DILocation(line: 50, column: 34, scope: !742)
!744 = !DILocation(line: 50, column: 7, scope: !742)
!745 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:292) *>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!746 = !DILocation(line: 91, column: 35, scope: !745)
!747 = !DILocation(line: 91, column: 17, scope: !745)
!748 = !DILocation(line: 91, column: 9, scope: !745)
!749 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 180, type: !10, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!750 = !DILocation(line: 183, column: 12, scope: !749)
!751 = !DILocation(line: 183, column: 4, scope: !749)
!752 = !DILocation(line: 187, column: 8, scope: !749)
!753 = !DILocation(line: 187, column: 15, scope: !749)
!754 = !DILocation(line: 187, column: 45, scope: !749)
!755 = !DILocation(line: 191, column: 8, scope: !749)
!756 = !DILocation(line: 194, column: 55, scope: !749)
!757 = !DILocation(line: 194, column: 40, scope: !749)
!758 = !DILocation(line: 194, column: 8, scope: !749)
!759 = !DILocation(line: 194, column: 15, scope: !749)
!760 = !DILocation(line: 194, column: 38, scope: !749)
!761 = !DILocation(line: 195, column: 8, scope: !749)
!762 = !DILocation(line: 198, column: 24, scope: !749)
!763 = !DILocation(line: 199, column: 49, scope: !749)
!764 = !DILocation(line: 199, column: 34, scope: !749)
!765 = !DILocation(line: 198, column: 8, scope: !749)
!766 = !DILocation(line: 200, column: 8, scope: !749)
!767 = !DILocation(line: 203, column: 19, scope: !749)
!768 = !DILocation(line: 203, column: 8, scope: !749)
!769 = !DILocation(line: 204, column: 8, scope: !749)
!770 = !DILocation(line: 206, column: 4, scope: !749)
!771 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!772 = !DILocation(line: 215, column: 16, scope: !771)
!773 = !DILocation(line: 215, column: 45, scope: !771)
!774 = !DILocation(line: 215, column: 27, scope: !771)
!775 = !DILocation(line: 215, column: 6, scope: !771)
!776 = !DILocation(line: 216, column: 4, scope: !771)
!777 = distinct !DISubprogram(name: "_M_destroy", scope: !27, file: !27, line: 166, type: !10, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!778 = !DILocation(line: 168, column: 4, scope: !777)
!779 = !DILocation(line: 168, column: 13, scope: !777)
!780 = !DILocation(line: 169, column: 2, scope: !777)
!781 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!782 = !DILocation(line: 152, column: 13, scope: !781)
!783 = !DILocation(line: 152, column: 20, scope: !781)
!784 = !DILocation(line: 152, column: 6, scope: !781)
!785 = !DILocation(line: 152, column: 60, scope: !781)
!786 = !DILocation(line: 152, column: 42, scope: !781)
!787 = !DILocation(line: 152, column: 33, scope: !781)
!788 = !DILocation(line: 153, column: 4, scope: !781)
!789 = distinct !DISubprogram(name: "forward<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!790 = !DILocation(line: 78, column: 33, scope: !789)
!791 = !DILocation(line: 78, column: 7, scope: !789)
!792 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!793 = !DILocation(line: 91, column: 35, scope: !792)
!794 = !DILocation(line: 91, column: 17, scope: !792)
!795 = !DILocation(line: 91, column: 9, scope: !792)
!796 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !27, file: !27, line: 95, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!797 = !DILocation(line: 96, column: 41, scope: !796)
!798 = !DILocation(line: 96, column: 17, scope: !796)
!799 = !DILocation(line: 96, column: 9, scope: !796)
!800 = distinct !DISubprogram(name: "__addressof<const (lambda at unoptimized-instrumented.cc:122:35)>", scope: !122, file: !122, line: 49, type: !10, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!801 = !DILocation(line: 50, column: 34, scope: !800)
!802 = !DILocation(line: 50, column: 7, scope: !800)
!803 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:35) *>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!804 = !DILocation(line: 91, column: 35, scope: !803)
!805 = !DILocation(line: 91, column: 17, scope: !803)
!806 = !DILocation(line: 91, column: 9, scope: !803)
!807 = distinct !DISubprogram(name: "_M_manager", scope: !27, file: !27, line: 180, type: !10, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!808 = !DILocation(line: 183, column: 12, scope: !807)
!809 = !DILocation(line: 183, column: 4, scope: !807)
!810 = !DILocation(line: 187, column: 8, scope: !807)
!811 = !DILocation(line: 187, column: 15, scope: !807)
!812 = !DILocation(line: 187, column: 45, scope: !807)
!813 = !DILocation(line: 191, column: 8, scope: !807)
!814 = !DILocation(line: 194, column: 55, scope: !807)
!815 = !DILocation(line: 194, column: 40, scope: !807)
!816 = !DILocation(line: 194, column: 8, scope: !807)
!817 = !DILocation(line: 194, column: 15, scope: !807)
!818 = !DILocation(line: 194, column: 38, scope: !807)
!819 = !DILocation(line: 195, column: 8, scope: !807)
!820 = !DILocation(line: 198, column: 24, scope: !807)
!821 = !DILocation(line: 199, column: 49, scope: !807)
!822 = !DILocation(line: 199, column: 34, scope: !807)
!823 = !DILocation(line: 198, column: 8, scope: !807)
!824 = !DILocation(line: 200, column: 8, scope: !807)
!825 = !DILocation(line: 203, column: 19, scope: !807)
!826 = !DILocation(line: 203, column: 8, scope: !807)
!827 = !DILocation(line: 204, column: 8, scope: !807)
!828 = !DILocation(line: 206, column: 4, scope: !807)
!829 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !27, file: !27, line: 211, type: !10, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!830 = !DILocation(line: 215, column: 16, scope: !829)
!831 = !DILocation(line: 215, column: 45, scope: !829)
!832 = !DILocation(line: 215, column: 27, scope: !829)
!833 = !DILocation(line: 215, column: 6, scope: !829)
!834 = !DILocation(line: 216, column: 4, scope: !829)
!835 = distinct !DISubprogram(name: "_M_destroy", scope: !27, file: !27, line: 166, type: !10, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!836 = !DILocation(line: 168, column: 4, scope: !835)
!837 = !DILocation(line: 168, column: 13, scope: !835)
!838 = !DILocation(line: 169, column: 2, scope: !835)
!839 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !27, file: !27, line: 150, type: !10, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!840 = !DILocation(line: 152, column: 13, scope: !839)
!841 = !DILocation(line: 152, column: 20, scope: !839)
!842 = !DILocation(line: 152, column: 6, scope: !839)
!843 = !DILocation(line: 152, column: 60, scope: !839)
!844 = !DILocation(line: 152, column: 42, scope: !839)
!845 = !DILocation(line: 152, column: 33, scope: !839)
!846 = !DILocation(line: 153, column: 4, scope: !839)
!847 = distinct !DISubprogram(name: "forward<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !122, file: !122, line: 77, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!848 = !DILocation(line: 78, column: 33, scope: !847)
!849 = !DILocation(line: 78, column: 7, scope: !847)
!850 = distinct !DISubprogram(name: "_M_access<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !27, file: !27, line: 90, type: !10, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!851 = !DILocation(line: 91, column: 35, scope: !850)
!852 = !DILocation(line: 91, column: 17, scope: !850)
!853 = !DILocation(line: 91, column: 9, scope: !850)
