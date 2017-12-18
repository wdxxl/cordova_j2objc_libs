//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/FilteredTermEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredTermEnum")
#ifdef RESTRICT_OrgApacheLuceneSearchFilteredTermEnum
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredTermEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilteredTermEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilteredTermEnum

#if !defined (OrgApacheLuceneSearchFilteredTermEnum_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilteredTermEnum || defined(INCLUDE_OrgApacheLuceneSearchFilteredTermEnum))
#define OrgApacheLuceneSearchFilteredTermEnum_

#define RESTRICT_OrgApacheLuceneIndexTermEnum 1
#define INCLUDE_OrgApacheLuceneIndexTermEnum 1
#include "org/apache/lucene/index/TermEnum.h"

@class OrgApacheLuceneIndexTerm;

@interface OrgApacheLuceneSearchFilteredTermEnum : OrgApacheLuceneIndexTermEnum {
 @public
  OrgApacheLuceneIndexTerm *currentTerm_;
  OrgApacheLuceneIndexTermEnum *actualEnum_;
}

#pragma mark Public

- (instancetype)init;

- (void)close;

- (jfloat)difference;

- (jint)docFreq;

- (jboolean)next;

- (OrgApacheLuceneIndexTerm *)term;

#pragma mark Protected

- (jboolean)endEnum;

- (void)setEnumWithOrgApacheLuceneIndexTermEnum:(OrgApacheLuceneIndexTermEnum *)actualEnum;

- (jboolean)termCompareWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredTermEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredTermEnum, currentTerm_, OrgApacheLuceneIndexTerm *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredTermEnum, actualEnum_, OrgApacheLuceneIndexTermEnum *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilteredTermEnum_init(OrgApacheLuceneSearchFilteredTermEnum *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredTermEnum)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilteredTermEnum")