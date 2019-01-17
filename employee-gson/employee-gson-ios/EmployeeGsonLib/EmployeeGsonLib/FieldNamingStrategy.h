//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/FieldNamingStrategy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FieldNamingStrategy")
#ifdef RESTRICT_FieldNamingStrategy
#define INCLUDE_ALL_FieldNamingStrategy 0
#else
#define INCLUDE_ALL_FieldNamingStrategy 1
#endif
#undef RESTRICT_FieldNamingStrategy

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonFieldNamingStrategy_) && (INCLUDE_ALL_FieldNamingStrategy || defined(INCLUDE_GsonFieldNamingStrategy))
#define GsonFieldNamingStrategy_

@class JavaLangReflectField;

/*!
 @brief A mechanism for providing custom field naming in Gson.This allows the client code to translate
  field names into a particular convention that is not supported as a normal Java field
  declaration rules.
 For example, Java does not support "-" characters in a field name.
 @author Inderjeet Singh
 @author Joel Leitch
 @since 1.3
 */
@protocol GsonFieldNamingStrategy < JavaObject >

/*!
 @brief Translates the field name into its JSON field name representation.
 @param f the field object that we are translating
 @return the translated field name.
 @since 1.3
 */
- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonFieldNamingStrategy)

J2OBJC_TYPE_LITERAL_HEADER(GsonFieldNamingStrategy)

#define ComGoogleGsonFieldNamingStrategy GsonFieldNamingStrategy

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_FieldNamingStrategy")