//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FreqProxTermsWriterPerThread.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/DocumentsWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerField.h"
#include "org/apache/lucene/index/FreqProxTermsWriterPerThread.h"
#include "org/apache/lucene/index/TermsHashConsumerPerField.h"
#include "org/apache/lucene/index/TermsHashConsumerPerThread.h"
#include "org/apache/lucene/index/TermsHashPerField.h"
#include "org/apache/lucene/index/TermsHashPerThread.h"

@implementation OrgApacheLuceneIndexFreqProxTermsWriterPerThread

- (instancetype)initWithOrgApacheLuceneIndexTermsHashPerThread:(OrgApacheLuceneIndexTermsHashPerThread *)perThread {
  OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(self, perThread);
  return self;
}

- (OrgApacheLuceneIndexTermsHashConsumerPerField *)addFieldWithOrgApacheLuceneIndexTermsHashPerField:(OrgApacheLuceneIndexTermsHashPerField *)termsHashPerField
                                                                   withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  return create_OrgApacheLuceneIndexFreqProxTermsWriterPerField_initWithOrgApacheLuceneIndexTermsHashPerField_withOrgApacheLuceneIndexFreqProxTermsWriterPerThread_withOrgApacheLuceneIndexFieldInfo_(termsHashPerField, self, fieldInfo);
}

- (void)startDocument {
}

- (OrgApacheLuceneIndexDocumentsWriter_DocWriter *)finishDocument {
  return nil;
}

- (void)abort {
}

- (void)dealloc {
  RELEASE_(termsHashPerThread_);
  RELEASE_(docState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsHashConsumerPerField;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDocumentsWriter_DocWriter;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermsHashPerThread:);
  methods[1].selector = @selector(addFieldWithOrgApacheLuceneIndexTermsHashPerField:withOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(startDocument);
  methods[3].selector = @selector(finishDocument);
  methods[4].selector = @selector(abort);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termsHashPerThread_", "LOrgApacheLuceneIndexTermsHashPerThread;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docState_", "LOrgApacheLuceneIndexDocumentsWriter_DocState;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermsHashPerThread;", "addField", "LOrgApacheLuceneIndexTermsHashPerField;LOrgApacheLuceneIndexFieldInfo;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFreqProxTermsWriterPerThread = { "FreqProxTermsWriterPerThread", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFreqProxTermsWriterPerThread;
}

@end

void OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexFreqProxTermsWriterPerThread *self, OrgApacheLuceneIndexTermsHashPerThread *perThread) {
  OrgApacheLuceneIndexTermsHashConsumerPerThread_init(self);
  JreStrongAssign(&self->docState_, ((OrgApacheLuceneIndexTermsHashPerThread *) nil_chk(perThread))->docState_);
  JreStrongAssign(&self->termsHashPerThread_, perThread);
}

OrgApacheLuceneIndexFreqProxTermsWriterPerThread *new_OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexTermsHashPerThread *perThread) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFreqProxTermsWriterPerThread, initWithOrgApacheLuceneIndexTermsHashPerThread_, perThread)
}

OrgApacheLuceneIndexFreqProxTermsWriterPerThread *create_OrgApacheLuceneIndexFreqProxTermsWriterPerThread_initWithOrgApacheLuceneIndexTermsHashPerThread_(OrgApacheLuceneIndexTermsHashPerThread *perThread) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFreqProxTermsWriterPerThread, initWithOrgApacheLuceneIndexTermsHashPerThread_, perThread)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFreqProxTermsWriterPerThread)
