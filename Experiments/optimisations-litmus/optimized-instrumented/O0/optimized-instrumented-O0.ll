; ModuleID = 'optimized-instrumented.cc'
source_filename = "optimized-instrumented.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL5no_op = internal global i64 0, align 8

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4testii(i32 noundef %0, i32 noundef %1) #0 !dbg !9 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %22, align 4
  store i32 %1, i32* %23, align 4
  store i32* %22, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %24 = load i32*, i32** %3, align 8, !dbg !12
  %25 = load i32, i32* %24, align 4, !dbg !12
  store i32 %25, i32* %5, align 4, !dbg !12
  %26 = load i32*, i32** %3, align 8, !dbg !15
  %27 = load i32, i32* %26, align 4, !dbg !15
  %28 = add nsw i32 %27, 1, !dbg !15
  %29 = load i32, i32* %5, align 4, !dbg !15
  %30 = icmp ne i32 %28, %29, !dbg !15
  br i1 %30, label %31, label %34, !dbg !15

31:                                               ; preds = %2
  %32 = load i64, i64* @_ZL5no_op, align 8, !dbg !15
  %33 = add i64 %32, 1, !dbg !15
  store i64 %33, i64* @_ZL5no_op, align 8, !dbg !15
  br label %34, !dbg !15

34:                                               ; preds = %31, %2
  %35 = load i32*, i32** %3, align 8, !dbg !16
  %36 = load i32, i32* %35, align 4, !dbg !16
  %37 = sub nsw i32 %36, 1, !dbg !16
  %38 = load i32, i32* %5, align 4, !dbg !16
  %39 = icmp ne i32 %37, %38, !dbg !16
  br i1 %39, label %40, label %43, !dbg !16

40:                                               ; preds = %34
  %41 = load i64, i64* @_ZL5no_op, align 8, !dbg !16
  %42 = add i64 %41, 1, !dbg !16
  store i64 %42, i64* @_ZL5no_op, align 8, !dbg !16
  br label %43, !dbg !16

43:                                               ; preds = %34, %40
  %44 = load i32, i32* %5, align 4, !dbg !17
  store i32 %44, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %45 = load i32, i32* %13, align 4, !dbg !18
  store i32 %45, i32* %15, align 4, !dbg !18
  %46 = load i32, i32* %13, align 4, !dbg !21
  %47 = icmp ne i32 %46, 0, !dbg !21
  %48 = xor i1 %47, true, !dbg !21
  %49 = zext i1 %48 to i32, !dbg !21
  %50 = load i32, i32* %15, align 4, !dbg !21
  %51 = icmp ne i32 %49, %50, !dbg !21
  br i1 %51, label %52, label %55, !dbg !21

52:                                               ; preds = %43
  %53 = load i64, i64* @_ZL5no_op, align 8, !dbg !21
  %54 = add i64 %53, 1, !dbg !21
  store i64 %54, i64* @_ZL5no_op, align 8, !dbg !21
  br label %55, !dbg !21

55:                                               ; preds = %52, %43
  %56 = load i32, i32* %13, align 4, !dbg !22
  %57 = xor i32 %56, -1, !dbg !22
  %58 = load i32, i32* %15, align 4, !dbg !22
  %59 = icmp ne i32 %57, %58, !dbg !22
  br i1 %59, label %60, label %63, !dbg !22

60:                                               ; preds = %55
  %61 = load i64, i64* @_ZL5no_op, align 8, !dbg !22
  %62 = add i64 %61, 1, !dbg !22
  store i64 %62, i64* @_ZL5no_op, align 8, !dbg !22
  br label %63, !dbg !22

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %13, align 4, !dbg !23
  %65 = sub nsw i32 0, %64, !dbg !23
  %66 = load i32, i32* %15, align 4, !dbg !23
  %67 = icmp ne i32 %65, %66, !dbg !23
  br i1 %67, label %68, label %71, !dbg !23

68:                                               ; preds = %63
  %69 = load i64, i64* @_ZL5no_op, align 8, !dbg !23
  %70 = add i64 %69, 1, !dbg !23
  store i64 %70, i64* @_ZL5no_op, align 8, !dbg !23
  br label %71, !dbg !23

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %15, align 4, !dbg !24
  %73 = icmp ne i32 0, %72, !dbg !24
  br i1 %73, label %74, label %77, !dbg !24

74:                                               ; preds = %71
  %75 = load i64, i64* @_ZL5no_op, align 8, !dbg !24
  %76 = add i64 %75, 1, !dbg !24
  store i64 %76, i64* @_ZL5no_op, align 8, !dbg !24
  br label %77, !dbg !24

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %15, align 4, !dbg !25
  %79 = icmp ne i32 1, %78, !dbg !25
  br i1 %79, label %80, label %83, !dbg !25

80:                                               ; preds = %77
  %81 = load i64, i64* @_ZL5no_op, align 8, !dbg !25
  %82 = add i64 %81, 1, !dbg !25
  store i64 %82, i64* @_ZL5no_op, align 8, !dbg !25
  br label %83, !dbg !25

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %15, align 4, !dbg !26
  %85 = icmp ne i32 -1, %84, !dbg !26
  br i1 %85, label %86, label %89, !dbg !26

