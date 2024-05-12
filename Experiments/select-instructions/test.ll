; ModuleID = 'test.cc'
source_filename = "test.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", i32 (%"union.std::_Any_data"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::type_info" = type { i32 (...)**, i8* }

$__clang_call_terminate = comdat any

@_ZL5no_op = internal global i64 0, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@"_ZTSZ4mainE3$_0" = internal constant [12 x i8] c"Z4mainE3$_0\00", align 1
@"_ZTIZ4mainE3$_0" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"_ZTSZ4mainE3$_0", i32 0, i32 0) }, align 8
@"_ZTSZ4mainE3$_1" = internal constant [12 x i8] c"Z4mainE3$_1\00", align 1
@"_ZTIZ4mainE3$_1" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"_ZTSZ4mainE3$_1", i32 0, i32 0) }, align 8

; Function Attrs: norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::function", align 8
  %4 = alloca %"class.std::function", align 8
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  store volatile i32 0, i32* %1, align 4, !tbaa !5
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6
  store volatile i32 0, i32* %2, align 4, !tbaa !5
  %7 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 1
  %9 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = ptrtoint i32* %1 to i64
  store i64 %11, i64* %9, align 8, !tbaa !9
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZ4mainE3$_0E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %8, align 8, !tbaa !11
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !tbaa !13
  %12 = getelementptr inbounds %"class.std::function", %"class.std::function"* %4, i64 0, i32 0, i32 1
  %13 = getelementptr inbounds %"class.std::function", %"class.std::function"* %4, i64 0, i32 1
  %14 = getelementptr inbounds %"class.std::function", %"class.std::function"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::function", %"class.std::function"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = ptrtoint i32* %2 to i64
  store i64 %16, i64* %14, align 8, !tbaa !9
  store i32 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFivEZ4mainE3$_1E9_M_invokeERKSt9_Any_data", i32 (%"union.std::_Any_data"*)** %13, align 8, !tbaa !11
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFivEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %17 = getelementptr inbounds %"class.std::function", %"class.std::function"* %3, i64 0, i32 0, i32 0
  %18 = load volatile i32, i32* %1, align 4, !tbaa !5
  %19 = getelementptr inbounds %"class.std::function", %"class.std::function"* %4, i64 0, i32 0, i32 0
  %20 = load volatile i32, i32* %2, align 4, !tbaa !5
  %21 = add nsw i32 %20, %18
  %22 = load volatile i32, i32* %2, align 4, !tbaa !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %0
  %25 = load volatile i32, i32* %1, align 4, !tbaa !5
  %26 = load volatile i32, i32* %2, align 4, !tbaa !5
  %27 = sdiv i32 %25, %26
  %28 = icmp eq i32 %27, %21
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load volatile i64, i64* @_ZL5no_op, align 8, !tbaa !15
  %31 = add i64 %30, 1
  store volatile i64 %31, i64* @_ZL5no_op, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %29, %24, %0
  %33 = load volatile i32, i32* %1, align 4, !tbaa !5
  %34 = call noundef i32 @"_ZNSt17_Function_handlerIFivEZ4mainE3$_1E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
  %35 = mul nsw i32 %34, %33
  %36 = icmp eq i32 %35, %21
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load volatile i64, i64* @_ZL5no_op, align 8, !tbaa !15
  %39 = add i64 %38, 1
  store volatile i64 %39, i64* @_ZL5no_op, align 8, !tbaa !15
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %42 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %44 unwind label %137

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %40
  %46 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %13, align 8, !tbaa !11
  %47 = invoke noundef i32 %46(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %48 unwind label %137

48:                                               ; preds = %45
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %48
  %51 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !tbaa !13
  %52 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %54 unwind label %137

54:                                               ; preds = %53
  unreachable

55:                                               ; preds = %50
  %56 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !tbaa !11
  %57 = invoke noundef i32 %56(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17)
          to label %58 unwind label %137

58:                                               ; preds = %55
  %59 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %60 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %62 unwind label %137

62:                                               ; preds = %61
  unreachable

63:                                               ; preds = %58
  %64 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %13, align 8, !tbaa !11
  %65 = invoke noundef i32 %64(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %66 unwind label %137

66:                                               ; preds = %63
  %67 = srem i32 %57, %65
  %68 = icmp eq i32 %67, %21
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load volatile i64, i64* @_ZL5no_op, align 8, !tbaa !15
  %71 = add i64 %70, 1
  store volatile i64 %71, i64* @_ZL5no_op, align 8, !tbaa !15
  br label %72

72:                                               ; preds = %69, %66, %48
  %73 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !tbaa !13
  %74 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %76 unwind label %137

76:                                               ; preds = %75
  unreachable

77:                                               ; preds = %72
  %78 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !tbaa !11
  %79 = invoke noundef i32 %78(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17)
          to label %80 unwind label %137

80:                                               ; preds = %77
  %81 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %82 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %84 unwind label %137

84:                                               ; preds = %83
  unreachable

85:                                               ; preds = %80
  %86 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %13, align 8, !tbaa !11
  %87 = invoke noundef i32 %86(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %88 unwind label %137

88:                                               ; preds = %85
  %89 = sub nsw i32 %79, %87
  %90 = icmp eq i32 %89, %21
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load volatile i64, i64* @_ZL5no_op, align 8, !tbaa !15
  %93 = add i64 %92, 1
  store volatile i64 %93, i64* @_ZL5no_op, align 8, !tbaa !15
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !tbaa !13
  %96 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %98 unwind label %137

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %94
  %100 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %8, align 8, !tbaa !11
  %101 = invoke noundef i32 %100(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17)
          to label %102 unwind label %137

102:                                              ; preds = %99
  %103 = icmp eq i32 %101, %21
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = load volatile i64, i64* @_ZL5no_op, align 8, !tbaa !15
  %106 = add i64 %105, 1
  store volatile i64 %106, i64* @_ZL5no_op, align 8, !tbaa !15
  br label %107

107:                                              ; preds = %104, %102
  %108 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %109 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  invoke void @_ZSt25__throw_bad_function_callv() #7
          to label %111 unwind label %137

111:                                              ; preds = %110
  unreachable

112:                                              ; preds = %107
  %113 = load i32 (%"union.std::_Any_data"*)*, i32 (%"union.std::_Any_data"*)** %13, align 8, !tbaa !11
  %114 = invoke noundef i32 %113(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19)
          to label %115 unwind label %137

115:                                              ; preds = %112
  %116 = icmp eq i32 %114, %21
  br i1 %116, label %120, label %117

117:                                              ; preds = %115
  %118 = load volatile i64, i64* @_ZL5no_op, align 8, !tbaa !15
  %119 = add i64 %118, 1
  store volatile i64 %119, i64* @_ZL5no_op, align 8, !tbaa !15
  br label %120

120:                                              ; preds = %117, %115
  %121 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %122 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = invoke noundef zeroext i1 %121(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 3)
          to label %128 unwind label %125

125:                                              ; preds = %123
  %126 = landingpad { i8*, i32 }
          catch i8* null
  %127 = extractvalue { i8*, i32 } %126, 0
  call void @__clang_call_terminate(i8* %127) #8
  unreachable

128:                                              ; preds = %120, %123
  %129 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !tbaa !13
  %130 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = invoke noundef zeroext i1 %129(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, i32 noundef 3)
          to label %136 unwind label %133

133:                                              ; preds = %131
  %134 = landingpad { i8*, i32 }
          catch i8* null
  %135 = extractvalue { i8*, i32 } %134, 0
  call void @__clang_call_terminate(i8* %135) #8
  unreachable

136:                                              ; preds = %128, %131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  ret i32 0

137:                                              ; preds = %112, %110, %99, %97, %85, %83, %77, %75, %63, %61, %55, %53, %45, %43
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8, !tbaa !13
  %140 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = invoke noundef zeroext i1 %139(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 3)
          to label %146 unwind label %143

143:                                              ; preds = %141
  %144 = landingpad { i8*, i32 }
          catch i8* null
  %145 = extractvalue { i8*, i32 } %144, 0
  call void @__clang_call_terminate(i8* %145) #8
  unreachable

146:                                              ; preds = %137, %141
  %147 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8, !tbaa !13
  %148 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = invoke noundef zeroext i1 %147(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, i32 noundef 3)
          to label %154 unwind label %151

151:                                              ; preds = %149
  %152 = landingpad { i8*, i32 }
          catch i8* null
  %153 = extractvalue { i8*, i32 } %152, 0
  call void @__clang_call_terminate(i8* %153) #8
  unreachable

154:                                              ; preds = %146, %149
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  resume { i8*, i32 } %138
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #3 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #6
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZ4mainE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #4 align 2 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !17
  %4 = load volatile i32, i32* %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4mainE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !tbaa !9
  br label %12

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !tbaa !9
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %11 = load i64, i64* %9, align 8, !tbaa !9
  store i64 %11, i64* %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %8, %6, %4
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZ4mainE3$_1E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) #4 align 2 {
  %2 = bitcast %"union.std::_Any_data"* %0 to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !19
  %4 = load volatile i32, i32* %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4mainE3$_1" to %"class.std::type_info"*), %"class.std::type_info"** %5, align 8, !tbaa !9
  br label %12

6:                                                ; preds = %3
  %7 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %7, align 8, !tbaa !9
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %11 = load i64, i64* %9, align 8, !tbaa !9
  store i64 %11, i64* %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %8, %6, %4
  ret i1 false
}

attributes #0 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { mustprogress nofree norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 24}
!12 = !{!"_ZTSSt8functionIFivEE", !10, i64 24}
!13 = !{!14, !10, i64 16}
!14 = !{!"_ZTSSt14_Function_base", !7, i64 0, !10, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"long long", !7, i64 0}
!17 = !{!18, !10, i64 0}
!18 = !{!"_ZTSZ4mainE3$_0", !10, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSZ4mainE3$_1", !10, i64 0}
