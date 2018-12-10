//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/$Gson$Preconditions.java
//

#include "$Gson$Preconditions.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/UnsupportedOperationException.h"

@interface Gson_Gson_Preconditions ()

- (instancetype)init;

@end

__attribute__((unused)) static void Gson_Gson_Preconditions_init(Gson_Gson_Preconditions *self);

__attribute__((unused)) static Gson_Gson_Preconditions *new_Gson_Gson_Preconditions_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static Gson_Gson_Preconditions *create_Gson_Gson_Preconditions_init(void);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/google/gson/internal/$Gson$Preconditions.java"


#line 32
@implementation Gson_Gson_Preconditions

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  Gson_Gson_Preconditions_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 37
+ (id)checkNotNullWithId:(id)obj {
  return Gson_Gson_Preconditions_checkNotNullWithId_(obj);
}


#line 44
+ (void)checkArgumentWithBoolean:(jboolean)condition {
  Gson_Gson_Preconditions_checkArgumentWithBoolean_(condition);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x9, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(checkNotNullWithId:);
  methods[2].selector = @selector(checkArgumentWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "checkNotNull", "LNSObject;", "<T:Ljava/lang/Object;>(TT;)TT;", "checkArgument", "Z" };
  static const J2ObjcClassInfo _Gson_Gson_Preconditions = { "$Gson$Preconditions", "com.google.gson.internal", ptrTable, methods, NULL, 7, 0x11, 3, 0, -1, -1, -1, -1, -1 };
  return &_Gson_Gson_Preconditions;
}

@end


#line 33
void Gson_Gson_Preconditions_init(Gson_Gson_Preconditions *self) {
  NSObject_init(self);
  
#line 34
  @throw new_JavaLangUnsupportedOperationException_init();
}


#line 33
Gson_Gson_Preconditions *new_Gson_Gson_Preconditions_init() {
  J2OBJC_NEW_IMPL(Gson_Gson_Preconditions, init)
}


#line 33
Gson_Gson_Preconditions *create_Gson_Gson_Preconditions_init() {
  J2OBJC_CREATE_IMPL(Gson_Gson_Preconditions, init)
}

id Gson_Gson_Preconditions_checkNotNullWithId_(id obj) {
  Gson_Gson_Preconditions_initialize();
  
#line 38
  if (obj == nil) {
    @throw new_JavaLangNullPointerException_init();
  }
  return obj;
}


#line 44
void Gson_Gson_Preconditions_checkArgumentWithBoolean_(jboolean condition) {
  Gson_Gson_Preconditions_initialize();
  
#line 45
  if (!condition) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Gson_Gson_Preconditions)

J2OBJC_NAME_MAPPING(Gson_Gson_Preconditions, "com.google.gson.internal", "Gson")