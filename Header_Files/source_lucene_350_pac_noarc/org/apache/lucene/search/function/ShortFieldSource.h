//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/function/ShortFieldSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFunctionShortFieldSource")
#ifdef RESTRICT_OrgApacheLuceneSearchFunctionShortFieldSource
#define INCLUDE_ALL_OrgApacheLuceneSearchFunctionShortFieldSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFunctionShortFieldSource 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFunctionShortFieldSource

#if !defined (OrgApacheLuceneSearchFunctionShortFieldSource_) && (INCLUDE_ALL_OrgApacheLuceneSearchFunctionShortFieldSource || defined(INCLUDE_OrgApacheLuceneSearchFunctionShortFieldSource))
#define OrgApacheLuceneSearchFunctionShortFieldSource_

#define RESTRICT_OrgApacheLuceneSearchFunctionFieldCacheSource 1
#define INCLUDE_OrgApacheLuceneSearchFunctionFieldCacheSource 1
#include "org/apache/lucene/search/function/FieldCacheSource.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchFunctionDocValues;
@protocol OrgApacheLuceneSearchFieldCache;
@protocol OrgApacheLuceneSearchFieldCache_ShortParser;

@interface OrgApacheLuceneSearchFunctionShortFieldSource : OrgApacheLuceneSearchFunctionFieldCacheSource

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field;

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldCache_ShortParser:(id<OrgApacheLuceneSearchFieldCache_ShortParser>)parser;

- (jboolean)cachedFieldSourceEqualsWithOrgApacheLuceneSearchFunctionFieldCacheSource:(OrgApacheLuceneSearchFunctionFieldCacheSource *)o;

- (jint)cachedFieldSourceHashCode;

- (NSString *)description__;

- (OrgApacheLuceneSearchFunctionDocValues *)getCachedFieldValuesWithOrgApacheLuceneSearchFieldCache:(id<OrgApacheLuceneSearchFieldCache>)cache
                                                                                       withNSString:(NSString *)field
                                                                withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFunctionShortFieldSource)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFunctionShortFieldSource_initWithNSString_(OrgApacheLuceneSearchFunctionShortFieldSource *self, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionShortFieldSource *new_OrgApacheLuceneSearchFunctionShortFieldSource_initWithNSString_(NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionShortFieldSource *create_OrgApacheLuceneSearchFunctionShortFieldSource_initWithNSString_(NSString *field);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFunctionShortFieldSource_initWithNSString_withOrgApacheLuceneSearchFieldCache_ShortParser_(OrgApacheLuceneSearchFunctionShortFieldSource *self, NSString *field, id<OrgApacheLuceneSearchFieldCache_ShortParser> parser);

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionShortFieldSource *new_OrgApacheLuceneSearchFunctionShortFieldSource_initWithNSString_withOrgApacheLuceneSearchFieldCache_ShortParser_(NSString *field, id<OrgApacheLuceneSearchFieldCache_ShortParser> parser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFunctionShortFieldSource *create_OrgApacheLuceneSearchFunctionShortFieldSource_initWithNSString_withOrgApacheLuceneSearchFieldCache_ShortParser_(NSString *field, id<OrgApacheLuceneSearchFieldCache_ShortParser> parser);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFunctionShortFieldSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFunctionShortFieldSource")
