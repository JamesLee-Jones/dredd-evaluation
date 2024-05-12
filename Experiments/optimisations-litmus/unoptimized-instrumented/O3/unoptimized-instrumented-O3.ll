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
  %6 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 0, i32 1, !dbg !15
  %7 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 1, !dbg !21
  %8 = bitcast %"class.std::function"* %5 to i32**, !dbg !22
  store i32* %3, i32** %8, align 8, !dbg !22, !tbaa.struct !27
  %9 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !22
  %10 = bitcast i64* %9 to i32**, !dbg !22
  store i32* %4, i32** %10, align 8, !dbg !22, !tbaa.struct !30
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %7, align 8, !dbg !31, !tbaa !32
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %6, align 8, !dbg !34, !tbaa !35
  %11 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i64 0, i32 0, i32 0, !dbg !37
  %12 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11), !dbg !42
  %13 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11), !dbg !43
  %14 = icmp eq i32 %13, 0, !dbg !45
  %15 = zext i1 %14 to i32, !dbg !45
  %16 = icmp eq i32 %12, %15, !dbg !45
  br i1 %16, label %20, label %17, !dbg !45

17:                                               ; preds = %2
  %18 = load i64, i64* @_ZL5no_op, align 8, !dbg !45, !tbaa !46
  %19 = add i64 %18, 1, !dbg !45
  store i64 %19, i64* @_ZL5no_op, align 8, !dbg !45, !tbaa !46
  br label %20, !dbg !45

20:                                               ; preds = %2, %17
  %21 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11), !dbg !48
  %22 = xor i32 %21, -1, !dbg !50
  %23 = icmp eq i32 %12, %22, !dbg !50
  br i1 %23, label %27, label %24, !dbg !50

24:                                               ; preds = %20
  %25 = load i64, i64* @_ZL5no_op, align 8, !dbg !50, !tbaa !46
  %26 = add i64 %25, 1, !dbg !50
  store i64 %26, i64* @_ZL5no_op, align 8, !dbg !50, !tbaa !46
  br label %27, !dbg !50

27:                                               ; preds = %20, %24
  %28 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11), !dbg !51
  %29 = sub nsw i32 0, %28, !dbg !53
  %30 = icmp ne i32 %12, %29, !dbg !53
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !54, !tbaa !46
  %32 = zext i1 %30 to i64, !dbg !53
  %33 = add i64 %31, %32, !dbg !53
  %34 = add i64 %33, 1, !dbg !54
  %35 = icmp ult i32 %12, 2, !dbg !55
  br i1 %35, label %39, label %36, !dbg !55

36:                                               ; preds = %27
  %37 = add i64 %33, 2, !dbg !56
  %38 = icmp eq i32 %12, -1, !dbg !57
  br i1 %38, label %42, label %39, !dbg !57

39:                                               ; preds = %36, %27
  %40 = phi i64 [ %37, %36 ], [ %34, %27 ], !dbg !57
  %41 = add i64 %40, 1, !dbg !57
  br label %42, !dbg !57

42:                                               ; preds = %36, %39
  %43 = phi i64 [ %41, %39 ], [ %37, %36 ], !dbg !54
  store i64 %43, i64* @_ZL5no_op, align 8, !dbg !54, !tbaa !46
  ret i32 %12, !dbg !58
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 !dbg !59 {
  %1 = load i64, i64* @_ZL5no_op, align 8, !dbg !60, !tbaa !46
  %2 = add i64 %1, 16, !dbg !63
  store i64 %2, i64* @_ZL5no_op, align 8, !dbg !66, !tbaa !46
  %3 = tail call noundef i32 @_Z4testii(i32 noundef 0, i32 noundef 0), !dbg !67
  ret i32 0, !dbg !68
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #4 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #0 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !69 {
  %2 = alloca %"class.std::function", align 8
  %3 = alloca %"class.std::function", align 8
  %4 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !70
  %5 = load i32*, i32** %4, align 8, !dbg !70, !tbaa !71
  %6 = getelementptr %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 1, !dbg !70
  %7 = bitcast i64* %6 to i32**, !dbg !70
  %8 = load i32*, i32** %7, align 8, !dbg !70, !tbaa !73
  %9 = bitcast %"class.std::function"* %2 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9), !dbg !74
  %10 = bitcast %"class.std::function"* %3 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10), !dbg !74
  %11 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 1, !dbg !74
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 1, !dbg !85
  %13 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !86
  %14 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !91
  store i64 0, i64* %14, align 8, !dbg !91
  %15 = ptrtoint i32* %5 to i64, !dbg !86
  store i64 %15, i64* %13, align 8, !dbg !86, !tbaa !28
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !92, !tbaa !32
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !93, !tbaa !35
  %16 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 1, !dbg !94
  %17 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 1, !dbg !98
  %18 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !99
  %19 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !104
  store i64 0, i64* %19, align 8, !dbg !104
  %20 = ptrtoint i32* %8 to i64, !dbg !99
  store i64 %20, i64* %18, align 8, !dbg !99, !tbaa !28
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !105, !tbaa !32
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !106, !tbaa !35
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, !dbg !107
  %22 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21), !dbg !111
  %23 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, !dbg !112
  %24 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23), !dbg !114
  %25 = add nsw i32 %24, %22, !dbg !115
  %26 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23), !dbg !116
  %27 = icmp eq i32 %26, 0, !dbg !118
  br i1 %27, label %43, label %28, !dbg !118

28:                                               ; preds = %1
  %29 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21), !dbg !119
  %30 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !121, !tbaa !35
  %31 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %30, null, !dbg !121
  br i1 %31, label %32, label %34, !dbg !125

32:                                               ; preds = %28
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %33 unwind label %161, !dbg !126

33:                                               ; preds = %32
  unreachable, !dbg !126

34:                                               ; preds = %28
  %35 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !127, !tbaa !32
  %36 = invoke noundef i32 %35(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %37 unwind label %161, !dbg !127

37:                                               ; preds = %34
  %38 = sdiv i32 %29, %36, !dbg !118
  %39 = icmp eq i32 %38, %25, !dbg !118
  br i1 %39, label %43, label %40, !dbg !118

40:                                               ; preds = %37
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !118, !tbaa !46
  %42 = add i64 %41, 1, !dbg !118
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !118, !tbaa !46
  br label %43, !dbg !118

43:                                               ; preds = %40, %37, %1
  %44 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !128, !tbaa !35
  %45 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %44, null, !dbg !128
  br i1 %45, label %46, label %48, !dbg !131

46:                                               ; preds = %43
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %47 unwind label %161, !dbg !132

47:                                               ; preds = %46
  unreachable, !dbg !132

48:                                               ; preds = %43
  %49 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !133, !tbaa !32
  %50 = invoke noundef i32 %49(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %51 unwind label %161, !dbg !133

51:                                               ; preds = %48
  %52 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !134, !tbaa !35
  %53 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %52, null, !dbg !134
  br i1 %53, label %54, label %56, !dbg !137

54:                                               ; preds = %51
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %55 unwind label %161, !dbg !138

55:                                               ; preds = %54
  unreachable, !dbg !138

56:                                               ; preds = %51
  %57 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !139, !tbaa !32
  %58 = invoke noundef i32 %57(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %59 unwind label %161, !dbg !139

59:                                               ; preds = %56
  %60 = mul nsw i32 %58, %50, !dbg !140
  %61 = icmp eq i32 %60, %25, !dbg !140
  br i1 %61, label %65, label %62, !dbg !140

62:                                               ; preds = %59
  %63 = load i64, i64* @_ZL5no_op, align 8, !dbg !140, !tbaa !46
  %64 = add i64 %63, 1, !dbg !140
  store i64 %64, i64* @_ZL5no_op, align 8, !dbg !140, !tbaa !46
  br label %65, !dbg !140

65:                                               ; preds = %62, %59
  %66 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !141, !tbaa !35
  %67 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %66, null, !dbg !141
  br i1 %67, label %68, label %70, !dbg !144

68:                                               ; preds = %65
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %69 unwind label %161, !dbg !145

69:                                               ; preds = %68
  unreachable, !dbg !145

70:                                               ; preds = %65
  %71 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !146, !tbaa !32
  %72 = invoke noundef i32 %71(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %73 unwind label %161, !dbg !146

73:                                               ; preds = %70
  %74 = icmp eq i32 %72, 0, !dbg !147
  br i1 %74, label %97, label %75, !dbg !147

75:                                               ; preds = %73
  %76 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !148, !tbaa !35
  %77 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %76, null, !dbg !148
  br i1 %77, label %78, label %80, !dbg !151

78:                                               ; preds = %75
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %79 unwind label %161, !dbg !152

79:                                               ; preds = %78
  unreachable, !dbg !152

80:                                               ; preds = %75
  %81 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !153, !tbaa !32
  %82 = invoke noundef i32 %81(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %83 unwind label %161, !dbg !153

83:                                               ; preds = %80
  %84 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !154, !tbaa !35
  %85 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %84, null, !dbg !154
  br i1 %85, label %86, label %88, !dbg !157

86:                                               ; preds = %83
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %87 unwind label %161, !dbg !158

87:                                               ; preds = %86
  unreachable, !dbg !158

88:                                               ; preds = %83
  %89 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !159, !tbaa !32
  %90 = invoke noundef i32 %89(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %91 unwind label %161, !dbg !159

91:                                               ; preds = %88
  %92 = srem i32 %82, %90, !dbg !147
  %93 = icmp eq i32 %92, %25, !dbg !147
  br i1 %93, label %97, label %94, !dbg !147

94:                                               ; preds = %91
  %95 = load i64, i64* @_ZL5no_op, align 8, !dbg !147, !tbaa !46
  %96 = add i64 %95, 1, !dbg !147
  store i64 %96, i64* @_ZL5no_op, align 8, !dbg !147, !tbaa !46
  br label %97, !dbg !147

97:                                               ; preds = %94, %91, %73
  %98 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !160, !tbaa !35
  %99 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %98, null, !dbg !160
  br i1 %99, label %100, label %102, !dbg !163

100:                                              ; preds = %97
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %101 unwind label %161, !dbg !164

101:                                              ; preds = %100
  unreachable, !dbg !164

102:                                              ; preds = %97
  %103 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !165, !tbaa !32
  %104 = invoke noundef i32 %103(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %105 unwind label %161, !dbg !165

105:                                              ; preds = %102
  %106 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !166, !tbaa !35
  %107 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %106, null, !dbg !166
  br i1 %107, label %108, label %110, !dbg !169

108:                                              ; preds = %105
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %109 unwind label %161, !dbg !170

109:                                              ; preds = %108
  unreachable, !dbg !170

110:                                              ; preds = %105
  %111 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !171, !tbaa !32
  %112 = invoke noundef i32 %111(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %113 unwind label %161, !dbg !171

113:                                              ; preds = %110
  %114 = sub nsw i32 %104, %112, !dbg !172
  %115 = icmp eq i32 %114, %25, !dbg !172
  br i1 %115, label %119, label %116, !dbg !172

116:                                              ; preds = %113
  %117 = load i64, i64* @_ZL5no_op, align 8, !dbg !172, !tbaa !46
  %118 = add i64 %117, 1, !dbg !172
  store i64 %118, i64* @_ZL5no_op, align 8, !dbg !172, !tbaa !46
  br label %119, !dbg !172

119:                                              ; preds = %116, %113
  %120 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !173, !tbaa !35
  %121 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %120, null, !dbg !173
  br i1 %121, label %122, label %124, !dbg !176

122:                                              ; preds = %119
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %123 unwind label %161, !dbg !177

123:                                              ; preds = %122
  unreachable, !dbg !177

124:                                              ; preds = %119
  %125 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %12, align 8, !dbg !178, !tbaa !32
  %126 = invoke noundef i32 %125(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %127 unwind label %161, !dbg !178

127:                                              ; preds = %124
  %128 = icmp eq i32 %126, %25, !dbg !179
  br i1 %128, label %132, label %129, !dbg !179

129:                                              ; preds = %127
  %130 = load i64, i64* @_ZL5no_op, align 8, !dbg !179, !tbaa !46
  %131 = add i64 %130, 1, !dbg !179
  store i64 %131, i64* @_ZL5no_op, align 8, !dbg !179, !tbaa !46
  br label %132, !dbg !179

132:                                              ; preds = %129, %127
  %133 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !180, !tbaa !35
  %134 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %133, null, !dbg !180
  br i1 %134, label %135, label %137, !dbg !183

135:                                              ; preds = %132
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %136 unwind label %161, !dbg !184

136:                                              ; preds = %135
  unreachable, !dbg !184

137:                                              ; preds = %132
  %138 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !185, !tbaa !32
  %139 = invoke noundef i32 %138(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %140 unwind label %161, !dbg !185

140:                                              ; preds = %137
  %141 = icmp eq i32 %139, %25, !dbg !186
  br i1 %141, label %145, label %142, !dbg !186

142:                                              ; preds = %140
  %143 = load i64, i64* @_ZL5no_op, align 8, !dbg !186, !tbaa !46
  %144 = add i64 %143, 1, !dbg !186
  store i64 %144, i64* @_ZL5no_op, align 8, !dbg !186, !tbaa !46
  br label %145, !dbg !186

145:                                              ; preds = %142, %140
  %146 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !187, !tbaa !35
  %147 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %146, null, !dbg !187
  br i1 %147, label %153, label %148, !dbg !187

148:                                              ; preds = %145
  %149 = invoke noundef zeroext i1 %146(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, i32 noundef 3)
          to label %153 unwind label %150, !dbg !190

150:                                              ; preds = %148
  %151 = landingpad { i8*, i32 }
          catch i8* null, !dbg !190
  %152 = extractvalue { i8*, i32 } %151, 0, !dbg !190
  call void @__clang_call_terminate(i8* %152) #10, !dbg !190
  unreachable, !dbg !190

153:                                              ; preds = %148, %145
  %154 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !191, !tbaa !35
  %155 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %154, null, !dbg !191
  br i1 %155, label %179, label %156, !dbg !191

156:                                              ; preds = %153
  %157 = invoke noundef zeroext i1 %154(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 3)
          to label %179 unwind label %158, !dbg !193

158:                                              ; preds = %156
  %159 = landingpad { i8*, i32 }
          catch i8* null, !dbg !193
  %160 = extractvalue { i8*, i32 } %159, 0, !dbg !193
  call void @__clang_call_terminate(i8* %160) #10, !dbg !193
  unreachable, !dbg !193

161:                                              ; preds = %137, %135, %124, %122, %110, %108, %102, %100, %88, %86, %80, %78, %70, %68, %56, %54, %48, %46, %34, %32
  %162 = landingpad { i8*, i32 }
          cleanup, !dbg !194
  %163 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !195, !tbaa !35
  %164 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %163, null, !dbg !195
  br i1 %164, label %170, label %165, !dbg !195

165:                                              ; preds = %161
  %166 = invoke noundef zeroext i1 %163(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, i32 noundef 3)
          to label %170 unwind label %167, !dbg !197

167:                                              ; preds = %165
  %168 = landingpad { i8*, i32 }
          catch i8* null, !dbg !197
  %169 = extractvalue { i8*, i32 } %168, 0, !dbg !197
  call void @__clang_call_terminate(i8* %169) #10, !dbg !197
  unreachable, !dbg !197

170:                                              ; preds = %165, %161
  %171 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !dbg !198, !tbaa !35
  %172 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %171, null, !dbg !198
  br i1 %172, label %178, label %173, !dbg !198

173:                                              ; preds = %170
  %174 = invoke noundef zeroext i1 %171(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 3)
          to label %178 unwind label %175, !dbg !200

175:                                              ; preds = %173
  %176 = landingpad { i8*, i32 }
          catch i8* null, !dbg !200
  %177 = extractvalue { i8*, i32 } %176, 0, !dbg !200
  call void @__clang_call_terminate(i8* %177) #10, !dbg !200
  unreachable, !dbg !200

178:                                              ; preds = %173, %170
  resume { i8*, i32 } %162, !dbg !201

179:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9), !dbg !201
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10), !dbg !201
  ret i32 %25, !dbg !202
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #5 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !203 {
  switch i32 %2, label %11 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !204

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !205
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4testiiE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !208, !tbaa !28
  br label %11, !dbg !209

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !210
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !210, !tbaa !28
  br label %11, !dbg !211

8:                                                ; preds = %3
  %9 = bitcast %"union.std::_Any_data"* %0 to i8*, !dbg !212
  %10 = bitcast %"union.std::_Any_data"* %1 to i8*, !dbg !221
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false) #9, !dbg !221, !tbaa.struct !27
  br label %11, !dbg !222

11:                                               ; preds = %3, %8, %6, %4
  ret i1 false, !dbg !223
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #7 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !224 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !225
  %3 = load i32*, i32** %2, align 8, !dbg !225, !tbaa !226
  %4 = load volatile i32, i32* %3, align 4, !dbg !228, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !247, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !247
  %7 = icmp eq i32 %6, %4, !dbg !247
  br i1 %7, label %11, label %8, !dbg !247

8:                                                ; preds = %1
  %9 = load i64, i64* @_ZL5no_op, align 8, !dbg !247, !tbaa !46
  %10 = add i64 %9, 1, !dbg !247
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !247, !tbaa !46
  br label %11, !dbg !247

11:                                               ; preds = %8, %1
  %12 = load volatile i32, i32* %3, align 4, !dbg !248, !tbaa !11
  %13 = add nsw i32 %12, -1, !dbg !248
  %14 = icmp eq i32 %13, %4, !dbg !248
  br i1 %14, label %18, label %15, !dbg !248

15:                                               ; preds = %11
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !248, !tbaa !46
  %17 = add i64 %16, 1, !dbg !248
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !248, !tbaa !46
  br label %18, !dbg !248

18:                                               ; preds = %15, %11
  %19 = load volatile i32, i32* %3, align 4, !dbg !249, !tbaa !11
  %20 = load volatile i32, i32* %3, align 4, !dbg !256, !tbaa !11
  %21 = add nsw i32 %20, 1, !dbg !256
  %22 = icmp eq i32 %21, %19, !dbg !256
  br i1 %22, label %26, label %23, !dbg !256

23:                                               ; preds = %18
  %24 = load i64, i64* @_ZL5no_op, align 8, !dbg !256, !tbaa !46
  %25 = add i64 %24, 1, !dbg !256
  store i64 %25, i64* @_ZL5no_op, align 8, !dbg !256, !tbaa !46
  br label %26, !dbg !256

26:                                               ; preds = %23, %18
  %27 = load volatile i32, i32* %3, align 4, !dbg !257, !tbaa !11
  %28 = add nsw i32 %27, -1, !dbg !257
  %29 = icmp eq i32 %28, %19, !dbg !257
  br i1 %29, label %33, label %30, !dbg !257

30:                                               ; preds = %26
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !257, !tbaa !46
  %32 = add i64 %31, 1, !dbg !257
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !257, !tbaa !46
  br label %33, !dbg !257

33:                                               ; preds = %30, %26
  %34 = icmp eq i32 %19, 0, !dbg !258
  %35 = zext i1 %34 to i32, !dbg !258
  %36 = icmp eq i32 %4, %35, !dbg !258
  br i1 %36, label %40, label %37, !dbg !258

37:                                               ; preds = %33
  %38 = load i64, i64* @_ZL5no_op, align 8, !dbg !258, !tbaa !46
  %39 = add i64 %38, 1, !dbg !258
  store i64 %39, i64* @_ZL5no_op, align 8, !dbg !258, !tbaa !46
  br label %40, !dbg !258

40:                                               ; preds = %37, %33
  %41 = load volatile i32, i32* %3, align 4, !dbg !259, !tbaa !11
  %42 = load volatile i32, i32* %3, align 4, !dbg !266, !tbaa !11
  %43 = add nsw i32 %42, 1, !dbg !266
  %44 = icmp eq i32 %43, %41, !dbg !266
  br i1 %44, label %48, label %45, !dbg !266

45:                                               ; preds = %40
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !266, !tbaa !46
  %47 = add i64 %46, 1, !dbg !266
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !266, !tbaa !46
  br label %48, !dbg !266

48:                                               ; preds = %45, %40
  %49 = load volatile i32, i32* %3, align 4, !dbg !267, !tbaa !11
  %50 = add nsw i32 %49, -1, !dbg !267
  %51 = icmp ne i32 %50, %41, !dbg !267
  %52 = load i64, i64* @_ZL5no_op, align 8, !dbg !268, !tbaa !46
  %53 = zext i1 %51 to i64, !dbg !267
  %54 = add i64 %52, %53, !dbg !267
  %55 = xor i32 %41, -1, !dbg !269
  %56 = icmp ne i32 %4, %55, !dbg !269
  %57 = zext i1 %56 to i64, !dbg !269
  %58 = add i64 %54, %57, !dbg !269
  %59 = load volatile i32, i32* %3, align 4, !dbg !270, !tbaa !11
  %60 = load volatile i32, i32* %3, align 4, !dbg !277, !tbaa !11
  %61 = add nsw i32 %60, 1, !dbg !277
  %62 = icmp ne i32 %61, %59, !dbg !277
  %63 = zext i1 %62 to i64, !dbg !277
  %64 = load volatile i32, i32* %3, align 4, !dbg !278, !tbaa !11
  %65 = add nsw i32 %64, -1, !dbg !278
  %66 = icmp ne i32 %65, %59, !dbg !278
  %67 = zext i1 %66 to i64, !dbg !278
  %68 = sub nsw i32 0, %59, !dbg !279
  %69 = icmp ne i32 %4, %68, !dbg !279
  %70 = zext i1 %69 to i64, !dbg !279
  %71 = add i64 %58, %70, !dbg !277
  %72 = add i64 %71, %63, !dbg !278
  %73 = add i64 %72, %67, !dbg !279
  %74 = add i64 %73, 1, !dbg !268
  %75 = icmp ult i32 %4, 2, !dbg !280
  br i1 %75, label %79, label %76, !dbg !280

76:                                               ; preds = %48
  %77 = add i64 %73, 2, !dbg !281
  %78 = icmp eq i32 %4, -1, !dbg !282
  br i1 %78, label %82, label %79, !dbg !282

79:                                               ; preds = %76, %48
  %80 = phi i64 [ %77, %76 ], [ %74, %48 ], !dbg !282
  %81 = add i64 %80, 1, !dbg !282
  br label %82, !dbg !282

82:                                               ; preds = %76, %79
  %83 = phi i64 [ %81, %79 ], [ %77, %76 ], !dbg !268
  store i64 %83, i64* @_ZL5no_op, align 8, !dbg !268, !tbaa !46
  ret i32 %4, !dbg !283
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !284 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !285

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !286
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !288, !tbaa !28
  br label %12, !dbg !289

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !290
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !290, !tbaa !28
  br label %12, !dbg !291

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0, !dbg !292
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !292
  %11 = load i64, i64* %9, align 8, !dbg !292, !tbaa !28
  store i64 %11, i64* %10, align 8, !dbg !292, !tbaa !28
  br label %12, !dbg !299

12:                                               ; preds = %3, %8, %6, %4
  ret i1 false, !dbg !300
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #7 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !301 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !302
  %3 = load i32*, i32** %2, align 8, !dbg !302, !tbaa !303
  %4 = load volatile i32, i32* %3, align 4, !dbg !305, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !323, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !323
  %7 = icmp eq i32 %6, %4, !dbg !323
  br i1 %7, label %11, label %8, !dbg !323

8:                                                ; preds = %1
  %9 = load i64, i64* @_ZL5no_op, align 8, !dbg !323, !tbaa !46
  %10 = add i64 %9, 1, !dbg !323
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !323, !tbaa !46
  br label %11, !dbg !323

11:                                               ; preds = %8, %1
  %12 = load volatile i32, i32* %3, align 4, !dbg !324, !tbaa !11
  %13 = add nsw i32 %12, -1, !dbg !324
  %14 = icmp eq i32 %13, %4, !dbg !324
  br i1 %14, label %18, label %15, !dbg !324

15:                                               ; preds = %11
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !324, !tbaa !46
  %17 = add i64 %16, 1, !dbg !324
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !324, !tbaa !46
  br label %18, !dbg !324

18:                                               ; preds = %15, %11
  %19 = load volatile i32, i32* %3, align 4, !dbg !325, !tbaa !11
  %20 = load volatile i32, i32* %3, align 4, !dbg !332, !tbaa !11
  %21 = add nsw i32 %20, 1, !dbg !332
  %22 = icmp eq i32 %21, %19, !dbg !332
  br i1 %22, label %26, label %23, !dbg !332

23:                                               ; preds = %18
  %24 = load i64, i64* @_ZL5no_op, align 8, !dbg !332, !tbaa !46
  %25 = add i64 %24, 1, !dbg !332
  store i64 %25, i64* @_ZL5no_op, align 8, !dbg !332, !tbaa !46
  br label %26, !dbg !332

26:                                               ; preds = %23, %18
  %27 = load volatile i32, i32* %3, align 4, !dbg !333, !tbaa !11
  %28 = add nsw i32 %27, -1, !dbg !333
  %29 = icmp eq i32 %28, %19, !dbg !333
  br i1 %29, label %33, label %30, !dbg !333

30:                                               ; preds = %26
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !333, !tbaa !46
  %32 = add i64 %31, 1, !dbg !333
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !333, !tbaa !46
  br label %33, !dbg !333

33:                                               ; preds = %30, %26
  %34 = icmp eq i32 %19, 0, !dbg !334
  %35 = zext i1 %34 to i32, !dbg !334
  %36 = icmp eq i32 %4, %35, !dbg !334
  br i1 %36, label %40, label %37, !dbg !334

37:                                               ; preds = %33
  %38 = load i64, i64* @_ZL5no_op, align 8, !dbg !334, !tbaa !46
  %39 = add i64 %38, 1, !dbg !334
  store i64 %39, i64* @_ZL5no_op, align 8, !dbg !334, !tbaa !46
  br label %40, !dbg !334

40:                                               ; preds = %37, %33
  %41 = load volatile i32, i32* %3, align 4, !dbg !335, !tbaa !11
  %42 = load volatile i32, i32* %3, align 4, !dbg !342, !tbaa !11
  %43 = add nsw i32 %42, 1, !dbg !342
  %44 = icmp eq i32 %43, %41, !dbg !342
  br i1 %44, label %48, label %45, !dbg !342

45:                                               ; preds = %40
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !342, !tbaa !46
  %47 = add i64 %46, 1, !dbg !342
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !342, !tbaa !46
  br label %48, !dbg !342

48:                                               ; preds = %45, %40
  %49 = load volatile i32, i32* %3, align 4, !dbg !343, !tbaa !11
  %50 = add nsw i32 %49, -1, !dbg !343
  %51 = icmp ne i32 %50, %41, !dbg !343
  %52 = load i64, i64* @_ZL5no_op, align 8, !dbg !344, !tbaa !46
  %53 = zext i1 %51 to i64, !dbg !343
  %54 = add i64 %52, %53, !dbg !343
  %55 = xor i32 %41, -1, !dbg !345
  %56 = icmp ne i32 %4, %55, !dbg !345
  %57 = zext i1 %56 to i64, !dbg !345
  %58 = add i64 %54, %57, !dbg !345
  %59 = load volatile i32, i32* %3, align 4, !dbg !346, !tbaa !11
  %60 = load volatile i32, i32* %3, align 4, !dbg !353, !tbaa !11
  %61 = add nsw i32 %60, 1, !dbg !353
  %62 = icmp ne i32 %61, %59, !dbg !353
  %63 = zext i1 %62 to i64, !dbg !353
  %64 = load volatile i32, i32* %3, align 4, !dbg !354, !tbaa !11
  %65 = add nsw i32 %64, -1, !dbg !354
  %66 = icmp ne i32 %65, %59, !dbg !354
  %67 = zext i1 %66 to i64, !dbg !354
  %68 = sub nsw i32 0, %59, !dbg !355
  %69 = icmp ne i32 %4, %68, !dbg !355
  %70 = zext i1 %69 to i64, !dbg !355
  %71 = add i64 %58, %70, !dbg !353
  %72 = add i64 %71, %63, !dbg !354
  %73 = add i64 %72, %67, !dbg !355
  %74 = add i64 %73, 1, !dbg !344
  %75 = icmp ult i32 %4, 2, !dbg !356
  br i1 %75, label %79, label %76, !dbg !356

76:                                               ; preds = %48
  %77 = add i64 %73, 2, !dbg !357
  %78 = icmp eq i32 %4, -1, !dbg !358
  br i1 %78, label %82, label %79, !dbg !358

79:                                               ; preds = %76, %48
  %80 = phi i64 [ %77, %76 ], [ %74, %48 ], !dbg !358
  %81 = add i64 %80, 1, !dbg !358
  br label %82, !dbg !358

82:                                               ; preds = %76, %79
  %83 = phi i64 [ %81, %79 ], [ %77, %76 ], !dbg !344
  store i64 %83, i64* @_ZL5no_op, align 8, !dbg !344, !tbaa !46
  ret i32 %4, !dbg !359
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !360 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !361

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !362
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !364, !tbaa !28
  br label %12, !dbg !365

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !366
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !366, !tbaa !28
  br label %12, !dbg !367

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0, !dbg !368
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !368
  %11 = load i64, i64* %9, align 8, !dbg !368, !tbaa !28
  store i64 %11, i64* %10, align 8, !dbg !368, !tbaa !28
  br label %12, !dbg !375

12:                                               ; preds = %3, %8, %6, %4
  ret i1 false, !dbg !376
}

attributes #0 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

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
!15 = !DILocation(line: 253, column: 19, scope: !16, inlinedAt: !18)
!16 = distinct !DISubprogram(name: "_Function_base", scope: !17, file: !17, line: 239, type: !9, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!17 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_function.h", directory: "")
!18 = distinct !DILocation(line: 437, column: 4, scope: !19, inlinedAt: !20)
!19 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:35), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!20 = distinct !DILocation(line: 122, column: 35, scope: !8)
!21 = !DILocation(line: 667, column: 21, scope: !19, inlinedAt: !20)
!22 = !DILocation(line: 152, column: 33, scope: !23, inlinedAt: !24)
!23 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!24 = distinct !DILocation(line: 215, column: 6, scope: !25, inlinedAt: !26)
!25 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:35)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!26 = distinct !DILocation(line: 449, column: 8, scope: !19, inlinedAt: !20)
!27 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !13, i64 0}
!30 = !{i64 0, i64 8, !28}
!31 = !DILocation(line: 451, column: 19, scope: !19, inlinedAt: !20)
!32 = !{!33, !29, i64 24}
!33 = !{!"_ZTSSt8functionIFivEE", !29, i64 24}
!34 = !DILocation(line: 452, column: 19, scope: !19, inlinedAt: !20)
!35 = !{!36, !29, i64 16}
!36 = !{!"_ZTSSt14_Function_base", !13, i64 0, !29, i64 16}
!37 = !DILocation(line: 590, column: 20, scope: !38, inlinedAt: !39)
!38 = distinct !DISubprogram(name: "operator()", scope: !17, file: !17, line: 586, type: !9, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!39 = distinct !DILocation(line: 89, column: 3, scope: !40, inlinedAt: !41)
!40 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 88, type: !9, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!41 = distinct !DILocation(line: 122, column: 10, scope: !8)
!42 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !39)
!43 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !44)
!44 = distinct !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !41)
!45 = !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !41)
!46 = !{!47, !47, i64 0}
!47 = !{!"long long", !13, i64 0}
!48 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !49)
!49 = distinct !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !41)
!50 = !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !41)
!51 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !52)
!52 = distinct !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !41)
!53 = !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !41)
!54 = !DILocation(line: 0, scope: !40, inlinedAt: !41)
!55 = !DILocation(line: 93, column: 3, scope: !40, inlinedAt: !41)
!56 = !DILocation(line: 94, column: 3, scope: !40, inlinedAt: !41)
!57 = !DILocation(line: 95, column: 3, scope: !40, inlinedAt: !41)
!58 = !DILocation(line: 122, column: 3, scope: !8)
!59 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 125, type: !9, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!60 = !DILocation(line: 76, column: 3, scope: !61, inlinedAt: !62)
!61 = distinct !DISubprogram(name: "__dredd_replace_expr_int_zero", scope: !1, file: !1, line: 74, type: !9, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!62 = distinct !DILocation(line: 126, column: 10, scope: !59)
!63 = !DILocation(line: 106, column: 3, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 99, type: !9, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!65 = distinct !DILocation(line: 128, column: 78, scope: !59)
!66 = !DILocation(line: 0, scope: !64, inlinedAt: !65)
!67 = !DILocation(line: 128, column: 3, scope: !59)
!68 = !DILocation(line: 129, column: 1, scope: !59)
!69 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!70 = !DILocation(line: 290, column: 9, scope: !69)
!71 = !{!72, !29, i64 0}
!72 = !{!"_ZTSZ4testiiE3$_0", !29, i64 0, !29, i64 8}
!73 = !{!72, !29, i64 8}
!74 = !DILocation(line: 253, column: 19, scope: !16, inlinedAt: !75)
!75 = distinct !DILocation(line: 437, column: 4, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:128), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!77 = distinct !DILocation(line: 122, column: 128, scope: !78, inlinedAt: !79)
!78 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!79 = distinct !DILocation(line: 61, column: 14, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !81, file: !81, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!81 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/invoke.h", directory: "")
!82 = distinct !DILocation(line: 142, column: 14, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !81, file: !81, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!84 = distinct !DILocation(line: 290, column: 9, scope: !69)
!85 = !DILocation(line: 667, column: 21, scope: !76, inlinedAt: !77)
!86 = !DILocation(line: 152, column: 33, scope: !87, inlinedAt: !88)
!87 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!88 = distinct !DILocation(line: 215, column: 6, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!90 = distinct !DILocation(line: 449, column: 8, scope: !76, inlinedAt: !77)
!91 = !DILocation(line: 252, column: 30, scope: !16, inlinedAt: !75)
!92 = !DILocation(line: 451, column: 19, scope: !76, inlinedAt: !77)
!93 = !DILocation(line: 452, column: 19, scope: !76, inlinedAt: !77)
!94 = !DILocation(line: 253, column: 19, scope: !16, inlinedAt: !95)
!95 = distinct !DILocation(line: 437, column: 4, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:292), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!97 = distinct !DILocation(line: 122, column: 292, scope: !78, inlinedAt: !79)
!98 = !DILocation(line: 667, column: 21, scope: !96, inlinedAt: !97)
!99 = !DILocation(line: 152, column: 33, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!101 = distinct !DILocation(line: 215, column: 6, scope: !102, inlinedAt: !103)
!102 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!103 = distinct !DILocation(line: 449, column: 8, scope: !96, inlinedAt: !97)
!104 = !DILocation(line: 252, column: 30, scope: !16, inlinedAt: !95)
!105 = !DILocation(line: 451, column: 19, scope: !96, inlinedAt: !97)
!106 = !DILocation(line: 452, column: 19, scope: !96, inlinedAt: !97)
!107 = !DILocation(line: 590, column: 20, scope: !38, inlinedAt: !108)
!108 = distinct !DILocation(line: 111, column: 3, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 110, type: !9, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!110 = distinct !DILocation(line: 122, column: 74, scope: !78, inlinedAt: !79)
!111 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !108)
!112 = !DILocation(line: 590, column: 20, scope: !38, inlinedAt: !113)
!113 = distinct !DILocation(line: 111, column: 3, scope: !109, inlinedAt: !110)
!114 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !113)
!115 = !DILocation(line: 111, column: 3, scope: !109, inlinedAt: !110)
!116 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !117)
!117 = distinct !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !110)
!118 = !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !110)
!119 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !120)
!120 = distinct !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !110)
!121 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "_M_empty", scope: !17, file: !17, line: 247, type: !9, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!123 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !124)
!124 = distinct !DILocation(line: 112, column: 3, scope: !109, inlinedAt: !110)
!125 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !124)
!126 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !124)
!127 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !124)
!128 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !129)
!129 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !130)
!130 = distinct !DILocation(line: 113, column: 3, scope: !109, inlinedAt: !110)
!131 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !130)
!132 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !130)
!133 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !130)
!134 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !135)
!135 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !136)
!136 = distinct !DILocation(line: 113, column: 3, scope: !109, inlinedAt: !110)
!137 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !136)
!138 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !136)
!139 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !136)
!140 = !DILocation(line: 113, column: 3, scope: !109, inlinedAt: !110)
!141 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !142)
!142 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !143)
!143 = distinct !DILocation(line: 114, column: 3, scope: !109, inlinedAt: !110)
!144 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !143)
!145 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !143)
!146 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !143)
!147 = !DILocation(line: 114, column: 3, scope: !109, inlinedAt: !110)
!148 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !149)
!149 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !150)
!150 = distinct !DILocation(line: 114, column: 3, scope: !109, inlinedAt: !110)
!151 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !150)
!152 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !150)
!153 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !150)
!154 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !155)
!155 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !156)
!156 = distinct !DILocation(line: 114, column: 3, scope: !109, inlinedAt: !110)
!157 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !156)
!158 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !156)
!159 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !156)
!160 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !161)
!161 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !162)
!162 = distinct !DILocation(line: 115, column: 3, scope: !109, inlinedAt: !110)
!163 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !162)
!164 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !162)
!165 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !162)
!166 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !167)
!167 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !168)
!168 = distinct !DILocation(line: 115, column: 3, scope: !109, inlinedAt: !110)
!169 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !168)
!170 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !168)
!171 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !168)
!172 = !DILocation(line: 115, column: 3, scope: !109, inlinedAt: !110)
!173 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !174)
!174 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !175)
!175 = distinct !DILocation(line: 116, column: 3, scope: !109, inlinedAt: !110)
!176 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !175)
!177 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !175)
!178 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !175)
!179 = !DILocation(line: 116, column: 3, scope: !109, inlinedAt: !110)
!180 = !DILocation(line: 247, column: 37, scope: !122, inlinedAt: !181)
!181 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !182)
!182 = distinct !DILocation(line: 117, column: 3, scope: !109, inlinedAt: !110)
!183 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !182)
!184 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !182)
!185 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !182)
!186 = !DILocation(line: 117, column: 3, scope: !109, inlinedAt: !110)
!187 = !DILocation(line: 243, column: 11, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "~_Function_base", scope: !17, file: !17, line: 241, type: !9, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!189 = distinct !DILocation(line: 122, column: 50, scope: !78, inlinedAt: !79)
!190 = !DILocation(line: 244, column: 2, scope: !188, inlinedAt: !189)
!191 = !DILocation(line: 243, column: 11, scope: !188, inlinedAt: !192)
!192 = distinct !DILocation(line: 122, column: 50, scope: !78, inlinedAt: !79)
!193 = !DILocation(line: 244, column: 2, scope: !188, inlinedAt: !192)
!194 = !DILocation(line: 122, column: 462, scope: !78, inlinedAt: !79)
!195 = !DILocation(line: 243, column: 11, scope: !188, inlinedAt: !196)
!196 = distinct !DILocation(line: 122, column: 50, scope: !78, inlinedAt: !79)
!197 = !DILocation(line: 244, column: 2, scope: !188, inlinedAt: !196)
!198 = !DILocation(line: 243, column: 11, scope: !188, inlinedAt: !199)
!199 = distinct !DILocation(line: 122, column: 50, scope: !78, inlinedAt: !79)
!200 = !DILocation(line: 244, column: 2, scope: !188, inlinedAt: !199)
!201 = !DILocation(line: 122, column: 50, scope: !78, inlinedAt: !79)
!202 = !DILocation(line: 290, column: 2, scope: !69)
!203 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!204 = !DILocation(line: 270, column: 2, scope: !203)
!205 = !DILocation(line: 91, column: 17, scope: !206, inlinedAt: !207)
!206 = distinct !DISubprogram(name: "_M_access<const std::type_info *>", scope: !17, file: !17, line: 90, type: !9, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!207 = distinct !DILocation(line: 274, column: 13, scope: !203)
!208 = !DILocation(line: 274, column: 43, scope: !203)
!209 = !DILocation(line: 275, column: 6, scope: !203)
!210 = !DILocation(line: 278, column: 36, scope: !203)
!211 = !DILocation(line: 279, column: 6, scope: !203)
!212 = !DILocation(line: 85, column: 45, scope: !213, inlinedAt: !214)
!213 = distinct !DISubprogram(name: "_M_access", scope: !17, file: !17, line: 85, type: !9, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!214 = distinct !DILocation(line: 152, column: 20, scope: !215, inlinedAt: !216)
!215 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!216 = distinct !DILocation(line: 215, column: 6, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!218 = distinct !DILocation(line: 198, column: 8, scope: !219, inlinedAt: !220)
!219 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!220 = distinct !DILocation(line: 282, column: 6, scope: !203)
!221 = !DILocation(line: 152, column: 33, scope: !215, inlinedAt: !216)
!222 = !DILocation(line: 200, column: 8, scope: !219, inlinedAt: !220)
!223 = !DILocation(line: 284, column: 2, scope: !203)
!224 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!225 = !DILocation(line: 290, column: 9, scope: !224)
!226 = !{!227, !29, i64 0}
!227 = !{!"_ZTSZZ4testiiENK3$_0clEvEUlvE_", !29, i64 0}
!228 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !230)
!229 = distinct !DISubprogram(name: "__dredd_replace_expr_volatile_int_lvalue", scope: !1, file: !1, line: 67, type: !9, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!230 = distinct !DILocation(line: 122, column: 231, scope: !231, inlinedAt: !232)
!231 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!232 = distinct !DILocation(line: 61, column: 14, scope: !233, inlinedAt: !234)
!233 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !81, file: !81, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!234 = distinct !DILocation(line: 142, column: 14, scope: !235, inlinedAt: !236)
!235 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !81, file: !81, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!236 = distinct !DILocation(line: 290, column: 9, scope: !237, inlinedAt: !238)
!237 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!238 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !239)
!239 = distinct !DILocation(line: 89, column: 3, scope: !40, inlinedAt: !240)
!240 = distinct !DILocation(line: 122, column: 167, scope: !241, inlinedAt: !242)
!241 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!242 = distinct !DILocation(line: 61, column: 14, scope: !243, inlinedAt: !244)
!243 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !81, file: !81, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!244 = distinct !DILocation(line: 142, column: 14, scope: !245, inlinedAt: !246)
!245 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !81, file: !81, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!246 = distinct !DILocation(line: 290, column: 9, scope: !224)
!247 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !230)
!248 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !230)
!249 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !250)
!250 = distinct !DILocation(line: 122, column: 231, scope: !231, inlinedAt: !251)
!251 = distinct !DILocation(line: 61, column: 14, scope: !233, inlinedAt: !252)
!252 = distinct !DILocation(line: 142, column: 14, scope: !235, inlinedAt: !253)
!253 = distinct !DILocation(line: 290, column: 9, scope: !237, inlinedAt: !254)
!254 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !255)
!255 = distinct !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !240)
!256 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !250)
!257 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !250)
!258 = !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !240)
!259 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !260)
!260 = distinct !DILocation(line: 122, column: 231, scope: !231, inlinedAt: !261)
!261 = distinct !DILocation(line: 61, column: 14, scope: !233, inlinedAt: !262)
!262 = distinct !DILocation(line: 142, column: 14, scope: !235, inlinedAt: !263)
!263 = distinct !DILocation(line: 290, column: 9, scope: !237, inlinedAt: !264)
!264 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !265)
!265 = distinct !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !240)
!266 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !260)
!267 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !260)
!268 = !DILocation(line: 0, scope: !40, inlinedAt: !240)
!269 = !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !240)
!270 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !271)
!271 = distinct !DILocation(line: 122, column: 231, scope: !231, inlinedAt: !272)
!272 = distinct !DILocation(line: 61, column: 14, scope: !233, inlinedAt: !273)
!273 = distinct !DILocation(line: 142, column: 14, scope: !235, inlinedAt: !274)
!274 = distinct !DILocation(line: 290, column: 9, scope: !237, inlinedAt: !275)
!275 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !276)
!276 = distinct !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !240)
!277 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !271)
!278 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !271)
!279 = !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !240)
!280 = !DILocation(line: 93, column: 3, scope: !40, inlinedAt: !240)
!281 = !DILocation(line: 94, column: 3, scope: !40, inlinedAt: !240)
!282 = !DILocation(line: 95, column: 3, scope: !40, inlinedAt: !240)
!283 = !DILocation(line: 290, column: 2, scope: !224)
!284 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!285 = !DILocation(line: 270, column: 2, scope: !284)
!286 = !DILocation(line: 91, column: 17, scope: !206, inlinedAt: !287)
!287 = distinct !DILocation(line: 274, column: 13, scope: !284)
!288 = !DILocation(line: 274, column: 43, scope: !284)
!289 = !DILocation(line: 275, column: 6, scope: !284)
!290 = !DILocation(line: 278, column: 36, scope: !284)
!291 = !DILocation(line: 279, column: 6, scope: !284)
!292 = !DILocation(line: 152, column: 33, scope: !293, inlinedAt: !294)
!293 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!294 = distinct !DILocation(line: 215, column: 6, scope: !295, inlinedAt: !296)
!295 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!296 = distinct !DILocation(line: 198, column: 8, scope: !297, inlinedAt: !298)
!297 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!298 = distinct !DILocation(line: 282, column: 6, scope: !284)
!299 = !DILocation(line: 200, column: 8, scope: !297, inlinedAt: !298)
!300 = !DILocation(line: 284, column: 2, scope: !284)
!301 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!302 = !DILocation(line: 290, column: 9, scope: !301)
!303 = !{!304, !29, i64 0}
!304 = !{!"_ZTSZZ4testiiENK3$_0clEvEUlvE0_", !29, i64 0}
!305 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !306)
!306 = distinct !DILocation(line: 122, column: 395, scope: !307, inlinedAt: !308)
!307 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!308 = distinct !DILocation(line: 61, column: 14, scope: !309, inlinedAt: !310)
!309 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !81, file: !81, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!310 = distinct !DILocation(line: 142, column: 14, scope: !311, inlinedAt: !312)
!311 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !81, file: !81, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!312 = distinct !DILocation(line: 290, column: 9, scope: !313, inlinedAt: !314)
!313 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!314 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !315)
!315 = distinct !DILocation(line: 89, column: 3, scope: !40, inlinedAt: !316)
!316 = distinct !DILocation(line: 122, column: 331, scope: !317, inlinedAt: !318)
!317 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!318 = distinct !DILocation(line: 61, column: 14, scope: !319, inlinedAt: !320)
!319 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !81, file: !81, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!320 = distinct !DILocation(line: 142, column: 14, scope: !321, inlinedAt: !322)
!321 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !81, file: !81, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!322 = distinct !DILocation(line: 290, column: 9, scope: !301)
!323 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !306)
!324 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !306)
!325 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !326)
!326 = distinct !DILocation(line: 122, column: 395, scope: !307, inlinedAt: !327)
!327 = distinct !DILocation(line: 61, column: 14, scope: !309, inlinedAt: !328)
!328 = distinct !DILocation(line: 142, column: 14, scope: !311, inlinedAt: !329)
!329 = distinct !DILocation(line: 290, column: 9, scope: !313, inlinedAt: !330)
!330 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !331)
!331 = distinct !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !316)
!332 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !326)
!333 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !326)
!334 = !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !316)
!335 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !336)
!336 = distinct !DILocation(line: 122, column: 395, scope: !307, inlinedAt: !337)
!337 = distinct !DILocation(line: 61, column: 14, scope: !309, inlinedAt: !338)
!338 = distinct !DILocation(line: 142, column: 14, scope: !311, inlinedAt: !339)
!339 = distinct !DILocation(line: 290, column: 9, scope: !313, inlinedAt: !340)
!340 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !341)
!341 = distinct !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !316)
!342 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !336)
!343 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !336)
!344 = !DILocation(line: 0, scope: !40, inlinedAt: !316)
!345 = !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !316)
!346 = !DILocation(line: 68, column: 3, scope: !229, inlinedAt: !347)
!347 = distinct !DILocation(line: 122, column: 395, scope: !307, inlinedAt: !348)
!348 = distinct !DILocation(line: 61, column: 14, scope: !309, inlinedAt: !349)
!349 = distinct !DILocation(line: 142, column: 14, scope: !311, inlinedAt: !350)
!350 = distinct !DILocation(line: 290, column: 9, scope: !313, inlinedAt: !351)
!351 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !352)
!352 = distinct !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !316)
!353 = !DILocation(line: 69, column: 3, scope: !229, inlinedAt: !347)
!354 = !DILocation(line: 70, column: 3, scope: !229, inlinedAt: !347)
!355 = !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !316)
!356 = !DILocation(line: 93, column: 3, scope: !40, inlinedAt: !316)
!357 = !DILocation(line: 94, column: 3, scope: !40, inlinedAt: !316)
!358 = !DILocation(line: 95, column: 3, scope: !40, inlinedAt: !316)
!359 = !DILocation(line: 290, column: 2, scope: !301)
!360 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!361 = !DILocation(line: 270, column: 2, scope: !360)
!362 = !DILocation(line: 91, column: 17, scope: !206, inlinedAt: !363)
!363 = distinct !DILocation(line: 274, column: 13, scope: !360)
!364 = !DILocation(line: 274, column: 43, scope: !360)
!365 = !DILocation(line: 275, column: 6, scope: !360)
!366 = !DILocation(line: 278, column: 36, scope: !360)
!367 = !DILocation(line: 279, column: 6, scope: !360)
!368 = !DILocation(line: 152, column: 33, scope: !369, inlinedAt: !370)
!369 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!370 = distinct !DILocation(line: 215, column: 6, scope: !371, inlinedAt: !372)
!371 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!372 = distinct !DILocation(line: 198, column: 8, scope: !373, inlinedAt: !374)
!373 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!374 = distinct !DILocation(line: 282, column: 6, scope: !360)
!375 = !DILocation(line: 200, column: 8, scope: !373, inlinedAt: !374)
!376 = !DILocation(line: 284, column: 2, scope: !360)
