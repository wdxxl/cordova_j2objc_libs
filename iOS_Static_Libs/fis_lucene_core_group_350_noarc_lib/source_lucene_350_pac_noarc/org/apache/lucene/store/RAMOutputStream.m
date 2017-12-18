//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/RAMOutputStream.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/store/RAMFile.h"
#include "org/apache/lucene/store/RAMOutputStream.h"

@interface OrgApacheLuceneStoreRAMOutputStream () {
 @public
  OrgApacheLuceneStoreRAMFile *file_;
  IOSByteArray *currentBuffer_;
  jint currentBufferIndex_;
  jint bufferPosition_;
  jlong bufferStart_;
  jint bufferLength_;
}

- (void)switchCurrentBuffer;

- (void)setFileLength;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMOutputStream, file_, OrgApacheLuceneStoreRAMFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreRAMOutputStream, currentBuffer_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(OrgApacheLuceneStoreRAMOutputStream *self);

__attribute__((unused)) static void OrgApacheLuceneStoreRAMOutputStream_setFileLength(OrgApacheLuceneStoreRAMOutputStream *self);

@implementation OrgApacheLuceneStoreRAMOutputStream

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreRAMOutputStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)f {
  OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(self, f);
  return self;
}

- (void)writeToWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)outArg {
  [self flush];
  jlong end = ((OrgApacheLuceneStoreRAMFile *) nil_chk(file_))->length_;
  jlong pos = 0;
  jint buffer = 0;
  while (pos < end) {
    jint length = OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE;
    jlong nextPos = pos + length;
    if (nextPos > end) {
      length = (jint) (end - pos);
    }
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outArg)) writeBytesWithByteArray:[((OrgApacheLuceneStoreRAMFile *) nil_chk(file_)) getBufferWithInt:buffer++] withInt:length];
    pos = nextPos;
  }
}

- (void)reset {
  JreStrongAssign(&currentBuffer_, nil);
  currentBufferIndex_ = -1;
  bufferPosition_ = 0;
  bufferStart_ = 0;
  bufferLength_ = 0;
  [((OrgApacheLuceneStoreRAMFile *) nil_chk(file_)) setLengthWithLong:0];
}

- (void)close {
  [self flush];
}

- (void)seekWithLong:(jlong)pos {
  OrgApacheLuceneStoreRAMOutputStream_setFileLength(self);
  if (pos < bufferStart_ || pos >= bufferStart_ + bufferLength_) {
    currentBufferIndex_ = (jint) (pos / OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE);
    OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
  }
  bufferPosition_ = (jint) (pos % OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE);
}

- (jlong)length {
  return ((OrgApacheLuceneStoreRAMFile *) nil_chk(file_))->length_;
}

- (void)writeByteWithByte:(jbyte)b {
  if (bufferPosition_ == bufferLength_) {
    currentBufferIndex_++;
    OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
  }
  *IOSByteArray_GetRef(nil_chk(currentBuffer_), bufferPosition_++) = b;
}

- (void)writeBytesWithByteArray:(IOSByteArray *)b
                        withInt:(jint)offset
                        withInt:(jint)len {
  JreAssert((b != nil), (@"org/apache/lucene/store/RAMOutputStream.java:114 condition failed: assert b != null;"));
  while (len > 0) {
    if (bufferPosition_ == bufferLength_) {
      currentBufferIndex_++;
      OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
    }
    jint remainInBuffer = ((IOSByteArray *) nil_chk(currentBuffer_))->size_ - bufferPosition_;
    jint bytesToCopy = len < remainInBuffer ? len : remainInBuffer;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(b, offset, currentBuffer_, bufferPosition_, bytesToCopy);
    offset += bytesToCopy;
    len -= bytesToCopy;
    bufferPosition_ += bytesToCopy;
  }
}

- (void)switchCurrentBuffer {
  OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
}

- (void)setFileLength {
  OrgApacheLuceneStoreRAMOutputStream_setFileLength(self);
}

- (void)flush {
  [((OrgApacheLuceneStoreRAMFile *) nil_chk(file_)) setLastModifiedWithLong:JavaLangSystem_currentTimeMillis()];
  OrgApacheLuceneStoreRAMOutputStream_setFileLength(self);
}

- (jlong)getFilePointer {
  return currentBufferIndex_ < 0 ? 0 : bufferStart_ + bufferPosition_;
}

- (jlong)sizeInBytes {
  return [((OrgApacheLuceneStoreRAMFile *) nil_chk(file_)) numBuffers] * OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE;
}

