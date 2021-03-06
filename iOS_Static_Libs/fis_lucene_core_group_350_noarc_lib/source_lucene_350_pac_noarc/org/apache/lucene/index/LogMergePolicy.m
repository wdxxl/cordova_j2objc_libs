//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/LogMergePolicy.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Comparable.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/LogMergePolicy.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentInfos.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/util/SetOnce.h"

@interface OrgApacheLuceneIndexLogMergePolicy ()

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                                                              withInt:(jint)maxNumSegments
                                                                                                              withInt:(jint)last;

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                                                                   withInt:(jint)maxNumSegments
                                                                                                                   withInt:(jint)last;

@end

__attribute__((unused)) static OrgApacheLuceneIndexMergePolicy_MergeSpecification *OrgApacheLuceneIndexLogMergePolicy_findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(OrgApacheLuceneIndexLogMergePolicy *self, OrgApacheLuceneIndexSegmentInfos *infos, jint maxNumSegments, jint last);

__attribute__((unused)) static OrgApacheLuceneIndexMergePolicy_MergeSpecification *OrgApacheLuceneIndexLogMergePolicy_findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(OrgApacheLuceneIndexLogMergePolicy *self, OrgApacheLuceneIndexSegmentInfos *infos, jint maxNumSegments, jint last);

@interface OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel : NSObject < JavaLangComparable > {
 @public
  OrgApacheLuceneIndexSegmentInfo *info_;
  jfloat level_;
  jint index_;
}

- (instancetype)initWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
                                              withFloat:(jfloat)level
                                                withInt:(jint)index;

- (jint)compareToWithId:(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *)other;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel, info_, OrgApacheLuceneIndexSegmentInfo *)

__attribute__((unused)) static void OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *self, OrgApacheLuceneIndexSegmentInfo *info, jfloat level, jint index);

__attribute__((unused)) static OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *new_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(OrgApacheLuceneIndexSegmentInfo *info, jfloat level, jint index) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *create_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(OrgApacheLuceneIndexSegmentInfo *info, jfloat level, jint index);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel)

@implementation OrgApacheLuceneIndexLogMergePolicy

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexLogMergePolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)verbose {
  OrgApacheLuceneIndexIndexWriter *w = [((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get];
  return w != nil && [w verbose];
}

- (jdouble)getNoCFSRatio {
  return noCFSRatio_;
}

- (void)setNoCFSRatioWithDouble:(jdouble)noCFSRatio {
  if (noCFSRatio < 0.0 || noCFSRatio > 1.0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"noCFSRatio must be 0.0 to 1.0 inclusive; got ", noCFSRatio));
  }
  self->noCFSRatio_ = noCFSRatio;
}

- (void)messageWithNSString:(NSString *)message {
  if ([self verbose]) [((OrgApacheLuceneIndexIndexWriter *) nil_chk([((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get])) messageWithNSString:JreStrcat("$$", @"LMP: ", message)];
}

- (jint)getMergeFactor {
  return mergeFactor_;
}

- (void)setMergeFactorWithInt:(jint)mergeFactor {
  if (mergeFactor < 2) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"mergeFactor cannot be less than 2");
  self->mergeFactor_ = mergeFactor;
}

- (jboolean)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                            withOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)mergedInfo {
  jboolean doCFS;
  if (!useCompoundFile_) {
    doCFS = false;
  }
  else if (noCFSRatio_ == 1.0) {
    doCFS = true;
  }
  else {
    jlong totalSize = 0;
    for (OrgApacheLuceneIndexSegmentInfo * __strong info in nil_chk(infos)) totalSize += [self sizeWithOrgApacheLuceneIndexSegmentInfo:info];
    doCFS = ([self sizeWithOrgApacheLuceneIndexSegmentInfo:mergedInfo] <= noCFSRatio_ * totalSize);
  }
  return doCFS;
}

- (void)setUseCompoundFileWithBoolean:(jboolean)useCompoundFile {
  self->useCompoundFile_ = useCompoundFile;
}

- (jboolean)getUseCompoundFile {
  return useCompoundFile_;
}

- (void)setCalibrateSizeByDeletesWithBoolean:(jboolean)calibrateSizeByDeletes {
  self->calibrateSizeByDeletes_ = calibrateSizeByDeletes;
}

- (jboolean)getCalibrateSizeByDeletes {
  return calibrateSizeByDeletes_;
}

- (void)close {
}

- (jlong)sizeWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)sizeDocsWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info {
  if (calibrateSizeByDeletes_) {
    jint delCount = [((OrgApacheLuceneIndexIndexWriter *) nil_chk([((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get])) numDeletedDocsWithOrgApacheLuceneIndexSegmentInfo:info];
    JreAssert((delCount <= ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info))->docCount_), (@"org/apache/lucene/index/LogMergePolicy.java:185 condition failed: assert delCount <= info.docCount;"));
    return (info->docCount_ - (jlong) delCount);
  }
  else {
    return ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info))->docCount_;
  }
}

- (jlong)sizeBytesWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info {
  jlong byteSize = [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info)) sizeInBytesWithBoolean:true];
  if (calibrateSizeByDeletes_) {
    jint delCount = [((OrgApacheLuceneIndexIndexWriter *) nil_chk([((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get])) numDeletedDocsWithOrgApacheLuceneIndexSegmentInfo:info];
    jdouble delRatio = (info->docCount_ <= 0 ? 0.0f : ((jfloat) delCount / (jfloat) info->docCount_));
    JreAssert((delRatio <= 1.0), (@"org/apache/lucene/index/LogMergePolicy.java:197 condition failed: assert delRatio <= 1.0;"));
    return (info->docCount_ <= 0 ? byteSize : JreFpToLong((byteSize * (1.0 - delRatio))));
  }
  else {
    return byteSize;
  }
}

- (jboolean)isMergedWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                 withInt:(jint)maxNumSegments
                                         withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge {
  jint numSegments = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos)) size];
  jint numToMerge = 0;
  OrgApacheLuceneIndexSegmentInfo *mergeInfo = nil;
  jboolean segmentIsOriginal = false;
  for (jint i = 0; i < numSegments && numToMerge <= maxNumSegments; i++) {
    OrgApacheLuceneIndexSegmentInfo *info = [infos infoWithInt:i];
    JavaLangBoolean *isOriginal = [((id<JavaUtilMap>) nil_chk(segmentsToMerge)) getWithId:info];
    if (isOriginal != nil) {
      segmentIsOriginal = [isOriginal booleanValue];
      numToMerge++;
      mergeInfo = info;
    }
  }
  return numToMerge <= maxNumSegments && (numToMerge != 1 || !segmentIsOriginal || [self isMergedWithOrgApacheLuceneIndexSegmentInfo:mergeInfo]);
}

- (jboolean)isMergedWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info {
  OrgApacheLuceneIndexIndexWriter *w = [((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get];
  JreAssert((w != nil), (@"org/apache/lucene/index/LogMergePolicy.java:229 condition failed: assert w != null;"));
  jboolean hasDeletions = [((OrgApacheLuceneIndexIndexWriter *) nil_chk(w)) numDeletedDocsWithOrgApacheLuceneIndexSegmentInfo:info] > 0;
  return !hasDeletions && ![((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info)) hasSeparateNorms] && info->dir_ == [w getDirectory] && ([info getUseCompoundFile] == useCompoundFile_ || noCFSRatio_ < 1.0);
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                                                              withInt:(jint)maxNumSegments
                                                                                                              withInt:(jint)last {
  return OrgApacheLuceneIndexLogMergePolicy_findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(self, infos, maxNumSegments, last);
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                                                                   withInt:(jint)maxNumSegments
                                                                                                                   withInt:(jint)last {
  return OrgApacheLuceneIndexLogMergePolicy_findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(self, infos, maxNumSegments, last);
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                                                     withInt:(jint)maxNumSegments
                                                                                             withJavaUtilMap:(id<JavaUtilMap>)segmentsToMerge {
  JreAssert((maxNumSegments > 0), (@"org/apache/lucene/index/LogMergePolicy.java:355 condition failed: assert maxNumSegments > 0;"));
  if ([self verbose]) {
    [self messageWithNSString:JreStrcat("$I$@", @"findForcedMerges: maxNumSegs=", maxNumSegments, @" segsToMerge=", segmentsToMerge)];
  }
  if ([self isMergedWithOrgApacheLuceneIndexSegmentInfos:infos withInt:maxNumSegments withJavaUtilMap:segmentsToMerge]) {
    if ([self verbose]) {
      [self messageWithNSString:@"already merged; skip"];
    }
    return nil;
  }
  jint last = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos)) size];
  while (last > 0) {
    OrgApacheLuceneIndexSegmentInfo *info = [infos infoWithInt:--last];
    if ([((id<JavaUtilMap>) nil_chk(segmentsToMerge)) getWithId:info] != nil) {
      last++;
      break;
    }
  }
  if (last == 0) return nil;
  if (maxNumSegments == 1 && last == 1 && [self isMergedWithOrgApacheLuceneIndexSegmentInfo:[infos infoWithInt:0]]) {
    if ([self verbose]) {
      [self messageWithNSString:@"already 1 seg; skip"];
    }
    return nil;
  }
  jboolean anyTooLarge = false;
  for (jint i = 0; i < last; i++) {
    OrgApacheLuceneIndexSegmentInfo *info = [infos infoWithInt:i];
    if ([self sizeWithOrgApacheLuceneIndexSegmentInfo:info] > maxMergeSizeForForcedMerge_ || [self sizeDocsWithOrgApacheLuceneIndexSegmentInfo:info] > maxMergeDocs_) {
      anyTooLarge = true;
      break;
    }
  }
  if (anyTooLarge) {
    return OrgApacheLuceneIndexLogMergePolicy_findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(self, infos, maxNumSegments, last);
  }
  else {
    return OrgApacheLuceneIndexLogMergePolicy_findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(self, infos, maxNumSegments, last);
  }
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)segmentInfos {
  id<JavaUtilList> segments = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(segmentInfos)) asList];
  jint numSegments = [((id<JavaUtilList>) nil_chk(segments)) size];
  if ([self verbose]) [self messageWithNSString:JreStrcat("$I$", @"findForcedDeleteMerges: ", numSegments, @" segments")];
  OrgApacheLuceneIndexMergePolicy_MergeSpecification *spec = create_OrgApacheLuceneIndexMergePolicy_MergeSpecification_init();
  jint firstSegmentWithDeletions = -1;
  OrgApacheLuceneIndexIndexWriter *w = [((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get];
  JreAssert((w != nil), (@"org/apache/lucene/index/LogMergePolicy.java:425 condition failed: assert w != null;"));
  for (jint i = 0; i < numSegments; i++) {
    OrgApacheLuceneIndexSegmentInfo *info = [segmentInfos infoWithInt:i];
    jint delCount = [((OrgApacheLuceneIndexIndexWriter *) nil_chk(w)) numDeletedDocsWithOrgApacheLuceneIndexSegmentInfo:info];
    if (delCount > 0) {
      if ([self verbose]) [self messageWithNSString:JreStrcat("$$$", @"  segment ", ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(info))->name_, @" has deletions")];
      if (firstSegmentWithDeletions == -1) firstSegmentWithDeletions = i;
      else if (i - firstSegmentWithDeletions == mergeFactor_) {
        if ([self verbose]) [self messageWithNSString:JreStrcat("$I$I$", @"  add merge ", firstSegmentWithDeletions, @" to ", (i - 1), @" inclusive")];
        [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([segments subListWithInt:firstSegmentWithDeletions withInt:i])];
        firstSegmentWithDeletions = i;
      }
    }
    else if (firstSegmentWithDeletions != -1) {
      if ([self verbose]) [self messageWithNSString:JreStrcat("$I$I$", @"  add merge ", firstSegmentWithDeletions, @" to ", (i - 1), @" inclusive")];
      [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([segments subListWithInt:firstSegmentWithDeletions withInt:i])];
      firstSegmentWithDeletions = -1;
    }
  }
  if (firstSegmentWithDeletions != -1) {
    if ([self verbose]) [self messageWithNSString:JreStrcat("$I$I$", @"  add merge ", firstSegmentWithDeletions, @" to ", (numSegments - 1), @" inclusive")];
    [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([segments subListWithInt:firstSegmentWithDeletions withInt:numSegments])];
  }
  return spec;
}

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification *)findMergesWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos {
  jint numSegments = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos)) size];
  if ([self verbose]) [self messageWithNSString:JreStrcat("$I$", @"findMerges: ", numSegments, @" segments")];
  id<JavaUtilList> levels = create_JavaUtilArrayList_init();
  jfloat norm = (jfloat) JavaLangMath_logWithDouble_(mergeFactor_);
  id<JavaUtilCollection> mergingSegments = [((OrgApacheLuceneIndexIndexWriter *) nil_chk([((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get])) getMergingSegments];
  for (jint i = 0; i < numSegments; i++) {
    OrgApacheLuceneIndexSegmentInfo *info = [infos infoWithInt:i];
    jlong size = [self sizeWithOrgApacheLuceneIndexSegmentInfo:info];
    if (size < 1) {
      size = 1;
    }
    OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *infoLevel = create_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(info, (jfloat) JavaLangMath_logWithDouble_(size) / norm, i);
    [levels addWithId:infoLevel];
    if ([self verbose]) {
      jlong segBytes = [self sizeBytesWithOrgApacheLuceneIndexSegmentInfo:info];
      NSString *extra = [((id<JavaUtilCollection>) nil_chk(mergingSegments)) containsWithId:info] ? @" [merging]" : @"";
      if (size >= maxMergeSize_) {
        JreStrAppend(&extra, "$", @" [skip: too large]");
      }
      [self messageWithNSString:JreStrcat("$$$F$$$", @"seg=", [((OrgApacheLuceneIndexIndexWriter *) nil_chk([writer_ get])) segStringWithOrgApacheLuceneIndexSegmentInfo:info], @" level=", infoLevel->level_, @" size=", NSString_java_formatWithNSString_withNSObjectArray_(@"%.3f MB", [IOSObjectArray arrayWithObjects:(id[]){ JavaLangDouble_valueOfWithDouble_(segBytes / 1024 / 1024.) } count:1 type:NSObject_class_()]), extra)];
    }
  }
  jfloat levelFloor;
  if (minMergeSize_ <= 0) levelFloor = (jfloat) 0.0;
  else levelFloor = (jfloat) (JavaLangMath_logWithDouble_(minMergeSize_) / norm);
  OrgApacheLuceneIndexMergePolicy_MergeSpecification *spec = nil;
  jint numMergeableSegments = [levels size];
  jint start = 0;
  while (start < numMergeableSegments) {
    jfloat maxLevel = ((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk([levels getWithInt:start]))->level_;
    for (jint i = 1 + start; i < numMergeableSegments; i++) {
      jfloat level = ((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk([levels getWithInt:i]))->level_;
      if (level > maxLevel) maxLevel = level;
    }
    jfloat levelBottom;
    if (maxLevel <= levelFloor) levelBottom = -1.0f;
    else {
      levelBottom = (jfloat) (maxLevel - OrgApacheLuceneIndexLogMergePolicy_LEVEL_LOG_SPAN);
      if (levelBottom < levelFloor && maxLevel >= levelFloor) levelBottom = levelFloor;
    }
    jint upto = numMergeableSegments - 1;
    while (upto >= start) {
      if (((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk([levels getWithInt:upto]))->level_ >= levelBottom) {
        break;
      }
      upto--;
    }
    if ([self verbose]) [self messageWithNSString:JreStrcat("$F$F$I$", @"  level ", levelBottom, @" to ", maxLevel, @": ", (1 + upto - start), @" segments")];
    jint end = start + mergeFactor_;
    while (end <= 1 + upto) {
      jboolean anyTooLarge = false;
      jboolean anyMerging = false;
      for (jint i = start; i < end; i++) {
        OrgApacheLuceneIndexSegmentInfo *info = ((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk([levels getWithInt:i]))->info_;
        anyTooLarge |= ([self sizeWithOrgApacheLuceneIndexSegmentInfo:info] >= maxMergeSize_ || [self sizeDocsWithOrgApacheLuceneIndexSegmentInfo:info] >= maxMergeDocs_);
        if ([((id<JavaUtilCollection>) nil_chk(mergingSegments)) containsWithId:info]) {
          anyMerging = true;
          break;
        }
      }
      if (anyMerging) {
      }
      else if (!anyTooLarge) {
        if (spec == nil) spec = create_OrgApacheLuceneIndexMergePolicy_MergeSpecification_init();
        id<JavaUtilList> mergeInfos = create_JavaUtilArrayList_init();
        for (jint i = start; i < end; i++) {
          [mergeInfos addWithId:((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk([levels getWithInt:i]))->info_];
          JreAssert(([infos containsWithOrgApacheLuceneIndexSegmentInfo:((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk([levels getWithInt:i]))->info_]), (@"org/apache/lucene/index/LogMergePolicy.java:602 condition failed: assert infos.contains(levels.get(i).info);"));
        }
        if ([self verbose]) {
          [self messageWithNSString:JreStrcat("$$$I$I", @"  add merge=", [((OrgApacheLuceneIndexIndexWriter *) nil_chk([writer_ get])) segStringWithJavaLangIterable:mergeInfos], @" start=", start, @" end=", end)];
        }
        [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_(mergeInfos)];
      }
      else if ([self verbose]) {
        [self messageWithNSString:JreStrcat("$I$I$", @"    ", start, @" to ", end, @": contains segment over maxMergeSize or maxMergeDocs; skipping")];
      }
      start = end;
      end = start + mergeFactor_;
    }
    start = 1 + upto;
  }
  return spec;
}

- (void)setMaxMergeDocsWithInt:(jint)maxMergeDocs {
  self->maxMergeDocs_ = maxMergeDocs;
}

- (jint)getMaxMergeDocs {
  return maxMergeDocs_;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithNSString_(JreStrcat("C$$", '[', [[self java_getClass] getSimpleName], @": "));
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"minMergeSize="])) appendWithLong:minMergeSize_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"mergeFactor="])) appendWithInt:mergeFactor_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"maxMergeSize="])) appendWithLong:maxMergeSize_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"maxMergeSizeForForcedMerge="])) appendWithLong:maxMergeSizeForForcedMerge_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"calibrateSizeByDeletes="])) appendWithBoolean:calibrateSizeByDeletes_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"maxMergeDocs="])) appendWithInt:maxMergeDocs_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"useCompoundFile="])) appendWithBoolean:useCompoundFile_])) appendWithNSString:@", "];
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"noCFSRatio="])) appendWithDouble:noCFSRatio_];
  [sb appendWithNSString:@"]"];
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, 8, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x404, 12, 13, 8, -1, -1, -1 },
    { NULL, "J", 0x4, 14, 13, 8, -1, -1, -1 },
    { NULL, "J", 0x4, 15, 13, 8, -1, -1, -1 },
    { NULL, "Z", 0x4, 16, 17, 8, 18, -1, -1 },
    { NULL, "Z", 0x4, 16, 13, 8, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x2, 19, 20, 8, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x2, 21, 20, 8, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x1, 22, 17, 8, 23, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x1, 24, 25, 26, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexMergePolicy_MergeSpecification;", 0x1, 27, 25, 8, -1, -1, -1 },
    { NULL, "V", 0x1, 28, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 29, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(verbose);
  methods[2].selector = @selector(getNoCFSRatio);
  methods[3].selector = @selector(setNoCFSRatioWithDouble:);
  methods[4].selector = @selector(messageWithNSString:);
  methods[5].selector = @selector(getMergeFactor);
  methods[6].selector = @selector(setMergeFactorWithInt:);
  methods[7].selector = @selector(useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:withOrgApacheLuceneIndexSegmentInfo:);
  methods[8].selector = @selector(setUseCompoundFileWithBoolean:);
  methods[9].selector = @selector(getUseCompoundFile);
  methods[10].selector = @selector(setCalibrateSizeByDeletesWithBoolean:);
  methods[11].selector = @selector(getCalibrateSizeByDeletes);
  methods[12].selector = @selector(close);
  methods[13].selector = @selector(sizeWithOrgApacheLuceneIndexSegmentInfo:);
  methods[14].selector = @selector(sizeDocsWithOrgApacheLuceneIndexSegmentInfo:);
  methods[15].selector = @selector(sizeBytesWithOrgApacheLuceneIndexSegmentInfo:);
  methods[16].selector = @selector(isMergedWithOrgApacheLuceneIndexSegmentInfos:withInt:withJavaUtilMap:);
  methods[17].selector = @selector(isMergedWithOrgApacheLuceneIndexSegmentInfo:);
  methods[18].selector = @selector(findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos:withInt:withInt:);
  methods[19].selector = @selector(findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos:withInt:withInt:);
  methods[20].selector = @selector(findForcedMergesWithOrgApacheLuceneIndexSegmentInfos:withInt:withJavaUtilMap:);
  methods[21].selector = @selector(findForcedDeletesMergesWithOrgApacheLuceneIndexSegmentInfos:);
  methods[22].selector = @selector(findMergesWithOrgApacheLuceneIndexSegmentInfos:);
  methods[23].selector = @selector(setMaxMergeDocsWithInt:);
  methods[24].selector = @selector(getMaxMergeDocs);
  methods[25].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LEVEL_LOG_SPAN", "D", .constantValue.asDouble = OrgApacheLuceneIndexLogMergePolicy_LEVEL_LOG_SPAN, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_MERGE_FACTOR", "I", .constantValue.asInt = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MERGE_FACTOR, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_MAX_MERGE_DOCS", "I", .constantValue.asInt = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MAX_MERGE_DOCS, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_NO_CFS_RATIO", "D", .constantValue.asDouble = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_NO_CFS_RATIO, 0x19, -1, -1, -1, -1 },
    { "mergeFactor_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "minMergeSize_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "maxMergeSize_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "maxMergeSizeForForcedMerge_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "maxMergeDocs_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "noCFSRatio_", "D", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "calibrateSizeByDeletes_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "useCompoundFile_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setNoCFSRatio", "D", "message", "LNSString;", "setMergeFactor", "I", "useCompoundFile", "LOrgApacheLuceneIndexSegmentInfos;LOrgApacheLuceneIndexSegmentInfo;", "LJavaIoIOException;", "setUseCompoundFile", "Z", "setCalibrateSizeByDeletes", "size", "LOrgApacheLuceneIndexSegmentInfo;", "sizeDocs", "sizeBytes", "isMerged", "LOrgApacheLuceneIndexSegmentInfos;ILJavaUtilMap;", "(Lorg/apache/lucene/index/SegmentInfos;ILjava/util/Map<Lorg/apache/lucene/index/SegmentInfo;Ljava/lang/Boolean;>;)Z", "findForcedMergesSizeLimit", "LOrgApacheLuceneIndexSegmentInfos;II", "findForcedMergesMaxNumSegments", "findForcedMerges", "(Lorg/apache/lucene/index/SegmentInfos;ILjava/util/Map<Lorg/apache/lucene/index/SegmentInfo;Ljava/lang/Boolean;>;)Lorg/apache/lucene/index/MergePolicy$MergeSpecification;", "findForcedDeletesMerges", "LOrgApacheLuceneIndexSegmentInfos;", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;", "findMerges", "setMaxMergeDocs", "toString", "LOrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLogMergePolicy = { "LogMergePolicy", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x401, 26, 12, -1, 30, -1, -1, -1 };
  return &_OrgApacheLuceneIndexLogMergePolicy;
}

@end

void OrgApacheLuceneIndexLogMergePolicy_init(OrgApacheLuceneIndexLogMergePolicy *self) {
  OrgApacheLuceneIndexMergePolicy_init(self);
  self->mergeFactor_ = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MERGE_FACTOR;
  self->maxMergeSizeForForcedMerge_ = JavaLangLong_MAX_VALUE;
  self->maxMergeDocs_ = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_MAX_MERGE_DOCS;
  self->noCFSRatio_ = OrgApacheLuceneIndexLogMergePolicy_DEFAULT_NO_CFS_RATIO;
  self->calibrateSizeByDeletes_ = true;
  self->useCompoundFile_ = true;
}

OrgApacheLuceneIndexMergePolicy_MergeSpecification *OrgApacheLuceneIndexLogMergePolicy_findForcedMergesSizeLimitWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(OrgApacheLuceneIndexLogMergePolicy *self, OrgApacheLuceneIndexSegmentInfos *infos, jint maxNumSegments, jint last) {
  OrgApacheLuceneIndexMergePolicy_MergeSpecification *spec = create_OrgApacheLuceneIndexMergePolicy_MergeSpecification_init();
  id<JavaUtilList> segments = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos)) asList];
  jint start = last - 1;
  while (start >= 0) {
    OrgApacheLuceneIndexSegmentInfo *info = [infos infoWithInt:start];
    if ([self sizeWithOrgApacheLuceneIndexSegmentInfo:info] > self->maxMergeSizeForForcedMerge_ || [self sizeDocsWithOrgApacheLuceneIndexSegmentInfo:info] > self->maxMergeDocs_) {
      if ([self verbose]) {
        [self messageWithNSString:JreStrcat("$@$J$IC", @"findForcedMergesSizeLimit: skip segment=", info, @": size is > maxMergeSize (", self->maxMergeSizeForForcedMerge_, @") or sizeDocs is > maxMergeDocs (", self->maxMergeDocs_, ')')];
      }
      if (last - start - 1 > 1 || (start != last - 1 && ![self isMergedWithOrgApacheLuceneIndexSegmentInfo:[infos infoWithInt:start + 1]])) {
        [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([((id<JavaUtilList>) nil_chk(segments)) subListWithInt:start + 1 withInt:last])];
      }
      last = start;
    }
    else if (last - start == self->mergeFactor_) {
      [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([((id<JavaUtilList>) nil_chk(segments)) subListWithInt:start withInt:last])];
      last = start;
    }
    --start;
  }
  if (last > 0 && (++start + 1 < last || ![self isMergedWithOrgApacheLuceneIndexSegmentInfo:[infos infoWithInt:start]])) {
    [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([((id<JavaUtilList>) nil_chk(segments)) subListWithInt:start withInt:last])];
  }
  return [((id<JavaUtilList>) nil_chk(spec->merges_)) size] == 0 ? nil : spec;
}

