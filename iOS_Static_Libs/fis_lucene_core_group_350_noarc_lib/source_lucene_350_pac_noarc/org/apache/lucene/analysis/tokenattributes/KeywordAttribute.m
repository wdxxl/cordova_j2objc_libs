//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/tokenattributes/KeywordAttribute.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"

@interface OrgApacheLuceneAnalysisTokenattributesKeywordAttribute : NSObject

@end

@implementation OrgApacheLuceneAnalysisTokenattributesKeywordAttribute

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(isKeyword);
  methods[1].selector = @selector(setKeywordWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setKeyword", "Z" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesKeywordAttribute = { "KeywordAttribute", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesKeywordAttribute;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesKeywordAttribute)
