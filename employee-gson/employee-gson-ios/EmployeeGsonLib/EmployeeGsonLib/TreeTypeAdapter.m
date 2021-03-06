//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/bind/TreeTypeAdapter.java
//

#include "$Gson$Preconditions.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonDeserializationContext.h"
#include "JsonDeserializer.h"
#include "JsonElement.h"
#include "JsonReader.h"
#include "JsonSerializationContext.h"
#include "JsonSerializer.h"
#include "JsonWriter.h"
#include "Streams.h"
#include "TreeTypeAdapter.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeToken.h"
#include "java/lang/reflect/Type.h"

@class GsonTreeTypeAdapter_GsonContextImpl;

@interface GsonTreeTypeAdapter () {
 @public
  id<GsonJsonSerializer> serializer_;
  id<GsonJsonDeserializer> deserializer_;
  GsonGson *gson_;
  GsonTypeToken *typeToken_;
  id<GsonTypeAdapterFactory> skipPast_;
  GsonTreeTypeAdapter_GsonContextImpl *context_;
  /*!
   @brief The delegate is lazily created because it may not be needed, and creating it may fail.
   */
  GsonTypeAdapter *delegate_;
}

- (GsonTypeAdapter *)delegate;

@end

J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, serializer_, id<GsonJsonSerializer>)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, deserializer_, id<GsonJsonDeserializer>)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, gson_, GsonGson *)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, typeToken_, GsonTypeToken *)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, skipPast_, id<GsonTypeAdapterFactory>)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, context_, GsonTreeTypeAdapter_GsonContextImpl *)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter, delegate_, GsonTypeAdapter *)

__attribute__((unused)) static GsonTypeAdapter *GsonTreeTypeAdapter_delegate(GsonTreeTypeAdapter *self);

@interface GsonTreeTypeAdapter_SingleTypeFactory : NSObject < GsonTypeAdapterFactory > {
 @public
  GsonTypeToken *exactType_;
  jboolean matchRawType_;
  IOSClass *hierarchyType_;
  id<GsonJsonSerializer> serializer_;
  id<GsonJsonDeserializer> deserializer_;
}

- (instancetype)initWithId:(id)typeAdapter
         withGsonTypeToken:(GsonTypeToken *)exactType
               withBoolean:(jboolean)matchRawType
              withIOSClass:(IOSClass *)hierarchyType;

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonTreeTypeAdapter_SingleTypeFactory)

J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter_SingleTypeFactory, exactType_, GsonTypeToken *)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter_SingleTypeFactory, hierarchyType_, IOSClass *)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter_SingleTypeFactory, serializer_, id<GsonJsonSerializer>)
J2OBJC_FIELD_SETTER(GsonTreeTypeAdapter_SingleTypeFactory, deserializer_, id<GsonJsonDeserializer>)

__attribute__((unused)) static void GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(GsonTreeTypeAdapter_SingleTypeFactory *self, id typeAdapter, GsonTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType);

__attribute__((unused)) static GsonTreeTypeAdapter_SingleTypeFactory *new_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(id typeAdapter, GsonTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonTreeTypeAdapter_SingleTypeFactory *create_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(id typeAdapter, GsonTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType);

J2OBJC_TYPE_LITERAL_HEADER(GsonTreeTypeAdapter_SingleTypeFactory)

@interface GsonTreeTypeAdapter_GsonContextImpl : NSObject < GsonJsonSerializationContext, GsonJsonDeserializationContext > {
 @public
  GsonTreeTypeAdapter *this$0_;
}

- (instancetype)initWithGsonTreeTypeAdapter:(GsonTreeTypeAdapter *)outer$;

- (GsonJsonElement *)serializeWithId:(id)src;

- (GsonJsonElement *)serializeWithId:(id)src
             withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

- (id)deserializeWithGsonJsonElement:(GsonJsonElement *)json
             withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonTreeTypeAdapter_GsonContextImpl)

__attribute__((unused)) static void GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(GsonTreeTypeAdapter_GsonContextImpl *self, GsonTreeTypeAdapter *outer$);

__attribute__((unused)) static GsonTreeTypeAdapter_GsonContextImpl *new_GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(GsonTreeTypeAdapter *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonTreeTypeAdapter_GsonContextImpl *create_GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(GsonTreeTypeAdapter *outer$);

J2OBJC_TYPE_LITERAL_HEADER(GsonTreeTypeAdapter_GsonContextImpl)

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/bind/TreeTypeAdapter.java"


#line 41
@implementation GsonTreeTypeAdapter


#line 52
- (instancetype)initWithGsonJsonSerializer:(id<GsonJsonSerializer>)serializer
                  withGsonJsonDeserializer:(id<GsonJsonDeserializer>)deserializer
                              withGsonGson:(GsonGson *)gson
                         withGsonTypeToken:(GsonTypeToken *)typeToken
                withGsonTypeAdapterFactory:(id<GsonTypeAdapterFactory>)skipPast {
  GsonTreeTypeAdapter_initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_(self, serializer, deserializer, gson, typeToken, skipPast);
  return self;
}

- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  if (deserializer_ == nil) {
    return [((GsonTypeAdapter *) nil_chk(GsonTreeTypeAdapter_delegate(self))) readWithGsonJsonReader:inArg];
  }
  GsonJsonElement *value = GsonStreams_parseWithGsonJsonReader_(inArg);
  if ([((GsonJsonElement *) nil_chk(value)) isJsonNull]) {
    return nil;
  }
  return [deserializer_ deserializeWithGsonJsonElement:value withJavaLangReflectType:[((GsonTypeToken *) nil_chk(typeToken_)) getType] withGsonJsonDeserializationContext:context_];
}

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value {
  if (serializer_ == nil) {
    [((GsonTypeAdapter *) nil_chk(GsonTreeTypeAdapter_delegate(self))) writeWithGsonJsonWriter:outArg withId:value];
    return;
  }
  if (value == nil) {
    (void) [((GsonJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  GsonJsonElement *tree = [serializer_ serializeWithId:value withJavaLangReflectType:[((GsonTypeToken *) nil_chk(typeToken_)) getType] withGsonJsonSerializationContext:context_];
  GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(tree, outArg);
}


#line 85
- (GsonTypeAdapter *)delegate {
  return GsonTreeTypeAdapter_delegate(self);
}


#line 95
+ (id<GsonTypeAdapterFactory>)newFactoryWithGsonTypeToken:(GsonTypeToken *)exactType
                                                   withId:(id)typeAdapter {
  return GsonTreeTypeAdapter_newFactoryWithGsonTypeToken_withId_(exactType, typeAdapter);
}


#line 103
+ (id<GsonTypeAdapterFactory>)newFactoryWithMatchRawTypeWithGsonTypeToken:(GsonTypeToken *)exactType
                                                                   withId:(id)typeAdapter {
  return GsonTreeTypeAdapter_newFactoryWithMatchRawTypeWithGsonTypeToken_withId_(exactType, typeAdapter);
}


#line 114
+ (id<GsonTypeAdapterFactory>)newTypeHierarchyFactoryWithIOSClass:(IOSClass *)hierarchyType
                                                           withId:(id)typeAdapter {
  return GsonTreeTypeAdapter_newTypeHierarchyFactoryWithIOSClass_withId_(hierarchyType, typeAdapter);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, 4, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 4, 8, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x2, -1, -1, -1, 9, -1, -1 },
    { NULL, "LGsonTypeAdapterFactory;", 0x9, 10, 11, -1, 12, -1, -1 },
    { NULL, "LGsonTypeAdapterFactory;", 0x9, 13, 11, -1, 12, -1, -1 },
    { NULL, "LGsonTypeAdapterFactory;", 0x9, 14, 15, -1, 16, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithGsonJsonSerializer:withGsonJsonDeserializer:withGsonGson:withGsonTypeToken:withGsonTypeAdapterFactory:);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonWriter:withId:);
  methods[3].selector = @selector(delegate);
  methods[4].selector = @selector(newFactoryWithGsonTypeToken:withId:);
  methods[5].selector = @selector(newFactoryWithMatchRawTypeWithGsonTypeToken:withId:);
  methods[6].selector = @selector(newTypeHierarchyFactoryWithIOSClass:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serializer_", "LGsonJsonSerializer;", .constantValue.asLong = 0, 0x12, -1, -1, 17, -1 },
    { "deserializer_", "LGsonJsonDeserializer;", .constantValue.asLong = 0, 0x12, -1, -1, 18, -1 },
    { "gson_", "LGsonGson;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "typeToken_", "LGsonTypeToken;", .constantValue.asLong = 0, 0x12, -1, -1, 19, -1 },
    { "skipPast_", "LGsonTypeAdapterFactory;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "context_", "LGsonTreeTypeAdapter_GsonContextImpl;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "delegate_", "LGsonTypeAdapter;", .constantValue.asLong = 0, 0x2, -1, -1, 20, -1 },
  };
  static const void *ptrTable[] = { "LGsonJsonSerializer;LGsonJsonDeserializer;LGsonGson;LGsonTypeToken;LGsonTypeAdapterFactory;", "(Lcom/google/gson/JsonSerializer<TT;>;Lcom/google/gson/JsonDeserializer<TT;>;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;Lcom/google/gson/TypeAdapterFactory;)V", "read", "LGsonJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)TT;", "write", "LGsonJsonWriter;LNSObject;", "(Lcom/google/gson/stream/JsonWriter;TT;)V", "()Lcom/google/gson/TypeAdapter<TT;>;", "newFactory", "LGsonTypeToken;LNSObject;", "(Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;", "newFactoryWithMatchRawType", "newTypeHierarchyFactory", "LIOSClass;LNSObject;", "(Ljava/lang/Class<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;", "Lcom/google/gson/JsonSerializer<TT;>;", "Lcom/google/gson/JsonDeserializer<TT;>;", "Lcom/google/gson/reflect/TypeToken<TT;>;", "Lcom/google/gson/TypeAdapter<TT;>;", "LGsonTreeTypeAdapter_SingleTypeFactory;LGsonTreeTypeAdapter_GsonContextImpl;", "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;" };
  static const J2ObjcClassInfo _GsonTreeTypeAdapter = { "TreeTypeAdapter", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 7, 7, -1, 21, -1, 22, -1 };
  return &_GsonTreeTypeAdapter;
}

@end


#line 52
void GsonTreeTypeAdapter_initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_(GsonTreeTypeAdapter *self, id<GsonJsonSerializer> serializer, id<GsonJsonDeserializer> deserializer, GsonGson *gson, GsonTypeToken *typeToken, id<GsonTypeAdapterFactory> skipPast) {
  GsonTypeAdapter_init(self);
  self->context_ = new_GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(self);
  
#line 54
  self->serializer_ = serializer;
  self->deserializer_ = deserializer;
  self->gson_ = gson;
  self->typeToken_ = typeToken;
  self->skipPast_ = skipPast;
}


#line 52
GsonTreeTypeAdapter *new_GsonTreeTypeAdapter_initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_(id<GsonJsonSerializer> serializer, id<GsonJsonDeserializer> deserializer, GsonGson *gson, GsonTypeToken *typeToken, id<GsonTypeAdapterFactory> skipPast) {
  J2OBJC_NEW_IMPL(GsonTreeTypeAdapter, initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_, serializer, deserializer, gson, typeToken, skipPast)
}


#line 52
GsonTreeTypeAdapter *create_GsonTreeTypeAdapter_initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_(id<GsonJsonSerializer> serializer, id<GsonJsonDeserializer> deserializer, GsonGson *gson, GsonTypeToken *typeToken, id<GsonTypeAdapterFactory> skipPast) {
  J2OBJC_CREATE_IMPL(GsonTreeTypeAdapter, initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_, serializer, deserializer, gson, typeToken, skipPast)
}


#line 85
GsonTypeAdapter *GsonTreeTypeAdapter_delegate(GsonTreeTypeAdapter *self) {
  GsonTypeAdapter *d = self->delegate_;
  return d != nil ?
#line 88
  d :
#line 89
  (self->delegate_ = [((GsonGson *) nil_chk(self->gson_)) getDelegateAdapterWithGsonTypeAdapterFactory:self->skipPast_ withGsonTypeToken:self->typeToken_]);
}


#line 95
id<GsonTypeAdapterFactory> GsonTreeTypeAdapter_newFactoryWithGsonTypeToken_withId_(GsonTypeToken *exactType, id typeAdapter) {
  GsonTreeTypeAdapter_initialize();
  
#line 96
  return new_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(typeAdapter, exactType, false, nil);
}


#line 103
id<GsonTypeAdapterFactory> GsonTreeTypeAdapter_newFactoryWithMatchRawTypeWithGsonTypeToken_withId_(GsonTypeToken *exactType, id typeAdapter) {
  GsonTreeTypeAdapter_initialize();
  
#line 106
  jboolean matchRawType = [((GsonTypeToken *) nil_chk(exactType)) getType] == (id) [exactType getRawType];
  return new_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(typeAdapter, exactType, matchRawType, nil);
}


#line 114
id<GsonTypeAdapterFactory> GsonTreeTypeAdapter_newTypeHierarchyFactoryWithIOSClass_withId_(IOSClass *hierarchyType, id typeAdapter) {
  GsonTreeTypeAdapter_initialize();
  return new_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(typeAdapter, nil, false, hierarchyType);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonTreeTypeAdapter)

J2OBJC_NAME_MAPPING(GsonTreeTypeAdapter, "com.google.gson.internal.bind", "Gson")

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/bind/TreeTypeAdapter.java"


#line 119
@implementation GsonTreeTypeAdapter_SingleTypeFactory


#line 126
- (instancetype)initWithId:(id)typeAdapter
         withGsonTypeToken:(GsonTypeToken *)exactType
               withBoolean:(jboolean)matchRawType
              withIOSClass:(IOSClass *)hierarchyType {
  GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(self, typeAdapter, exactType, matchRawType, hierarchyType);
  return self;
}


#line 140
- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)type {
  
#line 143
  jboolean matches = exactType_ != nil ?
#line 144
  [exactType_ isEqual:type] || (matchRawType_ && [exactType_ getType] == (id) [((GsonTypeToken *) nil_chk(type)) getRawType]) :
#line 145
  [((IOSClass *) nil_chk(hierarchyType_)) isAssignableFrom:[((GsonTypeToken *) nil_chk(type)) getRawType]];
  return matches ? new_GsonTreeTypeAdapter_initWithGsonJsonSerializer_withGsonJsonDeserializer_withGsonGson_withGsonTypeToken_withGsonTypeAdapterFactory_(
#line 147
  serializer_,
#line 148
  deserializer_, gson, type, self) :
#line 149
  nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithId:withGsonTypeToken:withBoolean:withIOSClass:);
  methods[1].selector = @selector(createWithGsonGson:withGsonTypeToken:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "exactType_", "LGsonTypeToken;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
    { "matchRawType_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "hierarchyType_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 6, -1 },
    { "serializer_", "LGsonJsonSerializer;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
    { "deserializer_", "LGsonJsonDeserializer;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LGsonTypeToken;ZLIOSClass;", "(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken<*>;ZLjava/lang/Class<*>;)V", "create", "LGsonGson;LGsonTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "Lcom/google/gson/reflect/TypeToken<*>;", "Ljava/lang/Class<*>;", "Lcom/google/gson/JsonSerializer<*>;", "Lcom/google/gson/JsonDeserializer<*>;", "LGsonTreeTypeAdapter;" };
  static const J2ObjcClassInfo _GsonTreeTypeAdapter_SingleTypeFactory = { "SingleTypeFactory", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x1a, 2, 5, 9, -1, -1, -1, -1 };
  return &_GsonTreeTypeAdapter_SingleTypeFactory;
}

@end


#line 126
void GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(GsonTreeTypeAdapter_SingleTypeFactory *self, id typeAdapter, GsonTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) {
  NSObject_init(self);
  self->serializer_ = [GsonJsonSerializer_class_() isInstance:typeAdapter] ?
#line 129
  (id<GsonJsonSerializer>) cast_check(typeAdapter, GsonJsonSerializer_class_()) :
#line 130
  nil;
  self->deserializer_ = [GsonJsonDeserializer_class_() isInstance:typeAdapter] ?
#line 132
  (id<GsonJsonDeserializer>) cast_check(typeAdapter, GsonJsonDeserializer_class_()) :
#line 133
  nil;
  Gson_Gson_Preconditions_checkArgumentWithBoolean_(self->serializer_ != nil || self->deserializer_ != nil);
  self->exactType_ = exactType;
  self->matchRawType_ = matchRawType;
  self->hierarchyType_ = hierarchyType;
}


#line 126
GsonTreeTypeAdapter_SingleTypeFactory *new_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(id typeAdapter, GsonTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) {
  J2OBJC_NEW_IMPL(GsonTreeTypeAdapter_SingleTypeFactory, initWithId_withGsonTypeToken_withBoolean_withIOSClass_, typeAdapter, exactType, matchRawType, hierarchyType)
}


#line 126
GsonTreeTypeAdapter_SingleTypeFactory *create_GsonTreeTypeAdapter_SingleTypeFactory_initWithId_withGsonTypeToken_withBoolean_withIOSClass_(id typeAdapter, GsonTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) {
  J2OBJC_CREATE_IMPL(GsonTreeTypeAdapter_SingleTypeFactory, initWithId_withGsonTypeToken_withBoolean_withIOSClass_, typeAdapter, exactType, matchRawType, hierarchyType)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonTreeTypeAdapter_SingleTypeFactory)

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/bind/TreeTypeAdapter.java"


#line 153
@implementation GsonTreeTypeAdapter_GsonContextImpl


#line 153
- (instancetype)initWithGsonTreeTypeAdapter:(GsonTreeTypeAdapter *)outer$ {
  GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(self, outer$);
  return self;
}


#line 154
- (GsonJsonElement *)serializeWithId:(id)src {
  return [((GsonGson *) nil_chk(this$0_->gson_)) toJsonTreeWithId:src];
}


#line 157
- (GsonJsonElement *)serializeWithId:(id)src
             withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc {
  return [((GsonGson *) nil_chk(this$0_->gson_)) toJsonTreeWithId:src withJavaLangReflectType:typeOfSrc];
}


#line 160
- (id)deserializeWithGsonJsonElement:(GsonJsonElement *)json
             withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT {
  
#line 162
  return [((GsonGson *) nil_chk(this$0_->gson_)) fromJsonWithGsonJsonElement:json withJavaLangReflectType:typeOfT];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonElement;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonElement;", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, 4, 5, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithGsonTreeTypeAdapter:);
  methods[1].selector = @selector(serializeWithId:);
  methods[2].selector = @selector(serializeWithId:withJavaLangReflectType:);
  methods[3].selector = @selector(deserializeWithGsonJsonElement:withJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LGsonTreeTypeAdapter;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "serialize", "LNSObject;", "LNSObject;LJavaLangReflectType;", "deserialize", "LGsonJsonElement;LJavaLangReflectType;", "LGsonJsonParseException;", "<R:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TR;", "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;", "LGsonTreeTypeAdapter;" };
  static const J2ObjcClassInfo _GsonTreeTypeAdapter_GsonContextImpl = { "GsonContextImpl", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x12, 4, 1, 8, -1, -1, -1, -1 };
  return &_GsonTreeTypeAdapter_GsonContextImpl;
}

@end


#line 153
void GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(GsonTreeTypeAdapter_GsonContextImpl *self, GsonTreeTypeAdapter *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}


#line 153
GsonTreeTypeAdapter_GsonContextImpl *new_GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(GsonTreeTypeAdapter *outer$) {
  J2OBJC_NEW_IMPL(GsonTreeTypeAdapter_GsonContextImpl, initWithGsonTreeTypeAdapter_, outer$)
}


#line 153
GsonTreeTypeAdapter_GsonContextImpl *create_GsonTreeTypeAdapter_GsonContextImpl_initWithGsonTreeTypeAdapter_(GsonTreeTypeAdapter *outer$) {
  J2OBJC_CREATE_IMPL(GsonTreeTypeAdapter_GsonContextImpl, initWithGsonTreeTypeAdapter_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonTreeTypeAdapter_GsonContextImpl)
