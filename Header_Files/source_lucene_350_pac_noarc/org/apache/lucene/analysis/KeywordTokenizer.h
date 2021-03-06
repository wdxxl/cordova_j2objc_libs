//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/KeywordTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisKeywordTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisKeywordTokenizer

#if !defined (OrgApacheLuceneAnalysisKeywordTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisKeywordTokenizer))
#define OrgApacheLuceneAnalysisKeywordTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;

@interface OrgApacheLuceneAnalysisKeywordTokenizer : OrgApacheLuceneAnalysisTokenizer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)input
                                                                    withInt:(jint)bufferSize;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)input
                                                   withInt:(jint)bufferSize;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input
                             withInt:(jint)bufferSize;

- (void)end;

- (jboolean)incrementToken;

- (void)resetWithJavaIoReader:(JavaIoReader *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisKeywordTokenizer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisKeywordTokenizer *self, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_(JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(OrgApacheLuceneAnalysisKeywordTokenizer *self, JavaIoReader *input, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(JavaIoReader *input, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithJavaIoReader_withInt_(JavaIoReader *input, jint bufferSize);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(OrgApacheLuceneAnalysisKeywordTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input, jint bufferSize);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(OrgApacheLuceneAnalysisKeywordTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input, jint bufferSize);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *new_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisKeywordTokenizer *create_OrgApacheLuceneAnalysisKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_withInt_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisKeywordTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisKeywordTokenizer")