86:                                               ; preds = %83
  %87 = load i64, i64* @_ZL5no_op, align 8, !dbg !26
  %88 = add i64 %87, 1, !dbg !26
  store i64 %88, i64* @_ZL5no_op, align 8, !dbg !26
  br label %89, !dbg !26

89:                                               ; preds = %83, %86
  %90 = load i32, i32* %15, align 4, !dbg !27
  store i32* %23, i32** %6, align 8
  store i32 8, i32* %7, align 4
  %91 = load i32*, i32** %6, align 8, !dbg !28
  %92 = load i32, i32* %91, align 4, !dbg !28
  store i32 %92, i32* %8, align 4, !dbg !28
  %93 = load i32*, i32** %6, align 8, !dbg !30
  %94 = load i32, i32* %93, align 4, !dbg !30
  %95 = add nsw i32 %94, 1, !dbg !30
  %96 = load i32, i32* %8, align 4, !dbg !30
  %97 = icmp ne i32 %95, %96, !dbg !30
  br i1 %97, label %98, label %101, !dbg !30

98:                                               ; preds = %89
  %99 = load i64, i64* @_ZL5no_op, align 8, !dbg !30
  %100 = add i64 %99, 1, !dbg !30
  store i64 %100, i64* @_ZL5no_op, align 8, !dbg !30
  br label %101, !dbg !30

101:                                              ; preds = %98, %89
  %102 = load i32*, i32** %6, align 8, !dbg !31
  %103 = load i32, i32* %102, align 4, !dbg !31
  %104 = sub nsw i32 %103, 1, !dbg !31
  %105 = load i32, i32* %8, align 4, !dbg !31
  %106 = icmp ne i32 %104, %105, !dbg !31
  br i1 %106, label %107, label %110, !dbg !31

107:                                              ; preds = %101
  %108 = load i64, i64* @_ZL5no_op, align 8, !dbg !31
  %109 = add i64 %108, 1, !dbg !31
  store i64 %109, i64* @_ZL5no_op, align 8, !dbg !31
  br label %110, !dbg !31

110:                                              ; preds = %101, %107
  %111 = load i32, i32* %8, align 4, !dbg !32
  store i32 %111, i32* %16, align 4
  store i32 10, i32* %17, align 4
  %112 = load i32, i32* %16, align 4, !dbg !33
  store i32 %112, i32* %18, align 4, !dbg !33
  %113 = load i32, i32* %16, align 4, !dbg !35
  %114 = icmp ne i32 %113, 0, !dbg !35
  %115 = xor i1 %114, true, !dbg !35
  %116 = zext i1 %115 to i32, !dbg !35
  %117 = load i32, i32* %18, align 4, !dbg !35
  %118 = icmp ne i32 %116, %117, !dbg !35
  br i1 %118, label %119, label %122, !dbg !35

119:                                              ; preds = %110
  %120 = load i64, i64* @_ZL5no_op, align 8, !dbg !35
  %121 = add i64 %120, 1, !dbg !35
  store i64 %121, i64* @_ZL5no_op, align 8, !dbg !35
  br label %122, !dbg !35

122:                                              ; preds = %119, %110
  %123 = load i32, i32* %16, align 4, !dbg !36
  %124 = xor i32 %123, -1, !dbg !36
  %125 = load i32, i32* %18, align 4, !dbg !36
  %126 = icmp ne i32 %124, %125, !dbg !36
  br i1 %126, label %127, label %130, !dbg !36

127:                                              ; preds = %122
  %128 = load i64, i64* @_ZL5no_op, align 8, !dbg !36
  %129 = add i64 %128, 1, !dbg !36
  store i64 %129, i64* @_ZL5no_op, align 8, !dbg !36
  br label %130, !dbg !36

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %16, align 4, !dbg !37
  %132 = sub nsw i32 0, %131, !dbg !37
  %133 = load i32, i32* %18, align 4, !dbg !37
  %134 = icmp ne i32 %132, %133, !dbg !37
  br i1 %134, label %135, label %138, !dbg !37

135:                                              ; preds = %130
  %136 = load i64, i64* @_ZL5no_op, align 8, !dbg !37
  %137 = add i64 %136, 1, !dbg !37
  store i64 %137, i64* @_ZL5no_op, align 8, !dbg !37
  br label %138, !dbg !37

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %18, align 4, !dbg !38
  %140 = icmp ne i32 0, %139, !dbg !38
  br i1 %140, label %141, label %144, !dbg !38

141:                                              ; preds = %138
  %142 = load i64, i64* @_ZL5no_op, align 8, !dbg !38
  %143 = add i64 %142, 1, !dbg !38
  store i64 %143, i64* @_ZL5no_op, align 8, !dbg !38
  br label %144, !dbg !38

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %18, align 4, !dbg !39
  %146 = icmp ne i32 1, %145, !dbg !39
  br i1 %146, label %147, label %150, !dbg !39

147:                                              ; preds = %144
  %148 = load i64, i64* @_ZL5no_op, align 8, !dbg !39
  %149 = add i64 %148, 1, !dbg !39
  store i64 %149, i64* @_ZL5no_op, align 8, !dbg !39
  br label %150, !dbg !39

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %18, align 4, !dbg !40
  %152 = icmp ne i32 -1, %151, !dbg !40
  br i1 %152, label %153, label %156, !dbg !40

153:                                              ; preds = %150
  %154 = load i64, i64* @_ZL5no_op, align 8, !dbg !40
  %155 = add i64 %154, 1, !dbg !40
  store i64 %155, i64* @_ZL5no_op, align 8, !dbg !40
  br label %156, !dbg !40

156:                                              ; preds = %150, %153
  %157 = load i32, i32* %18, align 4, !dbg !41
  store i32 %90, i32* %9, align 4
  store i32 %157, i32* %10, align 4
  store i32 16, i32* %11, align 4
  %158 = load i32, i32* %9, align 4, !dbg !42
  %159 = load i32, i32* %10, align 4, !dbg !42
  %160 = add nsw i32 %158, %159, !dbg !42
  store i32 %160, i32* %12, align 4, !dbg !42
  %161 = load i32, i32* %10, align 4, !dbg !45
  %162 = icmp ne i32 %161, 0, !dbg !45
  br i1 %162, label %163, label %172, !dbg !45

163:                                              ; preds = %156
  %164 = load i32, i32* %9, align 4, !dbg !45
  %165 = load i32, i32* %10, align 4, !dbg !45
  %166 = sdiv i32 %164, %165, !dbg !45
  %167 = load i32, i32* %12, align 4, !dbg !45
  %168 = icmp ne i32 %166, %167, !dbg !45
  br i1 %168, label %169, label %172, !dbg !45

169:                                              ; preds = %163
  %170 = load i64, i64* @_ZL5no_op, align 8, !dbg !45
  %171 = add i64 %170, 1, !dbg !45
  store i64 %171, i64* @_ZL5no_op, align 8, !dbg !45
  br label %172, !dbg !45

172:                                              ; preds = %169, %163, %156
  %173 = load i32, i32* %9, align 4, !dbg !46
  %174 = load i32, i32* %10, align 4, !dbg !46
  %175 = mul nsw i32 %173, %174, !dbg !46
  %176 = load i32, i32* %12, align 4, !dbg !46
  %177 = icmp ne i32 %175, %176, !dbg !46
  br i1 %177, label %178, label %181, !dbg !46

178:                                              ; preds = %172
  %179 = load i64, i64* @_ZL5no_op, align 8, !dbg !46
  %180 = add i64 %179, 1, !dbg !46
  store i64 %180, i64* @_ZL5no_op, align 8, !dbg !46
  br label %181, !dbg !46

181:                                              ; preds = %178, %172
  %182 = load i32, i32* %10, align 4, !dbg !47
  %183 = icmp ne i32 %182, 0, !dbg !47
  br i1 %183, label %184, label %193, !dbg !47

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4, !dbg !47
  %186 = load i32, i32* %10, align 4, !dbg !47
  %187 = srem i32 %185, %186, !dbg !47
  %188 = load i32, i32* %12, align 4, !dbg !47
  %189 = icmp ne i32 %187, %188, !dbg !47
  br i1 %189, label %190, label %193, !dbg !47

190:                                              ; preds = %184
  %191 = load i64, i64* @_ZL5no_op, align 8, !dbg !47
  %192 = add i64 %191, 1, !dbg !47
  store i64 %192, i64* @_ZL5no_op, align 8, !dbg !47
  br label %193, !dbg !47

193:                                              ; preds = %190, %184, %181
  %194 = load i32, i32* %9, align 4, !dbg !48
  %195 = load i32, i32* %10, align 4, !dbg !48
  %196 = sub nsw i32 %194, %195, !dbg !48
  %197 = load i32, i32* %12, align 4, !dbg !48
  %198 = icmp ne i32 %196, %197, !dbg !48
  br i1 %198, label %199, label %202, !dbg !48

199:                                              ; preds = %193
  %200 = load i64, i64* @_ZL5no_op, align 8, !dbg !48
  %201 = add i64 %200, 1, !dbg !48
  store i64 %201, i64* @_ZL5no_op, align 8, !dbg !48
  br label %202, !dbg !48

202:                                              ; preds = %199, %193
  %203 = load i32, i32* %9, align 4, !dbg !49
  %204 = load i32, i32* %12, align 4, !dbg !49
  %205 = icmp ne i32 %203, %204, !dbg !49
  br i1 %205, label %206, label %209, !dbg !49

206:                                              ; preds = %202
  %207 = load i64, i64* @_ZL5no_op, align 8, !dbg !49
  %208 = add i64 %207, 1, !dbg !49
  store i64 %208, i64* @_ZL5no_op, align 8, !dbg !49
  br label %209, !dbg !49

209:                                              ; preds = %206, %202
  %210 = load i32, i32* %10, align 4, !dbg !50
  %211 = load i32, i32* %12, align 4, !dbg !50
  %212 = icmp ne i32 %210, %211, !dbg !50
  br i1 %212, label %213, label %216, !dbg !50

213:                                              ; preds = %209
  %214 = load i64, i64* @_ZL5no_op, align 8, !dbg !50
  %215 = add i64 %214, 1, !dbg !50
  store i64 %215, i64* @_ZL5no_op, align 8, !dbg !50
  br label %216, !dbg !50

216:                                              ; preds = %209, %213
  %217 = load i32, i32* %12, align 4, !dbg !51
  store i32 %217, i32* %19, align 4
  store i32 22, i32* %20, align 4
  %218 = load i32, i32* %19, align 4, !dbg !52
  store i32 %218, i32* %21, align 4, !dbg !52
  %219 = load i32, i32* %19, align 4, !dbg !54
  %220 = icmp ne i32 %219, 0, !dbg !54
  %221 = xor i1 %220, true, !dbg !54
  %222 = zext i1 %221 to i32, !dbg !54
  %223 = load i32, i32* %21, align 4, !dbg !54
  %224 = icmp ne i32 %222, %223, !dbg !54
  br i1 %224, label %225, label %228, !dbg !54

225:                                              ; preds = %216
  %226 = load i64, i64* @_ZL5no_op, align 8, !dbg !54
  %227 = add i64 %226, 1, !dbg !54
  store i64 %227, i64* @_ZL5no_op, align 8, !dbg !54
  br label %228, !dbg !54

228:                                              ; preds = %225, %216
  %229 = load i32, i32* %19, align 4, !dbg !55
  %230 = xor i32 %229, -1, !dbg !55
  %231 = load i32, i32* %21, align 4, !dbg !55
  %232 = icmp ne i32 %230, %231, !dbg !55
  br i1 %232, label %233, label %236, !dbg !55

233:                                              ; preds = %228
  %234 = load i64, i64* @_ZL5no_op, align 8, !dbg !55
  %235 = add i64 %234, 1, !dbg !55
  store i64 %235, i64* @_ZL5no_op, align 8, !dbg !55
  br label %236, !dbg !55

236:                                              ; preds = %233, %228
  %237 = load i32, i32* %19, align 4, !dbg !56
  %238 = sub nsw i32 0, %237, !dbg !56
  %239 = load i32, i32* %21, align 4, !dbg !56
  %240 = icmp ne i32 %238, %239, !dbg !56
  br i1 %240, label %241, label %244, !dbg !56

241:                                              ; preds = %236
  %242 = load i64, i64* @_ZL5no_op, align 8, !dbg !56
  %243 = add i64 %242, 1, !dbg !56
  store i64 %243, i64* @_ZL5no_op, align 8, !dbg !56
  br label %244, !dbg !56

244:                                              ; preds = %241, %236
  %245 = load i32, i32* %21, align 4, !dbg !57
  %246 = icmp ne i32 0, %245, !dbg !57
  br i1 %246, label %247, label %250, !dbg !57

247:                                              ; preds = %244
  %248 = load i64, i64* @_ZL5no_op, align 8, !dbg !57
  %249 = add i64 %248, 1, !dbg !57
  store i64 %249, i64* @_ZL5no_op, align 8, !dbg !57
  br label %250, !dbg !57

250:                                              ; preds = %247, %244
  %251 = load i32, i32* %21, align 4, !dbg !58
  %252 = icmp ne i32 1, %251, !dbg !58
  br i1 %252, label %253, label %256, !dbg !58

253:                                              ; preds = %250
  %254 = load i64, i64* @_ZL5no_op, align 8, !dbg !58
  %255 = add i64 %254, 1, !dbg !58
  store i64 %255, i64* @_ZL5no_op, align 8, !dbg !58
  br label %256, !dbg !58

256:                                              ; preds = %253, %250
  %257 = load i32, i32* %21, align 4, !dbg !59
  %258 = icmp ne i32 -1, %257, !dbg !59
  br i1 %258, label %259, label %262, !dbg !59

259:                                              ; preds = %256
  %260 = load i64, i64* @_ZL5no_op, align 8, !dbg !59
  %261 = add i64 %260, 1, !dbg !59
  store i64 %261, i64* @_ZL5no_op, align 8, !dbg !59
  br label %262, !dbg !59

262:                                              ; preds = %256, %259
  %263 = load i32, i32* %21, align 4, !dbg !60
  ret i32 %263, !dbg !61
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #1 !dbg !62 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  store i32 0, i32* %1, align 4
  store i32 29, i32* %2, align 4
  %21 = load i32, i32* %1, align 4, !dbg !63
  store i32 %21, i32* %3, align 4, !dbg !63
  %22 = load i32, i32* %3, align 4, !dbg !66
  %23 = icmp ne i32 1, %22, !dbg !66
  br i1 %23, label %24, label %27, !dbg !66

24:                                               ; preds = %0
  %25 = load i64, i64* @_ZL5no_op, align 8, !dbg !66
  %26 = add i64 %25, 1, !dbg !66
  store i64 %26, i64* @_ZL5no_op, align 8, !dbg !66
  br label %27, !dbg !66

27:                                               ; preds = %24, %0
  %28 = load i32, i32* %3, align 4, !dbg !67
  %29 = icmp ne i32 -1, %28, !dbg !67
  br i1 %29, label %30, label %33, !dbg !67

30:                                               ; preds = %27
  %31 = load i64, i64* @_ZL5no_op, align 8, !dbg !67
  %32 = add i64 %31, 1, !dbg !67
  store i64 %32, i64* @_ZL5no_op, align 8, !dbg !67
  br label %33, !dbg !67

33:                                               ; preds = %27, %30
  %34 = load i32, i32* %3, align 4, !dbg !68
  store i32 %34, i32* %19, align 4, !dbg !69
  store i32 0, i32* %4, align 4
  store i32 31, i32* %5, align 4
  %35 = load i32, i32* %4, align 4, !dbg !70
  store i32 %35, i32* %6, align 4, !dbg !70
  %36 = load i32, i32* %6, align 4, !dbg !72
  %37 = icmp ne i32 1, %36, !dbg !72
  br i1 %37, label %38, label %41, !dbg !72

38:                                               ; preds = %33
  %39 = load i64, i64* @_ZL5no_op, align 8, !dbg !72
  %40 = add i64 %39, 1, !dbg !72
  store i64 %40, i64* @_ZL5no_op, align 8, !dbg !72
  br label %41, !dbg !72

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %6, align 4, !dbg !73
  %43 = icmp ne i32 -1, %42, !dbg !73
  br i1 %43, label %44, label %47, !dbg !73

44:                                               ; preds = %41
  %45 = load i64, i64* @_ZL5no_op, align 8, !dbg !73
  %46 = add i64 %45, 1, !dbg !73
  store i64 %46, i64* @_ZL5no_op, align 8, !dbg !73
  br label %47, !dbg !73

47:                                               ; preds = %41, %44
  %48 = load i32, i32* %6, align 4, !dbg !74
  store i32 %48, i32* %20, align 4, !dbg !75
  store i32* %19, i32** %7, align 8
  store i32 33, i32* %8, align 4
  %49 = load i32*, i32** %7, align 8, !dbg !76
  %50 = load i32, i32* %49, align 4, !dbg !76
  store i32 %50, i32* %9, align 4, !dbg !76
  %51 = load i32*, i32** %7, align 8, !dbg !78
  %52 = load i32, i32* %51, align 4, !dbg !78
  %53 = add nsw i32 %52, 1, !dbg !78
  %54 = load i32, i32* %9, align 4, !dbg !78
  %55 = icmp ne i32 %53, %54, !dbg !78
  br i1 %55, label %56, label %59, !dbg !78

56:                                               ; preds = %47
  %57 = load i64, i64* @_ZL5no_op, align 8, !dbg !78
  %58 = add i64 %57, 1, !dbg !78
  store i64 %58, i64* @_ZL5no_op, align 8, !dbg !78
  br label %59, !dbg !78

59:                                               ; preds = %56, %47
  %60 = load i32*, i32** %7, align 8, !dbg !79
  %61 = load i32, i32* %60, align 4, !dbg !79
  %62 = sub nsw i32 %61, 1, !dbg !79
  %63 = load i32, i32* %9, align 4, !dbg !79
  %64 = icmp ne i32 %62, %63, !dbg !79
  br i1 %64, label %65, label %68, !dbg !79

65:                                               ; preds = %59
  %66 = load i64, i64* @_ZL5no_op, align 8, !dbg !79
  %67 = add i64 %66, 1, !dbg !79
  store i64 %67, i64* @_ZL5no_op, align 8, !dbg !79
  br label %68, !dbg !79

68:                                               ; preds = %59, %65
  %69 = load i32, i32* %9, align 4, !dbg !80
  store i32 %69, i32* %13, align 4
  store i32 35, i32* %14, align 4
  %70 = load i32, i32* %13, align 4, !dbg !81
  store i32 %70, i32* %15, align 4, !dbg !81
  %71 = load i32, i32* %13, align 4, !dbg !83
  %72 = icmp ne i32 %71, 0, !dbg !83
  %73 = xor i1 %72, true, !dbg !83
  %74 = zext i1 %73 to i32, !dbg !83
  %75 = load i32, i32* %15, align 4, !dbg !83
  %76 = icmp ne i32 %74, %75, !dbg !83
  br i1 %76, label %77, label %80, !dbg !83

77:                                               ; preds = %68
  %78 = load i64, i64* @_ZL5no_op, align 8, !dbg !83
  %79 = add i64 %78, 1, !dbg !83
  store i64 %79, i64* @_ZL5no_op, align 8, !dbg !83
  br label %80, !dbg !83

80:                                               ; preds = %77, %68
  %81 = load i32, i32* %13, align 4, !dbg !84
  %82 = xor i32 %81, -1, !dbg !84
  %83 = load i32, i32* %15, align 4, !dbg !84
  %84 = icmp ne i32 %82, %83, !dbg !84
  br i1 %84, label %85, label %88, !dbg !84

85:                                               ; preds = %80
  %86 = load i64, i64* @_ZL5no_op, align 8, !dbg !84
  %87 = add i64 %86, 1, !dbg !84
  store i64 %87, i64* @_ZL5no_op, align 8, !dbg !84
  br label %88, !dbg !84

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %13, align 4, !dbg !85
  %90 = sub nsw i32 0, %89, !dbg !85
  %91 = load i32, i32* %15, align 4, !dbg !85
  %92 = icmp ne i32 %90, %91, !dbg !85
  br i1 %92, label %93, label %96, !dbg !85

93:                                               ; preds = %88
  %94 = load i64, i64* @_ZL5no_op, align 8, !dbg !85
  %95 = add i64 %94, 1, !dbg !85
  store i64 %95, i64* @_ZL5no_op, align 8, !dbg !85
  br label %96, !dbg !85

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %15, align 4, !dbg !86
  %98 = icmp ne i32 0, %97, !dbg !86
  br i1 %98, label %99, label %102, !dbg !86

99:                                               ; preds = %96
  %100 = load i64, i64* @_ZL5no_op, align 8, !dbg !86
  %101 = add i64 %100, 1, !dbg !86
  store i64 %101, i64* @_ZL5no_op, align 8, !dbg !86
  br label %102, !dbg !86

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %15, align 4, !dbg !87
  %104 = icmp ne i32 1, %103, !dbg !87
  br i1 %104, label %105, label %108, !dbg !87

105:                                              ; preds = %102
  %106 = load i64, i64* @_ZL5no_op, align 8, !dbg !87
  %107 = add i64 %106, 1, !dbg !87
  store i64 %107, i64* @_ZL5no_op, align 8, !dbg !87
  br label %108, !dbg !87

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %15, align 4, !dbg !88
  %110 = icmp ne i32 -1, %109, !dbg !88
  br i1 %110, label %111, label %114, !dbg !88

111:                                              ; preds = %108
  %112 = load i64, i64* @_ZL5no_op, align 8, !dbg !88
  %113 = add i64 %112, 1, !dbg !88
  store i64 %113, i64* @_ZL5no_op, align 8, !dbg !88
  br label %114, !dbg !88

114:                                              ; preds = %108, %111
  %115 = load i32, i32* %15, align 4, !dbg !89
  store i32* %20, i32** %10, align 8
  store i32 41, i32* %11, align 4
  %116 = load i32*, i32** %10, align 8, !dbg !90
  %117 = load i32, i32* %116, align 4, !dbg !90
  store i32 %117, i32* %12, align 4, !dbg !90
  %118 = load i32*, i32** %10, align 8, !dbg !92
  %119 = load i32, i32* %118, align 4, !dbg !92
  %120 = add nsw i32 %119, 1, !dbg !92
  %121 = load i32, i32* %12, align 4, !dbg !92
  %122 = icmp ne i32 %120, %121, !dbg !92
  br i1 %122, label %123, label %126, !dbg !92

123:                                              ; preds = %114
  %124 = load i64, i64* @_ZL5no_op, align 8, !dbg !92
  %125 = add i64 %124, 1, !dbg !92
  store i64 %125, i64* @_ZL5no_op, align 8, !dbg !92
  br label %126, !dbg !92

126:                                              ; preds = %123, %114
  %127 = load i32*, i32** %10, align 8, !dbg !93
  %128 = load i32, i32* %127, align 4, !dbg !93
  %129 = sub nsw i32 %128, 1, !dbg !93
  %130 = load i32, i32* %12, align 4, !dbg !93
  %131 = icmp ne i32 %129, %130, !dbg !93
  br i1 %131, label %132, label %135, !dbg !93

132:                                              ; preds = %126
  %133 = load i64, i64* @_ZL5no_op, align 8, !dbg !93
  %134 = add i64 %133, 1, !dbg !93
  store i64 %134, i64* @_ZL5no_op, align 8, !dbg !93
  br label %135, !dbg !93

135:                                              ; preds = %126, %132
  %136 = load i32, i32* %12, align 4, !dbg !94
  store i32 %136, i32* %16, align 4
  store i32 43, i32* %17, align 4
  %137 = load i32, i32* %16, align 4, !dbg !95
  store i32 %137, i32* %18, align 4, !dbg !95
  %138 = load i32, i32* %16, align 4, !dbg !97
  %139 = icmp ne i32 %138, 0, !dbg !97
  %140 = xor i1 %139, true, !dbg !97
  %141 = zext i1 %140 to i32, !dbg !97
  %142 = load i32, i32* %18, align 4, !dbg !97
  %143 = icmp ne i32 %141, %142, !dbg !97
  br i1 %143, label %144, label %147, !dbg !97

144:                                              ; preds = %135
  %145 = load i64, i64* @_ZL5no_op, align 8, !dbg !97
  %146 = add i64 %145, 1, !dbg !97
  store i64 %146, i64* @_ZL5no_op, align 8, !dbg !97
  br label %147, !dbg !97

147:                                              ; preds = %144, %135
  %148 = load i32, i32* %16, align 4, !dbg !98
  %149 = xor i32 %148, -1, !dbg !98
  %150 = load i32, i32* %18, align 4, !dbg !98
  %151 = icmp ne i32 %149, %150, !dbg !98
  br i1 %151, label %152, label %155, !dbg !98

152:                                              ; preds = %147
  %153 = load i64, i64* @_ZL5no_op, align 8, !dbg !98
  %154 = add i64 %153, 1, !dbg !98
  store i64 %154, i64* @_ZL5no_op, align 8, !dbg !98
  br label %155, !dbg !98

155:                                              ; preds = %152, %147
  %156 = load i32, i32* %16, align 4, !dbg !99
  %157 = sub nsw i32 0, %156, !dbg !99
  %158 = load i32, i32* %18, align 4, !dbg !99
  %159 = icmp ne i32 %157, %158, !dbg !99
  br i1 %159, label %160, label %163, !dbg !99

160:                                              ; preds = %155
  %161 = load i64, i64* @_ZL5no_op, align 8, !dbg !99
  %162 = add i64 %161, 1, !dbg !99
  store i64 %162, i64* @_ZL5no_op, align 8, !dbg !99
  br label %163, !dbg !99

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %18, align 4, !dbg !100
  %165 = icmp ne i32 0, %164, !dbg !100
  br i1 %165, label %166, label %169, !dbg !100

166:                                              ; preds = %163
  %167 = load i64, i64* @_ZL5no_op, align 8, !dbg !100
  %168 = add i64 %167, 1, !dbg !100
  store i64 %168, i64* @_ZL5no_op, align 8, !dbg !100
  br label %169, !dbg !100

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %18, align 4, !dbg !101
  %171 = icmp ne i32 1, %170, !dbg !101
  br i1 %171, label %172, label %175, !dbg !101

172:                                              ; preds = %169
  %173 = load i64, i64* @_ZL5no_op, align 8, !dbg !101
  %174 = add i64 %173, 1, !dbg !101
  store i64 %174, i64* @_ZL5no_op, align 8, !dbg !101
  br label %175, !dbg !101

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %18, align 4, !dbg !102
  %177 = icmp ne i32 -1, %176, !dbg !102
  br i1 %177, label %178, label %181, !dbg !102

178:                                              ; preds = %175
  %179 = load i64, i64* @_ZL5no_op, align 8, !dbg !102
  %180 = add i64 %179, 1, !dbg !102
  store i64 %180, i64* @_ZL5no_op, align 8, !dbg !102
  br label %181, !dbg !102

181:                                              ; preds = %175, %178
  %182 = load i32, i32* %18, align 4, !dbg !103
  %183 = call noundef i32 @_Z4testii(i32 noundef %115, i32 noundef %182), !dbg !104
  ret i32 0, !dbg !105
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "optimized-instrumented.cc", directory: "/home/jlj/dev/dredd-evalutation/Experiments/basic-blocks-and-control-flow")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!9 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 100, type: !10, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 72, column: 3, scope: !13, inlinedAt: !14)
!13 = distinct !DISubprogram(name: "__dredd_replace_expr_int_lvalue", scope: !1, file: !1, line: 71, type: !10, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!14 = distinct !DILocation(line: 101, column: 114, scope: !9)
!15 = !DILocation(line: 73, column: 3, scope: !13, inlinedAt: !14)
!16 = !DILocation(line: 74, column: 3, scope: !13, inlinedAt: !14)
!17 = !DILocation(line: 75, column: 10, scope: !13, inlinedAt: !14)
!18 = !DILocation(line: 79, column: 3, scope: !19, inlinedAt: !20)
!19 = distinct !DISubprogram(name: "__dredd_replace_expr_int", scope: !1, file: !1, line: 78, type: !10, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!20 = distinct !DILocation(line: 101, column: 89, scope: !9)
!21 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !20)
!22 = !DILocation(line: 81, column: 3, scope: !19, inlinedAt: !20)
!23 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !20)
!24 = !DILocation(line: 83, column: 3, scope: !19, inlinedAt: !20)
!25 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !20)
!26 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !20)
!27 = !DILocation(line: 86, column: 10, scope: !19, inlinedAt: !20)
!28 = !DILocation(line: 72, column: 3, scope: !13, inlinedAt: !29)
!29 = distinct !DILocation(line: 101, column: 183, scope: !9)
!30 = !DILocation(line: 73, column: 3, scope: !13, inlinedAt: !29)
!31 = !DILocation(line: 74, column: 3, scope: !13, inlinedAt: !29)
!32 = !DILocation(line: 75, column: 10, scope: !13, inlinedAt: !29)
!33 = !DILocation(line: 79, column: 3, scope: !19, inlinedAt: !34)
!34 = distinct !DILocation(line: 101, column: 158, scope: !9)
!35 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !34)
!36 = !DILocation(line: 81, column: 3, scope: !19, inlinedAt: !34)
!37 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !34)
!38 = !DILocation(line: 83, column: 3, scope: !19, inlinedAt: !34)
!39 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !34)
!40 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !34)
!41 = !DILocation(line: 86, column: 10, scope: !19, inlinedAt: !34)
!42 = !DILocation(line: 90, column: 3, scope: !43, inlinedAt: !44)
!43 = distinct !DISubprogram(name: "__dredd_replace_binary_operator_Add_arg1_int_arg2_int", scope: !1, file: !1, line: 89, type: !10, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!44 = distinct !DILocation(line: 101, column: 35, scope: !9)
!45 = !DILocation(line: 91, column: 3, scope: !43, inlinedAt: !44)
!46 = !DILocation(line: 92, column: 3, scope: !43, inlinedAt: !44)
!47 = !DILocation(line: 93, column: 3, scope: !43, inlinedAt: !44)
!48 = !DILocation(line: 94, column: 3, scope: !43, inlinedAt: !44)
!49 = !DILocation(line: 95, column: 3, scope: !43, inlinedAt: !44)
!50 = !DILocation(line: 96, column: 3, scope: !43, inlinedAt: !44)
!51 = !DILocation(line: 97, column: 10, scope: !43, inlinedAt: !44)
!52 = !DILocation(line: 79, column: 3, scope: !19, inlinedAt: !53)
!53 = distinct !DILocation(line: 101, column: 10, scope: !9)
!54 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !53)
!55 = !DILocation(line: 81, column: 3, scope: !19, inlinedAt: !53)
!56 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !53)
!57 = !DILocation(line: 83, column: 3, scope: !19, inlinedAt: !53)
!58 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !53)
!59 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !53)
!60 = !DILocation(line: 86, column: 10, scope: !19, inlinedAt: !53)
!61 = !DILocation(line: 101, column: 3, scope: !9)
!62 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 104, type: !10, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!63 = !DILocation(line: 65, column: 3, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "__dredd_replace_expr_int_zero", scope: !1, file: !1, line: 64, type: !10, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !11)
!65 = distinct !DILocation(line: 105, column: 11, scope: !62)
!66 = !DILocation(line: 66, column: 3, scope: !64, inlinedAt: !65)
!67 = !DILocation(line: 67, column: 3, scope: !64, inlinedAt: !65)
!68 = !DILocation(line: 68, column: 10, scope: !64, inlinedAt: !65)
!69 = !DILocation(line: 105, column: 7, scope: !62)
!70 = !DILocation(line: 65, column: 3, scope: !64, inlinedAt: !71)
!71 = distinct !DILocation(line: 106, column: 11, scope: !62)
!72 = !DILocation(line: 66, column: 3, scope: !64, inlinedAt: !71)
!73 = !DILocation(line: 67, column: 3, scope: !64, inlinedAt: !71)
!74 = !DILocation(line: 68, column: 10, scope: !64, inlinedAt: !71)
!75 = !DILocation(line: 106, column: 7, scope: !62)
!76 = !DILocation(line: 72, column: 3, scope: !13, inlinedAt: !77)
!77 = distinct !DILocation(line: 107, column: 33, scope: !62)
!78 = !DILocation(line: 73, column: 3, scope: !13, inlinedAt: !77)
!79 = !DILocation(line: 74, column: 3, scope: !13, inlinedAt: !77)
!80 = !DILocation(line: 75, column: 10, scope: !13, inlinedAt: !77)
!81 = !DILocation(line: 79, column: 3, scope: !19, inlinedAt: !82)
!82 = distinct !DILocation(line: 107, column: 8, scope: !62)
!83 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !82)
!84 = !DILocation(line: 81, column: 3, scope: !19, inlinedAt: !82)
!85 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !82)
!86 = !DILocation(line: 83, column: 3, scope: !19, inlinedAt: !82)
!87 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !82)
!88 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !82)
!89 = !DILocation(line: 86, column: 10, scope: !19, inlinedAt: !82)
!90 = !DILocation(line: 72, column: 3, scope: !13, inlinedAt: !91)
!91 = distinct !DILocation(line: 107, column: 103, scope: !62)
!92 = !DILocation(line: 73, column: 3, scope: !13, inlinedAt: !91)
!93 = !DILocation(line: 74, column: 3, scope: !13, inlinedAt: !91)
!94 = !DILocation(line: 75, column: 10, scope: !13, inlinedAt: !91)
!95 = !DILocation(line: 79, column: 3, scope: !19, inlinedAt: !96)
!96 = distinct !DILocation(line: 107, column: 78, scope: !62)
!97 = !DILocation(line: 80, column: 3, scope: !19, inlinedAt: !96)
!98 = !DILocation(line: 81, column: 3, scope: !19, inlinedAt: !96)
!99 = !DILocation(line: 82, column: 3, scope: !19, inlinedAt: !96)
!100 = !DILocation(line: 83, column: 3, scope: !19, inlinedAt: !96)
!101 = !DILocation(line: 84, column: 3, scope: !19, inlinedAt: !96)
!102 = !DILocation(line: 85, column: 3, scope: !19, inlinedAt: !96)
!103 = !DILocation(line: 86, column: 10, scope: !19, inlinedAt: !96)
!104 = !DILocation(line: 107, column: 3, scope: !62)
!105 = !DILocation(line: 108, column: 1, scope: !62)
