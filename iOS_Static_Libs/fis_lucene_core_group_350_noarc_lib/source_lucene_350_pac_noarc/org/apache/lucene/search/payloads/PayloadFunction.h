//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/payloads/PayloadFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadFunction")
#ifdef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadFunction
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadFunction

#if !defined (OrgApacheLuceneSearchPayloadsPayloadFunction_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadFunction || defined(INCLUDE_OrgApacheLuceneSearchPayloadsPayloadFunction))
#define OrgApacheLuceneSearchPayloadsPayloadFunction_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgApacheLuceneSearchExplanation;

@interface OrgApacheLuceneSearchPayloadsPayloadFunction : NSObject < JavaIoSerializable >

#pragma mark Public

- (instancetype)init;

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore;

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)docId
                                             withInt:(jint)numPayloadsSeen
                                           withFloat:(jfloat)payloadScore;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadFunction)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadFunction_init(OrgApacheLuceneSearchPayloadsPayloadFunction *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadFunction")
