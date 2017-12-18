//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/RecyclingByteBlockAllocator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilRecyclingByteBlockAllocator")
#ifdef RESTRICT_OrgApacheLuceneUtilRecyclingByteBlockAllocator
#define INCLUDE_ALL_OrgApacheLuceneUtilRecyclingByteBlockAllocator 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilRecyclingByteBlockAllocator 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilRecyclingByteBlockAllocator

#if !defined (OrgApacheLuceneUtilRecyclingByteBlockAllocator_) && (INCLUDE_ALL_OrgApacheLuceneUtilRecyclingByteBlockAllocator || defined(INCLUDE_OrgApacheLuceneUtilRecyclingByteBlockAllocator))
#define OrgApacheLuceneUtilRecyclingByteBlockAllocator_

#define RESTRICT_OrgApacheLuceneUtilByteBlockPool 1
#define INCLUDE_OrgApacheLuceneUtilByteBlockPool_Allocator 1
#include "org/apache/lucene/util/ByteBlockPool.h"

@class IOSByteArray;
@class IOSObjectArray;
@class JavaUtilConcurrentAtomicAtomicLong;

@interface OrgApacheLuceneUtilRecyclingByteBlockAllocator : OrgApacheLuceneUtilByteBlockPool_Allocator

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)blockSize
                    withInt:(jint)maxBufferedBlocks;

- (instancetype)initWithInt:(jint)blockSize
                    withInt:(jint)maxBufferedBlocks
withJavaUtilConcurrentAtomicAtomicLong:(JavaUtilConcurrentAtomicAtomicLong *)bytesUsed;

- (jlong)bytesUsed;

- (jint)freeBlocksWithInt:(jint)num;

- (IOSByteArray *)getByteBlock;

- (jint)maxBufferedBlocks;

- (jint)numBufferedBlocks;

- (void)recycleByteBlocksWithByteArray2:(IOSObjectArray *)blocks
                                withInt:(jint)start
                                withInt:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRecyclingByteBlockAllocator)

inline jint OrgApacheLuceneUtilRecyclingByteBlockAllocator_get_DEFAULT_BUFFERED_BLOCKS();
#define OrgApacheLuceneUtilRecyclingByteBlockAllocator_DEFAULT_BUFFERED_BLOCKS 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilRecyclingByteBlockAllocator, DEFAULT_BUFFERED_BLOCKS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilRecyclingByteBlockAllocator_initWithInt_withInt_withJavaUtilConcurrentAtomicAtomicLong_(OrgApacheLuceneUtilRecyclingByteBlockAllocator *self, jint blockSize, jint maxBufferedBlocks, JavaUtilConcurrentAtomicAtomicLong *bytesUsed);

FOUNDATION_EXPORT OrgApacheLuceneUtilRecyclingByteBlockAllocator *new_OrgApacheLuceneUtilRecyclingByteBlockAllocator_initWithInt_withInt_withJavaUtilConcurrentAtomicAtomicLong_(jint blockSize, jint maxBufferedBlocks, JavaUtilConcurrentAtomicAtomicLong *bytesUsed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilRecyclingByteBlockAllocator *create_OrgApacheLuceneUtilRecyclingByteBlockAllocator_initWithInt_withInt_withJavaUtilConcurrentAtomicAtomicLong_(jint blockSize, jint maxBufferedBlocks, JavaUtilConcurrentAtomicAtomicLong *bytesUsed);

FOUNDATION_EXPORT void OrgApacheLuceneUtilRecyclingByteBlockAllocator_initWithInt_withInt_(OrgApacheLuceneUtilRecyclingByteBlockAllocator *self, jint blockSize, jint maxBufferedBlocks);

FOUNDATION_EXPORT OrgApacheLuceneUtilRecyclingByteBlockAllocator *new_OrgApacheLuceneUtilRecyclingByteBlockAllocator_initWithInt_withInt_(jint blockSize, jint maxBufferedBlocks) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilRecyclingByteBlockAllocator *create_OrgApacheLuceneUtilRecyclingByteBlockAllocator_initWithInt_withInt_(jint blockSize, jint maxBufferedBlocks);

FOUNDATION_EXPORT void OrgApacheLuceneUtilRecyclingByteBlockAllocator_init(OrgApacheLuceneUtilRecyclingByteBlockAllocator *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilRecyclingByteBlockAllocator *new_OrgApacheLuceneUtilRecyclingByteBlockAllocator_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilRecyclingByteBlockAllocator *create_OrgApacheLuceneUtilRecyclingByteBlockAllocator_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRecyclingByteBlockAllocator)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilRecyclingByteBlockAllocator")
