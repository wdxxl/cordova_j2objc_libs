//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/TermVectorsTermsWriterPerField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerField")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorsTermsWriterPerField
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerField 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorsTermsWriterPerField

#if !defined (OrgApacheLuceneIndexTermVectorsTermsWriterPerField_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerField || defined(INCLUDE_OrgApacheLuceneIndexTermVectorsTermsWriterPerField))
#define OrgApacheLuceneIndexTermVectorsTermsWriterPerField_

#define RESTRICT_OrgApacheLuceneIndexTermsHashConsumerPerField 1
#define INCLUDE_OrgApacheLuceneIndexTermsHashConsumerPerField 1
#include "org/apache/lucene/index/TermsHashConsumerPerField.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexDocumentsWriter_DocState;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInvertState;
@class OrgApacheLuceneIndexParallelPostingsArray;
@class OrgApacheLuceneIndexTermVectorsTermsWriter;
@class OrgApacheLuceneIndexTermVectorsTermsWriterPerThread;
@class OrgApacheLuceneIndexTermsHashPerField;
@protocol OrgApacheLuceneAnalysisTokenattributesOffsetAttribute;
@protocol OrgApacheLuceneDocumentFieldable;

@interface OrgApacheLuceneIndexTermVectorsTermsWriterPerField : OrgApacheLuceneIndexTermsHashConsumerPerField {
 @public
  OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *perThread_;
  OrgApacheLuceneIndexTermsHashPerField *termsHashPerField_;
  OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  OrgApacheLuceneIndexDocumentsWriter_DocState *docState_;
  OrgApacheLuceneIndexFieldInvertState *fieldState_;
  jboolean doVectors_;
  jboolean doVectorPositions_;
  jboolean doVectorOffsets_;
  jint maxNumPostings_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAttribute_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)termsHashPerField
      withOrgApacheLuceneIndexTermVectorsTermsWriterPerThread:(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *)perThread
                            withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

- (void)abort;

#pragma mark Package-Private

- (void)addTermWithInt:(jint)termID;

- (OrgApacheLuceneIndexParallelPostingsArray *)createPostingsArrayWithInt:(jint)size;

- (void)finish;

- (jint)getStreamCount;

- (void)newTermWithInt:(jint)termID OBJC_METHOD_FAMILY_NONE;

- (void)shrinkHash;

- (void)skippingLongTerm;

- (void)startWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)f;

- (jboolean)startWithOrgApacheLuceneDocumentFieldableArray:(IOSObjectArray *)fields
                                                   withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorsTermsWriterPerField)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, perThread_, OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, termsHashPerField_, OrgApacheLuceneIndexTermsHashPerField *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, termsWriter_, OrgApacheLuceneIndexTermVectorsTermsWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, docState_, OrgApacheLuceneIndexDocumentsWriter_DocState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, fieldState_, OrgApacheLuceneIndexFieldInvertState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField, offsetAttribute_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexTermVectorsTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexTermVectorsTermsWriterPerField *self, OrgApacheLuceneIndexTermsHashPerField *termsHashPerField, OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsTermsWriterPerField *new_OrgApacheLuceneIndexTermVectorsTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexTermVectorsTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexTermsHashPerField *termsHashPerField, OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsTermsWriterPerField *create_OrgApacheLuceneIndexTermVectorsTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexTermVectorsTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(OrgApacheLuceneIndexTermsHashPerField *termsHashPerField, OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *perThread, OrgApacheLuceneIndexFieldInfo *fieldInfo);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField)

#endif

#if !defined (OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerField || defined(INCLUDE_OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray))
#define OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray_

#define RESTRICT_OrgApacheLuceneIndexParallelPostingsArray 1
#define INCLUDE_OrgApacheLuceneIndexParallelPostingsArray 1
#include "org/apache/lucene/index/ParallelPostingsArray.h"

@class IOSIntArray;

@interface OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray : OrgApacheLuceneIndexParallelPostingsArray {
 @public
  IOSIntArray *freqs_;
  IOSIntArray *lastOffsets_;
  IOSIntArray *lastPositions_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

#pragma mark Package-Private

- (jint)bytesPerPosting;

- (void)copyToWithOrgApacheLuceneIndexParallelPostingsArray:(OrgApacheLuceneIndexParallelPostingsArray *)toArray
                                                    withInt:(jint)numToCopy OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneIndexParallelPostingsArray *)newInstanceWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray, freqs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray, lastOffsets_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray, lastPositions_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray_initWithInt_(OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray *new_OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray *create_OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorsTermsWriterPerField_TermVectorsPostingsArray)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerField")
