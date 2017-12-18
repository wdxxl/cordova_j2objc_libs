//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/InputStreamDataInput.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneStoreInputStreamDataInput")
#ifdef RESTRICT_OrgApacheLuceneStoreInputStreamDataInput
#define INCLUDE_ALL_OrgApacheLuceneStoreInputStreamDataInput 0
#else
#define INCLUDE_ALL_OrgApacheLuceneStoreInputStreamDataInput 1
#endif
#undef RESTRICT_OrgApacheLuceneStoreInputStreamDataInput

#if !defined (OrgApacheLuceneStoreInputStreamDataInput_) && (INCLUDE_ALL_OrgApacheLuceneStoreInputStreamDataInput || defined(INCLUDE_OrgApacheLuceneStoreInputStreamDataInput))
#define OrgApacheLuceneStoreInputStreamDataInput_

#define RESTRICT_OrgApacheLuceneStoreDataInput 1
#define INCLUDE_OrgApacheLuceneStoreDataInput 1
#include "org/apache/lucene/store/DataInput.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class IOSByteArray;
@class JavaIoInputStream;

@interface OrgApacheLuceneStoreInputStreamDataInput : OrgApacheLuceneStoreDataInput < JavaIoCloseable >

#pragma mark Public

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is;

- (void)close;

- (jbyte)readByte;

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreInputStreamDataInput)

FOUNDATION_EXPORT void OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(OrgApacheLuceneStoreInputStreamDataInput *self, JavaIoInputStream *is);

FOUNDATION_EXPORT OrgApacheLuceneStoreInputStreamDataInput *new_OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(JavaIoInputStream *is) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneStoreInputStreamDataInput *create_OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(JavaIoInputStream *is);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreInputStreamDataInput)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneStoreInputStreamDataInput")
