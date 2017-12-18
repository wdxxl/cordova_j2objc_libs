//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/MultiLevelSkipListReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/MultiLevelSkipListReader.h"
#include "org/apache/lucene/store/BufferedIndexInput.h"
#include "org/apache/lucene/store/IndexInput.h"

@interface OrgApacheLuceneIndexMultiLevelSkipListReader () {
 @public
  jint maxNumberOfSkipLevels_;
  jint numberOfSkipLevels_;
  jint numberOfLevelsToBuffer_;
  jint docCount_;
  jboolean haveSkipped_;
  IOSObjectArray *skipStream_;
  IOSLongArray *skipPointer_;
  IOSIntArray *skipInterval_;
  IOSIntArray *numSkipped_;
  IOSIntArray *skipDoc_;
  jint lastDoc_;
  IOSLongArray *childPointer_;
  jlong lastChildPointer_;
  jboolean inputIsBuffered_;
}

- (jboolean)loadNextSkipWithInt:(jint)level;

- (void)loadSkipLevels;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader, skipStream_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader, skipPointer_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader, skipInterval_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader, numSkipped_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader, skipDoc_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader, childPointer_, IOSLongArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneIndexMultiLevelSkipListReader_loadNextSkipWithInt_(OrgApacheLuceneIndexMultiLevelSkipListReader *self, jint level);

__attribute__((unused)) static void OrgApacheLuceneIndexMultiLevelSkipListReader_loadSkipLevels(OrgApacheLuceneIndexMultiLevelSkipListReader *self);

@interface OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer : OrgApacheLuceneStoreIndexInput {
 @public
  IOSByteArray *data_;
  jlong pointer_;
  jint pos_;
}

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                               withInt:(jint)length;

- (void)close;

- (jlong)getFilePointer;

- (jlong)length;

- (jbyte)readByte;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

- (void)seekWithLong:(jlong)pos;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer, data_, IOSByteArray *)

__attribute__((unused)) static void OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer *self, OrgApacheLuceneStoreIndexInput *input, jint length);

__attribute__((unused)) static OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer *new_OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *input, jint length) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer *create_OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *input, jint length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer)

@implementation OrgApacheLuceneIndexMultiLevelSkipListReader

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)skipStream
                                               withInt:(jint)maxSkipLevels
                                               withInt:(jint)skipInterval {
  OrgApacheLuceneIndexMultiLevelSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_(self, skipStream, maxSkipLevels, skipInterval);
  return self;
}

- (jint)getDoc {
  return lastDoc_;
}

- (jint)skipToWithInt:(jint)target {
  if (!haveSkipped_) {
    OrgApacheLuceneIndexMultiLevelSkipListReader_loadSkipLevels(self);
    haveSkipped_ = true;
  }
  jint level = 0;
  while (level < numberOfSkipLevels_ - 1 && target > IOSIntArray_Get(nil_chk(skipDoc_), level + 1)) {
    level++;
  }
  while (level >= 0) {
    if (target > IOSIntArray_Get(nil_chk(skipDoc_), level)) {
      if (!OrgApacheLuceneIndexMultiLevelSkipListReader_loadNextSkipWithInt_(self, level)) {
        continue;
      }
    }
    else {
      if (level > 0 && lastChildPointer_ > [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(skipStream_), level - 1))) getFilePointer]) {
        [self seekChildWithInt:level - 1];
      }
      level--;
    }
  }
  return IOSIntArray_Get(nil_chk(numSkipped_), 0) - IOSIntArray_Get(nil_chk(skipInterval_), 0) - 1;
}

- (jboolean)loadNextSkipWithInt:(jint)level {
  return OrgApacheLuceneIndexMultiLevelSkipListReader_loadNextSkipWithInt_(self, level);
}

- (void)seekChildWithInt:(jint)level {
  [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(skipStream_), level))) seekWithLong:lastChildPointer_];
  *IOSIntArray_GetRef(nil_chk(numSkipped_), level) = IOSIntArray_Get(numSkipped_, level + 1) - IOSIntArray_Get(nil_chk(skipInterval_), level + 1);
  *IOSIntArray_GetRef(nil_chk(skipDoc_), level) = lastDoc_;
  if (level > 0) {
    *IOSLongArray_GetRef(nil_chk(childPointer_), level) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(skipStream_), level))) readVLong] + IOSLongArray_Get(nil_chk(skipPointer_), level - 1);
  }
}

- (void)close {
  for (jint i = 1; i < ((IOSObjectArray *) nil_chk(skipStream_))->size_; i++) {
    if (IOSObjectArray_Get(skipStream_, i) != nil) {
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(skipStream_, i))) close];
    }
  }
}

- (void)init__WithLong:(jlong)skipPointer
               withInt:(jint)df {
  *IOSLongArray_GetRef(nil_chk(self->skipPointer_), 0) = skipPointer;
  self->docCount_ = df;
  JavaUtilArrays_fillWithIntArray_withInt_(skipDoc_, 0);
  JavaUtilArrays_fillWithIntArray_withInt_(numSkipped_, 0);
  JavaUtilArrays_fillWithLongArray_withLong_(childPointer_, 0);
  haveSkipped_ = false;
  for (jint i = 1; i < numberOfSkipLevels_; i++) {
    IOSObjectArray_Set(nil_chk(skipStream_), i, nil);
  }
}

- (void)loadSkipLevels {
  OrgApacheLuceneIndexMultiLevelSkipListReader_loadSkipLevels(self);
}

- (jint)readSkipDataWithInt:(jint)level
withOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)skipStream {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)setLastSkipDataWithInt:(jint)level {
  lastDoc_ = IOSIntArray_Get(nil_chk(skipDoc_), level);
  lastChildPointer_ = IOSLongArray_Get(nil_chk(childPointer_), level);
}

- (void)dealloc {
  RELEASE_(skipStream_);
  RELEASE_(skipPointer_);
  RELEASE_(skipInterval_);
  RELEASE_(numSkipped_);
  RELEASE_(skipDoc_);
  RELEASE_(childPointer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 1, 2, 3, -1, -1, -1 },
    { NULL, "Z", 0x2, 4, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 5, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x0, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x404, 8, 9, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 10, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreIndexInput:withInt:withInt:);
  methods[1].selector = @selector(getDoc);
  methods[2].selector = @selector(skipToWithInt:);
  methods[3].selector = @selector(loadNextSkipWithInt:);
  methods[4].selector = @selector(seekChildWithInt:);
  methods[5].selector = @selector(close);
  methods[6].selector = @selector(init__WithLong:withInt:);
  methods[7].selector = @selector(loadSkipLevels);
  methods[8].selector = @selector(readSkipDataWithInt:withOrgApacheLuceneStoreIndexInput:);
  methods[9].selector = @selector(setLastSkipDataWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxNumberOfSkipLevels_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "numberOfSkipLevels_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "numberOfLevelsToBuffer_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "haveSkipped_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "skipStream_", "[LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "skipPointer_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "skipInterval_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "numSkipped_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "skipDoc_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "childPointer_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastChildPointer_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inputIsBuffered_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreIndexInput;II", "skipTo", "I", "LJavaIoIOException;", "loadNextSkip", "seekChild", "init", "JI", "readSkipData", "ILOrgApacheLuceneStoreIndexInput;", "setLastSkipData", "LOrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMultiLevelSkipListReader = { "MultiLevelSkipListReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x400, 10, 14, -1, 11, -1, -1, -1 };
  return &_OrgApacheLuceneIndexMultiLevelSkipListReader;
}

@end

void OrgApacheLuceneIndexMultiLevelSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_(OrgApacheLuceneIndexMultiLevelSkipListReader *self, OrgApacheLuceneStoreIndexInput *skipStream, jint maxSkipLevels, jint skipInterval) {
  NSObject_init(self);
  self->numberOfLevelsToBuffer_ = 1;
  JreStrongAssignAndConsume(&self->skipStream_, [IOSObjectArray newArrayWithLength:maxSkipLevels type:OrgApacheLuceneStoreIndexInput_class_()]);
  JreStrongAssignAndConsume(&self->skipPointer_, [IOSLongArray newArrayWithLength:maxSkipLevels]);
  JreStrongAssignAndConsume(&self->childPointer_, [IOSLongArray newArrayWithLength:maxSkipLevels]);
  JreStrongAssignAndConsume(&self->numSkipped_, [IOSIntArray newArrayWithLength:maxSkipLevels]);
  self->maxNumberOfSkipLevels_ = maxSkipLevels;
  JreStrongAssignAndConsume(&self->skipInterval_, [IOSIntArray newArrayWithLength:maxSkipLevels]);
  IOSObjectArray_Set(self->skipStream_, 0, skipStream);
  self->inputIsBuffered_ = ([skipStream isKindOfClass:[OrgApacheLuceneStoreBufferedIndexInput class]]);
  *IOSIntArray_GetRef(self->skipInterval_, 0) = skipInterval;
  for (jint i = 1; i < maxSkipLevels; i++) {
    *IOSIntArray_GetRef(self->skipInterval_, i) = IOSIntArray_Get(self->skipInterval_, i - 1) * skipInterval;
  }
  JreStrongAssignAndConsume(&self->skipDoc_, [IOSIntArray newArrayWithLength:maxSkipLevels]);
}

jboolean OrgApacheLuceneIndexMultiLevelSkipListReader_loadNextSkipWithInt_(OrgApacheLuceneIndexMultiLevelSkipListReader *self, jint level) {
  [self setLastSkipDataWithInt:level];
  *IOSIntArray_GetRef(nil_chk(self->numSkipped_), level) += IOSIntArray_Get(nil_chk(self->skipInterval_), level);
  if (IOSIntArray_Get(self->numSkipped_, level) > self->docCount_) {
    *IOSIntArray_GetRef(nil_chk(self->skipDoc_), level) = JavaLangInteger_MAX_VALUE;
    if (self->numberOfSkipLevels_ > level) self->numberOfSkipLevels_ = level;
    return false;
  }
  *IOSIntArray_GetRef(nil_chk(self->skipDoc_), level) += [self readSkipDataWithInt:level withOrgApacheLuceneStoreIndexInput:IOSObjectArray_Get(nil_chk(self->skipStream_), level)];
  if (level != 0) {
    *IOSLongArray_GetRef(nil_chk(self->childPointer_), level) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), level))) readVLong] + IOSLongArray_Get(nil_chk(self->skipPointer_), level - 1);
  }
  return true;
}

void OrgApacheLuceneIndexMultiLevelSkipListReader_loadSkipLevels(OrgApacheLuceneIndexMultiLevelSkipListReader *self) {
  self->numberOfSkipLevels_ = self->docCount_ == 0 ? 0 : JreFpToInt(JavaLangMath_floorWithDouble_(JavaLangMath_logWithDouble_(self->docCount_) / JavaLangMath_logWithDouble_(IOSIntArray_Get(nil_chk(self->skipInterval_), 0))));
  if (self->numberOfSkipLevels_ > self->maxNumberOfSkipLevels_) {
    self->numberOfSkipLevels_ = self->maxNumberOfSkipLevels_;
  }
  [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), 0))) seekWithLong:IOSLongArray_Get(nil_chk(self->skipPointer_), 0)];
  jint toBuffer = self->numberOfLevelsToBuffer_;
  for (jint i = self->numberOfSkipLevels_ - 1; i > 0; i--) {
    jlong length = [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), 0))) readVLong];
    *IOSLongArray_GetRef(nil_chk(self->skipPointer_), i) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), 0))) getFilePointer];
    if (toBuffer > 0) {
      IOSObjectArray_SetAndConsume(nil_chk(self->skipStream_), i, new_OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(IOSObjectArray_Get(self->skipStream_, 0), (jint) length));
      toBuffer--;
    }
    else {
      IOSObjectArray_Set(nil_chk(self->skipStream_), i, (OrgApacheLuceneStoreIndexInput *) cast_chk([((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(self->skipStream_, 0))) java_clone], [OrgApacheLuceneStoreIndexInput class]));
      if (self->inputIsBuffered_ && length < OrgApacheLuceneStoreBufferedIndexInput_BUFFER_SIZE) {
        [((OrgApacheLuceneStoreBufferedIndexInput *) nil_chk(((OrgApacheLuceneStoreBufferedIndexInput *) cast_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), i), [OrgApacheLuceneStoreBufferedIndexInput class])))) setBufferSizeWithInt:(jint) length];
      }
      [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), 0))) seekWithLong:[((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(self->skipStream_, 0))) getFilePointer] + length];
    }
  }
  *IOSLongArray_GetRef(nil_chk(self->skipPointer_), 0) = [((OrgApacheLuceneStoreIndexInput *) nil_chk(IOSObjectArray_Get(nil_chk(self->skipStream_), 0))) getFilePointer];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMultiLevelSkipListReader)

@implementation OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input
                                               withInt:(jint)length {
  OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(self, input, length);
  return self;
}

- (void)close {
  JreStrongAssign(&data_, nil);
}

- (jlong)getFilePointer {
  return pointer_ + pos_;
}

- (jlong)length {
  return ((IOSByteArray *) nil_chk(data_))->size_;
}

- (jbyte)readByte {
  return IOSByteArray_Get(nil_chk(data_), pos_++);
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data_, pos_, b, offset, len);
  pos_ += len;
}

- (void)seekWithLong:(jlong)pos {
  self->pos_ = (jint) (pos - pointer_);
}

- (void)dealloc {
  RELEASE_(data_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreIndexInput:withInt:);
  methods[1].selector = @selector(close);
  methods[2].selector = @selector(getFilePointer);
  methods[3].selector = @selector(length);
  methods[4].selector = @selector(readByte);
  methods[5].selector = @selector(readBytesWithByteArray:withInt:withInt:);
  methods[6].selector = @selector(seekWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "data_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pointer_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreIndexInput;I", "LJavaIoIOException;", "readBytes", "[BII", "seek", "J", "LOrgApacheLuceneIndexMultiLevelSkipListReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer = { "SkipBuffer", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1a, 7, 3, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer;
}

@end

void OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer *self, OrgApacheLuceneStoreIndexInput *input, jint length) {
  OrgApacheLuceneStoreIndexInput_initWithNSString_(self, JreStrcat("$@", @"SkipBuffer on ", input));
  JreStrongAssignAndConsume(&self->data_, [IOSByteArray newArrayWithLength:length]);
  self->pointer_ = [((OrgApacheLuceneStoreIndexInput *) nil_chk(input)) getFilePointer];
  [input readBytesWithByteArray:self->data_ withInt:0 withInt:length];
}

OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer *new_OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *input, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer, initWithOrgApacheLuceneStoreIndexInput_withInt_, input, length)
}

OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer *create_OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *input, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer, initWithOrgApacheLuceneStoreIndexInput_withInt_, input, length)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMultiLevelSkipListReader_SkipBuffer)