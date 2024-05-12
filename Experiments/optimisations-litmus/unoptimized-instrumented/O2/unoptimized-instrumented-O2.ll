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
  %4 = bitcast %"class.std::function"* %2 to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4), !dbg !70
  %5 = bitcast %"class.std::function"* %3 to i8*, !dbg !70
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5), !dbg !70
  %6 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !70
  %7 = load i32*, i32** %6, align 8, !dbg !70, !tbaa !78
  %8 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 1, !dbg !80
  %9 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 1, !dbg !84
  %10 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !85
  %11 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !90
  store i64 0, i64* %11, align 8, !dbg !90
  %12 = ptrtoint i32* %7 to i64, !dbg !85
  store i64 %12, i64* %10, align 8, !dbg !85, !tbaa !28
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %9, align 8, !dbg !91, !tbaa !32
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !92, !tbaa !35
  %13 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 1, !dbg !93
  %14 = bitcast i64* %13 to i32**, !dbg !93
  %15 = load i32*, i32** %14, align 8, !dbg !93, !tbaa !94
  %16 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 1, !dbg !95
  %17 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 1, !dbg !99
  %18 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !100
  %19 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !105
  store i64 0, i64* %19, align 8, !dbg !105
  %20 = ptrtoint i32* %15 to i64, !dbg !100
  store i64 %20, i64* %18, align 8, !dbg !100, !tbaa !28
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !106, !tbaa !32
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !107, !tbaa !35
  %21 = getelementptr inbounds %"class.std::function", %"class.std::function"* %2, i64 0, i32 0, i32 0, !dbg !108
  %22 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21), !dbg !112
  %23 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, !dbg !113
  %24 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23), !dbg !115
  %25 = add nsw i32 %24, %22, !dbg !116
  %26 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23), !dbg !117
  %27 = icmp eq i32 %26, 0, !dbg !119
  br i1 %27, label %43, label %28, !dbg !119

28:                                               ; preds = %1
  %29 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21), !dbg !120
  %30 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !122, !tbaa !35
  %31 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %30, null, !dbg !122
  br i1 %31, label %32, label %34, !dbg !126

32:                                               ; preds = %28
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %33 unwind label %161, !dbg !127

33:                                               ; preds = %32
  unreachable, !dbg !127

