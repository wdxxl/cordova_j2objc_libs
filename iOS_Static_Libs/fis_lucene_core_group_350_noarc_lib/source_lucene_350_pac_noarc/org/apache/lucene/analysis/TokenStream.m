//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/TokenStream.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisTokenStream ()

- (jboolean)assertFinal;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisTokenStream_assertFinal(OrgApacheLuceneAnalysisTokenStream *self);

@implementation OrgApacheLuceneAnalysisTokenStream

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)input {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_(self, factory);
  return self;
}

- (jboolean)assertFinal {
  return OrgApacheLuceneAnalysisTokenStream_assertFinal(self);
}

- (jboolean)incrementToken {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)end {
}

- (void)reset {
}

- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:);
  methods[3].selector = @selector(assertFinal);
  methods[4].selector = @selector(incrementToken);
  methods[5].selector = @selector(end);
  methods[6].selector = @selector(reset);
  methods[7].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilAttributeSource;", "LOrgApacheLuceneUtilAttributeSource_AttributeFactory;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenStream = { "TokenStream", "org.apache.lucene.analysis", ptrTable, methods, NULL, 7, 0x401, 8, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenStream;
}

@end

void OrgApacheLuceneAnalysisTokenStream_init(OrgApacheLuceneAnalysisTokenStream *self) {
  OrgApacheLuceneUtilAttributeSource_init(self);
  JreAssert((OrgApacheLuceneAnalysisTokenStream_assertFinal(self)), (@"org/apache/lucene/analysis/TokenStream.java:92 condition failed: assert assertFinal();"));
}

void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeSource *input) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  JreAssert((OrgApacheLuceneAnalysisTokenStream_assertFinal(self)), (@"org/apache/lucene/analysis/TokenStream.java:100 condition failed: assert assertFinal();"));
}

void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_(self, factory);
  JreAssert((OrgApacheLuceneAnalysisTokenStream_assertFinal(self)), (@"org/apache/lucene/analysis/TokenStream.java:108 condition failed: assert assertFinal();"));
}

jboolean OrgApacheLuceneAnalysisTokenStream_assertFinal(OrgApacheLuceneAnalysisTokenStream *self) {
  @try {
    IOSClass *clazz = [self java_getClass];
    if (![clazz desiredAssertionStatus]) return true;
    JreAssert(([clazz isAnonymousClass] || ([clazz getModifiers] & (JavaLangReflectModifier_FINAL | JavaLangReflectModifier_PRIVATE)) != 0 || JavaLangReflectModifier_isFinalWithInt_([((JavaLangReflectMethod *) nil_chk([clazz getMethod:@"incrementToken" parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]])) getModifiers])), (@"TokenStream implementation classes or at least their incrementToken() implementation must be final"));
    return true;
  }
  @catch (JavaLangNoSuchMethodException *nsme) {
    return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenStream)