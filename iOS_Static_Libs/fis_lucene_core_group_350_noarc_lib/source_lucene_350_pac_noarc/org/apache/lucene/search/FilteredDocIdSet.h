//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/FilteredDocIdSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet")
#ifdef RESTRICT_OrgApacheLuceneSearchFilteredDocIdSet
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilteredDocIdSet

#if !defined (OrgApacheLuceneSearchFilteredDocIdSet_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet || defined(INCLUDE_OrgApacheLuceneSearchFilteredDocIdSet))
#define OrgApacheLuceneSearchFilteredDocIdSet_

#define RESTRICT_OrgApacheLuceneSearchDocIdSet 1
#define INCLUDE_OrgApacheLuceneSearchDocIdSet 1
#include "org/apache/lucene/search/DocIdSet.h"

@class OrgApacheLuceneSearchDocIdSetIterator;

@interface OrgApacheLuceneSearchFilteredDocIdSet : OrgApacheLuceneSearchDocIdSet

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)innerSet;

- (jboolean)isCacheable;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

#pragma mark Protected

- (jboolean)matchWithInt:(jint)docid;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredDocIdSet)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchFilteredDocIdSet *self, OrgApacheLuceneSearchDocIdSet *innerSet);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredDocIdSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredDocIdSet")