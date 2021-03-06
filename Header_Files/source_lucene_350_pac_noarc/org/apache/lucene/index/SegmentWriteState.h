//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/SegmentWriteState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentWriteState")
#ifdef RESTRICT_OrgApacheLuceneIndexSegmentWriteState
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentWriteState 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSegmentWriteState 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSegmentWriteState

#if !defined (OrgApacheLuceneIndexSegmentWriteState_) && (INCLUDE_ALL_OrgApacheLuceneIndexSegmentWriteState || defined(INCLUDE_OrgApacheLuceneIndexSegmentWriteState))
#define OrgApacheLuceneIndexSegmentWriteState_

@class JavaIoPrintStream;
@class OrgApacheLuceneIndexBufferedDeletes;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneUtilBitVector;

@interface OrgApacheLuceneIndexSegmentWriteState : NSObject {
 @public
  JavaIoPrintStream *infoStream_;
  OrgApacheLuceneStoreDirectory *directory_;
  NSString *segmentName_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  jint numDocs_;
  jboolean hasVectors_;
  OrgApacheLuceneIndexBufferedDeletes *segDeletes_;
  OrgApacheLuceneUtilBitVector *deletedDocs_;
  jint termIndexInterval_;
}

#pragma mark Public

- (instancetype)initWithJavaIoPrintStream:(JavaIoPrintStream *)infoStream
        withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                             withNSString:(NSString *)segmentName
       withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fieldInfos
                                  withInt:(jint)numDocs
                                  withInt:(jint)termIndexInterval
  withOrgApacheLuceneIndexBufferedDeletes:(OrgApacheLuceneIndexBufferedDeletes *)segDeletes;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentWriteState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentWriteState, infoStream_, JavaIoPrintStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentWriteState, directory_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentWriteState, segmentName_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentWriteState, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentWriteState, segDeletes_, OrgApacheLuceneIndexBufferedDeletes *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentWriteState, deletedDocs_, OrgApacheLuceneUtilBitVector *)

inline jint OrgApacheLuceneIndexSegmentWriteState_get_skipInterval();
#define OrgApacheLuceneIndexSegmentWriteState_skipInterval 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentWriteState, skipInterval, jint)

inline jint OrgApacheLuceneIndexSegmentWriteState_get_maxSkipLevels();
#define OrgApacheLuceneIndexSegmentWriteState_maxSkipLevels 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSegmentWriteState, maxSkipLevels, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSegmentWriteState_initWithJavaIoPrintStream_withOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withOrgApacheLuceneIndexBufferedDeletes_(OrgApacheLuceneIndexSegmentWriteState *self, JavaIoPrintStream *infoStream, OrgApacheLuceneStoreDirectory *directory, NSString *segmentName, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint numDocs, jint termIndexInterval, OrgApacheLuceneIndexBufferedDeletes *segDeletes);

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentWriteState *new_OrgApacheLuceneIndexSegmentWriteState_initWithJavaIoPrintStream_withOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withOrgApacheLuceneIndexBufferedDeletes_(JavaIoPrintStream *infoStream, OrgApacheLuceneStoreDirectory *directory, NSString *segmentName, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint numDocs, jint termIndexInterval, OrgApacheLuceneIndexBufferedDeletes *segDeletes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexSegmentWriteState *create_OrgApacheLuceneIndexSegmentWriteState_initWithJavaIoPrintStream_withOrgApacheLuceneStoreDirectory_withNSString_withOrgApacheLuceneIndexFieldInfos_withInt_withInt_withOrgApacheLuceneIndexBufferedDeletes_(JavaIoPrintStream *infoStream, OrgApacheLuceneStoreDirectory *directory, NSString *segmentName, OrgApacheLuceneIndexFieldInfos *fieldInfos, jint numDocs, jint termIndexInterval, OrgApacheLuceneIndexBufferedDeletes *segDeletes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentWriteState)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSegmentWriteState")
