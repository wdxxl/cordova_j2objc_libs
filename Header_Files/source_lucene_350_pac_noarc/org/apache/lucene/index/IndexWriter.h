//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/IndexWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexWriter
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexWriter

#if !defined (OrgApacheLuceneIndexIndexWriter_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter || defined(INCLUDE_OrgApacheLuceneIndexIndexWriter))
#define OrgApacheLuceneIndexIndexWriter_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

#define RESTRICT_OrgApacheLuceneUtilTwoPhaseCommit 1
#define INCLUDE_OrgApacheLuceneUtilTwoPhaseCommit 1
#include "org/apache/lucene/util/TwoPhaseCommit.h"

@class IOSObjectArray;
@class JavaIoPrintStream;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneIndexBufferedDeletesStream;
@class OrgApacheLuceneIndexIndexCommit;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexIndexWriterConfig;
@class OrgApacheLuceneIndexIndexWriter_FlushControl;
@class OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer;
@class OrgApacheLuceneIndexIndexWriter_MaxFieldLength;
@class OrgApacheLuceneIndexIndexWriter_ReaderPool;
@class OrgApacheLuceneIndexMergePolicy;
@class OrgApacheLuceneIndexMergePolicy_OneMerge;
@class OrgApacheLuceneIndexMergeScheduler;
@class OrgApacheLuceneIndexPayloadProcessorProvider;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchSimilarity;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaLangIterable;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneIndexIndexDeletionPolicy;

@interface OrgApacheLuceneIndexIndexWriter : NSObject < JavaIoCloseable, OrgApacheLuceneUtilTwoPhaseCommit > {
 @public
  volatile_id pendingCommit_;
  volatile_jlong pendingCommitChangeCount_;
  OrgApacheLuceneIndexSegmentInfos *segmentInfos_;
  OrgApacheLuceneIndexIndexWriter_ReaderPool *readerPool_;
  OrgApacheLuceneIndexBufferedDeletesStream *bufferedDeletesStream_;
  jboolean anyNonBulkMerges_;
  OrgApacheLuceneIndexIndexWriter_FlushControl *flushControl_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a
                                          withBoolean:(jboolean)create
          withOrgApacheLuceneIndexIndexDeletionPolicy:(id<OrgApacheLuceneIndexIndexDeletionPolicy>)deletionPolicy
   withOrgApacheLuceneIndexIndexWriter_MaxFieldLength:(OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)mfl;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a
                                          withBoolean:(jboolean)create
   withOrgApacheLuceneIndexIndexWriter_MaxFieldLength:(OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)mfl;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a
          withOrgApacheLuceneIndexIndexDeletionPolicy:(id<OrgApacheLuceneIndexIndexDeletionPolicy>)deletionPolicy
   withOrgApacheLuceneIndexIndexWriter_MaxFieldLength:(OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)mfl;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a
          withOrgApacheLuceneIndexIndexDeletionPolicy:(id<OrgApacheLuceneIndexIndexDeletionPolicy>)deletionPolicy
   withOrgApacheLuceneIndexIndexWriter_MaxFieldLength:(OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)mfl
                  withOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
                  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a
   withOrgApacheLuceneIndexIndexWriter_MaxFieldLength:(OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)mfl;

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)d
            withOrgApacheLuceneIndexIndexWriterConfig:(OrgApacheLuceneIndexIndexWriterConfig *)conf;

- (void)addDocumentWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc;

- (void)addDocumentWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (void)addDocumentsWithJavaUtilCollection:(id<JavaUtilCollection>)docs;

- (void)addDocumentsWithJavaUtilCollection:(id<JavaUtilCollection>)docs
       withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (void)addIndexesWithOrgApacheLuceneStoreDirectoryArray:(IOSObjectArray *)dirs;

- (void)addIndexesWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)readers;

- (void)addIndexesNoOptimizeWithOrgApacheLuceneStoreDirectoryArray:(IOSObjectArray *)dirs;

- (void)close;

- (void)closeWithBoolean:(jboolean)waitForMerges;

- (void)commit;

- (void)commitWithJavaUtilMap:(id<JavaUtilMap>)commitUserData;

- (void)deleteAll;

- (void)deleteDocumentsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

- (void)deleteDocumentsWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)queries;

- (void)deleteDocumentsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (void)deleteDocumentsWithOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms;

- (void)deleteUnusedFiles;

- (void)expungeDeletes;

