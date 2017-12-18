//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/TermVectorsTermsWriterPerThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread")
#ifdef RESTRICT_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread

#if !defined (OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread))
#define OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_

#define RESTRICT_OrgApacheLuceneIndexTermsHashConsumerPerThread 1
#define INCLUDE_OrgApacheLuceneIndexTermsHashConsumerPerThread 1
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexByteSliceReader;
@class OrgApacheLuceneIndexDocumentsWriter_DocState;
@class OrgApacheLuceneIndexDocumentsWriter_DocWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermVectorsTermsWriter;
@class OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc;
@class OrgApacheLuceneIndexTermsHashConsumerPerField;
@class OrgApacheLuceneIndexTermsHashPerField;
@class OrgApacheLuceneIndexTermsHashPerThread;

@interface OrgApacheLuceneIndexTermVectorsTermsWriterPerThread : OrgApacheLuceneIndexTermsHashConsumerPerThread {
 @public
  OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter_;
  OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread_;
  OrgApacheLuceneIndexDocumentsWriter_DocState *docState_;
  OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *doc_;
  OrgApacheLuceneIndexByteSliceReader *vectorSliceReader_;
  IOSObjectArray *utf8Results_;
  NSString *lastVectorFieldName_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)termsHashPerThread
                withOrgApacheLuceneIndexTermVectorsTermsWriter:(OrgApacheLuceneIndexTermVectorsTermsWriter *)termsWriter;

- (void)abort;

- (OrgApacheLuceneIndexTermsHashConsumerPerField *)addFieldWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)termsHashPerField
                                                                   withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

- (OrgApacheLuceneIndexDocumentsWriter_DocWriter *)finishDocument;

- (void)startDocument;

#pragma mark Package-Private

- (jboolean)clearLastVectorFieldName;

- (jboolean)vectorFieldsInOrderWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fi;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, termsWriter_, OrgApacheLuceneIndexTermVectorsTermsWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, termsHashPerThread_, OrgApacheLuceneIndexTermsHashPerThread *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, docState_, OrgApacheLuceneIndexDocumentsWriter_DocState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, doc_, OrgApacheLuceneIndexTermVectorsTermsWriter_PerDoc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, vectorSliceReader_, OrgApacheLuceneIndexByteSliceReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, utf8Results_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread, lastVectorFieldName_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *self, OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread, OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter);

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *new_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread, OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexTermVectorsTermsWriterPerThread *create_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_withOrgApacheLuceneIndexTermVectorsTermsWriter_(OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread, OrgApacheLuceneIndexTermVectorsTermsWriter *termsWriter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermVectorsTermsWriterPerThread)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermVectorsTermsWriterPerThread")
