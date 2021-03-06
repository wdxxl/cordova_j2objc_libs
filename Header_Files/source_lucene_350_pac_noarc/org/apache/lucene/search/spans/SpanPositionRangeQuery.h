//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanPositionRangeQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanPositionRangeQuery
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanPositionRangeQuery

#if !defined (OrgApacheLuceneSearchSpansSpanPositionRangeQuery_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanPositionRangeQuery))
#define OrgApacheLuceneSearchSpansSpanPositionRangeQuery_

#define RESTRICT_OrgApacheLuceneSearchSpansSpanPositionCheckQuery 1
#define INCLUDE_OrgApacheLuceneSearchSpansSpanPositionCheckQuery 1
#include "org/apache/lucene/search/spans/SpanPositionCheckQuery.h"

@class OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;
@class OrgApacheLuceneSearchSpansSpanQuery;
@class OrgApacheLuceneSearchSpansSpans;

@interface OrgApacheLuceneSearchSpansSpanPositionRangeQuery : OrgApacheLuceneSearchSpansSpanPositionCheckQuery {
 @public
  jint start_;
  jint end_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)match
                                                    withInt:(jint)start
                                                    withInt:(jint)end;

- (id)java_clone;

- (jboolean)isEqual:(id)o;

- (jint)getEnd;

- (jint)getStart;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanPositionRangeQuery *self, OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionRangeQuery *new_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanPositionRangeQuery *create_OrgApacheLuceneSearchSpansSpanPositionRangeQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withInt_withInt_(OrgApacheLuceneSearchSpansSpanQuery *match, jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanPositionRangeQuery)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanPositionRangeQuery")
