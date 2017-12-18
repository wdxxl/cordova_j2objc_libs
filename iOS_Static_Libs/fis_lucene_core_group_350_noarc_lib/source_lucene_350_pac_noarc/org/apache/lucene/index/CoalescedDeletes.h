//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/CoalescedDeletes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexCoalescedDeletes")
#ifdef RESTRICT_OrgApacheLuceneIndexCoalescedDeletes
#define INCLUDE_ALL_OrgApacheLuceneIndexCoalescedDeletes 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexCoalescedDeletes 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexCoalescedDeletes

#if !defined (OrgApacheLuceneIndexCoalescedDeletes_) && (INCLUDE_ALL_OrgApacheLuceneIndexCoalescedDeletes || defined(INCLUDE_OrgApacheLuceneIndexCoalescedDeletes))
#define OrgApacheLuceneIndexCoalescedDeletes_

@class OrgApacheLuceneIndexFrozenBufferedDeletes;
@protocol JavaLangIterable;
@protocol JavaUtilIterator;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexCoalescedDeletes : NSObject {
 @public
  id<JavaUtilMap> queries_;
  id<JavaUtilList> iterables_;
}

#pragma mark Public

- (id<JavaLangIterable>)queriesIterable;

- (id<JavaLangIterable>)termsIterable;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

+ (id<JavaUtilIterator>)mergedIteratorWithJavaUtilList:(id<JavaUtilList>)iterators;

- (void)updateWithOrgApacheLuceneIndexFrozenBufferedDeletes:(OrgApacheLuceneIndexFrozenBufferedDeletes *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCoalescedDeletes)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedDeletes, queries_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedDeletes, iterables_, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexCoalescedDeletes_init(OrgApacheLuceneIndexCoalescedDeletes *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexCoalescedDeletes *new_OrgApacheLuceneIndexCoalescedDeletes_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCoalescedDeletes *create_OrgApacheLuceneIndexCoalescedDeletes_init();

FOUNDATION_EXPORT id<JavaUtilIterator> OrgApacheLuceneIndexCoalescedDeletes_mergedIteratorWithJavaUtilList_(id<JavaUtilList> iterators);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCoalescedDeletes)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexCoalescedDeletes")
