//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/NumericRangeFilter.java
//

#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/search/MultiTermQueryWrapperFilter.h"
#include "org/apache/lucene/search/NumericRangeFilter.h"
#include "org/apache/lucene/search/NumericRangeQuery.h"

@interface OrgApacheLuceneSearchNumericRangeFilter ()

- (instancetype)initWithOrgApacheLuceneSearchNumericRangeQuery:(OrgApacheLuceneSearchNumericRangeQuery *)query;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeFilter *self, OrgApacheLuceneSearchNumericRangeQuery *query);

__attribute__((unused)) static OrgApacheLuceneSearchNumericRangeFilter *new_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery *query) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchNumericRangeFilter *create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery *query);

@implementation OrgApacheLuceneSearchNumericRangeFilter

- (instancetype)initWithOrgApacheLuceneSearchNumericRangeQuery:(OrgApacheLuceneSearchNumericRangeQuery *)query {
  OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(self, query);
  return self;
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newLongRangeWithNSString:(NSString *)field
                                                              withInt:(jint)precisionStep
                                                     withJavaLangLong:(JavaLangLong *)min
                                                     withJavaLangLong:(JavaLangLong *)max
                                                          withBoolean:(jboolean)minInclusive
                                                          withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newLongRangeWithNSString:(NSString *)field
                                                     withJavaLangLong:(JavaLangLong *)min
                                                     withJavaLangLong:(JavaLangLong *)max
                                                          withBoolean:(jboolean)minInclusive
                                                          withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newLongRangeWithNSString_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newIntRangeWithNSString:(NSString *)field
                                                             withInt:(jint)precisionStep
                                                 withJavaLangInteger:(JavaLangInteger *)min
                                                 withJavaLangInteger:(JavaLangInteger *)max
                                                         withBoolean:(jboolean)minInclusive
                                                         withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newIntRangeWithNSString:(NSString *)field
                                                 withJavaLangInteger:(JavaLangInteger *)min
                                                 withJavaLangInteger:(JavaLangInteger *)max
                                                         withBoolean:(jboolean)minInclusive
                                                         withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newIntRangeWithNSString_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newDoubleRangeWithNSString:(NSString *)field
                                                                withInt:(jint)precisionStep
                                                     withJavaLangDouble:(JavaLangDouble *)min
                                                     withJavaLangDouble:(JavaLangDouble *)max
                                                            withBoolean:(jboolean)minInclusive
                                                            withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newDoubleRangeWithNSString:(NSString *)field
                                                     withJavaLangDouble:(JavaLangDouble *)min
                                                     withJavaLangDouble:(JavaLangDouble *)max
                                                            withBoolean:(jboolean)minInclusive
                                                            withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newDoubleRangeWithNSString_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newFloatRangeWithNSString:(NSString *)field
                                                               withInt:(jint)precisionStep
                                                     withJavaLangFloat:(JavaLangFloat *)min
                                                     withJavaLangFloat:(JavaLangFloat *)max
                                                           withBoolean:(jboolean)minInclusive
                                                           withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive);
}

+ (OrgApacheLuceneSearchNumericRangeFilter *)newFloatRangeWithNSString:(NSString *)field
                                                     withJavaLangFloat:(JavaLangFloat *)min
                                                     withJavaLangFloat:(JavaLangFloat *)max
                                                           withBoolean:(jboolean)minInclusive
                                                           withBoolean:(jboolean)maxInclusive {
  return OrgApacheLuceneSearchNumericRangeFilter_newFloatRangeWithNSString_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive);
}

- (NSString *)getField {
  return [((OrgApacheLuceneSearchNumericRangeQuery *) nil_chk(query_)) getField];
}

- (jboolean)includesMin {
  return [((OrgApacheLuceneSearchNumericRangeQuery *) nil_chk(query_)) includesMin];
}

- (jboolean)includesMax {
  return [((OrgApacheLuceneSearchNumericRangeQuery *) nil_chk(query_)) includesMax];
}

- (NSNumber *)getMin {
  return [((OrgApacheLuceneSearchNumericRangeQuery *) nil_chk(query_)) getMin];
}

- (NSNumber *)getMax {
  return [((OrgApacheLuceneSearchNumericRangeQuery *) nil_chk(query_)) getMax];
}

- (jint)getPrecisionStep {
  return [((OrgApacheLuceneSearchNumericRangeQuery *) nil_chk(query_)) getPrecisionStep];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 2, 3, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 2, 5, -1, 6, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 7, 8, -1, 9, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 7, 10, -1, 11, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 12, 13, -1, 14, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 12, 15, -1, 16, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 17, 18, -1, 19, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchNumericRangeFilter;", 0x9, 17, 20, -1, 21, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSNumber;", 0x1, -1, -1, -1, 22, -1, -1 },
    { NULL, "LNSNumber;", 0x1, -1, -1, -1, 22, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchNumericRangeQuery:);
  methods[1].selector = @selector(newLongRangeWithNSString:withInt:withJavaLangLong:withJavaLangLong:withBoolean:withBoolean:);
  methods[2].selector = @selector(newLongRangeWithNSString:withJavaLangLong:withJavaLangLong:withBoolean:withBoolean:);
  methods[3].selector = @selector(newIntRangeWithNSString:withInt:withJavaLangInteger:withJavaLangInteger:withBoolean:withBoolean:);
  methods[4].selector = @selector(newIntRangeWithNSString:withJavaLangInteger:withJavaLangInteger:withBoolean:withBoolean:);
  methods[5].selector = @selector(newDoubleRangeWithNSString:withInt:withJavaLangDouble:withJavaLangDouble:withBoolean:withBoolean:);
  methods[6].selector = @selector(newDoubleRangeWithNSString:withJavaLangDouble:withJavaLangDouble:withBoolean:withBoolean:);
  methods[7].selector = @selector(newFloatRangeWithNSString:withInt:withJavaLangFloat:withJavaLangFloat:withBoolean:withBoolean:);
  methods[8].selector = @selector(newFloatRangeWithNSString:withJavaLangFloat:withJavaLangFloat:withBoolean:withBoolean:);
  methods[9].selector = @selector(getField);
  methods[10].selector = @selector(includesMin);
  methods[11].selector = @selector(includesMax);
  methods[12].selector = @selector(getMin);
  methods[13].selector = @selector(getMax);
  methods[14].selector = @selector(getPrecisionStep);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchNumericRangeQuery;", "(Lorg/apache/lucene/search/NumericRangeQuery<TT;>;)V", "newLongRange", "LNSString;ILJavaLangLong;LJavaLangLong;ZZ", "(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Long;>;", "LNSString;LJavaLangLong;LJavaLangLong;ZZ", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Long;>;", "newIntRange", "LNSString;ILJavaLangInteger;LJavaLangInteger;ZZ", "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Integer;>;", "LNSString;LJavaLangInteger;LJavaLangInteger;ZZ", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Integer;>;", "newDoubleRange", "LNSString;ILJavaLangDouble;LJavaLangDouble;ZZ", "(Ljava/lang/String;ILjava/lang/Double;Ljava/lang/Double;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Double;>;", "LNSString;LJavaLangDouble;LJavaLangDouble;ZZ", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Double;>;", "newFloatRange", "LNSString;ILJavaLangFloat;LJavaLangFloat;ZZ", "(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/Float;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Float;>;", "LNSString;LJavaLangFloat;LJavaLangFloat;ZZ", "(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;ZZ)Lorg/apache/lucene/search/NumericRangeFilter<Ljava/lang/Float;>;", "()TT;", "<T:Ljava/lang/Number;>Lorg/apache/lucene/search/MultiTermQueryWrapperFilter<Lorg/apache/lucene/search/NumericRangeQuery<TT;>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchNumericRangeFilter = { "NumericRangeFilter", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x11, 15, 0, -1, -1, -1, 23, -1 };
  return &_OrgApacheLuceneSearchNumericRangeFilter;
}

@end

void OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeFilter *self, OrgApacheLuceneSearchNumericRangeQuery *query) {
  OrgApacheLuceneSearchMultiTermQueryWrapperFilter_initWithOrgApacheLuceneSearchMultiTermQuery_(self, query);
}

OrgApacheLuceneSearchNumericRangeFilter *new_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchNumericRangeFilter, initWithOrgApacheLuceneSearchNumericRangeQuery_, query)
}

OrgApacheLuceneSearchNumericRangeFilter *create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchNumericRangeFilter, initWithOrgApacheLuceneSearchNumericRangeQuery_, query)
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangLong *min, JavaLangLong *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newLongRangeWithNSString_withInt_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newLongRangeWithNSString_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(NSString *field, JavaLangLong *min, JavaLangLong *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newLongRangeWithNSString_withJavaLangLong_withJavaLangLong_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangInteger *min, JavaLangInteger *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newIntRangeWithNSString_withInt_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newIntRangeWithNSString_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(NSString *field, JavaLangInteger *min, JavaLangInteger *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newIntRangeWithNSString_withJavaLangInteger_withJavaLangInteger_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangDouble *min, JavaLangDouble *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newDoubleRangeWithNSString_withInt_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newDoubleRangeWithNSString_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(NSString *field, JavaLangDouble *min, JavaLangDouble *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newDoubleRangeWithNSString_withJavaLangDouble_withJavaLangDouble_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(NSString *field, jint precisionStep, JavaLangFloat *min, JavaLangFloat *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newFloatRangeWithNSString_withInt_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(field, precisionStep, min, max, minInclusive, maxInclusive));
}

OrgApacheLuceneSearchNumericRangeFilter *OrgApacheLuceneSearchNumericRangeFilter_newFloatRangeWithNSString_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(NSString *field, JavaLangFloat *min, JavaLangFloat *max, jboolean minInclusive, jboolean maxInclusive) {
  OrgApacheLuceneSearchNumericRangeFilter_initialize();
  return create_OrgApacheLuceneSearchNumericRangeFilter_initWithOrgApacheLuceneSearchNumericRangeQuery_(OrgApacheLuceneSearchNumericRangeQuery_newFloatRangeWithNSString_withJavaLangFloat_withJavaLangFloat_withBoolean_withBoolean_(field, min, max, minInclusive, maxInclusive));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchNumericRangeFilter)
