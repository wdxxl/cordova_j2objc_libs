//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/NumericTokenStream.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/NumericTokenStream.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/NumericUtils.h"

@interface OrgApacheLuceneAnalysisNumericTokenStream () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  jint shift_;
  jint valSize_;
  jint precisionStep_;
  jlong value_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNumericTokenStream, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNumericTokenStream, typeAtt_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNumericTokenStream, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)

NSString *OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_FULL_PREC = @"fullPrecNumeric";
NSString *OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_LOWER_PREC = @"lowerPrecNumeric";

@implementation OrgApacheLuceneAnalysisNumericTokenStream

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisNumericTokenStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)precisionStep {
  OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(self, precisionStep);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                                   withInt:(jint)precisionStep {
  OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_withInt_(self, source, precisionStep);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                                    withInt:(jint)precisionStep {
  OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withInt_(self, factory, precisionStep);
  return self;
}

- (OrgApacheLuceneAnalysisNumericTokenStream *)setLongValueWithLong:(jlong)value {
  self->value_ = value;
  valSize_ = 64;
  shift_ = 0;
  return self;
}

- (OrgApacheLuceneAnalysisNumericTokenStream *)setIntValueWithInt:(jint)value {
  self->value_ = value;
  valSize_ = 32;
  shift_ = 0;
  return self;
}

- (OrgApacheLuceneAnalysisNumericTokenStream *)setDoubleValueWithDouble:(jdouble)value {
  self->value_ = OrgApacheLuceneUtilNumericUtils_doubleToSortableLongWithDouble_(value);
  valSize_ = 64;
  shift_ = 0;
  return self;
}

- (OrgApacheLuceneAnalysisNumericTokenStream *)setFloatValueWithFloat:(jfloat)value {
  self->value_ = OrgApacheLuceneUtilNumericUtils_floatToSortableIntWithFloat_(value);
  valSize_ = 32;
  shift_ = 0;
  return self;
}

- (void)reset {
  if (valSize_ == 0) @throw create_JavaLangIllegalStateException_initWithNSString_(@"call set???Value() before usage");
  shift_ = 0;
}

- (jboolean)incrementToken {
  if (valSize_ == 0) @throw create_JavaLangIllegalStateException_initWithNSString_(@"call set???Value() before usage");
  if (shift_ >= valSize_) return false;
  [self clearAttributes];
  IOSCharArray *buffer;
  switch (valSize_) {
    case 64:
    buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) resizeBufferWithInt:OrgApacheLuceneUtilNumericUtils_BUF_SIZE_LONG];
    [termAtt_ setLengthWithInt:OrgApacheLuceneUtilNumericUtils_longToPrefixCodedWithLong_withInt_withCharArray_(value_, shift_, buffer)];
    break;
    case 32:
    buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) resizeBufferWithInt:OrgApacheLuceneUtilNumericUtils_BUF_SIZE_INT];
    [termAtt_ setLengthWithInt:OrgApacheLuceneUtilNumericUtils_intToPrefixCodedWithInt_withInt_withCharArray_((jint) value_, shift_, buffer)];
    break;
    default:
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"valSize must be 32 or 64");
  }
  [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(typeAtt_)) setTypeWithNSString:(shift_ == 0) ? OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_FULL_PREC : OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_LOWER_PREC];
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:(shift_ == 0) ? 1 : 0];
  shift_ += precisionStep_;
  return true;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [create_JavaLangStringBuilder_initWithNSString_(@"(numeric,valSize=") appendWithInt:valSize_];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@",precisionStep="])) appendWithInt:precisionStep_])) appendWithChar:')'];
  return [sb description];
}

- (jint)getPrecisionStep {
  return precisionStep_;
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(typeAtt_);
  RELEASE_(posIncrAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisNumericTokenStream;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisNumericTokenStream;", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisNumericTokenStream;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisNumericTokenStream;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource:withInt:);
  methods[3].selector = @selector(initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:withInt:);
  methods[4].selector = @selector(setLongValueWithLong:);
  methods[5].selector = @selector(setIntValueWithInt:);
  methods[6].selector = @selector(setDoubleValueWithDouble:);
  methods[7].selector = @selector(setFloatValueWithFloat:);
  methods[8].selector = @selector(reset);
  methods[9].selector = @selector(incrementToken);
  methods[10].selector = @selector(description);
  methods[11].selector = @selector(getPrecisionStep);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TOKEN_TYPE_FULL_PREC", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "TOKEN_TYPE_LOWER_PREC", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "typeAtt_", "LOrgApacheLuceneAnalysisTokenattributesTypeAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "posIncrAtt_", "LOrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "shift_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "valSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "precisionStep_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LOrgApacheLuceneUtilAttributeSource;I", "LOrgApacheLuceneUtilAttributeSource_AttributeFactory;I", "setLongValue", "J", "setIntValue", "setDoubleValue", "D", "setFloatValue", "F", "toString", &OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_FULL_PREC, &OrgApacheLuceneAnalysisNumericTokenStream_TOKEN_TYPE_LOWER_PREC };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNumericTokenStream = { "NumericTokenStream", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 12, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisNumericTokenStream;
}

@end

void OrgApacheLuceneAnalysisNumericTokenStream_init(OrgApacheLuceneAnalysisNumericTokenStream *self) {
  OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(self, OrgApacheLuceneUtilNumericUtils_PRECISION_STEP_DEFAULT);
}

OrgApacheLuceneAnalysisNumericTokenStream *new_OrgApacheLuceneAnalysisNumericTokenStream_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, init)
}

OrgApacheLuceneAnalysisNumericTokenStream *create_OrgApacheLuceneAnalysisNumericTokenStream_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, init)
}

void OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(OrgApacheLuceneAnalysisNumericTokenStream *self, jint precisionStep) {
  OrgApacheLuceneAnalysisTokenStream_init(self);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->typeAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  self->shift_ = 0;
  self->valSize_ = 0;
  self->value_ = 0LL;
  self->precisionStep_ = precisionStep;
  if (precisionStep < 1) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"precisionStep must be >=1");
}

OrgApacheLuceneAnalysisNumericTokenStream *new_OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(jint precisionStep) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, initWithInt_, precisionStep)
}

OrgApacheLuceneAnalysisNumericTokenStream *create_OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(jint precisionStep) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, initWithInt_, precisionStep)
}

void OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_withInt_(OrgApacheLuceneAnalysisNumericTokenStream *self, OrgApacheLuceneUtilAttributeSource *source, jint precisionStep) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(self, source);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->typeAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  self->shift_ = 0;
  self->valSize_ = 0;
  self->value_ = 0LL;
  self->precisionStep_ = precisionStep;
  if (precisionStep < 1) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"precisionStep must be >=1");
}

OrgApacheLuceneAnalysisNumericTokenStream *new_OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_withInt_(OrgApacheLuceneUtilAttributeSource *source, jint precisionStep) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, initWithOrgApacheLuceneUtilAttributeSource_withInt_, source, precisionStep)
}

OrgApacheLuceneAnalysisNumericTokenStream *create_OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_withInt_(OrgApacheLuceneUtilAttributeSource *source, jint precisionStep) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, initWithOrgApacheLuceneUtilAttributeSource_withInt_, source, precisionStep)
}

void OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withInt_(OrgApacheLuceneAnalysisNumericTokenStream *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, jint precisionStep) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_(self, factory);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->typeAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  self->shift_ = 0;
  self->valSize_ = 0;
  self->value_ = 0LL;
  self->precisionStep_ = precisionStep;
  if (precisionStep < 1) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"precisionStep must be >=1");
}

OrgApacheLuceneAnalysisNumericTokenStream *new_OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withInt_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, jint precisionStep) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withInt_, factory, precisionStep)
}

OrgApacheLuceneAnalysisNumericTokenStream *create_OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withInt_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, jint precisionStep) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNumericTokenStream, initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withInt_, factory, precisionStep)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNumericTokenStream)
