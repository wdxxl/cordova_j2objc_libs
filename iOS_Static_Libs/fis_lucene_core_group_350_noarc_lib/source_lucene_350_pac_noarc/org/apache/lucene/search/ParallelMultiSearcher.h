//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/ParallelMultiSearcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchParallelMultiSearcher")
#ifdef RESTRICT_OrgApacheLuceneSearchParallelMultiSearcher
#define INCLUDE_ALL_OrgApacheLuceneSearchParallelMultiSearcher 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchParallelMultiSearcher 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchParallelMultiSearcher

#if !defined (OrgApacheLuceneSearchParallelMultiSearcher_) && (INCLUDE_ALL_OrgApacheLuceneSearchParallelMultiSearcher || defined(INCLUDE_OrgApacheLuceneSearchParallelMultiSearcher))
#define OrgApacheLuceneSearchParallelMultiSearcher_

#define RESTRICT_OrgApacheLuceneSearchMultiSearcher 1
#define INCLUDE_OrgApacheLuceneSearchMultiSearcher 1
#include "org/apache/lucene/search/MultiSearcher.h"

@class IOSObjectArray;
@class JavaUtilHashMap;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchCollector;
@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchSort;
@class OrgApacheLuceneSearchTopDocs;
@class OrgApacheLuceneSearchTopFieldDocs;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilConcurrentExecutorService;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchParallelMultiSearcher : OrgApacheLuceneSearchMultiSearcher

#pragma mark Public

- (instancetype)initWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executor
                 withOrgApacheLuceneSearchSearchableArray:(IOSObjectArray *)searchables;

- (instancetype)initWithOrgApacheLuceneSearchSearchableArray:(IOSObjectArray *)searchables;

- (void)close;

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (void)searchWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
              withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
           withOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector;

- (OrgApacheLuceneSearchTopDocs *)searchWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                        withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                withInt:(jint)nDocs;

- (OrgApacheLuceneSearchTopFieldDocs *)searchWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                             withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                     withInt:(jint)nDocs
                                               withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

#pragma mark Package-Private

- (JavaUtilHashMap *)createDocFrequencyMapWithJavaUtilSet:(id<JavaUtilSet>)terms;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchParallelMultiSearcher)

FOUNDATION_EXPORT void OrgApacheLuceneSearchParallelMultiSearcher_initWithOrgApacheLuceneSearchSearchableArray_(OrgApacheLuceneSearchParallelMultiSearcher *self, IOSObjectArray *searchables);

FOUNDATION_EXPORT OrgApacheLuceneSearchParallelMultiSearcher *new_OrgApacheLuceneSearchParallelMultiSearcher_initWithOrgApacheLuceneSearchSearchableArray_(IOSObjectArray *searchables) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchParallelMultiSearcher *create_OrgApacheLuceneSearchParallelMultiSearcher_initWithOrgApacheLuceneSearchSearchableArray_(IOSObjectArray *searchables);

FOUNDATION_EXPORT void OrgApacheLuceneSearchParallelMultiSearcher_initWithJavaUtilConcurrentExecutorService_withOrgApacheLuceneSearchSearchableArray_(OrgApacheLuceneSearchParallelMultiSearcher *self, id<JavaUtilConcurrentExecutorService> executor, IOSObjectArray *searchables);

FOUNDATION_EXPORT OrgApacheLuceneSearchParallelMultiSearcher *new_OrgApacheLuceneSearchParallelMultiSearcher_initWithJavaUtilConcurrentExecutorService_withOrgApacheLuceneSearchSearchableArray_(id<JavaUtilConcurrentExecutorService> executor, IOSObjectArray *searchables) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchParallelMultiSearcher *create_OrgApacheLuceneSearchParallelMultiSearcher_initWithJavaUtilConcurrentExecutorService_withOrgApacheLuceneSearchSearchableArray_(id<JavaUtilConcurrentExecutorService> executor, IOSObjectArray *searchables);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchParallelMultiSearcher)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchParallelMultiSearcher")