- (void)copyBytesWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input
                                          withLong:(jlong)numBytes {
  JreAssert((numBytes >= 0), (JreStrcat("$J", @"numBytes=", numBytes)));
  while (numBytes > 0) {
    if (bufferPosition_ == bufferLength_) {
      currentBufferIndex_++;
      OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(self);
    }
    jint toCopy = ((IOSByteArray *) nil_chk(currentBuffer_))->size_ - bufferPosition_;
    if (numBytes < toCopy) {
      toCopy = (jint) numBytes;
    }
    [((OrgApacheLuceneStoreDataInput *) nil_chk(input)) readBytesWithByteArray:currentBuffer_ withInt:bufferPosition_ withInt:toCopy withBoolean:false];
    numBytes -= toCopy;
    bufferPosition_ += toCopy;
  }
}

- (void)dealloc {
  RELEASE_(file_);
  RELEASE_(currentBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 3, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreRAMFile:);
  methods[2].selector = @selector(writeToWithOrgApacheLuceneStoreIndexOutput:);
  methods[3].selector = @selector(reset);
  methods[4].selector = @selector(close);
  methods[5].selector = @selector(seekWithLong:);
  methods[6].selector = @selector(length);
  methods[7].selector = @selector(writeByteWithByte:);
  methods[8].selector = @selector(writeBytesWithByteArray:withInt:withInt:);
  methods[9].selector = @selector(switchCurrentBuffer);
  methods[10].selector = @selector(setFileLength);
  methods[11].selector = @selector(flush);
  methods[12].selector = @selector(getFilePointer);
  methods[13].selector = @selector(sizeInBytes);
  methods[14].selector = @selector(copyBytesWithOrgApacheLuceneStoreDataInput:withLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BUFFER_SIZE", "I", .constantValue.asInt = OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE, 0x18, -1, -1, -1, -1 },
    { "file_", "LOrgApacheLuceneStoreRAMFile;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentBuffer_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentBufferIndex_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferPosition_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferStart_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreRAMFile;", "writeTo", "LOrgApacheLuceneStoreIndexOutput;", "LJavaIoIOException;", "seek", "J", "writeByte", "B", "writeBytes", "[BII", "copyBytes", "LOrgApacheLuceneStoreDataInput;J" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreRAMOutputStream = { "RAMOutputStream", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x1, 15, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreRAMOutputStream;
}

@end

void OrgApacheLuceneStoreRAMOutputStream_init(OrgApacheLuceneStoreRAMOutputStream *self) {
  OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(self, create_OrgApacheLuceneStoreRAMFile_init());
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMOutputStream, init)
}

OrgApacheLuceneStoreRAMOutputStream *create_OrgApacheLuceneStoreRAMOutputStream_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMOutputStream, init)
}

void OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMOutputStream *self, OrgApacheLuceneStoreRAMFile *f) {
  OrgApacheLuceneStoreIndexOutput_init(self);
  JreStrongAssign(&self->file_, f);
  self->currentBufferIndex_ = -1;
  JreStrongAssign(&self->currentBuffer_, nil);
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMFile *f) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreRAMOutputStream, initWithOrgApacheLuceneStoreRAMFile_, f)
}

OrgApacheLuceneStoreRAMOutputStream *create_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMFile *f) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreRAMOutputStream, initWithOrgApacheLuceneStoreRAMFile_, f)
}

void OrgApacheLuceneStoreRAMOutputStream_switchCurrentBuffer(OrgApacheLuceneStoreRAMOutputStream *self) {
  if (self->currentBufferIndex_ == [((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_)) numBuffers]) {
    JreStrongAssign(&self->currentBuffer_, [((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_)) addBufferWithInt:OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE]);
  }
  else {
    JreStrongAssign(&self->currentBuffer_, [((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_)) getBufferWithInt:self->currentBufferIndex_]);
  }
  self->bufferPosition_ = 0;
  self->bufferStart_ = (jlong) OrgApacheLuceneStoreRAMOutputStream_BUFFER_SIZE * (jlong) self->currentBufferIndex_;
  self->bufferLength_ = ((IOSByteArray *) nil_chk(self->currentBuffer_))->size_;
}

void OrgApacheLuceneStoreRAMOutputStream_setFileLength(OrgApacheLuceneStoreRAMOutputStream *self) {
  jlong pointer = self->bufferStart_ + self->bufferPosition_;
  if (pointer > ((OrgApacheLuceneStoreRAMFile *) nil_chk(self->file_))->length_) {
    [self->file_ setLengthWithLong:pointer];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreRAMOutputStream)