//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/LengthFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisLengthFilter")
#ifdef RESTRICT_OrgApacheLuceneAnalysisLengthFilter
#define INCLUDE_ALL_OrgApacheLuceneAnalysisLengthFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisLengthFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisLengthFilter

#if !defined (OrgApacheLuceneAnalysisLengthFilter_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisLengthFilter || defined(INCLUDE_OrgApacheLuceneAnalysisLengthFilter))
#define OrgApacheLuceneAnalysisLengthFilter_

#define RESTRICT_OrgApacheLuceneAnalysisFilteringTokenFilter 1
#define INCLUDE_OrgApacheLuceneAnalysisFilteringTokenFilter 1
#include "org/apache/lucene/analysis/FilteringTokenFilter.h"

@class OrgApacheLuceneAnalysisTokenStream;

@interface OrgApacheLuceneAnalysisLengthFilter : OrgApacheLuceneAnalysisFilteringTokenFilter

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)enablePositionIncrements
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                        withInt:(jint)min
                        withInt:(jint)max;

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
                                                   withInt:(jint)min
                                                   withInt:(jint)max;

- (jboolean)accept;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisLengthFilter)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisLengthFilter *self, jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisLengthFilter *new_OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisLengthFilter *create_OrgApacheLuceneAnalysisLengthFilter_initWithBoolean_withOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(jboolean enablePositionIncrements, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisLengthFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisLengthFilter *new_OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisLengthFilter *create_OrgApacheLuceneAnalysisLengthFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *inArg, jint min, jint max);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisLengthFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisLengthFilter")