34:                                               ; preds = %28
  %35 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !128, !tbaa !32
  %36 = invoke noundef i32 %35(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %37 unwind label %161, !dbg !128

37:                                               ; preds = %34
  %38 = sdiv i32 %29, %36, !dbg !119
  %39 = icmp eq i32 %38, %25, !dbg !119
  br i1 %39, label %43, label %40, !dbg !119

40:                                               ; preds = %37
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !119, !tbaa !46
  %42 = add i64 %41, 1, !dbg !119
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !119, !tbaa !46
  br label %43, !dbg !119

43:                                               ; preds = %40, %37, %1
  %44 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !129, !tbaa !35
  %45 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %44, null, !dbg !129
  br i1 %45, label %46, label %48, !dbg !132

46:                                               ; preds = %43
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %47 unwind label %161, !dbg !133

47:                                               ; preds = %46
  unreachable, !dbg !133

48:                                               ; preds = %43
  %49 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %9, align 8, !dbg !134, !tbaa !32
  %50 = invoke noundef i32 %49(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %51 unwind label %161, !dbg !134

51:                                               ; preds = %48
  %52 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !135, !tbaa !35
  %53 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %52, null, !dbg !135
  br i1 %53, label %54, label %56, !dbg !138

54:                                               ; preds = %51
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %55 unwind label %161, !dbg !139

55:                                               ; preds = %54
  unreachable, !dbg !139

56:                                               ; preds = %51
  %57 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !140, !tbaa !32
  %58 = invoke noundef i32 %57(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %59 unwind label %161, !dbg !140

59:                                               ; preds = %56
  %60 = mul nsw i32 %58, %50, !dbg !141
  %61 = icmp eq i32 %60, %25, !dbg !141
  br i1 %61, label %65, label %62, !dbg !141

62:                                               ; preds = %59
  %63 = load i64, i64* @_ZL5no_op, align 8, !dbg !141, !tbaa !46
  %64 = add i64 %63, 1, !dbg !141
  store i64 %64, i64* @_ZL5no_op, align 8, !dbg !141, !tbaa !46
  br label %65, !dbg !141

65:                                               ; preds = %62, %59
  %66 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !142, !tbaa !35
  %67 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %66, null, !dbg !142
  br i1 %67, label %68, label %70, !dbg !145

68:                                               ; preds = %65
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %69 unwind label %161, !dbg !146

69:                                               ; preds = %68
  unreachable, !dbg !146

70:                                               ; preds = %65
  %71 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !147, !tbaa !32
  %72 = invoke noundef i32 %71(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %73 unwind label %161, !dbg !147

73:                                               ; preds = %70
  %74 = icmp eq i32 %72, 0, !dbg !148
  br i1 %74, label %97, label %75, !dbg !148

75:                                               ; preds = %73
  %76 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !149, !tbaa !35
  %77 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %76, null, !dbg !149
  br i1 %77, label %78, label %80, !dbg !152

78:                                               ; preds = %75
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %79 unwind label %161, !dbg !153

79:                                               ; preds = %78
  unreachable, !dbg !153

80:                                               ; preds = %75
  %81 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %9, align 8, !dbg !154, !tbaa !32
  %82 = invoke noundef i32 %81(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %83 unwind label %161, !dbg !154

83:                                               ; preds = %80
  %84 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !155, !tbaa !35
  %85 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %84, null, !dbg !155
  br i1 %85, label %86, label %88, !dbg !158

86:                                               ; preds = %83
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %87 unwind label %161, !dbg !159

87:                                               ; preds = %86
  unreachable, !dbg !159

88:                                               ; preds = %83
  %89 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !160, !tbaa !32
  %90 = invoke noundef i32 %89(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %91 unwind label %161, !dbg !160

91:                                               ; preds = %88
  %92 = srem i32 %82, %90, !dbg !148
  %93 = icmp eq i32 %92, %25, !dbg !148
  br i1 %93, label %97, label %94, !dbg !148

94:                                               ; preds = %91
  %95 = load i64, i64* @_ZL5no_op, align 8, !dbg !148, !tbaa !46
  %96 = add i64 %95, 1, !dbg !148
  store i64 %96, i64* @_ZL5no_op, align 8, !dbg !148, !tbaa !46
  br label %97, !dbg !148

97:                                               ; preds = %94, %91, %73
  %98 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !161, !tbaa !35
  %99 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %98, null, !dbg !161
  br i1 %99, label %100, label %102, !dbg !164

100:                                              ; preds = %97
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %101 unwind label %161, !dbg !165

101:                                              ; preds = %100
  unreachable, !dbg !165

102:                                              ; preds = %97
  %103 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %9, align 8, !dbg !166, !tbaa !32
  %104 = invoke noundef i32 %103(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %105 unwind label %161, !dbg !166

105:                                              ; preds = %102
  %106 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !167, !tbaa !35
  %107 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %106, null, !dbg !167
  br i1 %107, label %108, label %110, !dbg !170

108:                                              ; preds = %105
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %109 unwind label %161, !dbg !171

109:                                              ; preds = %108
  unreachable, !dbg !171

110:                                              ; preds = %105
  %111 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !172, !tbaa !32
  %112 = invoke noundef i32 %111(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %113 unwind label %161, !dbg !172

113:                                              ; preds = %110
  %114 = sub nsw i32 %104, %112, !dbg !173
  %115 = icmp eq i32 %114, %25, !dbg !173
  br i1 %115, label %119, label %116, !dbg !173

116:                                              ; preds = %113
  %117 = load i64, i64* @_ZL5no_op, align 8, !dbg !173, !tbaa !46
  %118 = add i64 %117, 1, !dbg !173
  store i64 %118, i64* @_ZL5no_op, align 8, !dbg !173, !tbaa !46
  br label %119, !dbg !173

119:                                              ; preds = %116, %113
  %120 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !174, !tbaa !35
  %121 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %120, null, !dbg !174
  br i1 %121, label %122, label %124, !dbg !177

122:                                              ; preds = %119
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %123 unwind label %161, !dbg !178

123:                                              ; preds = %122
  unreachable, !dbg !178

124:                                              ; preds = %119
  %125 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %9, align 8, !dbg !179, !tbaa !32
  %126 = invoke noundef i32 %125(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21)
          to label %127 unwind label %161, !dbg !179

127:                                              ; preds = %124
  %128 = icmp eq i32 %126, %25, !dbg !180
  br i1 %128, label %132, label %129, !dbg !180

129:                                              ; preds = %127
  %130 = load i64, i64* @_ZL5no_op, align 8, !dbg !180, !tbaa !46
  %131 = add i64 %130, 1, !dbg !180
  store i64 %131, i64* @_ZL5no_op, align 8, !dbg !180, !tbaa !46
  br label %132, !dbg !180

132:                                              ; preds = %129, %127
  %133 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !181, !tbaa !35
  %134 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %133, null, !dbg !181
  br i1 %134, label %135, label %137, !dbg !184

135:                                              ; preds = %132
  invoke void @_ZSt25__throw_bad_function_callv() #11
          to label %136 unwind label %161, !dbg !185

136:                                              ; preds = %135
  unreachable, !dbg !185

137:                                              ; preds = %132
  %138 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %17, align 8, !dbg !186, !tbaa !32
  %139 = invoke noundef i32 %138(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %140 unwind label %161, !dbg !186

140:                                              ; preds = %137
  %141 = icmp eq i32 %139, %25, !dbg !187
  br i1 %141, label %145, label %142, !dbg !187

142:                                              ; preds = %140
  %143 = load i64, i64* @_ZL5no_op, align 8, !dbg !187, !tbaa !46
  %144 = add i64 %143, 1, !dbg !187
  store i64 %144, i64* @_ZL5no_op, align 8, !dbg !187, !tbaa !46
  br label %145, !dbg !187

145:                                              ; preds = %142, %140
  %146 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !188, !tbaa !35
  %147 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %146, null, !dbg !188
  br i1 %147, label %153, label %148, !dbg !188

148:                                              ; preds = %145
  %149 = invoke noundef zeroext i1 %146(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, i32 noundef 3)
          to label %153 unwind label %150, !dbg !191

150:                                              ; preds = %148
  %151 = landingpad { i8*, i32 }
          catch i8* null, !dbg !191
  %152 = extractvalue { i8*, i32 } %151, 0, !dbg !191
  call void @__clang_call_terminate(i8* %152) #10, !dbg !191
  unreachable, !dbg !191

153:                                              ; preds = %148, %145
  %154 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !192, !tbaa !35
  %155 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %154, null, !dbg !192
  br i1 %155, label %179, label %156, !dbg !192

156:                                              ; preds = %153
  %157 = invoke noundef zeroext i1 %154(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 3)
          to label %179 unwind label %158, !dbg !194

158:                                              ; preds = %156
  %159 = landingpad { i8*, i32 }
          catch i8* null, !dbg !194
  %160 = extractvalue { i8*, i32 } %159, 0, !dbg !194
  call void @__clang_call_terminate(i8* %160) #10, !dbg !194
  unreachable, !dbg !194

161:                                              ; preds = %137, %135, %124, %122, %110, %108, %102, %100, %88, %86, %80, %78, %70, %68, %56, %54, %48, %46, %34, %32
  %162 = landingpad { i8*, i32 }
          cleanup, !dbg !195
  %163 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8, !dbg !196, !tbaa !35
  %164 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %163, null, !dbg !196
  br i1 %164, label %170, label %165, !dbg !196

165:                                              ; preds = %161
  %166 = invoke noundef zeroext i1 %163(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %23, i32 noundef 3)
          to label %170 unwind label %167, !dbg !198

167:                                              ; preds = %165
  %168 = landingpad { i8*, i32 }
          catch i8* null, !dbg !198
  %169 = extractvalue { i8*, i32 } %168, 0, !dbg !198
  call void @__clang_call_terminate(i8* %169) #10, !dbg !198
  unreachable, !dbg !198

170:                                              ; preds = %165, %161
  %171 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8, !dbg !199, !tbaa !35
  %172 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %171, null, !dbg !199
  br i1 %172, label %178, label %173, !dbg !199

173:                                              ; preds = %170
  %174 = invoke noundef zeroext i1 %171(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 3)
          to label %178 unwind label %175, !dbg !201

175:                                              ; preds = %173
  %176 = landingpad { i8*, i32 }
          catch i8* null, !dbg !201
  %177 = extractvalue { i8*, i32 } %176, 0, !dbg !201
  call void @__clang_call_terminate(i8* %177) #10, !dbg !201
  unreachable, !dbg !201

178:                                              ; preds = %173, %170
  resume { i8*, i32 } %162, !dbg !202

179:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4), !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5), !dbg !202
  ret i32 %25, !dbg !203
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZ4testiiE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #5 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !204 {
  switch i32 %2, label %11 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !205

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !206
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4testiiE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !209, !tbaa !28
  br label %11, !dbg !210

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !211
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !211, !tbaa !28
  br label %11, !dbg !212

8:                                                ; preds = %3
  %9 = bitcast %"union.std::_Any_data"* %0 to i8*, !dbg !213
  %10 = bitcast %"union.std::_Any_data"* %1 to i8*, !dbg !222
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false) #9, !dbg !222, !tbaa.struct !27
  br label %11, !dbg !223

11:                                               ; preds = %3, %8, %6, %4
  ret i1 false, !dbg !224
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #7 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !225 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !226
  %3 = load i32*, i32** %2, align 8, !dbg !226, !tbaa !233
  %4 = load volatile i32, i32* %3, align 4, !dbg !235, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !248, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !248
  %7 = icmp eq i32 %6, %4, !dbg !248
  br i1 %7, label %11, label %8, !dbg !248

8:                                                ; preds = %1
  %9 = load i64, i64* @_ZL5no_op, align 8, !dbg !248, !tbaa !46
  %10 = add i64 %9, 1, !dbg !248
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !248, !tbaa !46
  br label %11, !dbg !248

11:                                               ; preds = %8, %1
  %12 = load volatile i32, i32* %3, align 4, !dbg !249, !tbaa !11
  %13 = add nsw i32 %12, -1, !dbg !249
  %14 = icmp eq i32 %13, %4, !dbg !249
  br i1 %14, label %18, label %15, !dbg !249

15:                                               ; preds = %11
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !249, !tbaa !46
  %17 = add i64 %16, 1, !dbg !249
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !249, !tbaa !46
  br label %18, !dbg !249

18:                                               ; preds = %15, %11
  %19 = load volatile i32, i32* %3, align 4, !dbg !250, !tbaa !11
  %20 = load volatile i32, i32* %3, align 4, !dbg !257, !tbaa !11
  %21 = add nsw i32 %20, 1, !dbg !257
  %22 = icmp eq i32 %21, %19, !dbg !257
  br i1 %22, label %26, label %23, !dbg !257

23:                                               ; preds = %18
  %24 = load i64, i64* @_ZL5no_op, align 8, !dbg !257, !tbaa !46
  %25 = add i64 %24, 1, !dbg !257
  store i64 %25, i64* @_ZL5no_op, align 8, !dbg !257, !tbaa !46
  br label %26, !dbg !257

26:                                               ; preds = %23, %18
  %27 = load volatile i32, i32* %3, align 4, !dbg !258, !tbaa !11
  %28 = add nsw i32 %27, -1, !dbg !258
  %29 = icmp eq i32 %28, %19, !dbg !258
  br i1 %29, label %33, label %30, !dbg !258

30:                                               ; preds = %26
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !258, !tbaa !46
  %32 = add i64 %31, 1, !dbg !258
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !258, !tbaa !46
  br label %33, !dbg !258

33:                                               ; preds = %30, %26
  %34 = icmp eq i32 %19, 0, !dbg !259
  %35 = zext i1 %34 to i32, !dbg !259
  %36 = icmp eq i32 %4, %35, !dbg !259
  br i1 %36, label %40, label %37, !dbg !259

37:                                               ; preds = %33
  %38 = load i64, i64* @_ZL5no_op, align 8, !dbg !259, !tbaa !46
  %39 = add i64 %38, 1, !dbg !259
  store i64 %39, i64* @_ZL5no_op, align 8, !dbg !259, !tbaa !46
  br label %40, !dbg !259

40:                                               ; preds = %37, %33
  %41 = load volatile i32, i32* %3, align 4, !dbg !260, !tbaa !11
  %42 = load volatile i32, i32* %3, align 4, !dbg !267, !tbaa !11
  %43 = add nsw i32 %42, 1, !dbg !267
  %44 = icmp eq i32 %43, %41, !dbg !267
  br i1 %44, label %48, label %45, !dbg !267

45:                                               ; preds = %40
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !267, !tbaa !46
  %47 = add i64 %46, 1, !dbg !267
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !267, !tbaa !46
  br label %48, !dbg !267

48:                                               ; preds = %45, %40
  %49 = load volatile i32, i32* %3, align 4, !dbg !268, !tbaa !11
  %50 = add nsw i32 %49, -1, !dbg !268
  %51 = icmp ne i32 %50, %41, !dbg !268
  %52 = load i64, i64* @_ZL5no_op, align 8, !dbg !269, !tbaa !46
  %53 = zext i1 %51 to i64, !dbg !268
  %54 = add i64 %52, %53, !dbg !268
  %55 = xor i32 %41, -1, !dbg !270
  %56 = icmp ne i32 %4, %55, !dbg !270
  %57 = zext i1 %56 to i64, !dbg !270
  %58 = add i64 %54, %57, !dbg !270
  %59 = load volatile i32, i32* %3, align 4, !dbg !271, !tbaa !11
  %60 = load volatile i32, i32* %3, align 4, !dbg !278, !tbaa !11
  %61 = add nsw i32 %60, 1, !dbg !278
  %62 = icmp ne i32 %61, %59, !dbg !278
  %63 = zext i1 %62 to i64, !dbg !278
  %64 = load volatile i32, i32* %3, align 4, !dbg !279, !tbaa !11
  %65 = add nsw i32 %64, -1, !dbg !279
  %66 = icmp ne i32 %65, %59, !dbg !279
  %67 = zext i1 %66 to i64, !dbg !279
  %68 = sub nsw i32 0, %59, !dbg !280
  %69 = icmp ne i32 %4, %68, !dbg !280
  %70 = zext i1 %69 to i64, !dbg !280
  %71 = add i64 %58, %70, !dbg !278
  %72 = add i64 %71, %63, !dbg !279
  %73 = add i64 %72, %67, !dbg !280
  %74 = add i64 %73, 1, !dbg !269
  %75 = icmp ult i32 %4, 2, !dbg !281
  br i1 %75, label %79, label %76, !dbg !281

76:                                               ; preds = %48
  %77 = add i64 %73, 2, !dbg !282
  %78 = icmp eq i32 %4, -1, !dbg !283
  br i1 %78, label %82, label %79, !dbg !283

79:                                               ; preds = %76, %48
  %80 = phi i64 [ %77, %76 ], [ %74, %48 ], !dbg !283
  %81 = add i64 %80, 1, !dbg !283
  br label %82, !dbg !283

82:                                               ; preds = %76, %79
  %83 = phi i64 [ %81, %79 ], [ %77, %76 ], !dbg !269
  store i64 %83, i64* @_ZL5no_op, align 8, !dbg !269, !tbaa !46
  ret i32 %4, !dbg !284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !285 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !286

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !287
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE_" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !289, !tbaa !28
  br label %12, !dbg !290

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !291
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !291, !tbaa !28
  br label %12, !dbg !292

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0, !dbg !293
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !293
  %11 = load i64, i64* %9, align 8, !dbg !293, !tbaa !28
  store i64 %11, i64* %10, align 8, !dbg !293, !tbaa !28
  br label %12, !dbg !300

12:                                               ; preds = %3, %8, %6, %4
  ret i1 false, !dbg !301
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #7 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !302 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**, !dbg !303
  %3 = load i32*, i32** %2, align 8, !dbg !303, !tbaa !310
  %4 = load volatile i32, i32* %3, align 4, !dbg !312, !tbaa !11
  %5 = load volatile i32, i32* %3, align 4, !dbg !324, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !324
  %7 = icmp eq i32 %6, %4, !dbg !324
  br i1 %7, label %11, label %8, !dbg !324

8:                                                ; preds = %1
  %9 = load i64, i64* @_ZL5no_op, align 8, !dbg !324, !tbaa !46
  %10 = add i64 %9, 1, !dbg !324
  store i64 %10, i64* @_ZL5no_op, align 8, !dbg !324, !tbaa !46
  br label %11, !dbg !324

11:                                               ; preds = %8, %1
  %12 = load volatile i32, i32* %3, align 4, !dbg !325, !tbaa !11
  %13 = add nsw i32 %12, -1, !dbg !325
  %14 = icmp eq i32 %13, %4, !dbg !325
  br i1 %14, label %18, label %15, !dbg !325

15:                                               ; preds = %11
  %16 = load i64, i64* @_ZL5no_op, align 8, !dbg !325, !tbaa !46
  %17 = add i64 %16, 1, !dbg !325
  store i64 %17, i64* @_ZL5no_op, align 8, !dbg !325, !tbaa !46
  br label %18, !dbg !325

18:                                               ; preds = %15, %11
  %19 = load volatile i32, i32* %3, align 4, !dbg !326, !tbaa !11
  %20 = load volatile i32, i32* %3, align 4, !dbg !333, !tbaa !11
  %21 = add nsw i32 %20, 1, !dbg !333
  %22 = icmp eq i32 %21, %19, !dbg !333
  br i1 %22, label %26, label %23, !dbg !333

23:                                               ; preds = %18
  %24 = load i64, i64* @_ZL5no_op, align 8, !dbg !333, !tbaa !46
  %25 = add i64 %24, 1, !dbg !333
  store i64 %25, i64* @_ZL5no_op, align 8, !dbg !333, !tbaa !46
  br label %26, !dbg !333

26:                                               ; preds = %23, %18
  %27 = load volatile i32, i32* %3, align 4, !dbg !334, !tbaa !11
  %28 = add nsw i32 %27, -1, !dbg !334
  %29 = icmp eq i32 %28, %19, !dbg !334
  br i1 %29, label %33, label %30, !dbg !334

30:                                               ; preds = %26
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !334, !tbaa !46
  %32 = add i64 %31, 1, !dbg !334
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !334, !tbaa !46
  br label %33, !dbg !334

33:                                               ; preds = %30, %26
  %34 = icmp eq i32 %19, 0, !dbg !335
  %35 = zext i1 %34 to i32, !dbg !335
  %36 = icmp eq i32 %4, %35, !dbg !335
  br i1 %36, label %40, label %37, !dbg !335

37:                                               ; preds = %33
  %38 = load i64, i64* @_ZL5no_op, align 8, !dbg !335, !tbaa !46
  %39 = add i64 %38, 1, !dbg !335
  store i64 %39, i64* @_ZL5no_op, align 8, !dbg !335, !tbaa !46
  br label %40, !dbg !335

40:                                               ; preds = %37, %33
  %41 = load volatile i32, i32* %3, align 4, !dbg !336, !tbaa !11
  %42 = load volatile i32, i32* %3, align 4, !dbg !343, !tbaa !11
  %43 = add nsw i32 %42, 1, !dbg !343
  %44 = icmp eq i32 %43, %41, !dbg !343
  br i1 %44, label %48, label %45, !dbg !343

45:                                               ; preds = %40
  %46 = load i64, i64* @_ZL5no_op, align 8, !dbg !343, !tbaa !46
  %47 = add i64 %46, 1, !dbg !343
  store i64 %47, i64* @_ZL5no_op, align 8, !dbg !343, !tbaa !46
  br label %48, !dbg !343

48:                                               ; preds = %45, %40
  %49 = load volatile i32, i32* %3, align 4, !dbg !344, !tbaa !11
  %50 = add nsw i32 %49, -1, !dbg !344
  %51 = icmp ne i32 %50, %41, !dbg !344
  %52 = load i64, i64* @_ZL5no_op, align 8, !dbg !345, !tbaa !46
  %53 = zext i1 %51 to i64, !dbg !344
  %54 = add i64 %52, %53, !dbg !344
  %55 = xor i32 %41, -1, !dbg !346
  %56 = icmp ne i32 %4, %55, !dbg !346
  %57 = zext i1 %56 to i64, !dbg !346
  %58 = add i64 %54, %57, !dbg !346
  %59 = load volatile i32, i32* %3, align 4, !dbg !347, !tbaa !11
  %60 = load volatile i32, i32* %3, align 4, !dbg !354, !tbaa !11
  %61 = add nsw i32 %60, 1, !dbg !354
  %62 = icmp ne i32 %61, %59, !dbg !354
  %63 = zext i1 %62 to i64, !dbg !354
  %64 = load volatile i32, i32* %3, align 4, !dbg !355, !tbaa !11
  %65 = add nsw i32 %64, -1, !dbg !355
  %66 = icmp ne i32 %65, %59, !dbg !355
  %67 = zext i1 %66 to i64, !dbg !355
  %68 = sub nsw i32 0, %59, !dbg !356
  %69 = icmp ne i32 %4, %68, !dbg !356
  %70 = zext i1 %69 to i64, !dbg !356
  %71 = add i64 %58, %70, !dbg !354
  %72 = add i64 %71, %63, !dbg !355
  %73 = add i64 %72, %67, !dbg !356
  %74 = add i64 %73, 1, !dbg !345
  %75 = icmp ult i32 %4, 2, !dbg !357
  br i1 %75, label %79, label %76, !dbg !357

76:                                               ; preds = %48
  %77 = add i64 %73, 2, !dbg !358
  %78 = icmp eq i32 %4, -1, !dbg !359
  br i1 %78, label %82, label %79, !dbg !359

79:                                               ; preds = %76, %48
  %80 = phi i64 [ %77, %76 ], [ %74, %48 ], !dbg !359
  %81 = add i64 %80, 1, !dbg !359
  br label %82, !dbg !359

82:                                               ; preds = %76, %79
  %83 = phi i64 [ %81, %79 ], [ %77, %76 ], !dbg !345
  store i64 %83, i64* @_ZL5no_op, align 8, !dbg !345, !tbaa !46
  ret i32 %4, !dbg !360
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZZ4testiiENK3$_0clEvEUlvE0_E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !361 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ], !dbg !362

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**, !dbg !363
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZZ4testiiENK3$_0clEvEUlvE0_" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !dbg !365, !tbaa !28
  br label %12, !dbg !366

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**, !dbg !367
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !dbg !367, !tbaa !28
  br label %12, !dbg !368

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0, !dbg !369
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0, !dbg !369
  %11 = load i64, i64* %9, align 8, !dbg !369, !tbaa !28
  store i64 %11, i64* %10, align 8, !dbg !369, !tbaa !28
  br label %12, !dbg !376

12:                                               ; preds = %3, %8, %6, %4
  ret i1 false, !dbg !377
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
!70 = !DILocation(line: 122, column: 129, scope: !71, inlinedAt: !72)
!71 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!72 = distinct !DILocation(line: 61, column: 14, scope: !73, inlinedAt: !75)
!73 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !74, file: !74, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!74 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/invoke.h", directory: "")
!75 = distinct !DILocation(line: 142, column: 14, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !74, file: !74, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!77 = distinct !DILocation(line: 290, column: 9, scope: !69)
!78 = !{!79, !29, i64 0}
!79 = !{!"_ZTSZ4testiiE3$_0", !29, i64 0, !29, i64 8}
!80 = !DILocation(line: 253, column: 19, scope: !16, inlinedAt: !81)
!81 = distinct !DILocation(line: 437, column: 4, scope: !82, inlinedAt: !83)
!82 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:128), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!83 = distinct !DILocation(line: 122, column: 128, scope: !71, inlinedAt: !72)
!84 = !DILocation(line: 667, column: 21, scope: !82, inlinedAt: !83)
!85 = !DILocation(line: 152, column: 33, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!87 = distinct !DILocation(line: 215, column: 6, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:128)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!89 = distinct !DILocation(line: 449, column: 8, scope: !82, inlinedAt: !83)
!90 = !DILocation(line: 252, column: 30, scope: !16, inlinedAt: !81)
!91 = !DILocation(line: 451, column: 19, scope: !82, inlinedAt: !83)
!92 = !DILocation(line: 452, column: 19, scope: !82, inlinedAt: !83)
!93 = !DILocation(line: 122, column: 293, scope: !71, inlinedAt: !72)
!94 = !{!79, !29, i64 8}
!95 = !DILocation(line: 253, column: 19, scope: !16, inlinedAt: !96)
!96 = distinct !DILocation(line: 437, column: 4, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "function<(lambda at unoptimized-instrumented.cc:122:292), void>", scope: !17, file: !17, line: 435, type: !9, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!98 = distinct !DILocation(line: 122, column: 292, scope: !71, inlinedAt: !72)
!99 = !DILocation(line: 667, column: 21, scope: !97, inlinedAt: !98)
!100 = !DILocation(line: 152, column: 33, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "_M_create<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!102 = distinct !DILocation(line: 215, column: 6, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "_M_init_functor<(lambda at unoptimized-instrumented.cc:122:292)>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!104 = distinct !DILocation(line: 449, column: 8, scope: !97, inlinedAt: !98)
!105 = !DILocation(line: 252, column: 30, scope: !16, inlinedAt: !96)
!106 = !DILocation(line: 451, column: 19, scope: !97, inlinedAt: !98)
!107 = !DILocation(line: 452, column: 19, scope: !97, inlinedAt: !98)
!108 = !DILocation(line: 590, column: 20, scope: !38, inlinedAt: !109)
!109 = distinct !DILocation(line: 111, column: 3, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 110, type: !9, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!111 = distinct !DILocation(line: 122, column: 74, scope: !71, inlinedAt: !72)
!112 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !109)
!113 = !DILocation(line: 590, column: 20, scope: !38, inlinedAt: !114)
!114 = distinct !DILocation(line: 111, column: 3, scope: !110, inlinedAt: !111)
!115 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !114)
!116 = !DILocation(line: 111, column: 3, scope: !110, inlinedAt: !111)
!117 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !118)
!118 = distinct !DILocation(line: 112, column: 3, scope: !110, inlinedAt: !111)
!119 = !DILocation(line: 112, column: 3, scope: !110, inlinedAt: !111)
!120 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !121)
!121 = distinct !DILocation(line: 112, column: 3, scope: !110, inlinedAt: !111)
!122 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !124)
!123 = distinct !DISubprogram(name: "_M_empty", scope: !17, file: !17, line: 247, type: !9, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!124 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !125)
!125 = distinct !DILocation(line: 112, column: 3, scope: !110, inlinedAt: !111)
!126 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !125)
!127 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !125)
!128 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !125)
!129 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !130)
!130 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !131)
!131 = distinct !DILocation(line: 113, column: 3, scope: !110, inlinedAt: !111)
!132 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !131)
!133 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !131)
!134 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !131)
!135 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !136)
!136 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !137)
!137 = distinct !DILocation(line: 113, column: 3, scope: !110, inlinedAt: !111)
!138 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !137)
!139 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !137)
!140 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !137)
!141 = !DILocation(line: 113, column: 3, scope: !110, inlinedAt: !111)
!142 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !143)
!143 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !144)
!144 = distinct !DILocation(line: 114, column: 3, scope: !110, inlinedAt: !111)
!145 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !144)
!146 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !144)
!147 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !144)
!148 = !DILocation(line: 114, column: 3, scope: !110, inlinedAt: !111)
!149 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !150)
!150 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !151)
!151 = distinct !DILocation(line: 114, column: 3, scope: !110, inlinedAt: !111)
!152 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !151)
!153 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !151)
!154 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !151)
!155 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !156)
!156 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !157)
!157 = distinct !DILocation(line: 114, column: 3, scope: !110, inlinedAt: !111)
!158 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !157)
!159 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !157)
!160 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !157)
!161 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !162)
!162 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !163)
!163 = distinct !DILocation(line: 115, column: 3, scope: !110, inlinedAt: !111)
!164 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !163)
!165 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !163)
!166 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !163)
!167 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !168)
!168 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !169)
!169 = distinct !DILocation(line: 115, column: 3, scope: !110, inlinedAt: !111)
!170 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !169)
!171 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !169)
!172 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !169)
!173 = !DILocation(line: 115, column: 3, scope: !110, inlinedAt: !111)
!174 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !175)
!175 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !176)
!176 = distinct !DILocation(line: 116, column: 3, scope: !110, inlinedAt: !111)
!177 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !176)
!178 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !176)
!179 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !176)
!180 = !DILocation(line: 116, column: 3, scope: !110, inlinedAt: !111)
!181 = !DILocation(line: 247, column: 37, scope: !123, inlinedAt: !182)
!182 = distinct !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !183)
!183 = distinct !DILocation(line: 117, column: 3, scope: !110, inlinedAt: !111)
!184 = !DILocation(line: 588, column: 6, scope: !38, inlinedAt: !183)
!185 = !DILocation(line: 589, column: 4, scope: !38, inlinedAt: !183)
!186 = !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !183)
!187 = !DILocation(line: 117, column: 3, scope: !110, inlinedAt: !111)
!188 = !DILocation(line: 243, column: 11, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "~_Function_base", scope: !17, file: !17, line: 241, type: !9, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!190 = distinct !DILocation(line: 122, column: 50, scope: !71, inlinedAt: !72)
!191 = !DILocation(line: 244, column: 2, scope: !189, inlinedAt: !190)
!192 = !DILocation(line: 243, column: 11, scope: !189, inlinedAt: !193)
!193 = distinct !DILocation(line: 122, column: 50, scope: !71, inlinedAt: !72)
!194 = !DILocation(line: 244, column: 2, scope: !189, inlinedAt: !193)
!195 = !DILocation(line: 122, column: 462, scope: !71, inlinedAt: !72)
!196 = !DILocation(line: 243, column: 11, scope: !189, inlinedAt: !197)
!197 = distinct !DILocation(line: 122, column: 50, scope: !71, inlinedAt: !72)
!198 = !DILocation(line: 244, column: 2, scope: !189, inlinedAt: !197)
!199 = !DILocation(line: 243, column: 11, scope: !189, inlinedAt: !200)
!200 = distinct !DILocation(line: 122, column: 50, scope: !71, inlinedAt: !72)
!201 = !DILocation(line: 244, column: 2, scope: !189, inlinedAt: !200)
!202 = !DILocation(line: 122, column: 50, scope: !71, inlinedAt: !72)
!203 = !DILocation(line: 290, column: 2, scope: !69)
!204 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!205 = !DILocation(line: 270, column: 2, scope: !204)
!206 = !DILocation(line: 91, column: 17, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "_M_access<const std::type_info *>", scope: !17, file: !17, line: 90, type: !9, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!208 = distinct !DILocation(line: 274, column: 13, scope: !204)
!209 = !DILocation(line: 274, column: 43, scope: !204)
!210 = !DILocation(line: 275, column: 6, scope: !204)
!211 = !DILocation(line: 278, column: 36, scope: !204)
!212 = !DILocation(line: 279, column: 6, scope: !204)
!213 = !DILocation(line: 85, column: 45, scope: !214, inlinedAt: !215)
!214 = distinct !DISubprogram(name: "_M_access", scope: !17, file: !17, line: 85, type: !9, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!215 = distinct !DILocation(line: 152, column: 20, scope: !216, inlinedAt: !217)
!216 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!217 = distinct !DILocation(line: 215, column: 6, scope: !218, inlinedAt: !219)
!218 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:35) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!219 = distinct !DILocation(line: 198, column: 8, scope: !220, inlinedAt: !221)
!220 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!221 = distinct !DILocation(line: 282, column: 6, scope: !204)
!222 = !DILocation(line: 152, column: 33, scope: !216, inlinedAt: !217)
!223 = !DILocation(line: 200, column: 8, scope: !220, inlinedAt: !221)
!224 = !DILocation(line: 284, column: 2, scope: !204)
!225 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!226 = !DILocation(line: 122, column: 193, scope: !227, inlinedAt: !228)
!227 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!228 = distinct !DILocation(line: 61, column: 14, scope: !229, inlinedAt: !230)
!229 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !74, file: !74, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!230 = distinct !DILocation(line: 142, column: 14, scope: !231, inlinedAt: !232)
!231 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !74, file: !74, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!232 = distinct !DILocation(line: 290, column: 9, scope: !225)
!233 = !{!234, !29, i64 0}
!234 = !{!"_ZTSZZ4testiiENK3$_0clEvEUlvE_", !29, i64 0}
!235 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !237)
!236 = distinct !DISubprogram(name: "__dredd_replace_expr_volatile_int_lvalue", scope: !1, file: !1, line: 67, type: !9, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!237 = distinct !DILocation(line: 122, column: 231, scope: !238, inlinedAt: !239)
!238 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!239 = distinct !DILocation(line: 61, column: 14, scope: !240, inlinedAt: !241)
!240 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !74, file: !74, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!241 = distinct !DILocation(line: 142, column: 14, scope: !242, inlinedAt: !243)
!242 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:192) &>", scope: !74, file: !74, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!243 = distinct !DILocation(line: 290, column: 9, scope: !244, inlinedAt: !245)
!244 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!245 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !246)
!246 = distinct !DILocation(line: 89, column: 3, scope: !40, inlinedAt: !247)
!247 = distinct !DILocation(line: 122, column: 167, scope: !227, inlinedAt: !228)
!248 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !237)
!249 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !237)
!250 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !251)
!251 = distinct !DILocation(line: 122, column: 231, scope: !238, inlinedAt: !252)
!252 = distinct !DILocation(line: 61, column: 14, scope: !240, inlinedAt: !253)
!253 = distinct !DILocation(line: 142, column: 14, scope: !242, inlinedAt: !254)
!254 = distinct !DILocation(line: 290, column: 9, scope: !244, inlinedAt: !255)
!255 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !256)
!256 = distinct !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !247)
!257 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !251)
!258 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !251)
!259 = !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !247)
!260 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !261)
!261 = distinct !DILocation(line: 122, column: 231, scope: !238, inlinedAt: !262)
!262 = distinct !DILocation(line: 61, column: 14, scope: !240, inlinedAt: !263)
!263 = distinct !DILocation(line: 142, column: 14, scope: !242, inlinedAt: !264)
!264 = distinct !DILocation(line: 290, column: 9, scope: !244, inlinedAt: !265)
!265 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !266)
!266 = distinct !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !247)
!267 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !261)
!268 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !261)
!269 = !DILocation(line: 0, scope: !40, inlinedAt: !247)
!270 = !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !247)
!271 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !272)
!272 = distinct !DILocation(line: 122, column: 231, scope: !238, inlinedAt: !273)
!273 = distinct !DILocation(line: 61, column: 14, scope: !240, inlinedAt: !274)
!274 = distinct !DILocation(line: 142, column: 14, scope: !242, inlinedAt: !275)
!275 = distinct !DILocation(line: 290, column: 9, scope: !244, inlinedAt: !276)
!276 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !277)
!277 = distinct !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !247)
!278 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !272)
!279 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !272)
!280 = !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !247)
!281 = !DILocation(line: 93, column: 3, scope: !40, inlinedAt: !247)
!282 = !DILocation(line: 94, column: 3, scope: !40, inlinedAt: !247)
!283 = !DILocation(line: 95, column: 3, scope: !40, inlinedAt: !247)
!284 = !DILocation(line: 290, column: 2, scope: !225)
!285 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!286 = !DILocation(line: 270, column: 2, scope: !285)
!287 = !DILocation(line: 91, column: 17, scope: !207, inlinedAt: !288)
!288 = distinct !DILocation(line: 274, column: 13, scope: !285)
!289 = !DILocation(line: 274, column: 43, scope: !285)
!290 = !DILocation(line: 275, column: 6, scope: !285)
!291 = !DILocation(line: 278, column: 36, scope: !285)
!292 = !DILocation(line: 279, column: 6, scope: !285)
!293 = !DILocation(line: 152, column: 33, scope: !294, inlinedAt: !295)
!294 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!295 = distinct !DILocation(line: 215, column: 6, scope: !296, inlinedAt: !297)
!296 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:128) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!297 = distinct !DILocation(line: 198, column: 8, scope: !298, inlinedAt: !299)
!298 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!299 = distinct !DILocation(line: 282, column: 6, scope: !285)
!300 = !DILocation(line: 200, column: 8, scope: !298, inlinedAt: !299)
!301 = !DILocation(line: 284, column: 2, scope: !285)
!302 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!303 = !DILocation(line: 122, column: 357, scope: !304, inlinedAt: !305)
!304 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!305 = distinct !DILocation(line: 61, column: 14, scope: !306, inlinedAt: !307)
!306 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !74, file: !74, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!307 = distinct !DILocation(line: 142, column: 14, scope: !308, inlinedAt: !309)
!308 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !74, file: !74, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!309 = distinct !DILocation(line: 290, column: 9, scope: !302)
!310 = !{!311, !29, i64 0}
!311 = !{!"_ZTSZZ4testiiENK3$_0clEvEUlvE0_", !29, i64 0}
!312 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !313)
!313 = distinct !DILocation(line: 122, column: 395, scope: !314, inlinedAt: !315)
!314 = distinct !DISubprogram(name: "operator()", scope: !1, file: !1, line: 122, type: !9, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!315 = distinct !DILocation(line: 61, column: 14, scope: !316, inlinedAt: !317)
!316 = distinct !DISubprogram(name: "__invoke_impl<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !74, file: !74, line: 60, type: !9, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!317 = distinct !DILocation(line: 142, column: 14, scope: !318, inlinedAt: !319)
!318 = distinct !DISubprogram(name: "__invoke_r<int, (lambda at unoptimized-instrumented.cc:122:356) &>", scope: !74, file: !74, line: 137, type: !9, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!319 = distinct !DILocation(line: 290, column: 9, scope: !320, inlinedAt: !321)
!320 = distinct !DISubprogram(name: "_M_invoke", scope: !17, file: !17, line: 288, type: !9, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!321 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !322)
!322 = distinct !DILocation(line: 89, column: 3, scope: !40, inlinedAt: !323)
!323 = distinct !DILocation(line: 122, column: 331, scope: !304, inlinedAt: !305)
!324 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !313)
!325 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !313)
!326 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !327)
!327 = distinct !DILocation(line: 122, column: 395, scope: !314, inlinedAt: !328)
!328 = distinct !DILocation(line: 61, column: 14, scope: !316, inlinedAt: !329)
!329 = distinct !DILocation(line: 142, column: 14, scope: !318, inlinedAt: !330)
!330 = distinct !DILocation(line: 290, column: 9, scope: !320, inlinedAt: !331)
!331 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !332)
!332 = distinct !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !323)
!333 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !327)
!334 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !327)
!335 = !DILocation(line: 90, column: 3, scope: !40, inlinedAt: !323)
!336 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !337)
!337 = distinct !DILocation(line: 122, column: 395, scope: !314, inlinedAt: !338)
!338 = distinct !DILocation(line: 61, column: 14, scope: !316, inlinedAt: !339)
!339 = distinct !DILocation(line: 142, column: 14, scope: !318, inlinedAt: !340)
!340 = distinct !DILocation(line: 290, column: 9, scope: !320, inlinedAt: !341)
!341 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !342)
!342 = distinct !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !323)
!343 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !337)
!344 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !337)
!345 = !DILocation(line: 0, scope: !40, inlinedAt: !323)
!346 = !DILocation(line: 91, column: 3, scope: !40, inlinedAt: !323)
!347 = !DILocation(line: 68, column: 3, scope: !236, inlinedAt: !348)
!348 = distinct !DILocation(line: 122, column: 395, scope: !314, inlinedAt: !349)
!349 = distinct !DILocation(line: 61, column: 14, scope: !316, inlinedAt: !350)
!350 = distinct !DILocation(line: 142, column: 14, scope: !318, inlinedAt: !351)
!351 = distinct !DILocation(line: 290, column: 9, scope: !320, inlinedAt: !352)
!352 = distinct !DILocation(line: 590, column: 9, scope: !38, inlinedAt: !353)
!353 = distinct !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !323)
!354 = !DILocation(line: 69, column: 3, scope: !236, inlinedAt: !348)
!355 = !DILocation(line: 70, column: 3, scope: !236, inlinedAt: !348)
!356 = !DILocation(line: 92, column: 3, scope: !40, inlinedAt: !323)
!357 = !DILocation(line: 93, column: 3, scope: !40, inlinedAt: !323)
!358 = !DILocation(line: 94, column: 3, scope: !40, inlinedAt: !323)
!359 = !DILocation(line: 95, column: 3, scope: !40, inlinedAt: !323)
!360 = !DILocation(line: 290, column: 2, scope: !302)
!361 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 267, type: !9, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!362 = !DILocation(line: 270, column: 2, scope: !361)
!363 = !DILocation(line: 91, column: 17, scope: !207, inlinedAt: !364)
!364 = distinct !DILocation(line: 274, column: 13, scope: !361)
!365 = !DILocation(line: 274, column: 43, scope: !361)
!366 = !DILocation(line: 275, column: 6, scope: !361)
!367 = !DILocation(line: 278, column: 36, scope: !361)
!368 = !DILocation(line: 279, column: 6, scope: !361)
!369 = !DILocation(line: 152, column: 33, scope: !370, inlinedAt: !371)
!370 = distinct !DISubprogram(name: "_M_create<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !17, file: !17, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!371 = distinct !DILocation(line: 215, column: 6, scope: !372, inlinedAt: !373)
!372 = distinct !DISubprogram(name: "_M_init_functor<const (lambda at unoptimized-instrumented.cc:122:292) &>", scope: !17, file: !17, line: 211, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!373 = distinct !DILocation(line: 198, column: 8, scope: !374, inlinedAt: !375)
!374 = distinct !DISubprogram(name: "_M_manager", scope: !17, file: !17, line: 180, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!375 = distinct !DILocation(line: 282, column: 6, scope: !361)
!376 = !DILocation(line: 200, column: 8, scope: !374, inlinedAt: !375)
!377 = !DILocation(line: 284, column: 2, scope: !361)