OrgApacheLuceneIndexMergePolicy_MergeSpecification *OrgApacheLuceneIndexLogMergePolicy_findForcedMergesMaxNumSegmentsWithOrgApacheLuceneIndexSegmentInfos_withInt_withInt_(OrgApacheLuceneIndexLogMergePolicy *self, OrgApacheLuceneIndexSegmentInfos *infos, jint maxNumSegments, jint last) {
  OrgApacheLuceneIndexMergePolicy_MergeSpecification *spec = create_OrgApacheLuceneIndexMergePolicy_MergeSpecification_init();
  id<JavaUtilList> segments = [((OrgApacheLuceneIndexSegmentInfos *) nil_chk(infos)) asList];
  while (last - maxNumSegments + 1 >= self->mergeFactor_) {
    [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([((id<JavaUtilList>) nil_chk(segments)) subListWithInt:last - self->mergeFactor_ withInt:last])];
    last -= self->mergeFactor_;
  }
  if (0 == [((id<JavaUtilList>) nil_chk(spec->merges_)) size]) {
    if (maxNumSegments == 1) {
      if (last > 1 || ![self isMergedWithOrgApacheLuceneIndexSegmentInfo:[infos infoWithInt:0]]) {
        [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([((id<JavaUtilList>) nil_chk(segments)) subListWithInt:0 withInt:last])];
      }
    }
    else if (last > maxNumSegments) {
      jint finalMergeSize = last - maxNumSegments + 1;
      jlong bestSize = 0;
      jint bestStart = 0;
      for (jint i = 0; i < last - finalMergeSize + 1; i++) {
        jlong sumSize = 0;
        for (jint j = 0; j < finalMergeSize; j++) sumSize += [self sizeWithOrgApacheLuceneIndexSegmentInfo:[infos infoWithInt:j + i]];
        if (i == 0 || (sumSize < 2 * [self sizeWithOrgApacheLuceneIndexSegmentInfo:[infos infoWithInt:i - 1]] && sumSize < bestSize)) {
          bestStart = i;
          bestSize = sumSize;
        }
      }
      [spec addWithOrgApacheLuceneIndexMergePolicy_OneMerge:create_OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_([((id<JavaUtilList>) nil_chk(segments)) subListWithInt:bestStart withInt:bestStart + finalMergeSize])];
    }
  }
  return [spec->merges_ size] == 0 ? nil : spec;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLogMergePolicy)

@implementation OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel

- (instancetype)initWithOrgApacheLuceneIndexSegmentInfo:(OrgApacheLuceneIndexSegmentInfo *)info
                                              withFloat:(jfloat)level
                                                withInt:(jint)index {
  OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(self, info, level, index);
  return self;
}

- (jint)compareToWithId:(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *)other {
  cast_chk(other, [OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel class]);
  if (level_ < ((OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *) nil_chk(other))->level_) return 1;
  else if (level_ > other->level_) return -1;
  else return 0;
}

- (void)dealloc {
  RELEASE_(info_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSegmentInfo:withFloat:withInt:);
  methods[1].selector = @selector(compareToWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "info_", "LOrgApacheLuceneIndexSegmentInfo;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "level_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "index_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSegmentInfo;FI", "compareTo", "LOrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel;", "LOrgApacheLuceneIndexLogMergePolicy;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/index/LogMergePolicy$SegmentInfoAndLevel;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel = { "SegmentInfoAndLevel", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0xa, 2, 3, 3, -1, -1, 4, -1 };
  return &_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel;
}

@end

void OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *self, OrgApacheLuceneIndexSegmentInfo *info, jfloat level, jint index) {
  NSObject_init(self);
  JreStrongAssign(&self->info_, info);
  self->level_ = level;
  self->index_ = index;
}

OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *new_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(OrgApacheLuceneIndexSegmentInfo *info, jfloat level, jint index) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel, initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_, info, level, index)
}

OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel *create_OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel_initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_(OrgApacheLuceneIndexSegmentInfo *info, jfloat level, jint index) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel, initWithOrgApacheLuceneIndexSegmentInfo_withFloat_withInt_, info, level, index)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLogMergePolicy_SegmentInfoAndLevel)
