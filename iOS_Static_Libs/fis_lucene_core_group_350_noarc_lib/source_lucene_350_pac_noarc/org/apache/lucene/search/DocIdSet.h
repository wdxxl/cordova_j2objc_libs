//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/DocIdSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocIdSet")
#ifdef RESTRICT_OrgApacheLuceneSearchDocIdSet
#define INCLUDE_ALL_OrgApacheLuceneSearchDocIdSet 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchDocIdSet 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchDocIdSet

#if !defined (OrgApacheLuceneSearchDocIdSet_) && (INCLUDE_ALL_OrgApacheLuceneSearchDocIdSet || defined(INCLUDE_OrgApacheLuceneSearchDocIdSet))
#define OrgApacheLuceneSearchDocIdSet_

@class OrgApacheLuceneSearchDocIdSetIterator;

@interface OrgApacheLuceneSearchDocIdSet : NSObject

#pragma mark Public

- (instancetype)init;

- (jboolean)isCacheable;

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchDocIdSet)

inline OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSearchDocIdSet_get_EMPTY_DOCIDSET();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchDocIdSet *OrgApacheLuceneSearchDocIdSet_EMPTY_DOCIDSET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchDocIdSet, EMPTY_DOCIDSET, OrgApacheLuceneSearchDocIdSet *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocIdSet_init(OrgApacheLuceneSearchDocIdSet *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocIdSet)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocIdSet")
