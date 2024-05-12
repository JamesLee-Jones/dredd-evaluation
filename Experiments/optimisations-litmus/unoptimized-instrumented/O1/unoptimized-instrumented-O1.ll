; ModuleID = 'unoptimized-instrumented.cc'
source_filename = "unoptimized-instrumented.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", i32 (%"union.std::_Any_data"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::type_info" = type { i32 (...)**, i8* }

$__clang_call_terminate = comdat any

@_ZL5no_op = internal unnamed_addr global i64 0, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@"_ZTSZZ4testiiENK3$_0clEvEUlvE_" = internal constant [27 x i8] c"ZZ4testiiENK3$_0clEvEUlvE_\00", align 1
@"_ZTIZZ4testiiENK3$_0clEvEUlvE_" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"_ZTSZZ4testiiENK3$_0clEvEUlvE_", i32 0, i32 0) }, align 8
@"_ZTSZZ4testiiENK3$_0clEvEUlvE0_" = internal constant [28 x i8] c"ZZ4testiiENK3$_0clEvEUlvE0_\00", align 1
@"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"_ZTSZZ4testiiENK3$_0clEvEUlvE0_", i32 0, i32 0) }, align 8
@"_ZTSZ4testiiE3$_0" = internal constant [14 x i8] c"Z4testiiE3$_0\00", align 1
@"_ZTIZ4testiiE3$_0" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"_ZTSZ4testiiE3$_0", i32 0, i32 0) }, align 8

; Function Attrs: uwtable
define dso_local noundef i32 @_Z4testii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::function", align 8
  store volatile i32 %0, i32* %3, align 4, !tbaa !11
  store volatile i32 %1, i32* %4, align 4, !tbaa !11
  %6 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 1, !dbg !15
  %7 = bitcast %"class.std::function"* %5 to i8*, !dbg !19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false) #10, !dbg !24
  %8 = bitcast %"class.std::function"* %5 to i32**, !dbg !19
  store i32* %3, i32** %8, align 8, !dbg !19, !tbaa.struct !27
  %9 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !19
  %10 = bitcast i64* %9 to i32**, !dbg !19
  store i32* %4, i32** %10, align 8, !dbg !19, !tbaa.struct !30
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %6, align 8, !dbg !31, !tbaa !32
  %11 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 0, i32 1, !dbg !34
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !35, !tbaa !36
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 0, i32 0, !dbg !38
  %13 = invoke noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12)
          to label %14 unwind label %79, !dbg !43

14:                                               ; preds = %2
  %15 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !44, !tbaa !36
  %16 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %15, null, !dbg !44
  br i1 %16, label %17, label %19, !dbg !48

17:                                               ; preds = %14
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %18 unwind label %79, !dbg !49

18:                                               ; preds = %17
  unreachable, !dbg !49

19:                                               ; preds = %14
  %20 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %6, align 8, !dbg !50, !tbaa !32
  %21 = invoke noundef i32 %20(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12)
          to label %22 unwind label %79, !dbg !50

22:                                               ; preds = %19
  %23 = icmp eq i32 %21, 0, !dbg !51
  %24 = zext i1 %23 to i32, !dbg !51
  %25 = icmp eq i32 %13, %24, !dbg !51
  br i1 %25, label %29, label %26, !dbg !51

26:                                               ; preds = %22
  %27 = load i64, i64* @_ZL5no_op, align 8, !dbg !51, !tbaa !52
  %28 = add i64 %27, 1, !dbg !51
  store i64 %28, i64* @_ZL5no_op, align 8, !dbg !51, !tbaa !52
  br label %29, !dbg !51

29:                                               ; preds = %26, %22
  %30 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !54, !tbaa !36
  %31 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %30, null, !dbg !54
  br i1 %31, label %32, label %34, !dbg !57

32:                                               ; preds = %29
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %33 unwind label %79, !dbg !58

33:                                               ; preds = %32
  unreachable, !dbg !58

34:                                               ; preds = %29
  %35 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %6, align 8, !dbg !59, !tbaa !32
  %36 = invoke noundef i32 %35(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12)
          to label %37 unwind label %79, !dbg !59

37:                                               ; preds = %34
  %38 = xor i32 %36, -1, !dbg !60
  %39 = icmp eq i32 %13, %38, !dbg !60
  br i1 %39, label %43, label %40, !dbg !60

40:                                               ; preds = %37
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !60, !tbaa !52
  %42 = add i64 %41, 1, !dbg !60
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !60, !tbaa !52
  br label %43, !dbg !60

43:                                               ; preds = %40, %37
  %44 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !61, !tbaa !36
  %45 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %44, null, !dbg !61
  br i1 %45, label %46, label %48, !dbg !64

46:                                               ; preds = %43
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %47 unwind label %79, !dbg !65

47:                                               ; preds = %46
  unreachable, !dbg !65

48:                                               ; preds = %43
  %49 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %6, align 8, !dbg !66, !tbaa !32
  %50 = invoke noundef i32 %49(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12)
          to label %51 unwind label %79, !dbg !66

51:                                               ; preds = %48
  %52 = sub nsw i32 0, %50, !dbg !67
  %53 = icmp eq i32 %13, %52, !dbg !67
  br i1 %53, label %57, label %54, !dbg !67

54:                                               ; preds = %51
  %55 = load i64, i64* @_ZL5no_op, align 8, !dbg !67, !tbaa !52
  %56 = add i64 %55, 1, !dbg !67
  store i64 %56, i64* @_ZL5no_op, align 8, !dbg !67, !tbaa !52
  br label %57, !dbg !67

57:                                               ; preds = %54, %51
  %58 = icmp eq i32 %13, 0, !dbg !68
  br i1 %58, label %63, label %59, !dbg !68

59:                                               ; preds = %57
  %60 = load i64, i64* @_ZL5no_op, align 8, !dbg !68, !tbaa !52
  %61 = add i64 %60, 1, !dbg !68
  store i64 %61, i64* @_ZL5no_op, align 8, !dbg !68, !tbaa !52
  %62 = icmp eq i32 %13, 1, !dbg !69
  br i1 %62, label %67, label %63, !dbg !69

63:                                               ; preds = %59, %57
  %64 = load i64, i64* @_ZL5no_op, align 8, !dbg !69, !tbaa !52
  %65 = add i64 %64, 1, !dbg !69
  store i64 %65, i64* @_ZL5no_op, align 8, !dbg !69, !tbaa !52
  %66 = icmp eq i32 %13, -1, !dbg !70
  br i1 %66, label %70, label %67, !dbg !70

67:                                               ; preds = %63, %59
  %68 = load i64, i64* @_ZL5no_op, align 8, !dbg !70, !tbaa !52
  %69 = add i64 %68, 1, !dbg !70
  store i64 %69, i64* @_ZL5no_op, align 8, !dbg !70, !tbaa !52
  br label %70, !dbg !70

70:                                               ; preds = %67, %63
  %71 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !71, !tbaa !36
  %72 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %71, null, !dbg !71
  br i1 %72, label %78, label %73, !dbg !71

73:                                               ; preds = %70
  %74 = invoke noundef zeroext i1 %71(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 3)
          to label %78 unwind label %75, !dbg !74

75:                                               ; preds = %73
  %76 = landingpad { i8*, i32 }
          catch i8* null, !dbg !74
  %77 = extractvalue { i8*, i32 } %76, 0, !dbg !74
  call void @__clang_call_terminate(i8* %77) #12, !dbg !74
  unreachable, !dbg !74

78:                                               ; preds = %70, %73
  ret i32 %13, !dbg !75

79:                                               ; preds = %48, %46, %34, %32, %19, %17, %2
  %80 = landingpad { i8*, i32 }
          cleanup, !dbg !76
  %81 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !77, !tbaa !36
  %82 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %81, null, !dbg !77
  br i1 %82, label %88, label %83, !dbg !77

83:                                               ; preds = %79
  %84 = invoke noundef zeroext i1 %81(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 3)
          to label %88 unwind label %85, !dbg !79

85:                                               ; preds = %83
  %86 = landingpad { i8*, i32 }
          catch i8* null, !dbg !79
  %87 = extractvalue { i8*, i32 } %86, 0, !dbg !79
  call void @__clang_call_terminate(i8* %87) #12, !dbg !79
  unreachable, !dbg !79

88:                                               ; preds = %79, %83
  resume { i8*, i32 } %80, !dbg !75
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 !dbg !80 {
  %1 = load i64, i64* @_ZL5no_op, align 8, !dbg !81, !tbaa !52
  %2 = add i64 %1, 16, !dbg !84
  store i64 %2, i64* @_ZL5no_op, align 8, !dbg !84, !tbaa !52
  %3 = call noundef i32 @_Z4testii(i32 noundef 0, i32 noundef 0), !dbg !87
  ret i32 0, !dbg !88
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #4 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #10
  call void @_ZSt9terminatev() #12
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #0 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !89 {
  %2 = alloca %"class.std::function", align 8
  %3 = alloca %"class.std::function", align 8
  %4 = bitcast %"class.std::function"* %2 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4), !dbg !90
  %5 = bitcast %"class.std::function"* %3 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5), !dbg !90
  %6 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !90
  %7 = load i32*, i32** %6, align 8, !dbg !90, !tbaa !98
  %8 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 1, !dbg !100
  %9 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false) #10, !dbg !108
  %10 = ptrtoint i32* %7 to i64, !dbg !103
  store i64 %10, i64* %9, align 8, !dbg !103, !tbaa !28
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !110, !tbaa !32
  %11 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 1, !dbg !111
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !112, !tbaa !36
  %12 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 1, !dbg !113
  %13 = bitcast i64* %12 to i32**, !dbg !113
  %14 = load i32*, i32** %13, align 8, !dbg !113, !tbaa !114
  %15 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 1, !dbg !115
  %16 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !118
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false) #10, !dbg !123
  %17 = ptrtoint i32* %14 to i64, !dbg !118
  store i64 %17, i64* %16, align 8, !dbg !118, !tbaa !28
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !125, !tbaa !32
  %18 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 1, !dbg !126
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !127, !tbaa !36
  %19 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, !dbg !128
  %20 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19), !dbg !132
  %21 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !133, !tbaa !36
  %22 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %21, null, !dbg !133
  br i1 %22, label %23, label %25, !dbg !136

23:                                               ; preds = %1
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %24 unwind label %180, !dbg !137

24:                                               ; preds = %23
  unreachable, !dbg !137

25:                                               ; preds = %1
  %26 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !138, !tbaa !32
  %27 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, !dbg !139
  %28 = invoke noundef i32 %26(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %29 unwind label %180, !dbg !138

29:                                               ; preds = %25
  %30 = add nsw i32 %28, %20, !dbg !140
  %31 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !141, !tbaa !36
  %32 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %31, null, !dbg !141
  br i1 %32, label %33, label %35, !dbg !144

33:                                               ; preds = %29
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %34 unwind label %180, !dbg !145

34:                                               ; preds = %33
  unreachable, !dbg !145

35:                                               ; preds = %29
  %36 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !146, !tbaa !32
  %37 = invoke noundef i32 %36(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %38 unwind label %180, !dbg !146

38:                                               ; preds = %35
  %39 = icmp eq i32 %37, 0, !dbg !147
  br i1 %39, label %62, label %40, !dbg !147

40:                                               ; preds = %38
  %41 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !148, !tbaa !36
  %42 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %41, null, !dbg !148
  br i1 %42, label %43, label %45, !dbg !151

43:                                               ; preds = %40
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %44 unwind label %180, !dbg !152

44:                                               ; preds = %43
  unreachable, !dbg !152

45:                                               ; preds = %40
  %46 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !153, !tbaa !32
  %47 = invoke noundef i32 %46(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %48 unwind label %180, !dbg !153

48:                                               ; preds = %45
  %49 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !154, !tbaa !36
  %50 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %49, null, !dbg !154
  br i1 %50, label %51, label %53, !dbg !157

51:                                               ; preds = %48
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %52 unwind label %180, !dbg !158

52:                                               ; preds = %51
  unreachable, !dbg !158

53:                                               ; preds = %48
  %54 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !159, !tbaa !32
  %55 = invoke noundef i32 %54(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %56 unwind label %180, !dbg !159

56:                                               ; preds = %53
  %57 = sdiv i32 %47, %55, !dbg !147
  %58 = icmp eq i32 %57, %30, !dbg !147
  br i1 %58, label %62, label %59, !dbg !147

59:                                               ; preds = %56
  %60 = load i64, i64* @_ZL5no_op, align 8, !dbg !147, !tbaa !52
  %61 = add i64 %60, 1, !dbg !147
  store i64 %61, i64* @_ZL5no_op, align 8, !dbg !147, !tbaa !52
  br label %62, !dbg !147

62:                                               ; preds = %59, %56, %38
  %63 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !160, !tbaa !36
  %64 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %63, null, !dbg !160
  br i1 %64, label %65, label %67, !dbg !163

65:                                               ; preds = %62
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %66 unwind label %180, !dbg !164

66:                                               ; preds = %65
  unreachable, !dbg !164

67:                                               ; preds = %62
  %68 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !165, !tbaa !32
  %69 = invoke noundef i32 %68(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %70 unwind label %180, !dbg !165

70:                                               ; preds = %67
  %71 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !166, !tbaa !36
  %72 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %71, null, !dbg !166
  br i1 %72, label %73, label %75, !dbg !169

73:                                               ; preds = %70
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %74 unwind label %180, !dbg !170

74:                                               ; preds = %73
  unreachable, !dbg !170

75:                                               ; preds = %70
  %76 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !171, !tbaa !32
  %77 = invoke noundef i32 %76(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %78 unwind label %180, !dbg !171

78:                                               ; preds = %75
  %79 = mul nsw i32 %77, %69, !dbg !172
  %80 = icmp eq i32 %79, %30, !dbg !172
  br i1 %80, label %84, label %81, !dbg !172

81:                                               ; preds = %78
  %82 = load i64, i64* @_ZL5no_op, align 8, !dbg !172, !tbaa !52
  %83 = add i64 %82, 1, !dbg !172
  store i64 %83, i64* @_ZL5no_op, align 8, !dbg !172, !tbaa !52
  br label %84, !dbg !172

84:                                               ; preds = %81, %78
  %85 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !173, !tbaa !36
  %86 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %85, null, !dbg !173
  br i1 %86, label %87, label %89, !dbg !176

87:                                               ; preds = %84
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %88 unwind label %180, !dbg !177

88:                                               ; preds = %87
  unreachable, !dbg !177

89:                                               ; preds = %84
  %90 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !178, !tbaa !32
  %91 = invoke noundef i32 %90(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %92 unwind label %180, !dbg !178

92:                                               ; preds = %89
  %93 = icmp eq i32 %91, 0, !dbg !179
  br i1 %93, label %116, label %94, !dbg !179

94:                                               ; preds = %92
  %95 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !180, !tbaa !36
  %96 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %95, null, !dbg !180
  br i1 %96, label %97, label %99, !dbg !183

97:                                               ; preds = %94
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %98 unwind label %180, !dbg !184

98:                                               ; preds = %97
  unreachable, !dbg !184

99:                                               ; preds = %94
  %100 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !185, !tbaa !32
  %101 = invoke noundef i32 %100(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %102 unwind label %180, !dbg !185

102:                                              ; preds = %99
  %103 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !186, !tbaa !36
  %104 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %103, null, !dbg !186
  br i1 %104, label %105, label %107, !dbg !189

105:                                              ; preds = %102
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %106 unwind label %180, !dbg !190

106:                                              ; preds = %105
  unreachable, !dbg !190

107:                                              ; preds = %102
  %108 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !191, !tbaa !32
  %109 = invoke noundef i32 %108(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %110 unwind label %180, !dbg !191

110:                                              ; preds = %107
  %111 = srem i32 %101, %109, !dbg !179
  %112 = icmp eq i32 %111, %30, !dbg !179
  br i1 %112, label %116, label %113, !dbg !179

113:                                              ; preds = %110
  %114 = load i64, i64* @_ZL5no_op, align 8, !dbg !179, !tbaa !52
  %115 = add i64 %114, 1, !dbg !179
  store i64 %115, i64* @_ZL5no_op, align 8, !dbg !179, !tbaa !52
  br label %116, !dbg !179

116:                                              ; preds = %113, %110, %92
  %117 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !192, !tbaa !36
  %118 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %117, null, !dbg !192
  br i1 %118, label %119, label %121, !dbg !195

119:                                              ; preds = %116
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %120 unwind label %180, !dbg !196

120:                                              ; preds = %119
  unreachable, !dbg !196

121:                                              ; preds = %116
  %122 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !197, !tbaa !32
  %123 = invoke noundef i32 %122(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %124 unwind label %180, !dbg !197

124:                                              ; preds = %121
  %125 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !198, !tbaa !36
  %126 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %125, null, !dbg !198
  br i1 %126, label %127, label %129, !dbg !201

127:                                              ; preds = %124
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %128 unwind label %180, !dbg !202

128:                                              ; preds = %127
  unreachable, !dbg !202

129:                                              ; preds = %124
  %130 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !203, !tbaa !32
  %131 = invoke noundef i32 %130(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %132 unwind label %180, !dbg !203

132:                                              ; preds = %129
  %133 = sub nsw i32 %123, %131, !dbg !204
  %134 = icmp eq i32 %133, %30, !dbg !204
  br i1 %134, label %138, label %135, !dbg !204

135:                                              ; preds = %132
  %136 = load i64, i64* @_ZL5no_op, align 8, !dbg !204, !tbaa !52
  %137 = add i64 %136, 1, !dbg !204
  store i64 %137, i64* @_ZL5no_op, align 8, !dbg !204, !tbaa !52
  br label %138, !dbg !204

138:                                              ; preds = %135, %132
  %139 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !205, !tbaa !36
  %140 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %139, null, !dbg !205
  br i1 %140, label %141, label %143, !dbg !208

141:                                              ; preds = %138
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %142 unwind label %180, !dbg !209

142:                                              ; preds = %141
  unreachable, !dbg !209

143:                                              ; preds = %138
  %144 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !dbg !210, !tbaa !32
  %145 = invoke noundef i32 %144(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %146 unwind label %180, !dbg !210

146:                                              ; preds = %143
  %147 = icmp eq i32 %145, %30, !dbg !211
  br i1 %147, label %151, label %148, !dbg !211

148:                                              ; preds = %146
  %149 = load i64, i64* @_ZL5no_op, align 8, !dbg !211, !tbaa !52
  %150 = add i64 %149, 1, !dbg !211
  store i64 %150, i64* @_ZL5no_op, align 8, !dbg !211, !tbaa !52
  br label %151, !dbg !211

151:                                              ; preds = %148, %146
  %152 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !212, !tbaa !36
  %153 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %152, null, !dbg !212
  br i1 %153, label %154, label %156, !dbg !215

154:                                              ; preds = %151
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %155 unwind label %180, !dbg !216

155:                                              ; preds = %154
  unreachable, !dbg !216

156:                                              ; preds = %151
  %157 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %15, align 8, !dbg !217, !tbaa !32
  %158 = invoke noundef i32 %157(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27)
          to label %159 unwind label %180, !dbg !217

159:                                              ; preds = %156
  %160 = icmp eq i32 %158, %30, !dbg !218
  br i1 %160, label %164, label %161, !dbg !218

161:                                              ; preds = %159
  %162 = load i64, i64* @_ZL5no_op, align 8, !dbg !218, !tbaa !52
  %163 = add i64 %162, 1, !dbg !218
  store i64 %163, i64* @_ZL5no_op, align 8, !dbg !218, !tbaa !52
  br label %164, !dbg !218

164:                                              ; preds = %161, %159
  %165 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !219, !tbaa !36
  %166 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %165, null, !dbg !219
  br i1 %166, label %172, label %167, !dbg !219

167:                                              ; preds = %164
  %168 = invoke noundef zeroext i1 %165(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %27, i32 noundef 3)
          to label %172 unwind label %169, !dbg !221

169:                                              ; preds = %167
  %170 = landingpad { i8*, i32 }
          catch i8* null, !dbg !221
  %171 = extractvalue { i8*, i32 } %170, 0, !dbg !221
  call void @__clang_call_terminate(i8* %171) #12, !dbg !221
  unreachable, !dbg !221

172:                                              ; preds = %167, %164
  %173 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !222, !tbaa !36
  %174 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %173, null, !dbg !222
  br i1 %174, label %199, label %175, !dbg !222

175:                                              ; preds = %172
  %176 = invoke noundef zeroext i1 %173(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 3)
          to label %199 unwind label %177, !dbg !224

177:                                              ; preds = %175
  %178 = landingpad { i8*, i32 }
          catch i8* null, !dbg !224
  %179 = extractvalue { i8*, i32 } %178, 0, !dbg !224
  call void @__clang_call_terminate(i8* %179) #12, !dbg !224
  unreachable, !dbg !224

180:                                              ; preds = %156, %154, %143, %141, %129, %127, %121, %119, %107, %105, %99, %97, %89, %87, %75, %73, %67, %65, %53, %51, %45, %43, %35, %33, %25, %23
  %181 = landingpad { i8*, i32 }
          cleanup, !dbg !225
  %182 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %18, align 8, !dbg !226, !tbaa !36
  %183 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %182, null, !dbg !226
  br i1 %183, label %190, label %184, !dbg !226

184:                                              ; preds = %180
  %185 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, !dbg !228
  %186 = invoke noundef zeroext i1 %182(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %185, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %185, i32 noundef 3)
          to label %190 unwind label %187, !dbg !229

187:                                              ; preds = %184
  %188 = landingpad { i8*, i32 }
          catch i8* null, !dbg !229
  %189 = extractvalue { i8*, i32 } %188, 0, !dbg !229
  call void @__clang_call_terminate(i8* %189) #12, !dbg !229
  unreachable, !dbg !229

190:                                              ; preds = %184, %180
  %191 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !230, !tbaa !36
  %192 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %191, null, !dbg !230
  br i1 %192, label %198, label %193, !dbg !230

193:                                              ; preds = %190
  %194 = invoke noundef zeroext i1 %191(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 3)
          to label %198 unwind label %195, !dbg !232

195:                                              ; preds = %193
  %196 = landingpad { i8*, i32 }
          catch i8* null, !dbg !232
  %197 = extractvalue { i8*, i32 } %196, 0, !dbg !232
  call void @__clang_call_terminate(i8* %197) #12, !dbg !232
  unreachable, !dbg !232

198:                                              ; preds = %193, %190
  resume { i8*, i32 } %181, !dbg !233

199:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4), !dbg !233
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5), !dbg !233
  ret i32 %30, !dbg !234
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !235 {
  switch i32 %2, label %11 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !236

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !237
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4testiiE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !240, !tbaa !28
  br label %11, !dbg !241

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !242
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !242, !tbaa !28
  br label %11, !dbg !243

8:                                                ; preds = %3
  %9 = bitcast %"union.std::_Any_data"* %0 to i8*, !dbg !244
  %10 = bitcast %"union.std::_Any_data"* %1 to i8*, !dbg !253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false) #10, !dbg !253, !tbaa.struct !27
  br label %11, !dbg !254

11:                                               ; preds = %8, %3, %6, %4
  ret i1 false, !dbg !255
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #8 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !256 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !257
  %3 = load i32*, i32** %2, align 8, !dbg !257, !tbaa !264
  %4 = load volatile i32, i32* %3, align 4, !dbg !266, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !279, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !279
  %7 = icmp eq i32 %6, %4, !dbg !279
  br i1 %7, label %11, label %8, !dbg !279

8:                                                ; preds = %1
  %9 = load i64, i64* @_ZL5no_op, align 8, !dbg !279, !tbaa !52
  %10 = add i64 %9, 1, !dbg !279
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !279, !tbaa !52
  br label %11, !dbg !279

11:                                               ; preds = %8, %1
  %12 = load volatile i32, i32* %3, align 4, !dbg !280, !tbaa !11
  %13 = add nsw i32 %12, -1, !dbg !280
  %14 = icmp eq i32 %13, %4, !dbg !280
  br i1 %14, label %18, label %15, !dbg !280

15:                                               ; preds = %11
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !280, !tbaa !52
  %17 = add i64 %16, 1, !dbg !280
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !280, !tbaa !52
  br label %18, !dbg !280

18:                                               ; preds = %15, %11
  %19 = load volatile i32, i32* %3, align 4, !dbg !281, !tbaa !11
  %20 = load volatile i32, i32* %3, align 4, !dbg !288, !tbaa !11
  %21 = add nsw i32 %20, 1, !dbg !288
  %22 = icmp eq i32 %21, %19, !dbg !288
  br i1 %22, label %26, label %23, !dbg !288

23:                                               ; preds = %18
  %24 = load i64, i64* @_ZL5no_op, align 8, !dbg !288, !tbaa !52
  %25 = add i64 %24, 1, !dbg !288
  store i64 %25, i64* @_ZL5no_op, align 8, !dbg !288, !tbaa !52
  br label %26, !dbg !288

26:                                               ; preds = %23, %18
  %27 = load volatile i32, i32* %3, align 4, !dbg !289, !tbaa !11
  %28 = add nsw i32 %27, -1, !dbg !289
  %29 = icmp eq i32 %28, %19, !dbg !289
  br i1 %29, label %33, label %30, !dbg !289

30:                                               ; preds = %26
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !289, !tbaa !52
  %32 = add i64 %31, 1, !dbg !289
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !289, !tbaa !52
  br label %33, !dbg !289

33:                                               ; preds = %30, %26
  %34 = icmp eq i32 %19, 0, !dbg !290
  %35 = zext i1 %34 to i32, !dbg !290
  %36 = icmp eq i32 %4, %35, !dbg !290
  br i1 %36, label %40, label %37, !dbg !290

37:                                               ; preds = %33
  %38 = load i64, i64* @_ZL5no_op, align 8, !dbg !290, !tbaa !52
  %39 = add i64 %38, 1, !dbg !290
  store i64 %39, i64* @_ZL5no_op, align 8, !dbg !290, !tbaa !52
  br label %40, !dbg !290

40:                                               ; preds = %37, %33
  %41 = load volatile i32, i32* %3, align 4, !dbg !291, !tbaa !11
  %42 = load volatile i32, i32* %3, align 4, !dbg !298, !tbaa !11
  %43 = add nsw i32 %42, 1, !dbg !298
  %44 = icmp eq i32 %43, %41, !dbg !298
  br i1 %44, label %48, label %45, !dbg !298

45:                                               ; preds = %40
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !298, !tbaa !52
  %47 = add i64 %46, 1, !dbg !298
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !298, !tbaa !52
  br label %48, !dbg !298

48:                                               ; preds = %45, %40
  %49 = load volatile i32, i32* %3, align 4, !dbg !299, !tbaa !11
  %50 = add nsw i32 %49, -1, !dbg !299
  %51 = icmp eq i32 %50, %41, !dbg !299
  br i1 %51, label %55, label %52, !dbg !299

52:                                               ; preds = %48
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !299, !tbaa !52
  %54 = add i64 %53, 1, !dbg !299
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !299, !tbaa !52
  br label %55, !dbg !299

55:                                               ; preds = %52, %48
  %56 = xor i32 %41, -1, !dbg !300
  %57 = icmp eq i32 %4, %56, !dbg !300
  br i1 %57, label %61, label %58, !dbg !300

58:                                               ; preds = %55
  %59 = load i64, i64* @_ZL5no_op, align 8, !dbg !300, !tbaa !52
  %60 = add i64 %59, 1, !dbg !300
  store i64 %60, i64* @_ZL5no_op, align 8, !dbg !300, !tbaa !52
  br label %61, !dbg !300

61:                                               ; preds = %58, %55
  %62 = load volatile i32, i32* %3, align 4, !dbg !301, !tbaa !11
  %63 = load volatile i32, i32* %3, align 4, !dbg !308, !tbaa !11
  %64 = add nsw i32 %63, 1, !dbg !308
  %65 = icmp eq i32 %64, %62, !dbg !308
  br i1 %65, label %69, label %66, !dbg !308

66:                                               ; preds = %61
  %67 = load i64, i64* @_ZL5no_op, align 8, !dbg !308, !tbaa !52
  %68 = add i64 %67, 1, !dbg !308
  store i64 %68, i64* @_ZL5no_op, align 8, !dbg !308, !tbaa !52
  br label %69, !dbg !308

69:                                               ; preds = %66, %61
  %70 = load volatile i32, i32* %3, align 4, !dbg !309, !tbaa !11
  %71 = add nsw i32 %70, -1, !dbg !309
  %72 = icmp eq i32 %71, %62, !dbg !309
  br i1 %72, label %76, label %73, !dbg !309

73:                                               ; preds = %69
  %74 = load i64, i64* @_ZL5no_op, align 8, !dbg !309, !tbaa !52
  %75 = add i64 %74, 1, !dbg !309
  store i64 %75, i64* @_ZL5no_op, align 8, !dbg !309, !tbaa !52
  br label %76, !dbg !309

76:                                               ; preds = %73, %69
  %77 = sub nsw i32 0, %62, !dbg !310
  %78 = icmp eq i32 %4, %77, !dbg !310
  br i1 %78, label %82, label %79, !dbg !310

79:                                               ; preds = %76
  %80 = load i64, i64* @_ZL5no_op, align 8, !dbg !310, !tbaa !52
  %81 = add i64 %80, 1, !dbg !310
  store i64 %81, i64* @_ZL5no_op, align 8, !dbg !310, !tbaa !52
  br label %82, !dbg !310

82:                                               ; preds = %79, %76
  %83 = icmp eq i32 %4, 0, !dbg !311
  br i1 %83, label %88, label %84, !dbg !311

84:                                               ; preds = %82
  %85 = load i64, i64* @_ZL5no_op, align 8, !dbg !311, !tbaa !52
  %86 = add i64 %85, 1, !dbg !311
  store i64 %86, i64* @_ZL5no_op, align 8, !dbg !311, !tbaa !52
  %87 = icmp eq i32 %4, 1, !dbg !312
  br i1 %87, label %92, label %88, !dbg !312

88:                                               ; preds = %84, %82
  %89 = load i64, i64* @_ZL5no_op, align 8, !dbg !312, !tbaa !52
  %90 = add i64 %89, 1, !dbg !312
  store i64 %90, i64* @_ZL5no_op, align 8, !dbg !312, !tbaa !52
  %91 = icmp eq i32 %4, -1, !dbg !313
  br i1 %91, label %95, label %92, !dbg !313

92:                                               ; preds = %88, %84
  %93 = load i64, i64* @_ZL5no_op, align 8, !dbg !313, !tbaa !52
  %94 = add i64 %93, 1, !dbg !313
  store i64 %94, i64* @_ZL5no_op, align 8, !dbg !313, !tbaa !52
  br label %95, !dbg !313

95:                                               ; preds = %88, %92
  ret i32 %4, !dbg !314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !315 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !316

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !317
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !319, !tbaa !28
  br label %12, !dbg !320

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !321
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !321, !tbaa !28
  br label %12, !dbg !322

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0, !dbg !323
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !323
  %11 = load i64, i64* %9, align 8, !dbg !323, !tbaa !28
  store i64 %11, i64* %10, align 8, !dbg !323, !tbaa !28
  br label %12, !dbg !330

12:                                               ; preds = %8, %3, %6, %4
  ret i1 false, !dbg !331
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #8 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !332 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !333
  %3 = load i32*, i32** %2, align 8, !dbg !333, !tbaa !340
  %4 = load volatile i32, i32* %3, align 4, !dbg !342, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !354, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !354
  %7 = icmp eq i32 %6, %4, !dbg !354
  br i1 %7, label %11, label %8, !dbg !354

8:                                                ; preds = %1
  %9 = load i64, i64* @_ZL5no_op, align 8, !dbg !354, !tbaa !52
  %10 = add i64 %9, 1, !dbg !354
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !354, !tbaa !52
  br label %11, !dbg !354

11:                                               ; preds = %8, %1
  %12 = load volatile i32, i32* %3, align 4, !dbg !355, !tbaa !11
  %13 = add nsw i32 %12, -1, !dbg !355
  %14 = icmp eq i32 %13, %4, !dbg !355
  br i1 %14, label %18, label %15, !dbg !355

15:                                               ; preds = %11
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !355, !tbaa !52
  %17 = add i64 %16, 1, !dbg !355
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !355, !tbaa !52
  br label %18, !dbg !355

18:                                               ; preds = %15, %11
  %19 = load volatile i32, i32* %3, align 4, !dbg !356, !tbaa !11
  %20 = load volatile i32, i32* %3, align 4, !dbg !363, !tbaa !11
  %21 = add nsw i32 %20, 1, !dbg !363
  %22 = icmp eq i32 %21, %19, !dbg !363
  br i1 %22, label %26, label %23, !dbg !363

23:                                               ; preds = %18
  %24 = load i64, i64* @_ZL5no_op, align 8, !dbg !363, !tbaa !52
  %25 = add i64 %24, 1, !dbg !363
  store i64 %25, i64* @_ZL5no_op, align 8, !dbg !363, !tbaa !52
  br label %26, !dbg !363

26:                                               ; preds = %23, %18
  %27 = load volatile i32, i32* %3, align 4, !dbg !364, !tbaa !11
  %28 = add nsw i32 %27, -1, !dbg !364
  %29 = icmp eq i32 %28, %19, !dbg !364
  br i1 %29, label %33, label %30, !dbg !364

30:                                               ; preds = %26
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !364, !tbaa !52
  %32 = add i64 %31, 1, !dbg !364
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !364, !tbaa !52
  br label %33, !dbg !364

33:                                               ; preds = %30, %26
  %34 = icmp eq i32 %19, 0, !dbg !365
  %35 = zext i1 %34 to i32, !dbg !365
  %36 = icmp eq i32 %4, %35, !dbg !365
  br i1 %36, label %40, label %37, !dbg !365

37:                                               ; preds = %33
  %38 = load i64, i64* @_ZL5no_op, align 8, !dbg !365, !tbaa !52
  %39 = add i64 %38, 1, !dbg !365
  store i64 %39, i64* @_ZL5no_op, align 8, !dbg !365, !tbaa !52
  br label %40, !dbg !365

40:                                               ; preds = %37, %33
  %41 = load volatile i32, i32* %3, align 4, !dbg !366, !tbaa !11
  %42 = load volatile i32, i32* %3, align 4, !dbg !373, !tbaa !11
  %43 = add nsw i32 %42, 1, !dbg !373
  %44 = icmp eq i32 %43, %41, !dbg !373
  br i1 %44, label %48, label %45, !dbg !373

45:                                               ; preds = %40
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !373, !tbaa !52
  %47 = add i64 %46, 1, !dbg !373
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !373, !tbaa !52
  br label %48, !dbg !373

48:                                               ; preds = %45, %40
  %49 = load volatile i32, i32* %3, align 4, !dbg !374, !tbaa !11
  %50 = add nsw i32 %49, -1, !dbg !374
  %51 = icmp eq i32 %50, %41, !dbg !374
  br i1 %51, label %55, label %52, !dbg !374

52:                                               ; preds = %48
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !374, !tbaa !52
  %54 = add i64 %53, 1, !dbg !374
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !374, !tbaa !52
  br label %55, !dbg !374

55:                                               ; preds = %52, %48
  %56 = xor i32 %41, -1, !dbg !375
  %57 = icmp eq i32 %4, %56, !dbg !375
  br i1 %57, label %61, label %58, !dbg !375

58:                                               ; preds = %55
  %59 = load i64, i64* @_ZL5no_op, align 8, !dbg !375, !tbaa !52
  %60 = add i64 %59, 1, !dbg !375
  store i64 %60, i64* @_ZL5no_op, align 8, !dbg !375, !tbaa !52
  br label %61, !dbg !375

61:                                               ; preds = %58, %55
  %62 = load volatile i32, i32* %3, align 4, !dbg !376, !tbaa !11
  %63 = load volatile i32, i32* %3, align 4, !dbg !383, !tbaa !11
  %64 = add nsw i32 %63, 1, !dbg !383
  %65 = icmp eq i32 %64, %62, !dbg !383
  br i1 %65, label %69, label %66, !dbg !383

66:                                               ; preds = %61
  %67 = load i64, i64* @_ZL5no_op, align 8, !dbg !383, !tbaa !52
  %68 = add i64 %67, 1, !dbg !383
  store i64 %68, i64* @_ZL5no_op, align 8, !dbg !383, !tbaa !52
  br label %69, !dbg !383

69:                                               ; preds = %66, %61
  %70 = load volatile i32, i32* %3, align 4, !dbg !384, !tbaa !11
  %71 = add nsw i32 %70, -1, !dbg !384
  %72 = icmp eq i32 %71, %62, !dbg !384
  br i1 %72, label %76, label %73, !dbg !384

73:                                               ; preds = %69
  %74 = load i64, i64* @_ZL5no_op, align 8, !dbg !384, !tbaa !52
  %75 = add i64 %74, 1, !dbg !384
  store i64 %75, i64* @_ZL5no_op, align 8, !dbg !384, !tbaa !52
  br label %76, !dbg !384

76:                                               ; preds = %73, %69
  %77 = sub nsw i32 0, %62, !dbg !385
  %78 = icmp eq i32 %4, %77, !dbg !385
  br i1 %78, label %82, label %79, !dbg !385

79:                                               ; preds = %76
  %80 = load i64, i64* @_ZL5no_op, align 8, !dbg !385, !tbaa !52
  %81 = add i64 %80, 1, !dbg !385
  store i64 %81, i64* @_ZL5no_op, align 8, !dbg !385, !tbaa !52
  br label %82, !dbg !385

82:                                               ; preds = %79, %76
  %83 = icmp eq i32 %4, 0, !dbg !386
  br i1 %83, label %88, label %84, !dbg !386

84:                                               ; preds = %82
  %85 = load i64, i64* @_ZL5no_op, align 8, !dbg !386, !tbaa !52
  %86 = add i64 %85, 1, !dbg !386
  store i64 %86, i64* @_ZL5no_op, align 8, !dbg !386, !tbaa !52
  %87 = icmp eq i32 %4, 1, !dbg !387
  br i1 %87, label %92, label %88, !dbg !387

88:                                               ; preds = %84, %82
  %89 = load i64, i64* @_ZL5no_op, align 8, !dbg !387, !tbaa !52
  %90 = add i64 %89, 1, !dbg !387
  store i64 %90, i64* @_ZL5no_op, align 8, !dbg !387, !tbaa !52
  %91 = icmp eq i32 %4, -1, !dbg !388
  br i1 %91, label %95, label %92, !dbg !388

92:                                               ; preds = %88, %84
  %93 = load i64, i64* @_ZL5no_op, align 8, !dbg !388, !tbaa !52
  %94 = add i64 %93, 1, !dbg !388
  store i64 %94, i64* @_ZL5no_op, align 8, !dbg !388, !tbaa !52
  br label %95, !dbg !388

95:                                               ; preds = %88, %92
  ret i32 %4, !dbg !389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !390 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !391

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !392
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !394, !tbaa !28
  br label %12, !dbg !395

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !396
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !396, !tbaa !28
  br label %12, !dbg !397

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0, !dbg !398
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !398
  %11 = load i64, i64* %9, align 8, !dbg !398, !tbaa !28
  store i64 %11, i64* %10, align 8, !dbg !398, !tbaa !28
  br label %12, !dbg !405

12:                                               ; preds = %8, %3, %6, %4
  ret i1 false, !dbg !406
}

attributes #0 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "unoptimized-instrumented.cc", directory: "/home/jlj/dev/dredd-evalutation/Experiments/basic-blocks-and-control-flow")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!8 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 121, type: !9, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!9 = !DISubroutineType(types: !10)
!10 = !{}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C++ TBAA"}
!15 = !DILocation(line: 667, column: 21, scope: !16, inlinedAt: !18)
!16 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:35), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!17 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_function.h", directory: "")
!18 = distinct !DILocation(line: 122, column: 35, scope: !8)
!19 = !DILocation(line: 152, column: 33, scope: !20, inlinedAt: !21)
!20 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!21 = distinct !DILocation(line: 215, column: 6, scope: !22, inlinedAt: !23)
!22 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!23 = distinct !DILocation(line: 449, column: 8, scope: !16, inlinedAt: !18)
!24 = !DILocation(line: 252, column: 30, scope: !25, inlinedAt: !26)
!25 = distinct !DISubprogram(name: "_Function_base", scope: !17, file: !17, line: 239, type: !9, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!26 = distinct !DILocation(line: 437, column: 4, scope: !16, inlinedAt: !18)
!27 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !13, i64 0}
!30 = !{i64 0, i64 8, !28}
!31 = !DILocation(line: 451, column: 19, scope: !16, inlinedAt: !18)
!32 = !{!33, !29, i64 24}
!33 = !{!"_ZTSSt8functionIFivEE", !29, i64 24}
!34 = !DILocation(line: 452, column: 8, scope: !16, inlinedAt: !18)
!35 = !DILocation(line: 452, column: 19, scope: !16, inlinedAt: !18)
!36 = !{!37, !29, i64 16}
!37 = !{!"_ZTSSt14_Function_base", !13, i64 0, !29, i64 16}
!38 = !DILocation(line: 590, column: 20, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "operator()", scope: !17, file: !17, line: 586, type: !9, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!40 = distinct !DILocation(line: 89, column: 3, scope: !41, inlinedAt: !42)
!41 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 88, type: !9, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!42 = distinct !DILocation(line: 122, column: 10, scope: !8)
!43 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !40)
!44 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !46)
!45 = distinct !DISubprogram(name: "_M_empty", scope: !17, file: !17, line: 247, type: !9, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!46 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !47)
!47 = distinct !DILocation(line: 90, column: 3, scope: !41, inlinedAt: !42)
!48 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !47)
!49 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !47)
!50 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !47)
!51 = !DILocation(line: 90, column: 3, scope: !41, inlinedAt: !42)
!52 = !{!53, !53, i64 0}
!53 = !{!"long long", !13, i64 0}
!54 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !55)
!55 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !56)
!56 = distinct !DILocation(line: 91, column: 3, scope: !41, inlinedAt: !42)
!57 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !56)
!58 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !56)
!59 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !56)
!60 = !DILocation(line: 91, column: 3, scope: !41, inlinedAt: !42)
!61 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !62)
!62 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !63)
!63 = distinct !DILocation(line: 92, column: 3, scope: !41, inlinedAt: !42)
!64 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !63)
!65 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !63)
!66 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !63)
!67 = !DILocation(line: 92, column: 3, scope: !41, inlinedAt: !42)
!68 = !DILocation(line: 93, column: 3, scope: !41, inlinedAt: !42)
!69 = !DILocation(line: 94, column: 3, scope: !41, inlinedAt: !42)
!70 = !DILocation(line: 95, column: 3, scope: !41, inlinedAt: !42)
!71 = !DILocation(line: 243, column: 11, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "~_Function_base", scope: !17, file: !17, line: 241, type: !9, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!73 = distinct !DILocation(line: 122, column: 3, scope: !8)
!74 = !DILocation(line: 244, column: 2, scope: !72, inlinedAt: !73)
!75 = !DILocation(line: 122, column: 3, scope: !8)
!76 = !DILocation(line: 123, column: 1, scope: !8)
!77 = !DILocation(line: 243, column: 11, scope: !72, inlinedAt: !78)
!78 = distinct !DILocation(line: 122, column: 3, scope: !8)
!79 = !DILocation(line: 244, column: 2, scope: !72, inlinedAt: !78)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 125, type: !9, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!81 = !DILocation(line: 76, column: 3, scope: !82, inlinedAt: !83)
!82 = distinct !DISubprogram(name: "__dredd_replace_expr_int_zero", scope: !1, file: !1, line: 74, type: !9, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!83 = distinct !DILocation(line: 126, column: 10, scope: !80)
!84 = !DILocation(line: 106, column: 3, scope: !85, inlinedAt: !86)
!85 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 99, type: !9, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!86 = distinct !DILocation(line: 128, column: 78, scope: !80)
!87 = !DILocation(line: 128, column: 3, scope: !80)
!88 = !DILocation(line: 129, column: 1, scope: !80)
!89 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!90 = !DILocation(line: 122, column: 129, scope: !91, inlinedAt: !92)
!91 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!92 = distinct !DILocation(line: 61, column: 14, scope: !93, inlinedAt: !95)
!93 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !94, file: !94, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!94 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/invoke.h", directory: "")
!95 = distinct !DILocation(line: 142, column: 14, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !94, file: !94, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!97 = distinct !DILocation(line: 290, column: 9, scope: !89)
!98 = !{!99, !29, i64 0}
!99 = !{!"_ZTSZ4testiiE3$_0", !29, i64 0, !29, i64 8}
!100 = !DILocation(line: 667, column: 21, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:128), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!102 = distinct !DILocation(line: 122, column: 128, scope: !91, inlinedAt: !92)
!103 = !DILocation(line: 152, column: 33, scope: !104, inlinedAt: !105)
!104 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!105 = distinct !DILocation(line: 215, column: 6, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!107 = distinct !DILocation(line: 449, column: 8, scope: !101, inlinedAt: !102)
!108 = !DILocation(line: 252, column: 30, scope: !25, inlinedAt: !109)
!109 = distinct !DILocation(line: 437, column: 4, scope: !101, inlinedAt: !102)
!110 = !DILocation(line: 451, column: 19, scope: !101, inlinedAt: !102)
!111 = !DILocation(line: 452, column: 8, scope: !101, inlinedAt: !102)
!112 = !DILocation(line: 452, column: 19, scope: !101, inlinedAt: !102)
!113 = !DILocation(line: 122, column: 293, scope: !91, inlinedAt: !92)
!114 = !{!99, !29, i64 8}
!115 = !DILocation(line: 667, column: 21, scope: !116, inlinedAt: !117)
!116 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:292), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!117 = distinct !DILocation(line: 122, column: 292, scope: !91, inlinedAt: !92)
!118 = !DILocation(line: 152, column: 33, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!120 = distinct !DILocation(line: 215, column: 6, scope: !121, inlinedAt: !122)
!121 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!122 = distinct !DILocation(line: 449, column: 8, scope: !116, inlinedAt: !117)
!123 = !DILocation(line: 252, column: 30, scope: !25, inlinedAt: !124)
!124 = distinct !DILocation(line: 437, column: 4, scope: !116, inlinedAt: !117)
!125 = !DILocation(line: 451, column: 19, scope: !116, inlinedAt: !117)
!126 = !DILocation(line: 452, column: 8, scope: !116, inlinedAt: !117)
!127 = !DILocation(line: 452, column: 19, scope: !116, inlinedAt: !117)
!128 = !DILocation(line: 590, column: 20, scope: !39, inlinedAt: !129)
!129 = distinct !DILocation(line: 111, column: 3, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 110, type: !9, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!131 = distinct !DILocation(line: 122, column: 74, scope: !91, inlinedAt: !92)
!132 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !129)
!133 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !134)
!134 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !135)
!135 = distinct !DILocation(line: 111, column: 3, scope: !130, inlinedAt: !131)
!136 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !135)
!137 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !135)
!138 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !135)
!139 = !DILocation(line: 590, column: 20, scope: !39, inlinedAt: !135)
!140 = !DILocation(line: 111, column: 3, scope: !130, inlinedAt: !131)
!141 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !142)
!142 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !143)
!143 = distinct !DILocation(line: 112, column: 3, scope: !130, inlinedAt: !131)
!144 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !143)
!145 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !143)
!146 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !143)
!147 = !DILocation(line: 112, column: 3, scope: !130, inlinedAt: !131)
!148 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !149)
!149 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !150)
!150 = distinct !DILocation(line: 112, column: 3, scope: !130, inlinedAt: !131)
!151 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !150)
!152 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !150)
!153 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !150)
!154 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !155)
!155 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !156)
!156 = distinct !DILocation(line: 112, column: 3, scope: !130, inlinedAt: !131)
!157 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !156)
!158 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !156)
!159 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !156)
!160 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !161)
!161 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !162)
!162 = distinct !DILocation(line: 113, column: 3, scope: !130, inlinedAt: !131)
!163 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !162)
!164 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !162)
!165 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !162)
!166 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !167)
!167 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !168)
!168 = distinct !DILocation(line: 113, column: 3, scope: !130, inlinedAt: !131)
!169 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !168)
!170 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !168)
!171 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !168)
!172 = !DILocation(line: 113, column: 3, scope: !130, inlinedAt: !131)
!173 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !174)
!174 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !175)
!175 = distinct !DILocation(line: 114, column: 3, scope: !130, inlinedAt: !131)
!176 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !175)
!177 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !175)
!178 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !175)
!179 = !DILocation(line: 114, column: 3, scope: !130, inlinedAt: !131)
!180 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !181)
!181 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !182)
!182 = distinct !DILocation(line: 114, column: 3, scope: !130, inlinedAt: !131)
!183 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !182)
!184 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !182)
!185 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !182)
!186 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !187)
!187 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !188)
!188 = distinct !DILocation(line: 114, column: 3, scope: !130, inlinedAt: !131)
!189 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !188)
!190 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !188)
!191 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !188)
!192 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !193)
!193 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !194)
!194 = distinct !DILocation(line: 115, column: 3, scope: !130, inlinedAt: !131)
!195 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !194)
!196 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !194)
!197 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !194)
!198 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !199)
!199 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !200)
!200 = distinct !DILocation(line: 115, column: 3, scope: !130, inlinedAt: !131)
!201 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !200)
!202 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !200)
!203 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !200)
!204 = !DILocation(line: 115, column: 3, scope: !130, inlinedAt: !131)
!205 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !206)
!206 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !207)
!207 = distinct !DILocation(line: 116, column: 3, scope: !130, inlinedAt: !131)
!208 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !207)
!209 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !207)
!210 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !207)
!211 = !DILocation(line: 116, column: 3, scope: !130, inlinedAt: !131)
!212 = !DILocation(line: 247, column: 37, scope: !45, inlinedAt: !213)
!213 = distinct !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !214)
!214 = distinct !DILocation(line: 117, column: 3, scope: !130, inlinedAt: !131)
!215 = !DILocation(line: 588, column: 6, scope: !39, inlinedAt: !214)
!216 = !DILocation(line: 589, column: 4, scope: !39, inlinedAt: !214)
!217 = !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !214)
!218 = !DILocation(line: 117, column: 3, scope: !130, inlinedAt: !131)
!219 = !DILocation(line: 243, column: 11, scope: !72, inlinedAt: !220)
!220 = distinct !DILocation(line: 122, column: 50, scope: !91, inlinedAt: !92)
!221 = !DILocation(line: 244, column: 2, scope: !72, inlinedAt: !220)
!222 = !DILocation(line: 243, column: 11, scope: !72, inlinedAt: !223)
!223 = distinct !DILocation(line: 122, column: 50, scope: !91, inlinedAt: !92)
!224 = !DILocation(line: 244, column: 2, scope: !72, inlinedAt: !223)
!225 = !DILocation(line: 122, column: 462, scope: !91, inlinedAt: !92)
!226 = !DILocation(line: 243, column: 11, scope: !72, inlinedAt: !227)
!227 = distinct !DILocation(line: 122, column: 50, scope: !91, inlinedAt: !92)
!228 = !DILocation(line: 244, column: 13, scope: !72, inlinedAt: !227)
!229 = !DILocation(line: 244, column: 2, scope: !72, inlinedAt: !227)
!230 = !DILocation(line: 243, column: 11, scope: !72, inlinedAt: !231)
!231 = distinct !DILocation(line: 122, column: 50, scope: !91, inlinedAt: !92)
!232 = !DILocation(line: 244, column: 2, scope: !72, inlinedAt: !231)
!233 = !DILocation(line: 122, column: 50, scope: !91, inlinedAt: !92)
!234 = !DILocation(line: 290, column: 2, scope: !89)
!235 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!236 = !DILocation(line: 270, column: 2, scope: !235)
!237 = !DILocation(line: 91, column: 17, scope: !238, inlinedAt: !239)
!238 = distinct !DISubprogram(name: "_M_access<const std::type_info *>", scope: !17, file: !17, line: 90, type: !9, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!239 = distinct !DILocation(line: 274, column: 13, scope: !235)
!240 = !DILocation(line: 274, column: 43, scope: !235)
!241 = !DILocation(line: 275, column: 6, scope: !235)
!242 = !DILocation(line: 278, column: 36, scope: !235)
!243 = !DILocation(line: 279, column: 6, scope: !235)
!244 = !DILocation(line: 85, column: 45, scope: !245, inlinedAt: !246)
!245 = distinct !DISubprogram(name: "_M_access", scope: !17, file: !17, line: 85, type: !9, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!246 = distinct !DILocation(line: 152, column: 20, scope: !247, inlinedAt: !248)
!247 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!248 = distinct !DILocation(line: 215, column: 6, scope: !249, inlinedAt: !250)
!249 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!250 = distinct !DILocation(line: 198, column: 8, scope: !251, inlinedAt: !252)
!251 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!252 = distinct !DILocation(line: 282, column: 6, scope: !235)
!253 = !DILocation(line: 152, column: 33, scope: !247, inlinedAt: !248)
!254 = !DILocation(line: 200, column: 8, scope: !251, inlinedAt: !252)
!255 = !DILocation(line: 284, column: 2, scope: !235)
!256 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!257 = !DILocation(line: 122, column: 193, scope: !258, inlinedAt: !259)
!258 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!259 = distinct !DILocation(line: 61, column: 14, scope: !260, inlinedAt: !261)
!260 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !94, file: !94, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!261 = distinct !DILocation(line: 142, column: 14, scope: !262, inlinedAt: !263)
!262 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !94, file: !94, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!263 = distinct !DILocation(line: 290, column: 9, scope: !256)
!264 = !{!265, !29, i64 0}
!265 = !{!"_ZTSZZ4testiiENK3$_0clEvEUlvE_", !29, i64 0}
!266 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !268)
!267 = distinct !DISubprogram(name: "__dredd_replace_expr_volatile_int_lvalue", scope: !1, file: !1, line: 67, type: !9, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!268 = distinct !DILocation(line: 122, column: 231, scope: !269, inlinedAt: !270)
!269 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!270 = distinct !DILocation(line: 61, column: 14, scope: !271, inlinedAt: !272)
!271 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !94, file: !94, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!272 = distinct !DILocation(line: 142, column: 14, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !94, file: !94, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!274 = distinct !DILocation(line: 290, column: 9, scope: !275, inlinedAt: !276)
!275 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!276 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !277)
!277 = distinct !DILocation(line: 89, column: 3, scope: !41, inlinedAt: !278)
!278 = distinct !DILocation(line: 122, column: 167, scope: !258, inlinedAt: !259)
!279 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !268)
!280 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !268)
!281 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !282)
!282 = distinct !DILocation(line: 122, column: 231, scope: !269, inlinedAt: !283)
!283 = distinct !DILocation(line: 61, column: 14, scope: !271, inlinedAt: !284)
!284 = distinct !DILocation(line: 142, column: 14, scope: !273, inlinedAt: !285)
!285 = distinct !DILocation(line: 290, column: 9, scope: !275, inlinedAt: !286)
!286 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !287)
!287 = distinct !DILocation(line: 90, column: 3, scope: !41, inlinedAt: !278)
!288 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !282)
!289 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !282)
!290 = !DILocation(line: 90, column: 3, scope: !41, inlinedAt: !278)
!291 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !292)
!292 = distinct !DILocation(line: 122, column: 231, scope: !269, inlinedAt: !293)
!293 = distinct !DILocation(line: 61, column: 14, scope: !271, inlinedAt: !294)
!294 = distinct !DILocation(line: 142, column: 14, scope: !273, inlinedAt: !295)
!295 = distinct !DILocation(line: 290, column: 9, scope: !275, inlinedAt: !296)
!296 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !297)
!297 = distinct !DILocation(line: 91, column: 3, scope: !41, inlinedAt: !278)
!298 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !292)
!299 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !292)
!300 = !DILocation(line: 91, column: 3, scope: !41, inlinedAt: !278)
!301 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !302)
!302 = distinct !DILocation(line: 122, column: 231, scope: !269, inlinedAt: !303)
!303 = distinct !DILocation(line: 61, column: 14, scope: !271, inlinedAt: !304)
!304 = distinct !DILocation(line: 142, column: 14, scope: !273, inlinedAt: !305)
!305 = distinct !DILocation(line: 290, column: 9, scope: !275, inlinedAt: !306)
!306 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !307)
!307 = distinct !DILocation(line: 92, column: 3, scope: !41, inlinedAt: !278)
!308 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !302)
!309 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !302)
!310 = !DILocation(line: 92, column: 3, scope: !41, inlinedAt: !278)
!311 = !DILocation(line: 93, column: 3, scope: !41, inlinedAt: !278)
!312 = !DILocation(line: 94, column: 3, scope: !41, inlinedAt: !278)
!313 = !DILocation(line: 95, column: 3, scope: !41, inlinedAt: !278)
!314 = !DILocation(line: 290, column: 2, scope: !256)
!315 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!316 = !DILocation(line: 270, column: 2, scope: !315)
!317 = !DILocation(line: 91, column: 17, scope: !238, inlinedAt: !318)
!318 = distinct !DILocation(line: 274, column: 13, scope: !315)
!319 = !DILocation(line: 274, column: 43, scope: !315)
!320 = !DILocation(line: 275, column: 6, scope: !315)
!321 = !DILocation(line: 278, column: 36, scope: !315)
!322 = !DILocation(line: 279, column: 6, scope: !315)
!323 = !DILocation(line: 152, column: 33, scope: !324, inlinedAt: !325)
!324 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!325 = distinct !DILocation(line: 215, column: 6, scope: !326, inlinedAt: !327)
!326 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!327 = distinct !DILocation(line: 198, column: 8, scope: !328, inlinedAt: !329)
!328 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!329 = distinct !DILocation(line: 282, column: 6, scope: !315)
!330 = !DILocation(line: 200, column: 8, scope: !328, inlinedAt: !329)
!331 = !DILocation(line: 284, column: 2, scope: !315)
!332 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!333 = !DILocation(line: 122, column: 357, scope: !334, inlinedAt: !335)
!334 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!335 = distinct !DILocation(line: 61, column: 14, scope: !336, inlinedAt: !337)
!336 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !94, file: !94, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!337 = distinct !DILocation(line: 142, column: 14, scope: !338, inlinedAt: !339)
!338 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !94, file: !94, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!339 = distinct !DILocation(line: 290, column: 9, scope: !332)
!340 = !{!341, !29, i64 0}
!341 = !{!"_ZTSZZ4testiiENK3$_0clEvEUlvE0_", !29, i64 0}
!342 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !343)
!343 = distinct !DILocation(line: 122, column: 395, scope: !344, inlinedAt: !345)
!344 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!345 = distinct !DILocation(line: 61, column: 14, scope: !346, inlinedAt: !347)
!346 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !94, file: !94, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!347 = distinct !DILocation(line: 142, column: 14, scope: !348, inlinedAt: !349)
!348 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !94, file: !94, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!349 = distinct !DILocation(line: 290, column: 9, scope: !350, inlinedAt: !351)
!350 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!351 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !352)
!352 = distinct !DILocation(line: 89, column: 3, scope: !41, inlinedAt: !353)
!353 = distinct !DILocation(line: 122, column: 331, scope: !334, inlinedAt: !335)
!354 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !343)
!355 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !343)
!356 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !357)
!357 = distinct !DILocation(line: 122, column: 395, scope: !344, inlinedAt: !358)
!358 = distinct !DILocation(line: 61, column: 14, scope: !346, inlinedAt: !359)
!359 = distinct !DILocation(line: 142, column: 14, scope: !348, inlinedAt: !360)
!360 = distinct !DILocation(line: 290, column: 9, scope: !350, inlinedAt: !361)
!361 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !362)
!362 = distinct !DILocation(line: 90, column: 3, scope: !41, inlinedAt: !353)
!363 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !357)
!364 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !357)
!365 = !DILocation(line: 90, column: 3, scope: !41, inlinedAt: !353)
!366 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !367)
!367 = distinct !DILocation(line: 122, column: 395, scope: !344, inlinedAt: !368)
!368 = distinct !DILocation(line: 61, column: 14, scope: !346, inlinedAt: !369)
!369 = distinct !DILocation(line: 142, column: 14, scope: !348, inlinedAt: !370)
!370 = distinct !DILocation(line: 290, column: 9, scope: !350, inlinedAt: !371)
!371 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !372)
!372 = distinct !DILocation(line: 91, column: 3, scope: !41, inlinedAt: !353)
!373 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !367)
!374 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !367)
!375 = !DILocation(line: 91, column: 3, scope: !41, inlinedAt: !353)
!376 = !DILocation(line: 68, column: 3, scope: !267, inlinedAt: !377)
!377 = distinct !DILocation(line: 122, column: 395, scope: !344, inlinedAt: !378)
!378 = distinct !DILocation(line: 61, column: 14, scope: !346, inlinedAt: !379)
!379 = distinct !DILocation(line: 142, column: 14, scope: !348, inlinedAt: !380)
!380 = distinct !DILocation(line: 290, column: 9, scope: !350, inlinedAt: !381)
!381 = distinct !DILocation(line: 590, column: 9, scope: !39, inlinedAt: !382)
!382 = distinct !DILocation(line: 92, column: 3, scope: !41, inlinedAt: !353)
!383 = !DILocation(line: 69, column: 3, scope: !267, inlinedAt: !377)
!384 = !DILocation(line: 70, column: 3, scope: !267, inlinedAt: !377)
!385 = !DILocation(line: 92, column: 3, scope: !41, inlinedAt: !353)
!386 = !DILocation(line: 93, column: 3, scope: !41, inlinedAt: !353)
!387 = !DILocation(line: 94, column: 3, scope: !41, inlinedAt: !353)
!388 = !DILocation(line: 95, column: 3, scope: !41, inlinedAt: !353)
!389 = !DILocation(line: 290, column: 2, scope: !332)
!390 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!391 = !DILocation(line: 270, column: 2, scope: !390)
!392 = !DILocation(line: 91, column: 17, scope: !238, inlinedAt: !393)
!393 = distinct !DILocation(line: 274, column: 13, scope: !390)
!394 = !DILocation(line: 274, column: 43, scope: !390)
!395 = !DILocation(line: 275, column: 6, scope: !390)
!396 = !DILocation(line: 278, column: 36, scope: !390)
!397 = !DILocation(line: 279, column: 6, scope: !390)
!398 = !DILocation(line: 152, column: 33, scope: !399, inlinedAt: !400)
!399 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!400 = distinct !DILocation(line: 215, column: 6, scope: !401, inlinedAt: !402)
!401 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!402 = distinct !DILocation(line: 198, column: 8, scope: !403, inlinedAt: !404)
!403 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!404 = distinct !DILocation(line: 282, column: 6, scope: !390)
!405 = !DILocation(line: 200, column: 8, scope: !403, inlinedAt: !404)
!406 = !DILocation(line: 284, column: 2, scope: !390)
