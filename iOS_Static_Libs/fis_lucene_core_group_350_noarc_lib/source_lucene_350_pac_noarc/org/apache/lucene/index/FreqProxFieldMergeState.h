//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FreqProxFieldMergeState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFieldMergeState")
#ifdef RESTRICT_OrgApacheLuceneIndexFreqProxFieldMergeState
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFieldMergeState 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFieldMergeState 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFreqProxFieldMergeState

#if !defined (OrgApacheLuceneIndexFreqProxFieldMergeState_) && (INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFieldMergeState || defined(INCLUDE_OrgApacheLuceneIndexFreqProxFieldMergeState))
#define OrgApacheLuceneIndexFreqProxFieldMergeState_

@class IOSCharArray;
@class IOSIntArray;
@class OrgApacheLuceneIndexByteSliceReader;
@class OrgApacheLuceneIndexCharBlockPool;
@class OrgApacheLuceneIndexFreqProxTermsWriterPerField;
@class OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray;

@interface OrgApacheLuceneIndexFreqProxFieldMergeState : NSObject {
 @public
  OrgApacheLuceneIndexFreqProxTermsWriterPerField *field_;
  jint numPostings_;
  OrgApacheLuceneIndexCharBlockPool *charPool_;
  IOSIntArray *termIDs_;
  OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *postings_;
  jint currentTermID_;
  IOSCharArray *text_;
  jint textOffset_;
  OrgApacheLuceneIndexByteSliceReader *freq_;
  OrgApacheLuceneIndexByteSliceReader *prox_;
  jint docID_;
  jint termFreq_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexFreqProxTermsWriterPerField:(OrgApacheLuceneIndexFreqProxTermsWriterPerField *)field;

- (jboolean)nextDoc;

- (NSString *)termText;

#pragma mark Package-Private

- (jboolean)nextTerm;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFreqProxFieldMergeState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, field_, OrgApacheLuceneIndexFreqProxTermsWriterPerField *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, charPool_, OrgApacheLuceneIndexCharBlockPool *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, termIDs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, postings_, OrgApacheLuceneIndexFreqProxTermsWriterPerField_FreqProxPostingsArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, text_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, freq_, OrgApacheLuceneIndexByteSliceReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxFieldMergeState, prox_, OrgApacheLuceneIndexByteSliceReader *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFreqProxFieldMergeState_initWithOrgApacheLuceneIndexFreqProxTermsWriterPerField_(OrgApacheLuceneIndexFreqProxFieldMergeState *self, OrgApacheLuceneIndexFreqProxTermsWriterPerField *field);

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxFieldMergeState *new_OrgApacheLuceneIndexFreqProxFieldMergeState_initWithOrgApacheLuceneIndexFreqProxTermsWriterPerField_(OrgApacheLuceneIndexFreqProxTermsWriterPerField *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxFieldMergeState *create_OrgApacheLuceneIndexFreqProxFieldMergeState_initWithOrgApacheLuceneIndexFreqProxTermsWriterPerField_(OrgApacheLuceneIndexFreqProxTermsWriterPerField *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFreqProxFieldMergeState)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxFieldMergeState")
