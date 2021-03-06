//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FormatPostingsTermsWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/index/DefaultSkipListWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FormatPostingsDocsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsDocsWriter.h"
#include "org/apache/lucene/index/FormatPostingsFieldsWriter.h"
#include "org/apache/lucene/index/FormatPostingsPositionsWriter.h"
#include "org/apache/lucene/index/FormatPostingsTermsConsumer.h"
#include "org/apache/lucene/index/FormatPostingsTermsWriter.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/index/TermInfosWriter.h"
#include "org/apache/lucene/store/IndexOutput.h"

@implementation OrgApacheLuceneIndexFormatPostingsTermsWriter

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
           withOrgApacheLuceneIndexFormatPostingsFieldsWriter:(OrgApacheLuceneIndexFormatPostingsFieldsWriter *)parent {
  OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(self, state, parent);
  return self;
}

- (void)setFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  [((OrgApacheLuceneIndexFormatPostingsDocsWriter *) nil_chk(docsWriter_)) setFieldWithOrgApacheLuceneIndexFieldInfo:fieldInfo];
}

- (OrgApacheLuceneIndexFormatPostingsDocsConsumer *)addTermWithCharArray:(IOSCharArray *)text
                                                                 withInt:(jint)start {
  JreStrongAssign(&currentTerm_, text);
  currentTermStart_ = start;
  freqStart_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(((OrgApacheLuceneIndexFormatPostingsDocsWriter *) nil_chk(docsWriter_))->out_)) getFilePointer];
  if (((OrgApacheLuceneIndexFormatPostingsPositionsWriter *) nil_chk(docsWriter_->posWriter_))->out_ != nil) proxStart_ = [docsWriter_->posWriter_->out_ getFilePointer];
  [((OrgApacheLuceneIndexDefaultSkipListWriter *) nil_chk(((OrgApacheLuceneIndexFormatPostingsFieldsWriter *) nil_chk(parent_))->skipListWriter_)) resetSkip];
  return docsWriter_;
}

- (void)finish {
}

- (void)close {
  [((OrgApacheLuceneIndexFormatPostingsDocsWriter *) nil_chk(docsWriter_)) close];
}

- (void)dealloc {
  RELEASE_(parent_);
  RELEASE_(docsWriter_);
  RELEASE_(termsOut_);
  RELEASE_(fieldInfo_);
  RELEASE_(currentTerm_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFormatPostingsDocsConsumer;", 0x0, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneIndexFormatPostingsFieldsWriter:);
  methods[1].selector = @selector(setFieldWithOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(addTermWithCharArray:withInt:);
  methods[3].selector = @selector(finish);
  methods[4].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "parent_", "LOrgApacheLuceneIndexFormatPostingsFieldsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docsWriter_", "LOrgApacheLuceneIndexFormatPostingsDocsWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termsOut_", "LOrgApacheLuceneIndexTermInfosWriter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fieldInfo_", "LOrgApacheLuceneIndexFieldInfo;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "currentTerm_", "[C", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "currentTermStart_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "freqStart_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "proxStart_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSegmentWriteState;LOrgApacheLuceneIndexFormatPostingsFieldsWriter;", "LJavaIoIOException;", "setField", "LOrgApacheLuceneIndexFieldInfo;", "addTerm", "[CI" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFormatPostingsTermsWriter = { "FormatPostingsTermsWriter", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 8, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFormatPostingsTermsWriter;
}

@end

void OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(OrgApacheLuceneIndexFormatPostingsTermsWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent) {
  OrgApacheLuceneIndexFormatPostingsTermsConsumer_init(self);
  JreStrongAssign(&self->parent_, parent);
  JreStrongAssign(&self->termsOut_, ((OrgApacheLuceneIndexFormatPostingsFieldsWriter *) nil_chk(parent))->termsOut_);
  JreStrongAssignAndConsume(&self->docsWriter_, new_OrgApacheLuceneIndexFormatPostingsDocsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsTermsWriter_(state, self));
}

OrgApacheLuceneIndexFormatPostingsTermsWriter *new_OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFormatPostingsTermsWriter, initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_, state, parent)
}

OrgApacheLuceneIndexFormatPostingsTermsWriter *create_OrgApacheLuceneIndexFormatPostingsTermsWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneIndexFormatPostingsFieldsWriter *parent) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFormatPostingsTermsWriter, initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneIndexFormatPostingsFieldsWriter_, state, parent)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFormatPostingsTermsWriter)
