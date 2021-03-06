//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FrozenBufferedDeletes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedDeletes")
#ifdef RESTRICT_OrgApacheLuceneIndexFrozenBufferedDeletes
#define INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedDeletes 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedDeletes 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFrozenBufferedDeletes

#if !defined (OrgApacheLuceneIndexFrozenBufferedDeletes_) && (INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedDeletes || defined(INCLUDE_OrgApacheLuceneIndexFrozenBufferedDeletes))
#define OrgApacheLuceneIndexFrozenBufferedDeletes_

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexBufferedDeletes;
@class OrgApacheLuceneIndexPrefixCodedTerms;
@protocol JavaLangIterable;

@interface OrgApacheLuceneIndexFrozenBufferedDeletes : NSObject {
 @public
  OrgApacheLuceneIndexPrefixCodedTerms *terms_;
  jint termCount_;
  IOSObjectArray *queries_;
  IOSIntArray *queryLimits_;
  jint bytesUsed_;
  jint numTermDeletes_;
  jlong gen_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexBufferedDeletes:(OrgApacheLuceneIndexBufferedDeletes *)deletes
                                                   withLong:(jlong)gen;

- (id<JavaLangIterable>)queriesIterable;

- (id<JavaLangIterable>)termsIterable;

- (NSString *)description;

#pragma mark Package-Private

- (jboolean)any;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexFrozenBufferedDeletes)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedDeletes, terms_, OrgApacheLuceneIndexPrefixCodedTerms *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedDeletes, queries_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedDeletes, queryLimits_, IOSIntArray *)

inline jint OrgApacheLuceneIndexFrozenBufferedDeletes_get_BYTES_PER_DEL_QUERY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneIndexFrozenBufferedDeletes_BYTES_PER_DEL_QUERY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexFrozenBufferedDeletes, BYTES_PER_DEL_QUERY, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFrozenBufferedDeletes_initWithOrgApacheLuceneIndexBufferedDeletes_withLong_(OrgApacheLuceneIndexFrozenBufferedDeletes *self, OrgApacheLuceneIndexBufferedDeletes *deletes, jlong gen);

FOUNDATION_EXPORT OrgApacheLuceneIndexFrozenBufferedDeletes *new_OrgApacheLuceneIndexFrozenBufferedDeletes_initWithOrgApacheLuceneIndexBufferedDeletes_withLong_(OrgApacheLuceneIndexBufferedDeletes *deletes, jlong gen) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFrozenBufferedDeletes *create_OrgApacheLuceneIndexFrozenBufferedDeletes_initWithOrgApacheLuceneIndexBufferedDeletes_withLong_(OrgApacheLuceneIndexBufferedDeletes *deletes, jlong gen);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFrozenBufferedDeletes)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedDeletes")
