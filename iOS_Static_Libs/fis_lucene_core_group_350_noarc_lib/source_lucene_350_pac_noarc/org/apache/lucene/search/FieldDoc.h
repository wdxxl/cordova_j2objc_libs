//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/FieldDoc.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldDoc")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldDoc
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldDoc 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldDoc 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldDoc

#if !defined (OrgApacheLuceneSearchFieldDoc_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldDoc || defined(INCLUDE_OrgApacheLuceneSearchFieldDoc))
#define OrgApacheLuceneSearchFieldDoc_

#define RESTRICT_OrgApacheLuceneSearchScoreDoc 1
#define INCLUDE_OrgApacheLuceneSearchScoreDoc 1
#include "org/apache/lucene/search/ScoreDoc.h"

@class IOSObjectArray;

@interface OrgApacheLuceneSearchFieldDoc : OrgApacheLuceneSearchScoreDoc {
 @public
  IOSObjectArray *fields_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score;

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score
          withNSObjectArray:(IOSObjectArray *)fields;

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score
          withNSObjectArray:(IOSObjectArray *)fields
                    withInt:(jint)shardIndex;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldDoc)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldDoc, fields_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(OrgApacheLuceneSearchFieldDoc *self, jint doc, jfloat score);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(jint doc, jfloat score) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *create_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(jint doc, jfloat score);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(OrgApacheLuceneSearchFieldDoc *self, jint doc, jfloat score, IOSObjectArray *fields);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(jint doc, jfloat score, IOSObjectArray *fields) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *create_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(jint doc, jfloat score, IOSObjectArray *fields);

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_withInt_(OrgApacheLuceneSearchFieldDoc *self, jint doc, jfloat score, IOSObjectArray *fields, jint shardIndex);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_withInt_(jint doc, jfloat score, IOSObjectArray *fields, jint shardIndex) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *create_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_withInt_(jint doc, jfloat score, IOSObjectArray *fields, jint shardIndex);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldDoc)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldDoc")
