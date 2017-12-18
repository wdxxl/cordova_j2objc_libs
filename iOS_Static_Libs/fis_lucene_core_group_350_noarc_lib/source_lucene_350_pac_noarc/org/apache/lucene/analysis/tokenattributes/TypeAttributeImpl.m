//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/tokenattributes/TypeAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"

@interface OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl () {
 @public
  NSString *type_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl, type_, NSString *)

@implementation OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)type {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(self, type);
  return self;
}

- (NSString *)type {
  return type_;
}

- (void)setTypeWithNSString:(NSString *)type {
  JreStrongAssign(&self->type_, type);
}

- (void)clear {
  JreStrongAssign(&type_, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_DEFAULT_TYPE);
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return true;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl class]]) {
    OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *o = (OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *) cast_chk(other, [OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl class]);
    return (self->type_ == nil ? ((OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *) nil_chk(o))->type_ == nil : [self->type_ isEqual:((OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *) nil_chk(o))->type_]);
  }
  return false;
}

- (NSUInteger)hash {
  return (type_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(type_)) hash]);
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(t)) setTypeWithNSString:type_];
}

- (void)dealloc {
  RELEASE_(type_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(type);
  methods[3].selector = @selector(setTypeWithNSString:);
  methods[4].selector = @selector(clear);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(hash);
  methods[7].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "type_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "setType", "equals", "LNSObject;", "hashCode", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl = { "TypeAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self) {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(self, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_DEFAULT_TYPE);
}

OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl, init)
}

void OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self, NSString *type) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  JreStrongAssign(&self->type_, type);
}

OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(NSString *type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl, initWithNSString_, type)
}

OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(NSString *type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl, initWithNSString_, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl)
