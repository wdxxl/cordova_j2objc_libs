//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/StringHelper.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/Comparator.h"
#include "java/util/StringTokenizer.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/util/SimpleStringInterner.h"
#include "org/apache/lucene/util/StringHelper.h"
#include "org/apache/lucene/util/StringInterner.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneUtilStringHelper ()

- (instancetype)init;

@end

inline id<JavaUtilComparator> OrgApacheLuceneUtilStringHelper_get_versionComparator();
inline id<JavaUtilComparator> OrgApacheLuceneUtilStringHelper_set_versionComparator(id<JavaUtilComparator> value);
static id<JavaUtilComparator> OrgApacheLuceneUtilStringHelper_versionComparator;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneUtilStringHelper, versionComparator, id<JavaUtilComparator>)

__attribute__((unused)) static void OrgApacheLuceneUtilStringHelper_init(OrgApacheLuceneUtilStringHelper *self);

@interface OrgApacheLuceneUtilStringHelper_1 : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(NSString *)a
               withId:(NSString *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilStringHelper_1)

__attribute__((unused)) static void OrgApacheLuceneUtilStringHelper_1_init(OrgApacheLuceneUtilStringHelper_1 *self);

__attribute__((unused)) static OrgApacheLuceneUtilStringHelper_1 *new_OrgApacheLuceneUtilStringHelper_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilStringHelper_1 *create_OrgApacheLuceneUtilStringHelper_1_init();

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilStringHelper)

OrgApacheLuceneUtilStringInterner *OrgApacheLuceneUtilStringHelper_interner;

@implementation OrgApacheLuceneUtilStringHelper

+ (NSString *)internWithNSString:(NSString *)s {
  return OrgApacheLuceneUtilStringHelper_internWithNSString_(s);
}

+ (jint)bytesDifferenceWithByteArray:(IOSByteArray *)bytes1
                             withInt:(jint)len1
                       withByteArray:(IOSByteArray *)bytes2
                             withInt:(jint)len2 {
  return OrgApacheLuceneUtilStringHelper_bytesDifferenceWithByteArray_withInt_withByteArray_withInt_(bytes1, len1, bytes2, len2);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilStringHelper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<JavaUtilComparator>)getVersionComparator {
  return OrgApacheLuceneUtilStringHelper_getVersionComparator();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x19, 2, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x9, -1, -1, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(internWithNSString:);
  methods[1].selector = @selector(bytesDifferenceWithByteArray:withInt:withByteArray:withInt:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(getVersionComparator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "interner", "LOrgApacheLuceneUtilStringInterner;", .constantValue.asLong = 0, 0x9, -1, 5, -1, -1 },
    { "versionComparator", "LJavaUtilComparator;", .constantValue.asLong = 0, 0xa, -1, 6, 7, -1 },
  };
  static const void *ptrTable[] = { "intern", "LNSString;", "bytesDifference", "[BI[BI", "()Ljava/util/Comparator<Ljava/lang/String;>;", &OrgApacheLuceneUtilStringHelper_interner, &OrgApacheLuceneUtilStringHelper_versionComparator, "Ljava/util/Comparator<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilStringHelper = { "StringHelper", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x401, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilStringHelper;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilStringHelper class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilStringHelper_interner, new_OrgApacheLuceneUtilSimpleStringInterner_initWithInt_withInt_(1024, 8));
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilStringHelper_versionComparator, new_OrgApacheLuceneUtilStringHelper_1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilStringHelper)
  }
}

@end

NSString *OrgApacheLuceneUtilStringHelper_internWithNSString_(NSString *s) {
  OrgApacheLuceneUtilStringHelper_initialize();
  return [((OrgApacheLuceneUtilStringInterner *) nil_chk(OrgApacheLuceneUtilStringHelper_interner)) internWithNSString:s];
}

jint OrgApacheLuceneUtilStringHelper_bytesDifferenceWithByteArray_withInt_withByteArray_withInt_(IOSByteArray *bytes1, jint len1, IOSByteArray *bytes2, jint len2) {
  OrgApacheLuceneUtilStringHelper_initialize();
  jint len = len1 < len2 ? len1 : len2;
  for (jint i = 0; i < len; i++) if (IOSByteArray_Get(nil_chk(bytes1), i) != IOSByteArray_Get(nil_chk(bytes2), i)) return i;
  return len;
}

void OrgApacheLuceneUtilStringHelper_init(OrgApacheLuceneUtilStringHelper *self) {
  NSObject_init(self);
}

id<JavaUtilComparator> OrgApacheLuceneUtilStringHelper_getVersionComparator() {
  OrgApacheLuceneUtilStringHelper_initialize();
  return OrgApacheLuceneUtilStringHelper_versionComparator;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilStringHelper)

@implementation OrgApacheLuceneUtilStringHelper_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilStringHelper_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(NSString *)a
               withId:(NSString *)b {
  JavaUtilStringTokenizer *aTokens = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(a, @".");
  JavaUtilStringTokenizer *bTokens = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(b, @".");
  while ([aTokens hasMoreTokens]) {
    jint aToken = JavaLangInteger_parseIntWithNSString_([aTokens nextToken]);
    if ([bTokens hasMoreTokens]) {
      jint bToken = JavaLangInteger_parseIntWithNSString_([bTokens nextToken]);
      if (aToken != bToken) {
        return aToken < bToken ? -1 : 1;
      }
    }
    else {
      if (aToken != 0) {
        return 1;
      }
    }
  }
  while ([bTokens hasMoreTokens]) {
    if (JavaLangInteger_parseIntWithNSString_([bTokens nextToken]) != 0) return -1;
  }
  return 0;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LNSString;LNSString;", "LOrgApacheLuceneUtilStringHelper;", "Ljava/lang/Object;Ljava/util/Comparator<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilStringHelper_1 = { "", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheLuceneUtilStringHelper_1;
}

@end

void OrgApacheLuceneUtilStringHelper_1_init(OrgApacheLuceneUtilStringHelper_1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilStringHelper_1 *new_OrgApacheLuceneUtilStringHelper_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilStringHelper_1, init)
}

OrgApacheLuceneUtilStringHelper_1 *create_OrgApacheLuceneUtilStringHelper_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilStringHelper_1, init)
}
