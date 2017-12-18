//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/messages/MessageImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneMessagesMessageImpl")
#ifdef RESTRICT_OrgApacheLuceneMessagesMessageImpl
#define INCLUDE_ALL_OrgApacheLuceneMessagesMessageImpl 0
#else
#define INCLUDE_ALL_OrgApacheLuceneMessagesMessageImpl 1
#endif
#undef RESTRICT_OrgApacheLuceneMessagesMessageImpl

#if !defined (OrgApacheLuceneMessagesMessageImpl_) && (INCLUDE_ALL_OrgApacheLuceneMessagesMessageImpl || defined(INCLUDE_OrgApacheLuceneMessagesMessageImpl))
#define OrgApacheLuceneMessagesMessageImpl_

#define RESTRICT_OrgApacheLuceneMessagesMessage 1
#define INCLUDE_OrgApacheLuceneMessagesMessage 1
#include "org/apache/lucene/messages/Message.h"

@class IOSObjectArray;
@class JavaUtilLocale;

@interface OrgApacheLuceneMessagesMessageImpl : NSObject < OrgApacheLuceneMessagesMessage >

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)key;

- (instancetype)initWithNSString:(NSString *)key
               withNSObjectArray:(IOSObjectArray *)args;

- (IOSObjectArray *)getArguments;

- (NSString *)getKey;

- (NSString *)getLocalizedMessage;

- (NSString *)getLocalizedMessageWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMessagesMessageImpl)

FOUNDATION_EXPORT void OrgApacheLuceneMessagesMessageImpl_initWithNSString_(OrgApacheLuceneMessagesMessageImpl *self, NSString *key);

FOUNDATION_EXPORT OrgApacheLuceneMessagesMessageImpl *new_OrgApacheLuceneMessagesMessageImpl_initWithNSString_(NSString *key) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMessagesMessageImpl *create_OrgApacheLuceneMessagesMessageImpl_initWithNSString_(NSString *key);

FOUNDATION_EXPORT void OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(OrgApacheLuceneMessagesMessageImpl *self, NSString *key, IOSObjectArray *args);

FOUNDATION_EXPORT OrgApacheLuceneMessagesMessageImpl *new_OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMessagesMessageImpl *create_OrgApacheLuceneMessagesMessageImpl_initWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMessagesMessageImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneMessagesMessageImpl")