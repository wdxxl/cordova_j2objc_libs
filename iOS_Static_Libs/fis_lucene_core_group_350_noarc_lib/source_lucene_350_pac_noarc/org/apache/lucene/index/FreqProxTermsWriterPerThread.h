//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FreqProxTermsWriterPerThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriterPerThread")
#ifdef RESTRICT_OrgApacheLuceneIndexFreqProxTermsWriterPerThread
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriterPerThread 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriterPerThread 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFreqProxTermsWriterPerThread

#if !defined (OrgApacheLuceneIndexFreqProxTermsWriterPerThread_) && (INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriterPerThread || defined(INCLUDE_OrgApacheLuceneIndexFreqProxTermsWriterPerThread))
#define OrgApacheLuceneIndexFreqProxTermsWriterPerThread_

#define RESTRICT_OrgApacheLuceneIndexTermsHashConsumerPerThread 1
#define INCLUDE_OrgApacheLuceneIndexTermsHashConsumerPerThread 1
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"

@class OrgApacheLuceneIndexDocumentsWriter_DocState;
@class OrgApacheLuceneIndexDocumentsWriter_DocWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexTermsHashConsumerPerField;
@class OrgApacheLuceneIndexTermsHashPerField;
@class OrgApacheLuceneIndexTermsHashPerThread;

@interface OrgApacheLuceneIndexFreqProxTermsWriterPerThread : OrgApacheLuceneIndexTermsHashConsumerPerThread {
 @public
  OrgApacheLuceneIndexTermsHashPerThread *termsHashPerThread_;
  OrgApacheLuceneIndexDocumentsWriter_DocState *docState_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)perThread;

- (void)abort;

- (OrgApacheLuceneIndexTermsHashConsumerPerField *)addFieldWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)termsHashPerField
                                                                   withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

#pragma mark Package-Private

- (OrgApacheLuceneIndexDocumentsWriter_DocWriter *)finishDocument;

- (void)startDocument;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFreqProxTermsWriterPerThread)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerThread, termsHashPerThread_, OrgApacheLuceneIndexTermsHashPerThread *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFreqProxTermsWriterPerThread, docState_, OrgApacheLuceneIndexDocumentsWriter_DocState *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexFreqProxTermsWriterPerThread *self, OrgApacheLuceneIndexTermsHashPerThread *perThread);

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxTermsWriterPerThread *new_OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexTermsHashPerThread *perThread) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFreqProxTermsWriterPerThread *create_OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexTermsHashPerThread *perThread);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFreqProxTermsWriterPerThread)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFreqProxTermsWriterPerThread")
