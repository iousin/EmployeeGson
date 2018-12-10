//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/bind/ArrayTypeAdapter.java
//

#include "$Gson$Types.h"
#include "ArrayTypeAdapter.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeAdapterRuntimeTypeWrapper.h"
#include "TypeToken.h"
#include "java/lang/reflect/Array.h"
#include "java/lang/reflect/GenericArrayType.h"
#include "java/lang/reflect/Type.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface GsonArrayTypeAdapter () {
 @public
  IOSClass *componentType_;
  GsonTypeAdapter *componentTypeAdapter_;
}

@end

J2OBJC_FIELD_SETTER(GsonArrayTypeAdapter, componentType_, IOSClass *)
J2OBJC_FIELD_SETTER(GsonArrayTypeAdapter, componentTypeAdapter_, GsonTypeAdapter *)

@interface GsonArrayTypeAdapter_1 : NSObject < GsonTypeAdapterFactory >

- (instancetype)init;

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)typeToken;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonArrayTypeAdapter_1)

__attribute__((unused)) static void GsonArrayTypeAdapter_1_init(GsonArrayTypeAdapter_1 *self);

__attribute__((unused)) static GsonArrayTypeAdapter_1 *new_GsonArrayTypeAdapter_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonArrayTypeAdapter_1 *create_GsonArrayTypeAdapter_1_init(void);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/google/gson/internal/bind/ArrayTypeAdapter.java"

J2OBJC_INITIALIZED_DEFN(GsonArrayTypeAdapter)

id<GsonTypeAdapterFactory> GsonArrayTypeAdapter_FACTORY;


#line 38
@implementation GsonArrayTypeAdapter

+ (id<GsonTypeAdapterFactory>)FACTORY {
  return GsonArrayTypeAdapter_FACTORY;
}


#line 57
- (instancetype)initWithGsonGson:(GsonGson *)context
             withGsonTypeAdapter:(GsonTypeAdapter *)componentTypeAdapter
                    withIOSClass:(IOSClass *)componentType {
  GsonArrayTypeAdapter_initWithGsonGson_withGsonTypeAdapter_withIOSClass_(self, context, componentTypeAdapter, componentType);
  return self;
}