- (void)expungeDeletesWithBoolean:(jboolean)doWait;

- (void)forceMergeWithInt:(jint)maxNumSegments;

- (void)forceMergeWithInt:(jint)maxNumSegments
              withBoolean:(jboolean)doWait;

- (void)forceMergeDeletes;

- (void)forceMergeDeletesWithBoolean:(jboolean)doWait;

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer;

- (OrgApacheLuceneIndexIndexWriterConfig *)getConfig;

+ (JavaIoPrintStream *)getDefaultInfoStream;

+ (jlong)getDefaultWriteLockTimeout;

- (OrgApacheLuceneStoreDirectory *)getDirectory;

- (JavaIoPrintStream *)getInfoStream;

- (jint)getMaxBufferedDeleteTerms;

- (jint)getMaxBufferedDocs;

- (jint)getMaxFieldLength;

- (jint)getMaxMergeDocs;

- (OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)getMergedSegmentWarmer;

- (jint)getMergeFactor;

- (OrgApacheLuceneIndexMergePolicy *)getMergePolicy;

- (OrgApacheLuceneIndexMergeScheduler *)getMergeScheduler;

- (id<JavaUtilCollection>)getMergingSegments;

- (OrgApacheLuceneIndexMergePolicy_OneMerge *)getNextMerge;

- (OrgApacheLuceneIndexPayloadProcessorProvider *)getPayloadProcessorProvider;

- (jdouble)getRAMBufferSizeMB;

- (OrgApacheLuceneIndexIndexReader *)getReader;

- (OrgApacheLuceneIndexIndexReader *)getReaderWithInt:(jint)termInfosIndexDivisor;

- (jint)getReaderTermsIndexDivisor;

- (OrgApacheLuceneSearchSimilarity *)getSimilarity;

- (jint)getTermIndexInterval;

- (jboolean)getUseCompoundFile;

- (jlong)getWriteLockTimeout;

- (jboolean)hasDeletions;

+ (jboolean)isLockedWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

- (jint)maxDoc;

- (void)maybeMerge;

- (void)mergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

- (void)messageWithNSString:(NSString *)message;

- (jint)numDeletedDocsWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (jint)numDocs;

- (jint)numRamDocs;

- (void)optimize;

- (void)optimizeWithBoolean:(jboolean)doWait;

- (void)optimizeWithInt:(jint)maxNumSegments;

- (void)prepareCommit;

- (void)prepareCommitWithJavaUtilMap:(id<JavaUtilMap>)commitUserData;

- (jlong)ramSizeInBytes;

- (void)rollback;

- (NSString *)segString;

- (NSString *)segStringWithJavaLangIterable:(id<JavaLangIterable>)infos;

- (NSString *)segStringWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

+ (void)setDefaultInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)infoStream;

+ (void)setDefaultWriteLockTimeoutWithLong:(jlong)writeLockTimeout;

- (void)setInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)infoStream;

- (void)setMaxBufferedDeleteTermsWithInt:(jint)maxBufferedDeleteTerms;

- (void)setMaxBufferedDocsWithInt:(jint)maxBufferedDocs;

- (void)setMaxFieldLengthWithInt:(jint)maxFieldLength;

- (void)setMaxMergeDocsWithInt:(jint)maxMergeDocs;

- (void)setMergedSegmentWarmerWithOrgApacheLuceneIndexIndexWriter_IndexReaderWarmer:(OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)warmer;

- (void)setMergeFactorWithInt:(jint)mergeFactor;

- (void)setMergePolicyWithOrgApacheLuceneIndexMergePolicy:(OrgApacheLuceneIndexMergePolicy *)mp;

- (void)setMergeSchedulerWithOrgApacheLuceneIndexMergeScheduler:(OrgApacheLuceneIndexMergeScheduler *)mergeScheduler;

- (void)setPayloadProcessorProviderWithOrgApacheLuceneIndexPayloadProcessorProvider:(OrgApacheLuceneIndexPayloadProcessorProvider *)pcp;

- (void)setRAMBufferSizeMBWithDouble:(jdouble)mb;

- (void)setReaderTermsIndexDivisorWithInt:(jint)divisor;

- (void)setSimilarityWithOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity;

- (void)setTermIndexIntervalWithInt:(jint)interval;

- (void)setUseCompoundFileWithBoolean:(jboolean)value;

- (void)setWriteLockTimeoutWithLong:(jlong)writeLockTimeout;

+ (void)unlockWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory;

- (void)updateDocumentWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
               withOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc;

- (void)updateDocumentWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
               withOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
               withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (void)updateDocumentsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)delTerm
                             withJavaUtilCollection:(id<JavaUtilCollection>)docs;

- (void)updateDocumentsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)delTerm
                             withJavaUtilCollection:(id<JavaUtilCollection>)docs
                withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (jboolean)verbose;

- (void)waitForMerges;

#pragma mark Protected

- (void)doAfterFlush;

- (void)doBeforeFlush;

- (void)ensureOpen;

- (void)ensureOpenWithBoolean:(jboolean)includePendingClose;

- (void)flushWithBoolean:(jboolean)triggerMerge
             withBoolean:(jboolean)applyAllDeletes;

- (void)flushWithBoolean:(jboolean)triggerMerge
             withBoolean:(jboolean)flushDocStores
             withBoolean:(jboolean)flushDeletes;

#pragma mark Package-Private

- (void)addMergeExceptionWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

- (void)checkpoint;

- (void)deletePendingFiles;

- (jint)getBufferedDeleteTermsSize;

- (jint)getDocCountWithInt:(jint)i;

- (jint)getFlushCount;

- (jint)getFlushDeletesCount;

- (jboolean)getKeepFullyDeletedSegments;

- (jint)getNumBufferedDeleteTerms;

- (jint)getNumBufferedDocuments;

- (OrgApacheLuceneIndexIndexReader *)getReaderWithBoolean:(jboolean)applyAllDeletes;

- (OrgApacheLuceneIndexIndexReader *)getReaderWithInt:(jint)termInfosIndexDivisor
                                          withBoolean:(jboolean)applyAllDeletes;

- (id<JavaUtilCollection>)getReaderFinishedListeners;

- (jint)getSegmentCount;

- (jboolean)isClosed;

- (void)keepFullyDeletedSegments;

- (void)mergeFinishWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

- (void)mergeInitWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

- (void)mergeSuccessWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

- (OrgApacheLuceneIndexSegmentInfo *)newestSegment OBJC_METHOD_FAMILY_NONE;

- (NSString *)newSegmentName OBJC_METHOD_FAMILY_NONE;

- (jboolean)nrtIsCurrentWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos;

- (jboolean)registerMergeWithOrgApacheLuceneIndexMergePolicy_OneMerge:(OrgApacheLuceneIndexMergePolicy_OneMerge *)merge;

- (jboolean)testPointWithNSString:(NSString *)name;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexIndexWriter)

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneIndexIndexWriter, pendingCommit_, OrgApacheLuceneIndexSegmentInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexWriter, segmentInfos_, OrgApacheLuceneIndexSegmentInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexWriter, readerPool_, OrgApacheLuceneIndexIndexWriter_ReaderPool *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexWriter, bufferedDeletesStream_, OrgApacheLuceneIndexBufferedDeletesStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexWriter, flushControl_, OrgApacheLuceneIndexIndexWriter_FlushControl *)

inline jlong OrgApacheLuceneIndexIndexWriter_get_WRITE_LOCK_TIMEOUT();
inline jlong OrgApacheLuceneIndexIndexWriter_set_WRITE_LOCK_TIMEOUT(jlong value);
inline jlong *OrgApacheLuceneIndexIndexWriter_getRef_WRITE_LOCK_TIMEOUT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jlong OrgApacheLuceneIndexIndexWriter_WRITE_LOCK_TIMEOUT;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneIndexIndexWriter, WRITE_LOCK_TIMEOUT, jlong)

inline NSString *OrgApacheLuceneIndexIndexWriter_get_WRITE_LOCK_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneIndexIndexWriter_WRITE_LOCK_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexWriter, WRITE_LOCK_NAME, NSString *)

inline jint OrgApacheLuceneIndexIndexWriter_get_DISABLE_AUTO_FLUSH();
#define OrgApacheLuceneIndexIndexWriter_DISABLE_AUTO_FLUSH -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriter, DISABLE_AUTO_FLUSH, jint)

inline jint OrgApacheLuceneIndexIndexWriter_get_DEFAULT_MAX_BUFFERED_DOCS();
#define OrgApacheLuceneIndexIndexWriter_DEFAULT_MAX_BUFFERED_DOCS -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriter, DEFAULT_MAX_BUFFERED_DOCS, jint)

