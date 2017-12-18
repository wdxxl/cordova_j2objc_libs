//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/fst/BytesRefFSTEnum.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/fst/BytesRefFSTEnum.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/FSTEnum.h"

@interface OrgApacheLuceneUtilFstBytesRefFSTEnum () {
 @public
  OrgApacheLuceneUtilBytesRef *current_;
  OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *result_;
  OrgApacheLuceneUtilBytesRef *target_;
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)setResult;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesRefFSTEnum, current_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesRefFSTEnum, result_, OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstBytesRefFSTEnum, target_, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(OrgApacheLuceneUtilFstBytesRefFSTEnum *self);

@implementation OrgApacheLuceneUtilFstBytesRefFSTEnum

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst {
  OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(self, fst);
  return self;
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)current {
  return result_;
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)next {
  [self doNext];
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target {
  JreStrongAssign(&self->target_, target);
  targetLength_ = ((OrgApacheLuceneUtilBytesRef *) nil_chk(target))->length_;
  [super doSeekCeil];
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)seekFloorWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)target {
  JreStrongAssign(&self->target_, target);
  targetLength_ = ((OrgApacheLuceneUtilBytesRef *) nil_chk(target))->length_;
  [super doSeekFloor];
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (jint)getTargetLabel {
  if (upto_ - 1 == ((OrgApacheLuceneUtilBytesRef *) nil_chk(target_))->length_) {
    return OrgApacheLuceneUtilFstFST_END_LABEL;
  }
  else {
    return IOSByteArray_Get(nil_chk(target_->bytes_), target_->offset_ + upto_ - 1) & (jint) 0xFF;
  }
}

- (jint)getCurrentLabel {
  return IOSByteArray_Get(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(current_))->bytes_), upto_) & (jint) 0xFF;
}

- (void)setCurrentLabelWithInt:(jint)label {
  *IOSByteArray_GetRef(nil_chk(((OrgApacheLuceneUtilBytesRef *) nil_chk(current_))->bytes_), upto_) = (jbyte) label;
}

- (void)grow {
  [((OrgApacheLuceneUtilBytesRef *) nil_chk(current_)) growWithInt:upto_ + 1];
}

- (OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *)setResult {
  return OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(self);
}

- (void)dealloc {
  RELEASE_(current_);
  RELEASE_(result_);
  RELEASE_(target_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", 0x1, -1, -1, 3, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", 0x1, 4, 5, 3, 6, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", 0x1, 7, 5, 3, 6, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", 0x2, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilFstFST:);
  methods[1].selector = @selector(current);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(seekCeilWithOrgApacheLuceneUtilBytesRef:);
  methods[4].selector = @selector(seekFloorWithOrgApacheLuceneUtilBytesRef:);
  methods[5].selector = @selector(getTargetLabel);
  methods[6].selector = @selector(getCurrentLabel);
  methods[7].selector = @selector(setCurrentLabelWithInt:);
  methods[8].selector = @selector(grow);
  methods[9].selector = @selector(setResult);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "current_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "result_", "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", .constantValue.asLong = 0, 0x12, -1, -1, 10, -1 },
    { "target_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilFstFST;", "(Lorg/apache/lucene/util/fst/FST<TT;>;)V", "()Lorg/apache/lucene/util/fst/BytesRefFSTEnum$InputOutput<TT;>;", "LJavaIoIOException;", "seekCeil", "LOrgApacheLuceneUtilBytesRef;", "(Lorg/apache/lucene/util/BytesRef;)Lorg/apache/lucene/util/fst/BytesRefFSTEnum$InputOutput<TT;>;", "seekFloor", "setCurrentLabel", "I", "Lorg/apache/lucene/util/fst/BytesRefFSTEnum$InputOutput<TT;>;", "LOrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;", "<T:Ljava/lang/Object;>Lorg/apache/lucene/util/fst/FSTEnum<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesRefFSTEnum = { "BytesRefFSTEnum", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x11, 10, 3, -1, 11, -1, 12, -1 };
  return &_OrgApacheLuceneUtilFstBytesRefFSTEnum;
}

@end

void OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstBytesRefFSTEnum *self, OrgApacheLuceneUtilFstFST *fst) {
  OrgApacheLuceneUtilFstFSTEnum_initWithOrgApacheLuceneUtilFstFST_(self, fst);
  JreStrongAssignAndConsume(&self->current_, new_OrgApacheLuceneUtilBytesRef_initWithInt_(10));
  JreStrongAssignAndConsume(&self->result_, new_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init());
  JreStrongAssign(&self->result_->input_, self->current_);
  self->current_->offset_ = 1;
}

OrgApacheLuceneUtilFstBytesRefFSTEnum *new_OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *fst) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstBytesRefFSTEnum, initWithOrgApacheLuceneUtilFstFST_, fst)
}

OrgApacheLuceneUtilFstBytesRefFSTEnum *create_OrgApacheLuceneUtilFstBytesRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *fst) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstBytesRefFSTEnum, initWithOrgApacheLuceneUtilFstFST_, fst)
}

OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *OrgApacheLuceneUtilFstBytesRefFSTEnum_setResult(OrgApacheLuceneUtilFstBytesRefFSTEnum *self) {
  if (self->upto_ == 0) {
    return nil;
  }
  else {
    ((OrgApacheLuceneUtilBytesRef *) nil_chk(self->current_))->length_ = self->upto_ - 1;
    JreStrongAssign(&((OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *) nil_chk(self->result_))->output_, IOSObjectArray_Get(nil_chk(self->output_), self->upto_));
    return self->result_;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesRefFSTEnum)

@implementation OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(input_);
  RELEASE_(output_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "input_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "output_", "LNSObject;", .constantValue.asLong = 0, 0x1, -1, -1, 0, -1 },
  };
  static const void *ptrTable[] = { "TT;", "LOrgApacheLuceneUtilFstBytesRefFSTEnum;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput = { "InputOutput", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x9, 1, 2, 1, -1, -1, 2, -1 };
  return &_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput;
}

@end

void OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init(OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *new_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput, init)
}

OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput *create_OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstBytesRefFSTEnum_InputOutput)
