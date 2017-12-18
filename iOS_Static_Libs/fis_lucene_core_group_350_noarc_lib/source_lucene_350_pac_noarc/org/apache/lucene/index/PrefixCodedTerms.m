//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/PrefixCodedTerms.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Iterable.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Iterator.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/index/PrefixCodedTerms.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/store/RAMFile.h"
#include "org/apache/lucene/store/RAMInputStream.h"
#include "org/apache/lucene/store/RAMOutputStream.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/StringHelper.h"

@interface OrgApacheLuceneIndexPrefixCodedTerms ()

- (instancetype)initWithOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)buffer;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneIndexPrefixCodedTerms *self, OrgApacheLuceneStoreRAMFile *buffer);

__attribute__((unused)) static OrgApacheLuceneIndexPrefixCodedTerms *new_OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMFile *buffer) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexPrefixCodedTerms *create_OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMFile *buffer);

@interface OrgApacheLuceneIndexPrefixCodedTerms_Builder () {
 @public
  OrgApacheLuceneStoreRAMFile *buffer_;
  OrgApacheLuceneStoreRAMOutputStream *output_;
  OrgApacheLuceneIndexTerm *lastTerm_;
  OrgApacheLuceneUtilBytesRef *lastBytes_;
  OrgApacheLuceneUtilBytesRef *scratch_;
}

- (jint)sharedPrefixWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term1
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term2;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_Builder, buffer_, OrgApacheLuceneStoreRAMFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_Builder, output_, OrgApacheLuceneStoreRAMOutputStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_Builder, lastTerm_, OrgApacheLuceneIndexTerm *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_Builder, lastBytes_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexPrefixCodedTerms_Builder, scratch_, OrgApacheLuceneUtilBytesRef *)

__attribute__((unused)) static jint OrgApacheLuceneIndexPrefixCodedTerms_Builder_sharedPrefixWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexPrefixCodedTerms_Builder *self, OrgApacheLuceneUtilBytesRef *term1, OrgApacheLuceneUtilBytesRef *term2);

@implementation OrgApacheLuceneIndexPrefixCodedTerms

- (instancetype)initWithOrgApacheLuceneStoreRAMFile:(OrgApacheLuceneStoreRAMFile *)buffer {
  OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(self, buffer);
  return self;
}

- (jlong)getSizeInBytes {
  return [((OrgApacheLuceneStoreRAMFile *) nil_chk(buffer_)) getSizeInBytes];
}

- (id<JavaUtilIterator>)iterator {
  return create_OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator_initWithOrgApacheLuceneIndexPrefixCodedTerms_(self);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreRAMFile:);
  methods[1].selector = @selector(getSizeInBytes);
  methods[2].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "LOrgApacheLuceneStoreRAMFile;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreRAMFile;", "()Ljava/util/Iterator<Lorg/apache/lucene/index/Term;>;", "LOrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator;LOrgApacheLuceneIndexPrefixCodedTerms_Builder;", "Ljava/lang/Object;Ljava/lang/Iterable<Lorg/apache/lucene/index/Term;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexPrefixCodedTerms = { "PrefixCodedTerms", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 3, 1, -1, 2, -1, 3, -1 };
  return &_OrgApacheLuceneIndexPrefixCodedTerms;
}

@end

void OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneIndexPrefixCodedTerms *self, OrgApacheLuceneStoreRAMFile *buffer) {
  NSObject_init(self);
  JreStrongAssign(&self->buffer_, buffer);
}

OrgApacheLuceneIndexPrefixCodedTerms *new_OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMFile *buffer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexPrefixCodedTerms, initWithOrgApacheLuceneStoreRAMFile_, buffer)
}

OrgApacheLuceneIndexPrefixCodedTerms *create_OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(OrgApacheLuceneStoreRAMFile *buffer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexPrefixCodedTerms, initWithOrgApacheLuceneStoreRAMFile_, buffer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexPrefixCodedTerms)

@implementation OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator

- (instancetype)initWithOrgApacheLuceneIndexPrefixCodedTerms:(OrgApacheLuceneIndexPrefixCodedTerms *)outer$ {
  OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator_initWithOrgApacheLuceneIndexPrefixCodedTerms_(self, outer$);
  return self;
}

- (jboolean)hasNext {
  return [((OrgApacheLuceneStoreIndexInput *) nil_chk(input_)) getFilePointer] < [input_ length];
}

- (OrgApacheLuceneIndexTerm *)next {
  JreAssert(([self hasNext]), (@"org/apache/lucene/index/PrefixCodedTerms.java:70 condition failed: assert hasNext();"));
  @try {
    jint code = [((OrgApacheLuceneStoreIndexInput *) nil_chk(input_)) readVInt];
    if ((code & 1) != 0) {
      JreStrongAssign(&field_, OrgApacheLuceneUtilStringHelper_internWithNSString_([input_ readString]));
    }
    jint prefix = JreURShift32(code, 1);
    jint suffix = [input_ readVInt];
    [((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes_)) growWithInt:prefix + suffix];
    [input_ readBytesWithByteArray:((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes_))->bytes_ withInt:prefix withInt:suffix];
    ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes_))->length_ = prefix + suffix;
    [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) setWithNSString:field_ withNSString:[bytes_ utf8ToString]];
    return term_;
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(input_);
  RELEASE_(field_);
  RELEASE_(bytes_);
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTerm;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexPrefixCodedTerms:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(remove);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "input_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "bytes_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "term_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexPrefixCodedTerms;", "Ljava/lang/Object;Ljava/util/Iterator<Lorg/apache/lucene/index/Term;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator = { "PrefixCodedTermsIterator", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 4, 4, 0, -1, -1, 1, -1 };
  return &_OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator;
}

@end

void OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator_initWithOrgApacheLuceneIndexPrefixCodedTerms_(OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator *self, OrgApacheLuceneIndexPrefixCodedTerms *outer$) {
  NSObject_init(self);
  JreStrongAssign(&self->field_, @"");
  JreStrongAssignAndConsume(&self->bytes_, new_OrgApacheLuceneUtilBytesRef_init());
  JreStrongAssignAndConsume(&self->term_, new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(self->field_, @""));
  @try {
    JreStrongAssignAndConsume(&self->input_, new_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(@"PrefixCodedTermsIterator", outer$->buffer_));
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator *new_OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator_initWithOrgApacheLuceneIndexPrefixCodedTerms_(OrgApacheLuceneIndexPrefixCodedTerms *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator, initWithOrgApacheLuceneIndexPrefixCodedTerms_, outer$)
}

OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator *create_OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator_initWithOrgApacheLuceneIndexPrefixCodedTerms_(OrgApacheLuceneIndexPrefixCodedTerms *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator, initWithOrgApacheLuceneIndexPrefixCodedTerms_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexPrefixCodedTerms_PrefixCodedTermsIterator)

@implementation OrgApacheLuceneIndexPrefixCodedTerms_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexPrefixCodedTerms_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  JreAssert(([((OrgApacheLuceneIndexTerm *) nil_chk(lastTerm_)) isEqual:create_OrgApacheLuceneIndexTerm_initWithNSString_(@"")] || [((OrgApacheLuceneIndexTerm *) nil_chk(term)) compareToWithId:lastTerm_] > 0), (@"org/apache/lucene/index/PrefixCodedTerms.java:104 condition failed: assert lastTerm.equals(new Term(\"\")) || term.compareTo(lastTerm) > 0;"));
  [((OrgApacheLuceneUtilBytesRef *) nil_chk(scratch_)) copy__WithJavaLangCharSequence:((OrgApacheLuceneIndexTerm *) nil_chk(term))->text_];
  @try {
    jint prefix = OrgApacheLuceneIndexPrefixCodedTerms_Builder_sharedPrefixWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self, lastBytes_, scratch_);
    jint suffix = ((OrgApacheLuceneUtilBytesRef *) nil_chk(scratch_))->length_ - prefix;
    if ([((NSString *) nil_chk(term->field_)) isEqual:((OrgApacheLuceneIndexTerm *) nil_chk(lastTerm_))->field_]) {
      [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(output_)) writeVIntWithInt:JreLShift32(prefix, 1)];
    }
    else {
      [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(output_)) writeVIntWithInt:(JreLShift32(prefix, 1)) | 1];
      [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(output_)) writeStringWithNSString:term->field_];
    }
    [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(output_)) writeVIntWithInt:suffix];
    [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(output_)) writeBytesWithByteArray:((OrgApacheLuceneUtilBytesRef *) nil_chk(scratch_))->bytes_ withInt:scratch_->offset_ + prefix withInt:suffix];
    [((OrgApacheLuceneUtilBytesRef *) nil_chk(lastBytes_)) copy__WithOrgApacheLuceneUtilBytesRef:scratch_];
    JreStrongAssign(&((OrgApacheLuceneIndexTerm *) nil_chk(lastTerm_))->text_, term->text_);
    JreStrongAssign(&lastTerm_->field_, term->field_);
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

- (OrgApacheLuceneIndexPrefixCodedTerms *)finish {
  @try {
    [((OrgApacheLuceneStoreRAMOutputStream *) nil_chk(output_)) close];
    return create_OrgApacheLuceneIndexPrefixCodedTerms_initWithOrgApacheLuceneStoreRAMFile_(buffer_);
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

- (jint)sharedPrefixWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term1
                    withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term2 {
  return OrgApacheLuceneIndexPrefixCodedTerms_Builder_sharedPrefixWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self, term1, term2);
}

- (void)dealloc {
  RELEASE_(buffer_);
  RELEASE_(output_);
  RELEASE_(lastTerm_);
  RELEASE_(lastBytes_);
  RELEASE_(scratch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexPrefixCodedTerms;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithOrgApacheLuceneIndexTerm:);
  methods[2].selector = @selector(finish);
  methods[3].selector = @selector(sharedPrefixWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "LOrgApacheLuceneStoreRAMFile;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "output_", "LOrgApacheLuceneStoreRAMOutputStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastTerm_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastBytes_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "scratch_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "LOrgApacheLuceneIndexTerm;", "sharedPrefix", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;", "LOrgApacheLuceneIndexPrefixCodedTerms;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexPrefixCodedTerms_Builder = { "Builder", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x9, 4, 5, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexPrefixCodedTerms_Builder;
}

@end

void OrgApacheLuceneIndexPrefixCodedTerms_Builder_init(OrgApacheLuceneIndexPrefixCodedTerms_Builder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffer_, new_OrgApacheLuceneStoreRAMFile_init());
  JreStrongAssignAndConsume(&self->output_, new_OrgApacheLuceneStoreRAMOutputStream_initWithOrgApacheLuceneStoreRAMFile_(self->buffer_));
  JreStrongAssignAndConsume(&self->lastTerm_, new_OrgApacheLuceneIndexTerm_initWithNSString_(@""));
  JreStrongAssignAndConsume(&self->lastBytes_, new_OrgApacheLuceneUtilBytesRef_init());
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRef_init());
}

OrgApacheLuceneIndexPrefixCodedTerms_Builder *new_OrgApacheLuceneIndexPrefixCodedTerms_Builder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexPrefixCodedTerms_Builder, init)
}

OrgApacheLuceneIndexPrefixCodedTerms_Builder *create_OrgApacheLuceneIndexPrefixCodedTerms_Builder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexPrefixCodedTerms_Builder, init)
}

jint OrgApacheLuceneIndexPrefixCodedTerms_Builder_sharedPrefixWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexPrefixCodedTerms_Builder *self, OrgApacheLuceneUtilBytesRef *term1, OrgApacheLuceneUtilBytesRef *term2) {
  jint pos1 = 0;
  jint pos1End = pos1 + JavaLangMath_minWithInt_withInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(term1))->length_, ((OrgApacheLuceneUtilBytesRef *) nil_chk(term2))->length_);
  jint pos2 = 0;
  while (pos1 < pos1End) {
    if (IOSByteArray_Get(nil_chk(term1->bytes_), term1->offset_ + pos1) != IOSByteArray_Get(term2->bytes_, term2->offset_ + pos2)) {
      return pos1;
    }
    pos1++;
    pos2++;
  }
  return pos1;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexPrefixCodedTerms_Builder)
