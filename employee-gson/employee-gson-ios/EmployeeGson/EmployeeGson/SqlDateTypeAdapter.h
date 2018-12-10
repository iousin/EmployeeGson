//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/bind/SqlDateTypeAdapter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SqlDateTypeAdapter")
#ifdef RESTRICT_SqlDateTypeAdapter
#define INCLUDE_ALL_SqlDateTypeAdapter 0
#else
#define INCLUDE_ALL_SqlDateTypeAdapter 1
#endif
#undef RESTRICT_SqlDateTypeAdapter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonSqlDateTypeAdapter_) && (INCLUDE_ALL_SqlDateTypeAdapter || defined(INCLUDE_GsonSqlDateTypeAdapter))
#define GsonSqlDateTypeAdapter_

#define RESTRICT_TypeAdapter 1
#define INCLUDE_GsonTypeAdapter 1
#include "TypeAdapter.h"

@class GsonJsonElement;
@class GsonJsonReader;
@class GsonJsonWriter;
@class JavaIoReader;
@class JavaSqlDate;
@protocol GsonTypeAdapterFactory;

/*!
 @brief Adapter for java.sql.Date.Although this class appears stateless, it is not.
 DateFormat captures its time zone and locale when it is created, which gives
  this class state. DateFormat isn't thread safe either, so this class has
  to synchronize its read and write methods.
 */
@interface GsonSqlDateTypeAdapter : GsonTypeAdapter

+ (id<GsonTypeAdapterFactory>)FACTORY;

#pragma mark Public

- (instancetype __nonnull)init;

- (JavaSqlDate *)fromJsonTreeWithGsonJsonElement:(GsonJsonElement *)arg0;

- (JavaSqlDate *)fromJsonWithJavaIoReader:(JavaIoReader *)arg0;

- (JavaSqlDate *)fromJsonWithNSString:(NSString *)arg0;

- (JavaSqlDate *)readWithGsonJsonReader:(GsonJsonReader *)inArg;

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(JavaSqlDate *)value;

@end

J2OBJC_STATIC_INIT(GsonSqlDateTypeAdapter)

inline id<GsonTypeAdapterFactory> GsonSqlDateTypeAdapter_get_FACTORY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<GsonTypeAdapterFactory> GsonSqlDateTypeAdapter_FACTORY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GsonSqlDateTypeAdapter, FACTORY, id<GsonTypeAdapterFactory>)

FOUNDATION_EXPORT void GsonSqlDateTypeAdapter_init(GsonSqlDateTypeAdapter *self);

FOUNDATION_EXPORT GsonSqlDateTypeAdapter *new_GsonSqlDateTypeAdapter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonSqlDateTypeAdapter *create_GsonSqlDateTypeAdapter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(GsonSqlDateTypeAdapter)

@compatibility_alias ComGoogleGsonInternalBindSqlDateTypeAdapter GsonSqlDateTypeAdapter;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_SqlDateTypeAdapter")