inline jdouble OrgApacheLuceneIndexIndexWriter_get_DEFAULT_RAM_BUFFER_SIZE_MB();
#define OrgApacheLuceneIndexIndexWriter_DEFAULT_RAM_BUFFER_SIZE_MB 16.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriter, DEFAULT_RAM_BUFFER_SIZE_MB, jdouble)

inline jint OrgApacheLuceneIndexIndexWriter_get_DEFAULT_MAX_BUFFERED_DELETE_TERMS();
#define OrgApacheLuceneIndexIndexWriter_DEFAULT_MAX_BUFFERED_DELETE_TERMS -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriter, DEFAULT_MAX_BUFFERED_DELETE_TERMS, jint)

inline jint OrgApacheLuceneIndexIndexWriter_get_DEFAULT_MAX_FIELD_LENGTH();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneIndexIndexWriter_DEFAULT_MAX_FIELD_LENGTH;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexIndexWriter, DEFAULT_MAX_FIELD_LENGTH, jint)

inline jint OrgApacheLuceneIndexIndexWriter_get_DEFAULT_TERM_INDEX_INTERVAL();
#define OrgApacheLuceneIndexIndexWriter_DEFAULT_TERM_INDEX_INTERVAL 128
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriter, DEFAULT_TERM_INDEX_INTERVAL, jint)

inline jint OrgApacheLuceneIndexIndexWriter_get_MAX_TERM_LENGTH();
#define OrgApacheLuceneIndexIndexWriter_MAX_TERM_LENGTH 16383
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriter, MAX_TERM_LENGTH, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withBoolean_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneIndexIndexWriter *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, jboolean create, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withBoolean_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, jboolean create, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *create_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withBoolean_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, jboolean create, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneIndexIndexWriter *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *create_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneIndexIndexWriter *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *create_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withBoolean_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneIndexIndexWriter *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, jboolean create, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withBoolean_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, jboolean create, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *create_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withBoolean_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, jboolean create, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneIndexIndexWriter *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl, OrgApacheLuceneIndexIndexCommit *commit);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl, OrgApacheLuceneIndexIndexCommit *commit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *create_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexIndexDeletionPolicy_withOrgApacheLuceneIndexIndexWriter_MaxFieldLength_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneAnalysisAnalyzer *a, id<OrgApacheLuceneIndexIndexDeletionPolicy> deletionPolicy, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *mfl, OrgApacheLuceneIndexIndexCommit *commit);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(OrgApacheLuceneIndexIndexWriter *self, OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexIndexWriterConfig *conf);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexIndexWriterConfig *conf) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter *create_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(OrgApacheLuceneStoreDirectory *d, OrgApacheLuceneIndexIndexWriterConfig *conf);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_setDefaultInfoStreamWithJavaIoPrintStream_(JavaIoPrintStream *infoStream);

FOUNDATION_EXPORT JavaIoPrintStream *OrgApacheLuceneIndexIndexWriter_getDefaultInfoStream();

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_setDefaultWriteLockTimeoutWithLong_(jlong writeLockTimeout);

FOUNDATION_EXPORT jlong OrgApacheLuceneIndexIndexWriter_getDefaultWriteLockTimeout();

FOUNDATION_EXPORT jboolean OrgApacheLuceneIndexIndexWriter_isLockedWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_unlockWithOrgApacheLuceneStoreDirectory_(OrgApacheLuceneStoreDirectory *directory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriter)

#endif

#if !defined (OrgApacheLuceneIndexIndexWriter_ReaderPool_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter || defined(INCLUDE_OrgApacheLuceneIndexIndexWriter_ReaderPool))
#define OrgApacheLuceneIndexIndexWriter_ReaderPool_

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexSegmentInfo;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneIndexSegmentReader;
@protocol JavaUtilList;

@interface OrgApacheLuceneIndexIndexWriter_ReaderPool : NSObject

#pragma mark Public

- (void)dropWithJavaUtilList:(id<JavaUtilList>)infos;

- (void)dropWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (void)dropAll;

- (OrgApacheLuceneIndexSegmentReader *)getWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
                                                                  withBoolean:(jboolean)doOpenStores;

- (OrgApacheLuceneIndexSegmentReader *)getWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
                                                                  withBoolean:(jboolean)doOpenStores
                                                                      withInt:(jint)readBufferSize
                                                                      withInt:(jint)termsIndexDivisor;

- (OrgApacheLuceneIndexSegmentReader *)getIfExistsWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (OrgApacheLuceneIndexSegmentReader *)getReadOnlyCloneWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
                                                                               withBoolean:(jboolean)doOpenStores
                                                                                   withInt:(jint)termInfosIndexDivisor;

- (jboolean)infoIsLiveWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (OrgApacheLuceneIndexSegmentInfo *)mapToLiveWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info;

- (jboolean)release__WithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)sr;

- (jboolean)release__WithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)sr
                                               withBoolean:(jboolean)drop;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)outer$;

- (void)clearWithJavaUtilList:(id<JavaUtilList>)infos;

- (void)close;

- (void)commitWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexWriter_ReaderPool)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_ReaderPool_initWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexWriter_ReaderPool *self, OrgApacheLuceneIndexIndexWriter *outer$);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_ReaderPool *new_OrgApacheLuceneIndexIndexWriter_ReaderPool_initWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexWriter *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_ReaderPool *create_OrgApacheLuceneIndexIndexWriter_ReaderPool_initWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexWriter *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriter_ReaderPool)

#endif

#if !defined (OrgApacheLuceneIndexIndexWriter_MaxFieldLength_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter || defined(INCLUDE_OrgApacheLuceneIndexIndexWriter_MaxFieldLength))
#define OrgApacheLuceneIndexIndexWriter_MaxFieldLength_

@interface OrgApacheLuceneIndexIndexWriter_MaxFieldLength : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)limit;

- (jint)getLimit;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexIndexWriter_MaxFieldLength)

inline OrgApacheLuceneIndexIndexWriter_MaxFieldLength *OrgApacheLuceneIndexIndexWriter_MaxFieldLength_get_UNLIMITED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_MaxFieldLength *OrgApacheLuceneIndexIndexWriter_MaxFieldLength_UNLIMITED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexWriter_MaxFieldLength, UNLIMITED, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)

inline OrgApacheLuceneIndexIndexWriter_MaxFieldLength *OrgApacheLuceneIndexIndexWriter_MaxFieldLength_get_LIMITED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_MaxFieldLength *OrgApacheLuceneIndexIndexWriter_MaxFieldLength_LIMITED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexIndexWriter_MaxFieldLength, LIMITED, OrgApacheLuceneIndexIndexWriter_MaxFieldLength *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_MaxFieldLength_initWithInt_(OrgApacheLuceneIndexIndexWriter_MaxFieldLength *self, jint limit);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_MaxFieldLength *new_OrgApacheLuceneIndexIndexWriter_MaxFieldLength_initWithInt_(jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_MaxFieldLength *create_OrgApacheLuceneIndexIndexWriter_MaxFieldLength_initWithInt_(jint limit);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriter_MaxFieldLength)

#endif

#if !defined (OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter || defined(INCLUDE_OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer))
#define OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer_

@class OrgApacheLuceneIndexIndexReader;

@interface OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer : NSObject

#pragma mark Public

- (instancetype)init;

- (void)warmWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer_init(OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer)

#endif

#if !defined (OrgApacheLuceneIndexIndexWriter_FlushControl_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter || defined(INCLUDE_OrgApacheLuceneIndexIndexWriter_FlushControl))
#define OrgApacheLuceneIndexIndexWriter_FlushControl_

@class OrgApacheLuceneIndexIndexWriter;

@interface OrgApacheLuceneIndexIndexWriter_FlushControl : NSObject

#pragma mark Public

- (void)clearDeletes;

- (void)clearFlushPending;

- (jboolean)flushByRAMUsageWithNSString:(NSString *)reason;

- (jboolean)getFlushDeletes;

- (jboolean)getFlushPending;

- (void)setFlushPendingNoWaitWithNSString:(NSString *)reason;

- (jboolean)waitUpdateWithInt:(jint)docInc
                      withInt:(jint)delInc;

- (jboolean)waitUpdateWithInt:(jint)docInc
                      withInt:(jint)delInc
                  withBoolean:(jboolean)skipWait;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexWriter_FlushControl)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriter_FlushControl_initWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexWriter_FlushControl *self, OrgApacheLuceneIndexIndexWriter *outer$);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_FlushControl *new_OrgApacheLuceneIndexIndexWriter_FlushControl_initWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexWriter *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriter_FlushControl *create_OrgApacheLuceneIndexIndexWriter_FlushControl_initWithOrgApacheLuceneIndexIndexWriter_(OrgApacheLuceneIndexIndexWriter *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriter_FlushControl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexWriter")
