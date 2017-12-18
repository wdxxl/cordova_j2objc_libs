//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/CachingWrapperFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchCachingWrapperFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchCachingWrapperFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchCachingWrapperFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter || defined(INCLUDE_OrgApacheLuceneSearchCachingWrapperFilter))
#define OrgApacheLuceneSearchCachingWrapperFilter_

#define RESTRICT_OrgApacheLuceneSearchFilter 1
#define INCLUDE_OrgApacheLuceneSearchFilter 1
#include "org/apache/lucene/search/Filter.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;
@class OrgApacheLuceneSearchCachingWrapperFilter_FilterCache;
@class OrgApacheLuceneSearchDocIdSet;

@interface OrgApacheLuceneSearchCachingWrapperFilter : OrgApacheLuceneSearchFilter {
 @public
  OrgApacheLuceneSearchFilter *filter_;
  OrgApacheLuceneSearchCachingWrapperFilter_FilterCache *cache_;
  jint hitCount_;
  jint missCount_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)deletesMode;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Protected

- (OrgApacheLuceneSearchDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter, filter_, OrgApacheLuceneSearchFilter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter, cache_, OrgApacheLuceneSearchCachingWrapperFilter_FilterCache *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter);

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *new_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter *create_OrgApacheLuceneSearchCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchCachingWrapperFilter)

#endif

#if !defined (OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_) && (INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter || defined(INCLUDE_OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode))
#define OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_Enum) {
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_Enum_IGNORE = 0,
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_Enum_RECACHE = 1,
  OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_Enum_DYNAMIC = 2,
};

@interface OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode : JavaLangEnum < NSCopying >

#pragma mark Public

+ (OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values_[];

inline OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_get_IGNORE();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, IGNORE)

inline OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_get_RECACHE();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, RECACHE)

inline OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_get_DYNAMIC();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode, DYNAMIC)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_values();

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode)

#endif

#if !defined (OrgApacheLuceneSearchCachingWrapperFilter_FilterCache_) && (INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter || defined(INCLUDE_OrgApacheLuceneSearchCachingWrapperFilter_FilterCache))
#define OrgApacheLuceneSearchCachingWrapperFilter_FilterCache_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode;
@protocol JavaUtilMap;

@interface OrgApacheLuceneSearchCachingWrapperFilter_FilterCache : NSObject < JavaIoSerializable > {
 @public
  id<JavaUtilMap> cache_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode:(OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *)deletesMode;

- (id)getWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                      withId:(id)coreKey
                                      withId:(id)delCoreKey;

- (void)putWithId:(id)coreKey
           withId:(id)delCoreKey
           withId:(id)value;

#pragma mark Protected

- (id)mergeDeletesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                               withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache, cache_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchCachingWrapperFilter_FilterCache_initWithOrgApacheLuceneSearchCachingWrapperFilter_DeletesMode_(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache *self, OrgApacheLuceneSearchCachingWrapperFilter_DeletesMode *deletesMode);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchCachingWrapperFilter_FilterCache)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchCachingWrapperFilter")