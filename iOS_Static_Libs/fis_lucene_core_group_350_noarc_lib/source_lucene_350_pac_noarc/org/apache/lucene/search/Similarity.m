//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/Similarity.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/DefaultSimilarity.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/Searcher.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/util/SmallFloat.h"
#include "org/apache/lucene/util/VirtualMethod.h"

@interface OrgApacheLuceneSearchSimilarity () {
 @public
  jboolean hasIDFExplainWithDocFreqAPI_;
}

@end

inline OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneSearchSimilarity_get_withoutDocFreqMethod();
static OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneSearchSimilarity_withoutDocFreqMethod;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSimilarity, withoutDocFreqMethod, OrgApacheLuceneUtilVirtualMethod *)

inline OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneSearchSimilarity_get_withDocFreqMethod();
static OrgApacheLuceneUtilVirtualMethod *OrgApacheLuceneSearchSimilarity_withDocFreqMethod;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSimilarity, withDocFreqMethod, OrgApacheLuceneUtilVirtualMethod *)

inline OrgApacheLuceneSearchSimilarity *OrgApacheLuceneSearchSimilarity_get_defaultImpl();
inline OrgApacheLuceneSearchSimilarity *OrgApacheLuceneSearchSimilarity_set_defaultImpl(OrgApacheLuceneSearchSimilarity *value);
static OrgApacheLuceneSearchSimilarity *OrgApacheLuceneSearchSimilarity_defaultImpl;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneSearchSimilarity, defaultImpl, OrgApacheLuceneSearchSimilarity *)

inline IOSFloatArray *OrgApacheLuceneSearchSimilarity_get_NORM_TABLE();
static IOSFloatArray *OrgApacheLuceneSearchSimilarity_NORM_TABLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSimilarity, NORM_TABLE, IOSFloatArray *)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$1();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$2();

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$3();

@interface OrgApacheLuceneSearchSimilarity_1 : OrgApacheLuceneSearchExplanation_IDFExplanation {
 @public
  jint val$df_;
  jint val$max_;
  jfloat val$idf_;
}

- (instancetype)initWithInt:(jint)capture$0
                    withInt:(jint)capture$1
                  withFloat:(jfloat)capture$2;

- (NSString *)explain;

- (jfloat)getIdf;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilarity_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(OrgApacheLuceneSearchSimilarity_1 *self, jint capture$0, jint capture$1, jfloat capture$2);

__attribute__((unused)) static OrgApacheLuceneSearchSimilarity_1 *new_OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(jint capture$0, jint capture$1, jfloat capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSimilarity_1 *create_OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(jint capture$0, jint capture$1, jfloat capture$2);

@interface OrgApacheLuceneSearchSimilarity_2 : OrgApacheLuceneSearchExplanation_IDFExplanation {
 @public
  jfloat val$fIdf_;
  JavaLangStringBuilder *val$exp_;
}

- (instancetype)initWithFloat:(jfloat)capture$0
    withJavaLangStringBuilder:(JavaLangStringBuilder *)capture$1;

- (jfloat)getIdf;

- (NSString *)explain;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSimilarity_2)

__attribute__((unused)) static void OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(OrgApacheLuceneSearchSimilarity_2 *self, jfloat capture$0, JavaLangStringBuilder *capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchSimilarity_2 *new_OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(jfloat capture$0, JavaLangStringBuilder *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSimilarity_2 *create_OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(jfloat capture$0, JavaLangStringBuilder *capture$1);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSimilarity)

@implementation OrgApacheLuceneSearchSimilarity

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSimilarity_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)setDefaultWithOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity {
  OrgApacheLuceneSearchSimilarity_setDefaultWithOrgApacheLuceneSearchSimilarity_(similarity);
}

+ (OrgApacheLuceneSearchSimilarity *)getDefault {
  return OrgApacheLuceneSearchSimilarity_getDefault();
}

+ (jfloat)decodeNormWithByte:(jbyte)b {
  return OrgApacheLuceneSearchSimilarity_decodeNormWithByte_(b);
}

- (jfloat)decodeNormValueWithByte:(jbyte)b {
  return IOSFloatArray_Get(nil_chk(OrgApacheLuceneSearchSimilarity_NORM_TABLE), b & (jint) 0xFF);
}

+ (IOSFloatArray *)getNormDecoder {
  return OrgApacheLuceneSearchSimilarity_getNormDecoder();
}

- (jfloat)computeNormWithNSString:(NSString *)field
withOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)lengthNormWithNSString:(NSString *)fieldName
                         withInt:(jint)numTokens {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"please use computeNorm instead");
}

- (jfloat)queryNormWithFloat:(jfloat)sumOfSquaredWeights {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jbyte)encodeNormValueWithFloat:(jfloat)f {
  return OrgApacheLuceneUtilSmallFloat_floatToByte315WithFloat_(f);
}

+ (jbyte)encodeNormWithFloat:(jfloat)f {
  return OrgApacheLuceneSearchSimilarity_encodeNormWithFloat_(f);
}

- (jfloat)tfWithInt:(jint)freq {
  return [self tfWithFloat:(jfloat) freq];
}

- (jfloat)sloppyFreqWithInt:(jint)distance {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)tfWithFloat:(jfloat)freq {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchExplanation_IDFExplanation *)idfExplainWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                          withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher
                                                                                    withInt:(jint)docFreq {
  if (!hasIDFExplainWithDocFreqAPI_) {
    return [self idfExplainWithOrgApacheLuceneIndexTerm:term withOrgApacheLuceneSearchSearcher:searcher];
  }
  jint df = docFreq;
  jint max = [((OrgApacheLuceneSearchSearcher *) nil_chk(searcher)) maxDoc];
  jfloat idf = [self idfWithInt:df withInt:max];
  return create_OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(df, max, idf);
}

- (OrgApacheLuceneSearchExplanation_IDFExplanation *)idfExplainWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                          withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  return [self idfExplainWithOrgApacheLuceneIndexTerm:term withOrgApacheLuceneSearchSearcher:searcher withInt:[((OrgApacheLuceneSearchSearcher *) nil_chk(searcher)) docFreqWithOrgApacheLuceneIndexTerm:term]];
}

- (OrgApacheLuceneSearchExplanation_IDFExplanation *)idfExplainWithJavaUtilCollection:(id<JavaUtilCollection>)terms
                                                    withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  jint max = [((OrgApacheLuceneSearchSearcher *) nil_chk(searcher)) maxDoc];
  jfloat idf = 0.0f;
  JavaLangStringBuilder *exp = create_JavaLangStringBuilder_init();
  for (OrgApacheLuceneIndexTerm * __strong term in nil_chk(terms)) {
    jint df = [searcher docFreqWithOrgApacheLuceneIndexTerm:term];
    JrePlusAssignFloatF(&idf, [self idfWithInt:df withInt:max]);
    [exp appendWithNSString:@" "];
    [exp appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term)) text]];
    [exp appendWithNSString:@"="];
    [exp appendWithInt:df];
  }
  jfloat fIdf = idf;
  return create_OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(fIdf, exp);
}

- (jfloat)idfWithInt:(jint)docFreq
             withInt:(jint)numDocs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)coordWithInt:(jint)overlap
               withInt:(jint)maxOverlap {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jfloat)scorePayloadWithInt:(jint)docId
                 withNSString:(NSString *)fieldName
                      withInt:(jint)start
                      withInt:(jint)end
                withByteArray:(IOSByteArray *)payload
                      withInt:(jint)offset
                      withInt:(jint)length {
  return 1;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilarity;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x9, 2, 3, -1, -1, 4, -1 },
    { NULL, "F", 0x1, 5, 3, -1, -1, -1, -1 },
    { NULL, "[F", 0x9, -1, -1, -1, -1, 6, -1 },
    { NULL, "F", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "F", 0x11, 9, 10, -1, -1, 11, -1 },
    { NULL, "F", 0x401, 12, 13, -1, -1, -1, -1 },
    { NULL, "B", 0x1, 14, 13, -1, -1, -1, -1 },
    { NULL, "B", 0x9, 15, 13, -1, -1, 16, -1 },
    { NULL, "F", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 19, 18, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 17, 13, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation_IDFExplanation;", 0x1, 20, 21, 22, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation_IDFExplanation;", 0x1, 20, 23, 22, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation_IDFExplanation;", 0x1, 20, 24, 22, 25, -1, -1 },
    { NULL, "F", 0x401, 26, 27, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 28, 27, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 29, 30, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setDefaultWithOrgApacheLuceneSearchSimilarity:);
  methods[2].selector = @selector(getDefault);
  methods[3].selector = @selector(decodeNormWithByte:);
  methods[4].selector = @selector(decodeNormValueWithByte:);
  methods[5].selector = @selector(getNormDecoder);
  methods[6].selector = @selector(computeNormWithNSString:withOrgApacheLuceneIndexFieldInvertState:);
  methods[7].selector = @selector(lengthNormWithNSString:withInt:);
  methods[8].selector = @selector(queryNormWithFloat:);
  methods[9].selector = @selector(encodeNormValueWithFloat:);
  methods[10].selector = @selector(encodeNormWithFloat:);
  methods[11].selector = @selector(tfWithInt:);
  methods[12].selector = @selector(sloppyFreqWithInt:);
  methods[13].selector = @selector(tfWithFloat:);
  methods[14].selector = @selector(idfExplainWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSearcher:withInt:);
  methods[15].selector = @selector(idfExplainWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSearcher:);
  methods[16].selector = @selector(idfExplainWithJavaUtilCollection:withOrgApacheLuceneSearchSearcher:);
  methods[17].selector = @selector(idfWithInt:withInt:);
  methods[18].selector = @selector(coordWithInt:withInt:);
  methods[19].selector = @selector(scorePayloadWithInt:withNSString:withInt:withInt:withByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "withoutDocFreqMethod", "LOrgApacheLuceneUtilVirtualMethod;", .constantValue.asLong = 0, 0x1a, -1, 31, 32, -1 },
    { "withDocFreqMethod", "LOrgApacheLuceneUtilVirtualMethod;", .constantValue.asLong = 0, 0x1a, -1, 33, 32, -1 },
    { "hasIDFExplainWithDocFreqAPI_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "defaultImpl", "LOrgApacheLuceneSearchSimilarity;", .constantValue.asLong = 0, 0xa, -1, 34, -1, -1 },
    { "NO_DOC_ID_PROVIDED", "I", .constantValue.asInt = OrgApacheLuceneSearchSimilarity_NO_DOC_ID_PROVIDED, 0x19, -1, -1, -1, -1 },
    { "NORM_TABLE", "[F", .constantValue.asLong = 0, 0x1a, -1, 35, -1, -1 },
  };
  static const void *ptrTable[] = { "setDefault", "LOrgApacheLuceneSearchSimilarity;", "decodeNorm", "B", (void *)&OrgApacheLuceneSearchSimilarity__Annotations$0, "decodeNormValue", (void *)&OrgApacheLuceneSearchSimilarity__Annotations$1, "computeNorm", "LNSString;LOrgApacheLuceneIndexFieldInvertState;", "lengthNorm", "LNSString;I", (void *)&OrgApacheLuceneSearchSimilarity__Annotations$2, "queryNorm", "F", "encodeNormValue", "encodeNorm", (void *)&OrgApacheLuceneSearchSimilarity__Annotations$3, "tf", "I", "sloppyFreq", "idfExplain", "LOrgApacheLuceneIndexTerm;LOrgApacheLuceneSearchSearcher;I", "LJavaIoIOException;", "LOrgApacheLuceneIndexTerm;LOrgApacheLuceneSearchSearcher;", "LJavaUtilCollection;LOrgApacheLuceneSearchSearcher;", "(Ljava/util/Collection<Lorg/apache/lucene/index/Term;>;Lorg/apache/lucene/search/Searcher;)Lorg/apache/lucene/search/Explanation$IDFExplanation;", "idf", "II", "coord", "scorePayload", "ILNSString;II[BII", &OrgApacheLuceneSearchSimilarity_withoutDocFreqMethod, "Lorg/apache/lucene/util/VirtualMethod<Lorg/apache/lucene/search/Similarity;>;", &OrgApacheLuceneSearchSimilarity_withDocFreqMethod, &OrgApacheLuceneSearchSimilarity_defaultImpl, &OrgApacheLuceneSearchSimilarity_NORM_TABLE };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilarity = { "Similarity", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 20, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilarity;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSimilarity class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSimilarity_withoutDocFreqMethod, new_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(OrgApacheLuceneSearchSimilarity_class_(), @"idfExplain", [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneIndexTerm_class_(), OrgApacheLuceneSearchSearcher_class_() } count:2 type:IOSClass_class_()]));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSimilarity_withDocFreqMethod, new_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(OrgApacheLuceneSearchSimilarity_class_(), @"idfExplain", [IOSObjectArray arrayWithObjects:(id[]){ OrgApacheLuceneIndexTerm_class_(), OrgApacheLuceneSearchSearcher_class_(), [IOSClass intClass] } count:3 type:IOSClass_class_()]));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSimilarity_defaultImpl, new_OrgApacheLuceneSearchDefaultSimilarity_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSimilarity_NORM_TABLE, [IOSFloatArray newArrayWithLength:256]);
    {
      for (jint i = 0; i < 256; i++) *IOSFloatArray_GetRef(OrgApacheLuceneSearchSimilarity_NORM_TABLE, i) = OrgApacheLuceneUtilSmallFloat_byte315ToFloatWithByte_((jbyte) i);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSimilarity)
  }
}

@end

void OrgApacheLuceneSearchSimilarity_init(OrgApacheLuceneSearchSimilarity *self) {
  NSObject_init(self);
  self->hasIDFExplainWithDocFreqAPI_ = (OrgApacheLuceneUtilVirtualMethod_compareImplementationDistanceWithIOSClass_withOrgApacheLuceneUtilVirtualMethod_withOrgApacheLuceneUtilVirtualMethod_([self java_getClass], OrgApacheLuceneSearchSimilarity_withDocFreqMethod, OrgApacheLuceneSearchSimilarity_withoutDocFreqMethod) >= 0);
}

void OrgApacheLuceneSearchSimilarity_setDefaultWithOrgApacheLuceneSearchSimilarity_(OrgApacheLuceneSearchSimilarity *similarity) {
  OrgApacheLuceneSearchSimilarity_initialize();
  JreStrongAssign(&OrgApacheLuceneSearchSimilarity_defaultImpl, similarity);
}

OrgApacheLuceneSearchSimilarity *OrgApacheLuceneSearchSimilarity_getDefault() {
  OrgApacheLuceneSearchSimilarity_initialize();
  return OrgApacheLuceneSearchSimilarity_defaultImpl;
}

jfloat OrgApacheLuceneSearchSimilarity_decodeNormWithByte_(jbyte b) {
  OrgApacheLuceneSearchSimilarity_initialize();
  return IOSFloatArray_Get(nil_chk(OrgApacheLuceneSearchSimilarity_NORM_TABLE), b & (jint) 0xFF);
}

IOSFloatArray *OrgApacheLuceneSearchSimilarity_getNormDecoder() {
  OrgApacheLuceneSearchSimilarity_initialize();
  return OrgApacheLuceneSearchSimilarity_NORM_TABLE;
}

jbyte OrgApacheLuceneSearchSimilarity_encodeNormWithFloat_(jfloat f) {
  OrgApacheLuceneSearchSimilarity_initialize();
  return OrgApacheLuceneUtilSmallFloat_floatToByte315WithFloat_(f);
}

IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchSimilarity__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilarity)

@implementation OrgApacheLuceneSearchSimilarity_1

- (instancetype)initWithInt:(jint)capture$0
                    withInt:(jint)capture$1
                  withFloat:(jfloat)capture$2 {
  OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(self, capture$0, capture$1, capture$2);
  return self;
}

- (NSString *)explain {
  return JreStrcat("$I$IC", @"idf(docFreq=", val$df_, @", maxDocs=", val$max_, ')');
}

- (jfloat)getIdf {
  return val$idf_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:withFloat:);
  methods[1].selector = @selector(explain);
  methods[2].selector = @selector(getIdf);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$df_", "I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$max_", "I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$idf_", "F", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSimilarity;", "idfExplainWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSearcher:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilarity_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 3, 3, 0, -1, 1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilarity_1;
}

@end

void OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(OrgApacheLuceneSearchSimilarity_1 *self, jint capture$0, jint capture$1, jfloat capture$2) {
  self->val$df_ = capture$0;
  self->val$max_ = capture$1;
  self->val$idf_ = capture$2;
  OrgApacheLuceneSearchExplanation_IDFExplanation_init(self);
}

OrgApacheLuceneSearchSimilarity_1 *new_OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(jint capture$0, jint capture$1, jfloat capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilarity_1, initWithInt_withInt_withFloat_, capture$0, capture$1, capture$2)
}

OrgApacheLuceneSearchSimilarity_1 *create_OrgApacheLuceneSearchSimilarity_1_initWithInt_withInt_withFloat_(jint capture$0, jint capture$1, jfloat capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilarity_1, initWithInt_withInt_withFloat_, capture$0, capture$1, capture$2)
}

@implementation OrgApacheLuceneSearchSimilarity_2

- (instancetype)initWithFloat:(jfloat)capture$0
    withJavaLangStringBuilder:(JavaLangStringBuilder *)capture$1 {
  OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(self, capture$0, capture$1);
  return self;
}

- (jfloat)getIdf {
  return val$fIdf_;
}

- (NSString *)explain {
  return [((JavaLangStringBuilder *) nil_chk(val$exp_)) description];
}

- (void)dealloc {
  RELEASE_(val$exp_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithFloat:withJavaLangStringBuilder:);
  methods[1].selector = @selector(getIdf);
  methods[2].selector = @selector(explain);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$fIdf_", "F", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$exp_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSimilarity;", "idfExplainWithJavaUtilCollection:withOrgApacheLuceneSearchSearcher:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilarity_2 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 3, 2, 0, -1, 1, -1, -1 };
  return &_OrgApacheLuceneSearchSimilarity_2;
}

@end

void OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(OrgApacheLuceneSearchSimilarity_2 *self, jfloat capture$0, JavaLangStringBuilder *capture$1) {
  self->val$fIdf_ = capture$0;
  JreStrongAssign(&self->val$exp_, capture$1);
  OrgApacheLuceneSearchExplanation_IDFExplanation_init(self);
}

OrgApacheLuceneSearchSimilarity_2 *new_OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(jfloat capture$0, JavaLangStringBuilder *capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilarity_2, initWithFloat_withJavaLangStringBuilder_, capture$0, capture$1)
}

OrgApacheLuceneSearchSimilarity_2 *create_OrgApacheLuceneSearchSimilarity_2_initWithFloat_withJavaLangStringBuilder_(jfloat capture$0, JavaLangStringBuilder *capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilarity_2, initWithFloat_withJavaLangStringBuilder_, capture$0, capture$1)
}
