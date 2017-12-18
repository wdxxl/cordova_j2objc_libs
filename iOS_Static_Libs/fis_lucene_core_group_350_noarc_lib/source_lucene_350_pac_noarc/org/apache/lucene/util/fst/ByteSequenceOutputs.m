//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/fst/ByteSequenceOutputs.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/fst/ByteSequenceOutputs.h"
#include "org/apache/lucene/util/fst/Outputs.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneUtilFstByteSequenceOutputs ()

- (instancetype)init;

@end

inline OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilFstByteSequenceOutputs_get_NO_OUTPUT();
static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilFstByteSequenceOutputs, NO_OUTPUT, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static void OrgApacheLuceneUtilFstByteSequenceOutputs_init(OrgApacheLuceneUtilFstByteSequenceOutputs *self);

__attribute__((unused)) static OrgApacheLuceneUtilFstByteSequenceOutputs *new_OrgApacheLuceneUtilFstByteSequenceOutputs_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilFstByteSequenceOutputs *create_OrgApacheLuceneUtilFstByteSequenceOutputs_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstByteSequenceOutputs)

@implementation OrgApacheLuceneUtilFstByteSequenceOutputs

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilFstByteSequenceOutputs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilFstByteSequenceOutputs *)getSingleton {
  return OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton();
}

- (OrgApacheLuceneUtilBytesRef *)commonWithId:(OrgApacheLuceneUtilBytesRef *)output1
                                       withId:(OrgApacheLuceneUtilBytesRef *)output2 {
  JreAssert((output1 != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:45 condition failed: assert output1 != null;"));
  JreAssert((output2 != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:46 condition failed: assert output2 != null;"));
  jint pos1 = ((OrgApacheLuceneUtilBytesRef *) nil_chk(output1))->offset_;
  jint pos2 = ((OrgApacheLuceneUtilBytesRef *) nil_chk(output2))->offset_;
  jint stopAt1 = pos1 + JavaLangMath_minWithInt_withInt_(output1->length_, output2->length_);
  while (pos1 < stopAt1) {
    if (IOSByteArray_Get(nil_chk(output1->bytes_), pos1) != IOSByteArray_Get(output2->bytes_, pos2)) {
      break;
    }
    pos1++;
    pos2++;
  }
  if (pos1 == output1->offset_) {
    return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT;
  }
  else if (pos1 == output1->offset_ + output1->length_) {
    return output1;
  }
  else if (pos2 == output2->offset_ + output2->length_) {
    return output2;
  }
  else {
    return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(output1->bytes_, output1->offset_, pos1 - output1->offset_);
  }
}

- (OrgApacheLuceneUtilBytesRef *)subtractWithId:(OrgApacheLuceneUtilBytesRef *)output
                                         withId:(OrgApacheLuceneUtilBytesRef *)inc {
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:75 condition failed: assert output != null;"));
  JreAssert((inc != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:76 condition failed: assert inc != null;"));
  if (inc == OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT) {
    return output;
  }
  else if (((OrgApacheLuceneUtilBytesRef *) nil_chk(inc))->length_ == ((OrgApacheLuceneUtilBytesRef *) nil_chk(output))->length_) {
    return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT;
  }
  else {
    JreAssert((inc->length_ < output->length_), (JreStrcat("$I$I", @"inc.length=", inc->length_, @" vs output.length=", output->length_)));
    JreAssert((inc->length_ > 0), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:85 condition failed: assert inc.length > 0;"));
    return create_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(output->bytes_, output->offset_ + inc->length_, output->length_ - inc->length_);
  }
}

- (OrgApacheLuceneUtilBytesRef *)addWithId:(OrgApacheLuceneUtilBytesRef *)prefix
                                    withId:(OrgApacheLuceneUtilBytesRef *)output {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:92 condition failed: assert prefix != null;"));
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:93 condition failed: assert output != null;"));
  if (prefix == OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT) {
    return output;
  }
  else if (output == OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT) {
    return prefix;
  }
  else {
    JreAssert((((OrgApacheLuceneUtilBytesRef *) nil_chk(prefix))->length_ > 0), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:99 condition failed: assert prefix.length > 0;"));
    JreAssert((((OrgApacheLuceneUtilBytesRef *) nil_chk(output))->length_ > 0), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:100 condition failed: assert output.length > 0;"));
    OrgApacheLuceneUtilBytesRef *result = create_OrgApacheLuceneUtilBytesRef_initWithInt_(prefix->length_ + output->length_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(prefix->bytes_, prefix->offset_, result->bytes_, 0, prefix->length_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output->bytes_, output->offset_, result->bytes_, prefix->length_, output->length_);
    result->length_ = prefix->length_ + output->length_;
    return result;
  }
}

- (void)writeWithId:(OrgApacheLuceneUtilBytesRef *)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:111 condition failed: assert prefix != null;"));
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(prefix))->length_];
  [outArg writeBytesWithByteArray:prefix->bytes_ withInt:prefix->offset_ withInt:prefix->length_];
}

- (OrgApacheLuceneUtilBytesRef *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  if (len == 0) {
    return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT;
  }
  else {
    OrgApacheLuceneUtilBytesRef *output = create_OrgApacheLuceneUtilBytesRef_initWithInt_(len);
    [inArg readBytesWithByteArray:output->bytes_ withInt:0 withInt:len];
    output->length_ = len;
    return output;
  }
}

- (OrgApacheLuceneUtilBytesRef *)getNoOutput {
  return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT;
}

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilBytesRef *)output {
  return [((OrgApacheLuceneUtilBytesRef *) nil_chk(output)) utf8ToString];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilFstByteSequenceOutputs;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, 7, 8, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSingleton);
  methods[2].selector = @selector(commonWithId:withId:);
  methods[3].selector = @selector(subtractWithId:withId:);
  methods[4].selector = @selector(addWithId:withId:);
  methods[5].selector = @selector(writeWithId:withOrgApacheLuceneStoreDataOutput:);
  methods[6].selector = @selector(readWithOrgApacheLuceneStoreDataInput:);
  methods[7].selector = @selector(getNoOutput);
  methods[8].selector = @selector(outputToStringWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "common", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;", "subtract", "add", "write", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneStoreDataOutput;", "LJavaIoIOException;", "read", "LOrgApacheLuceneStoreDataInput;", "outputToString", "LOrgApacheLuceneUtilBytesRef;", &OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT, "Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/BytesRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstByteSequenceOutputs = { "ByteSequenceOutputs", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x11, 9, 1, -1, -1, -1, 12, -1 };
  return &_OrgApacheLuceneUtilFstByteSequenceOutputs;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstByteSequenceOutputs class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT, new_OrgApacheLuceneUtilBytesRef_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstByteSequenceOutputs)
  }
}

@end

void OrgApacheLuceneUtilFstByteSequenceOutputs_init(OrgApacheLuceneUtilFstByteSequenceOutputs *self) {
  OrgApacheLuceneUtilFstOutputs_init(self);
}

OrgApacheLuceneUtilFstByteSequenceOutputs *new_OrgApacheLuceneUtilFstByteSequenceOutputs_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstByteSequenceOutputs, init)
}

OrgApacheLuceneUtilFstByteSequenceOutputs *create_OrgApacheLuceneUtilFstByteSequenceOutputs_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstByteSequenceOutputs, init)
}

OrgApacheLuceneUtilFstByteSequenceOutputs *OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton() {
  OrgApacheLuceneUtilFstByteSequenceOutputs_initialize();
  return create_OrgApacheLuceneUtilFstByteSequenceOutputs_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstByteSequenceOutputs)