#line 63
- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  if ([((GsonJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(GsonJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  
#line 69
  id<JavaUtilList> list = new_JavaUtilArrayList_init();
  [inArg beginArray];
  while ([inArg hasNext]) {
    id instance = [((GsonTypeAdapter *) nil_chk(componentTypeAdapter_)) readWithGsonJsonReader:inArg];
    [list addWithId:instance];
  }
  [inArg endArray];
  id array = JavaLangReflectArray_newInstanceWithIOSClass_withInt_(componentType_, [list size]);
  for (jint i = 0; i < [list size]; i++) {
    JavaLangReflectArray_setWithId_withInt_withId_(array, i, [list getWithInt:i]);
  }
  return array;
}


#line 83
- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)array {
  
#line 85
  if (array == nil) {
    (void) [((GsonJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  
#line 90
  (void) [((GsonJsonWriter *) nil_chk(outArg)) beginArray];
  for (jint i = 0, length = JavaLangReflectArray_getLengthWithId_(array); i < length; i++) {
    id value = JavaLangReflectArray_getWithId_withInt_(array, i);
    [((GsonTypeAdapter *) nil_chk(componentTypeAdapter_)) writeWithGsonJsonWriter:outArg withId:value];
  }
  (void) [outArg endArray];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithGsonGson:withGsonTypeAdapter:withIOSClass:);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonWriter:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FACTORY", "LGsonTypeAdapterFactory;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "componentType_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "componentTypeAdapter_", "LGsonTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "LGsonGson;LGsonTypeAdapter;LIOSClass;", "(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TE;>;Ljava/lang/Class<TE;>;)V", "read", "LGsonJsonReader;", "LJavaIoIOException;", "write", "LGsonJsonWriter;LNSObject;", &GsonArrayTypeAdapter_FACTORY, "Ljava/lang/Class<TE;>;", "Lcom/google/gson/TypeAdapter<TE;>;", "<E:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _GsonArrayTypeAdapter = { "ArrayTypeAdapter", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, -1, -1, 10, -1 };
  return &_GsonArrayTypeAdapter;
}

+ (void)initialize {
  if (self == [GsonArrayTypeAdapter class]) {
    GsonArrayTypeAdapter_FACTORY = new_GsonArrayTypeAdapter_1_init();
    J2OBJC_SET_INITIALIZED(GsonArrayTypeAdapter)
  }
}

@end


#line 57
void GsonArrayTypeAdapter_initWithGsonGson_withGsonTypeAdapter_withIOSClass_(GsonArrayTypeAdapter *self, GsonGson *context, GsonTypeAdapter *componentTypeAdapter, IOSClass *componentType) {
  GsonTypeAdapter_init(self);
  
#line 58
  self->componentTypeAdapter_ = new_GsonTypeAdapterRuntimeTypeWrapper_initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_(
#line 59
  context, componentTypeAdapter, componentType);
  self->componentType_ = componentType;
}


#line 57
GsonArrayTypeAdapter *new_GsonArrayTypeAdapter_initWithGsonGson_withGsonTypeAdapter_withIOSClass_(GsonGson *context, GsonTypeAdapter *componentTypeAdapter, IOSClass *componentType) {
  J2OBJC_NEW_IMPL(GsonArrayTypeAdapter, initWithGsonGson_withGsonTypeAdapter_withIOSClass_, context, componentTypeAdapter, componentType)
}


#line 57
GsonArrayTypeAdapter *create_GsonArrayTypeAdapter_initWithGsonGson_withGsonTypeAdapter_withIOSClass_(GsonGson *context, GsonTypeAdapter *componentTypeAdapter, IOSClass *componentType) {
  J2OBJC_CREATE_IMPL(GsonArrayTypeAdapter, initWithGsonGson_withGsonTypeAdapter_withIOSClass_, context, componentTypeAdapter, componentType)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonArrayTypeAdapter)

J2OBJC_NAME_MAPPING(GsonArrayTypeAdapter, "com.google.gson.internal.bind", "Gson")

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/google/gson/internal/bind/ArrayTypeAdapter.java"


#line 39
@implementation GsonArrayTypeAdapter_1

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 39
- (instancetype)init {
  GsonArrayTypeAdapter_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)typeToken {
  
#line 42
  id<JavaLangReflectType> type = [((GsonTypeToken *) nil_chk(typeToken)) getType];
  if (!([JavaLangReflectGenericArrayType_class_() isInstance:type] || ([type isKindOfClass:[IOSClass class]] && [((IOSClass *) nil_chk(((IOSClass *) cast_chk(type, [IOSClass class])))) isArray]))) {
    return nil;
  }
  
#line 47
  id<JavaLangReflectType> componentType = Gson_Gson_Types_getArrayComponentTypeWithJavaLangReflectType_(type);
  GsonTypeAdapter *componentTypeAdapter = [((GsonGson *) nil_chk(gson)) getAdapterWithGsonTypeToken:GsonTypeToken_getWithJavaLangReflectType_(componentType)];
  return new_GsonArrayTypeAdapter_initWithGsonGson_withGsonTypeAdapter_withIOSClass_(
#line 50
  gson, componentTypeAdapter, Gson_Gson_Types_getRawTypeWithJavaLangReflectType_(componentType));
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x1, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createWithGsonGson:withGsonTypeToken:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "create", "LGsonGson;LGsonTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "LGsonArrayTypeAdapter;" };
  static const J2ObjcClassInfo _GsonArrayTypeAdapter_1 = { "", "com.google.gson.internal.bind", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, -1, -1, -1 };
  return &_GsonArrayTypeAdapter_1;
}

@end


#line 39
void GsonArrayTypeAdapter_1_init(GsonArrayTypeAdapter_1 *self) {
  NSObject_init(self);
}


#line 39
GsonArrayTypeAdapter_1 *new_GsonArrayTypeAdapter_1_init() {
  J2OBJC_NEW_IMPL(GsonArrayTypeAdapter_1, init)
}


#line 39
GsonArrayTypeAdapter_1 *create_GsonArrayTypeAdapter_1_init() {
  J2OBJC_CREATE_IMPL(GsonArrayTypeAdapter_1, init)
}