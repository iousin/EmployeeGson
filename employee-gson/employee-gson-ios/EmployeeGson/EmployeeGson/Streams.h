//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/Streams.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Streams")
#ifdef RESTRICT_Streams
#define INCLUDE_ALL_Streams 0
#else
#define INCLUDE_ALL_Streams 1
#endif
#undef RESTRICT_Streams

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonStreams_) && (INCLUDE_ALL_Streams || defined(INCLUDE_GsonStreams))
#define GsonStreams_

@class GsonJsonElement;
@class GsonJsonReader;
@class GsonJsonWriter;
@class JavaIoWriter;
@protocol JavaLangAppendable;

/*!
 @brief Reads and writes GSON parse trees over streams.
 */
@interface GsonStreams : NSObject

#pragma mark Public

/*!
 @brief Takes a reader in any state and returns the next value as a JsonElement.
 */
+ (GsonJsonElement *)parseWithGsonJsonReader:(GsonJsonReader *)reader;

/*!
 @brief Writes the JSON element to the writer, recursively.
 */
+ (void)writeWithGsonJsonElement:(GsonJsonElement *)element
              withGsonJsonWriter:(GsonJsonWriter *)writer;

+ (JavaIoWriter *)writerForAppendableWithJavaLangAppendable:(id<JavaLangAppendable>)appendable;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonStreams)

FOUNDATION_EXPORT GsonJsonElement *GsonStreams_parseWithGsonJsonReader_(GsonJsonReader *reader);

FOUNDATION_EXPORT void GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(GsonJsonElement *element, GsonJsonWriter *writer);

FOUNDATION_EXPORT JavaIoWriter *GsonStreams_writerForAppendableWithJavaLangAppendable_(id<JavaLangAppendable> appendable);

J2OBJC_TYPE_LITERAL_HEADER(GsonStreams)

@compatibility_alias ComGoogleGsonInternalStreams GsonStreams;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_Streams")