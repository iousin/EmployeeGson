//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/Excluder.java
//

#include "Excluder.h"
#include "ExclusionStrategy.h"
#include "Expose.h"
#include "FieldAttributes.h"
#include "Gson.h"
#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonWriter.h"
#include "Since.h"
#include "TypeAdapter.h"
#include "TypeToken.h"
#include "Until.h"
#include "java/lang/AssertionError.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Enum.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Modifier.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"

@interface GsonExcluder () {
 @public
  jdouble version__;
  jint modifiers_;
  jboolean serializeInnerClasses_;
  jboolean requireExpose_;
  id<JavaUtilList> serializationStrategies_;
  id<JavaUtilList> deserializationStrategies_;
}

- (jboolean)isAnonymousOrLocalWithIOSClass:(IOSClass *)clazz;

- (jboolean)isInnerClassWithIOSClass:(IOSClass *)clazz;

- (jboolean)isStaticWithIOSClass:(IOSClass *)clazz;

- (jboolean)isValidVersionWithGsonSince:(id<GsonSince>)since
                          withGsonUntil:(id<GsonUntil>)until;

- (jboolean)isValidSinceWithGsonSince:(id<GsonSince>)annotation;

- (jboolean)isValidUntilWithGsonUntil:(id<GsonUntil>)annotation;

@end

J2OBJC_FIELD_SETTER(GsonExcluder, serializationStrategies_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(GsonExcluder, deserializationStrategies_, id<JavaUtilList>)

inline jdouble GsonExcluder_get_IGNORE_VERSIONS(void);
#define GsonExcluder_IGNORE_VERSIONS -1.0
J2OBJC_STATIC_FIELD_CONSTANT(GsonExcluder, IGNORE_VERSIONS, jdouble)

__attribute__((unused)) static jboolean GsonExcluder_isAnonymousOrLocalWithIOSClass_(GsonExcluder *self, IOSClass *clazz);

__attribute__((unused)) static jboolean GsonExcluder_isInnerClassWithIOSClass_(GsonExcluder *self, IOSClass *clazz);

__attribute__((unused)) static jboolean GsonExcluder_isStaticWithIOSClass_(GsonExcluder *self, IOSClass *clazz);

__attribute__((unused)) static jboolean GsonExcluder_isValidVersionWithGsonSince_withGsonUntil_(GsonExcluder *self, id<GsonSince> since, id<GsonUntil> until);

__attribute__((unused)) static jboolean GsonExcluder_isValidSinceWithGsonSince_(GsonExcluder *self, id<GsonSince> annotation);

__attribute__((unused)) static jboolean GsonExcluder_isValidUntilWithGsonUntil_(GsonExcluder *self, id<GsonUntil> annotation);

@interface GsonExcluder_1 : GsonTypeAdapter {
 @public
  GsonExcluder *this$0_;
  jboolean val$skipDeserialize_;
  jboolean val$skipSerialize_;
  GsonGson *val$gson_;
  GsonTypeToken *val$type_;
  /*!
   @brief The delegate is lazily created because it may not be needed, and creating it may fail.
   */
  GsonTypeAdapter *delegate_;
}

- (instancetype)initWithGsonExcluder:(GsonExcluder *)outer$
                         withBoolean:(jboolean)capture$0
                         withBoolean:(jboolean)capture$1
                        withGsonGson:(GsonGson *)capture$2
                   withGsonTypeToken:(GsonTypeToken *)capture$3;

- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg;

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value;

- (GsonTypeAdapter *)delegate;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonExcluder_1)

J2OBJC_FIELD_SETTER(GsonExcluder_1, delegate_, GsonTypeAdapter *)

__attribute__((unused)) static void GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(GsonExcluder_1 *self, GsonExcluder *outer$, jboolean capture$0, jboolean capture$1, GsonGson *capture$2, GsonTypeToken *capture$3);

__attribute__((unused)) static GsonExcluder_1 *new_GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(GsonExcluder *outer$, jboolean capture$0, jboolean capture$1, GsonGson *capture$2, GsonTypeToken *capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonExcluder_1 *create_GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(GsonExcluder *outer$, jboolean capture$0, jboolean capture$1, GsonGson *capture$2, GsonTypeToken *capture$3);

__attribute__((unused)) static GsonTypeAdapter *GsonExcluder_1_delegate(GsonExcluder_1 *self);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/Excluder.java"

J2OBJC_INITIALIZED_DEFN(GsonExcluder)

GsonExcluder *GsonExcluder_DEFAULT;


#line 50
@implementation GsonExcluder

+ (GsonExcluder *)DEFAULT {
  return GsonExcluder_DEFAULT;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 50
- (instancetype)init {
  GsonExcluder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 61
- (GsonExcluder *)java_clone {
  @try {
    return (GsonExcluder *) cast_chk([super java_clone], [GsonExcluder class]);
  }
  @catch (
#line 64
  JavaLangCloneNotSupportedException *e) {
    @throw new_JavaLangAssertionError_initWithId_(e);
  }
}


#line 69
- (GsonExcluder *)withVersionWithDouble:(jdouble)ignoreVersionsAfter {
  GsonExcluder *result = [self java_clone];
  ((GsonExcluder *) nil_chk(result))->version__ = ignoreVersionsAfter;
  return result;
}

- (GsonExcluder *)withModifiersWithIntArray:(IOSIntArray *)modifiers {
  GsonExcluder *result = [self java_clone];
  ((GsonExcluder *) nil_chk(result))->modifiers_ = 0;
  {
    IOSIntArray *a__ =
#line 78
    modifiers;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint modifier = *b__++;
      
#line 79
      result->modifiers_ |= modifier;
    }
  }
  
#line 81
  return result;
}


#line 84
- (GsonExcluder *)disableInnerClassSerialization {
  GsonExcluder *result = [self java_clone];
  ((GsonExcluder *) nil_chk(result))->serializeInnerClasses_ = false;
  return result;
}

- (GsonExcluder *)excludeFieldsWithoutExposeAnnotation {
  GsonExcluder *result = [self java_clone];
  ((GsonExcluder *) nil_chk(result))->requireExpose_ = true;
  return result;
}

- (GsonExcluder *)withExclusionStrategyWithGsonExclusionStrategy:(id<GsonExclusionStrategy>)exclusionStrategy
                                                     withBoolean:(jboolean)serialization
                                                     withBoolean:(jboolean)deserialization {
  
#line 98
  GsonExcluder *result = [self java_clone];
  if (serialization) {
    ((GsonExcluder *) nil_chk(result))->serializationStrategies_ = new_JavaUtilArrayList_initWithJavaUtilCollection_(serializationStrategies_);
    [result->serializationStrategies_ addWithId:exclusionStrategy];
  }
  if (deserialization) {
    ((GsonExcluder *) nil_chk(result))->deserializationStrategies_ = new_JavaUtilArrayList_initWithJavaUtilCollection_(
#line 105
    deserializationStrategies_);
    [result->deserializationStrategies_ addWithId:exclusionStrategy];
  }
  return result;
}


#line 111
- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)type {
  IOSClass *rawType = [((GsonTypeToken *) nil_chk(type)) getRawType];
  jboolean skipSerialize = [self excludeClassWithIOSClass:rawType withBoolean:true];
  jboolean skipDeserialize = [self excludeClassWithIOSClass:rawType withBoolean:false];
  
#line 116
  if (!skipSerialize && !skipDeserialize) {
    return nil;
  }
  
#line 120
  return new_GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(self, skipDeserialize, skipSerialize, gson, type);
}


#line 149
- (jboolean)excludeFieldWithJavaLangReflectField:(JavaLangReflectField *)field
                                     withBoolean:(jboolean)serialize {
  if ((modifiers_ & [((JavaLangReflectField *) nil_chk(field)) getModifiers]) != 0) {
    return true;
  }
  
#line 154
  if (version__ != GsonExcluder_IGNORE_VERSIONS &&
#line 155
  !GsonExcluder_isValidVersionWithGsonSince_withGsonUntil_(self, ((id<GsonSince>) [field getAnnotationWithIOSClass:GsonSince_class_()]), ((id<GsonUntil>) [field getAnnotationWithIOSClass:GsonUntil_class_()]))) {
    return true;
  }
  
#line 159
  if ([field isSynthetic]) {
    return true;
  }
  
#line 163
  if (requireExpose_) {
    id<GsonExpose> annotation = ((id<GsonExpose>) [field getAnnotationWithIOSClass:GsonExpose_class_()]);
    if (annotation == nil || (serialize ? ![annotation serialize] : ![annotation deserialize])) {
      return true;
    }
  }
  
#line 170
  if (!serializeInnerClasses_ && GsonExcluder_isInnerClassWithIOSClass_(self, [field getType])) {
    return true;
  }
  
#line 174
  if (GsonExcluder_isAnonymousOrLocalWithIOSClass_(self, [field getType])) {
    return true;
  }
  
#line 178
  id<JavaUtilList> list = serialize ? serializationStrategies_ : deserializationStrategies_;
  if (![list isEmpty]) {
    GsonFieldAttributes *fieldAttributes = new_GsonFieldAttributes_initWithJavaLangReflectField_(field);
    for (id<GsonExclusionStrategy> __strong exclusionStrategy in list) {
      if ([((id<GsonExclusionStrategy>) nil_chk(exclusionStrategy)) shouldSkipFieldWithGsonFieldAttributes:fieldAttributes]) {
        return true;
      }
    }
  }
  
#line 188
  return false;
}


#line 191
- (jboolean)excludeClassWithIOSClass:(IOSClass *)clazz
                         withBoolean:(jboolean)serialize {
  if (version__ != GsonExcluder_IGNORE_VERSIONS &&
#line 193
  !GsonExcluder_isValidVersionWithGsonSince_withGsonUntil_(self, ((id<GsonSince>) [((IOSClass *) nil_chk(clazz)) getAnnotationWithIOSClass:GsonSince_class_()]), ((id<GsonUntil>) [clazz getAnnotationWithIOSClass:GsonUntil_class_()]))) {
    return true;
  }
  
#line 197
  if (!serializeInnerClasses_ && GsonExcluder_isInnerClassWithIOSClass_(self, clazz)) {
    return true;
  }
  
#line 201
  if (GsonExcluder_isAnonymousOrLocalWithIOSClass_(self, clazz)) {
    return true;
  }
  
#line 205
  id<JavaUtilList> list = serialize ? serializationStrategies_ : deserializationStrategies_;
  for (id<GsonExclusionStrategy> __strong exclusionStrategy in list) {
    if ([((id<GsonExclusionStrategy>) nil_chk(exclusionStrategy)) shouldSkipClassWithIOSClass:clazz]) {
      return true;
    }
  }
  
#line 212
  return false;
}


#line 215
- (jboolean)isAnonymousOrLocalWithIOSClass:(IOSClass *)clazz {
  return GsonExcluder_isAnonymousOrLocalWithIOSClass_(self, clazz);
}


#line 220
- (jboolean)isInnerClassWithIOSClass:(IOSClass *)clazz {
  return GsonExcluder_isInnerClassWithIOSClass_(self, clazz);
}

- (jboolean)isStaticWithIOSClass:(IOSClass *)clazz {
  return GsonExcluder_isStaticWithIOSClass_(self, clazz);
}

- (jboolean)isValidVersionWithGsonSince:(id<GsonSince>)since
                          withGsonUntil:(id<GsonUntil>)until {
  return GsonExcluder_isValidVersionWithGsonSince_withGsonUntil_(self, since, until);
}


#line 232
- (jboolean)isValidSinceWithGsonSince:(id<GsonSince>)annotation {
  return GsonExcluder_isValidSinceWithGsonSince_(self, annotation);
}


#line 242
- (jboolean)isValidUntilWithGsonUntil:(id<GsonUntil>)annotation {
  return GsonExcluder_isValidUntilWithGsonUntil_(self, annotation);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonExcluder;", 0x4, 0, -1, -1, -1, -1, -1 },
    { NULL, "LGsonExcluder;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LGsonExcluder;", 0x81, 3, 4, -1, -1, -1, -1 },
    { NULL, "LGsonExcluder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonExcluder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonExcluder;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x1, 7, 8, -1, 9, -1, -1 },
    { NULL, "Z", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, 14, -1, -1 },
    { NULL, "Z", 0x2, 15, 16, -1, 17, -1, -1 },
    { NULL, "Z", 0x2, 18, 16, -1, 17, -1, -1 },
    { NULL, "Z", 0x2, 19, 16, -1, 17, -1, -1 },
    { NULL, "Z", 0x2, 20, 21, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 22, 23, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 24, 25, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(java_clone);
  methods[2].selector = @selector(withVersionWithDouble:);
  methods[3].selector = @selector(withModifiersWithIntArray:);
  methods[4].selector = @selector(disableInnerClassSerialization);
  methods[5].selector = @selector(excludeFieldsWithoutExposeAnnotation);
  methods[6].selector = @selector(withExclusionStrategyWithGsonExclusionStrategy:withBoolean:withBoolean:);
  methods[7].selector = @selector(createWithGsonGson:withGsonTypeToken:);
  methods[8].selector = @selector(excludeFieldWithJavaLangReflectField:withBoolean:);
  methods[9].selector = @selector(excludeClassWithIOSClass:withBoolean:);
  methods[10].selector = @selector(isAnonymousOrLocalWithIOSClass:);
  methods[11].selector = @selector(isInnerClassWithIOSClass:);
  methods[12].selector = @selector(isStaticWithIOSClass:);
  methods[13].selector = @selector(isValidVersionWithGsonSince:withGsonUntil:);
  methods[14].selector = @selector(isValidSinceWithGsonSince:);
  methods[15].selector = @selector(isValidUntilWithGsonUntil:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "IGNORE_VERSIONS", "D", .constantValue.asDouble = GsonExcluder_IGNORE_VERSIONS, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT", "LGsonExcluder;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "version__", "D", .constantValue.asLong = 0, 0x2, 27, -1, -1, -1 },
    { "modifiers_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "serializeInnerClasses_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "requireExpose_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "serializationStrategies_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 28, -1 },
    { "deserializationStrategies_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 28, -1 },
  };
  static const void *ptrTable[] = { "clone", "withVersion", "D", "withModifiers", "[I", "withExclusionStrategy", "LGsonExclusionStrategy;ZZ", "create", "LGsonGson;LGsonTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "excludeField", "LJavaLangReflectField;Z", "excludeClass", "LIOSClass;Z", "(Ljava/lang/Class<*>;Z)Z", "isAnonymousOrLocal", "LIOSClass;", "(Ljava/lang/Class<*>;)Z", "isInnerClass", "isStatic", "isValidVersion", "LGsonSince;LGsonUntil;", "isValidSince", "LGsonSince;", "isValidUntil", "LGsonUntil;", &GsonExcluder_DEFAULT, "version", "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;" };
  static const J2ObjcClassInfo _GsonExcluder = { "Excluder", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x11, 16, 8, -1, -1, -1, -1, -1 };
  return &_GsonExcluder;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self java_clone];
}

+ (void)initialize {
  if (self == [GsonExcluder class]) {
    GsonExcluder_DEFAULT = new_GsonExcluder_init();
    J2OBJC_SET_INITIALIZED(GsonExcluder)
  }
}

@end


#line 50
void GsonExcluder_init(GsonExcluder *self) {
  NSObject_init(self);
  self->version__ = GsonExcluder_IGNORE_VERSIONS;
  self->modifiers_ =
#line 55
  JavaLangReflectModifier_TRANSIENT | JavaLangReflectModifier_STATIC;
  self->serializeInnerClasses_ = true;
  self->serializationStrategies_ = JavaUtilCollections_emptyList();
  self->deserializationStrategies_ = JavaUtilCollections_emptyList();
}


#line 50
GsonExcluder *new_GsonExcluder_init() {
  J2OBJC_NEW_IMPL(GsonExcluder, init)
}


#line 50
GsonExcluder *create_GsonExcluder_init() {
  J2OBJC_CREATE_IMPL(GsonExcluder, init)
}


#line 215
jboolean GsonExcluder_isAnonymousOrLocalWithIOSClass_(GsonExcluder *self, IOSClass *clazz) {
  return ![JavaLangEnum_class_() isAssignableFrom:clazz] &&
#line 217
  ([((IOSClass *) nil_chk(clazz)) isAnonymousClass] || [clazz isLocalClass]);
}


#line 220
jboolean GsonExcluder_isInnerClassWithIOSClass_(GsonExcluder *self, IOSClass *clazz) {
  return [((IOSClass *) nil_chk(clazz)) isMemberClass] && !GsonExcluder_isStaticWithIOSClass_(self, clazz);
}

jboolean GsonExcluder_isStaticWithIOSClass_(GsonExcluder *self, IOSClass *clazz) {
  return ([((IOSClass *) nil_chk(clazz)) getModifiers] & JavaLangReflectModifier_STATIC) != 0;
}

jboolean GsonExcluder_isValidVersionWithGsonSince_withGsonUntil_(GsonExcluder *self, id<GsonSince> since, id<GsonUntil> until) {
  return GsonExcluder_isValidSinceWithGsonSince_(self, since) && GsonExcluder_isValidUntilWithGsonUntil_(self, until);
}

jboolean GsonExcluder_isValidSinceWithGsonSince_(GsonExcluder *self, id<GsonSince> annotation) {
  if (annotation != nil) {
    jdouble annotationVersion = [annotation value];
    if (annotationVersion > self->version__) {
      return false;
    }
  }
  return true;
}

jboolean GsonExcluder_isValidUntilWithGsonUntil_(GsonExcluder *self, id<GsonUntil> annotation) {
  if (annotation != nil) {
    jdouble annotationVersion = [annotation value];
    if (annotationVersion <= self->version__) {
      return false;
    }
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonExcluder)

J2OBJC_NAME_MAPPING(GsonExcluder, "com.google.gson.internal", "Gson")

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/Excluder.java"


#line 120
@implementation GsonExcluder_1


#line 120
- (instancetype)initWithGsonExcluder:(GsonExcluder *)outer$
                         withBoolean:(jboolean)capture$0
                         withBoolean:(jboolean)capture$1
                        withGsonGson:(GsonGson *)capture$2
                   withGsonTypeToken:(GsonTypeToken *)capture$3 {
  GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(self, outer$, capture$0, capture$1, capture$2, capture$3);
  return self;
}


#line 124
- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  if (val$skipDeserialize_) {
    [((GsonJsonReader *) nil_chk(inArg)) skipValue];
    return nil;
  }
  return [((GsonTypeAdapter *) nil_chk(GsonExcluder_1_delegate(self))) readWithGsonJsonReader:inArg];
}

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value {
  if (val$skipSerialize_) {
    (void) [((GsonJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  [((GsonTypeAdapter *) nil_chk(GsonExcluder_1_delegate(self))) writeWithGsonJsonWriter:outArg withId:value];
}


#line 140
- (GsonTypeAdapter *)delegate {
  return GsonExcluder_1_delegate(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 0, 1, 2, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 2, 6, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x2, -1, -1, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithGsonExcluder:withBoolean:withBoolean:withGsonGson:withGsonTypeToken:);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonWriter:withId:);
  methods[3].selector = @selector(delegate);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LGsonExcluder;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$skipDeserialize_", "Z", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$skipSerialize_", "Z", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$gson_", "LGsonGson;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$type_", "LGsonTypeToken;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
    { "delegate_", "LGsonTypeAdapter;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "read", "LGsonJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)TT;", "write", "LGsonJsonWriter;LNSObject;", "(Lcom/google/gson/stream/JsonWriter;TT;)V", "()Lcom/google/gson/TypeAdapter<TT;>;", "Lcom/google/gson/reflect/TypeToken<TT;>;", "Lcom/google/gson/TypeAdapter<TT;>;", "LGsonExcluder;", "createWithGsonGson:withGsonTypeToken:" };
  static const J2ObjcClassInfo _GsonExcluder_1 = { "", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x8018, 4, 6, 10, -1, 11, 9, -1 };
  return &_GsonExcluder_1;
}

@end


#line 120
void GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(GsonExcluder_1 *self, GsonExcluder *outer$, jboolean capture$0, jboolean capture$1, GsonGson *capture$2, GsonTypeToken *capture$3) {
  self->this$0_ = outer$;
  self->val$skipDeserialize_ = capture$0;
  self->val$skipSerialize_ = capture$1;
  self->val$gson_ = capture$2;
  self->val$type_ = capture$3;
  GsonTypeAdapter_init(self);
}


#line 120
GsonExcluder_1 *new_GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(GsonExcluder *outer$, jboolean capture$0, jboolean capture$1, GsonGson *capture$2, GsonTypeToken *capture$3) {
  J2OBJC_NEW_IMPL(GsonExcluder_1, initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_, outer$, capture$0, capture$1, capture$2, capture$3)
}


#line 120
GsonExcluder_1 *create_GsonExcluder_1_initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_(GsonExcluder *outer$, jboolean capture$0, jboolean capture$1, GsonGson *capture$2, GsonTypeToken *capture$3) {
  J2OBJC_CREATE_IMPL(GsonExcluder_1, initWithGsonExcluder_withBoolean_withBoolean_withGsonGson_withGsonTypeToken_, outer$, capture$0, capture$1, capture$2, capture$3)
}


#line 140
GsonTypeAdapter *GsonExcluder_1_delegate(GsonExcluder_1 *self) {
  GsonTypeAdapter *d = self->delegate_;
  return d != nil ?
#line 143
  d :
#line 144
  (self->delegate_ = [((GsonGson *) nil_chk(self->val$gson_)) getDelegateAdapterWithGsonTypeAdapterFactory:self->this$0_ withGsonTypeToken:self->val$type_]);
}
