//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanNearPayloadCheckQuery.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/search/spans/SpanNearPayloadCheckQuery.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanPositionCheckQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@implementation OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)match
                                         withJavaUtilCollection:(id<JavaUtilCollection>)payloadToMatch {
  OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_(self, match, payloadToMatch);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus *)acceptPositionWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans {
  jboolean result = [((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) isPayloadAvailable];
  if (result == true) {
    id<JavaUtilCollection> candidate = [spans getPayload];
    if ([((id<JavaUtilCollection>) nil_chk(candidate)) size] == [((id<JavaUtilCollection>) nil_chk(payloadToMatch_)) size]) {
      jint matches = 0;
      for (IOSByteArray * __strong candBytes in candidate) {
        for (IOSByteArray * __strong payBytes in payloadToMatch_) {
          if (JavaUtilArrays_equalsWithByteArray_withByteArray_(candBytes, payBytes) == true) {
            matches++;
            break;
          }
        }
      }
      if (matches == [payloadToMatch_ size]) {
        return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, YES);
      }
      else {
        return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO);
      }
    }
    else {
      return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO);
    }
  }
  return JreLoadEnum(OrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus, NO);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"spanPayCheck("];
  [buffer appendWithNSString:[((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) toStringWithNSString:field]];
  [buffer appendWithNSString:@", payloadRef: "];
  for (IOSByteArray * __strong bytes in nil_chk(payloadToMatch_)) {
    OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(buffer, bytes);
    [buffer appendWithChar:';'];
  }
  [buffer appendWithNSString:@")"];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (id)java_clone {
  OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *result = create_OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_((OrgApacheLuceneSearchSpansSpanNearQuery *) cast_chk([((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) java_clone], [OrgApacheLuceneSearchSpansSpanNearQuery class]), payloadToMatch_);
  [result setBoostWithFloat:[self getBoost]];
  return result;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery class]])) return false;
  OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *other = (OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *) cast_chk(o, [OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery class]);
  return [((id<JavaUtilCollection>) nil_chk(self->payloadToMatch_)) isEqual:((OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *) nil_chk(other))->payloadToMatch_] && [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(self->match_)) isEqual:other->match_] && [self getBoost] == [other getBoost];
}

- (NSUInteger)hash {
  jint h = ((jint) [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(match_)) hash]);
  h ^= (JreLShift32(h, 8)) | (JreURShift32(h, 25));
  h ^= ((jint) [((id<JavaUtilCollection>) nil_chk(payloadToMatch_)) hash]);
  h ^= JavaLangFloat_floatToRawIntBitsWithFloat_([self getBoost]);
  return h;
}

- (void)dealloc {
  RELEASE_(payloadToMatch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanPositionCheckQuery_AcceptStatus;", 0x4, 2, 3, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSpansSpanNearQuery:withJavaUtilCollection:);
  methods[1].selector = @selector(acceptPositionWithOrgApacheLuceneSearchSpansSpans:);
  methods[2].selector = @selector(toStringWithNSString:);
  methods[3].selector = @selector(java_clone);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "payloadToMatch_", "LJavaUtilCollection;", .constantValue.asLong = 0, 0x14, -1, -1, 11, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpanNearQuery;LJavaUtilCollection;", "(Lorg/apache/lucene/search/spans/SpanNearQuery;Ljava/util/Collection<[B>;)V", "acceptPosition", "LOrgApacheLuceneSearchSpansSpans;", "LJavaIoIOException;", "toString", "LNSString;", "clone", "equals", "LNSObject;", "hashCode", "Ljava/util/Collection<[B>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery = { "SpanNearPayloadCheckQuery", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery;
}

@end

void OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_(OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *self, OrgApacheLuceneSearchSpansSpanNearQuery *match, id<JavaUtilCollection> payloadToMatch) {
  OrgApacheLuceneSearchSpansSpanPositionCheckQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_(self, match);
  JreStrongAssign(&self->payloadToMatch_, payloadToMatch);
}

OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *new_OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_(OrgApacheLuceneSearchSpansSpanNearQuery *match, id<JavaUtilCollection> payloadToMatch) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_, match, payloadToMatch)
}

OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery *create_OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_(OrgApacheLuceneSearchSpansSpanNearQuery *match, id<JavaUtilCollection> payloadToMatch) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery, initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilCollection_, match, payloadToMatch)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanNearPayloadCheckQuery)
