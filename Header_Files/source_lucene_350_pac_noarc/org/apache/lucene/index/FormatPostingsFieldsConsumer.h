//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/FormatPostingsFieldsConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsFieldsConsumer")
#ifdef RESTRICT_OrgApacheLuceneIndexFormatPostingsFieldsConsumer
#define INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsFieldsConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsFieldsConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFormatPostingsFieldsConsumer

#if !defined (OrgApacheLuceneIndexFormatPostingsFieldsConsumer_) && (INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsFieldsConsumer || defined(INCLUDE_OrgApacheLuceneIndexFormatPostingsFieldsConsumer))
#define OrgApacheLuceneIndexFormatPostingsFieldsConsumer_

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFormatPostingsTermsConsumer;

@interface OrgApacheLuceneIndexFormatPostingsFieldsConsumer : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (OrgApacheLuceneIndexFormatPostingsTermsConsumer *)addFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (void)finish;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFormatPostingsFieldsConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFormatPostingsFieldsConsumer_init(OrgApacheLuceneIndexFormatPostingsFieldsConsumer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFormatPostingsFieldsConsumer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsFieldsConsumer")
