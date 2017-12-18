//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/BlockGroupingCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Comparable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopDocsCollector.h"
#include "org/apache/lucene/search/TopFieldCollector.h"
#include "org/apache/lucene/search/TopScoreDocCollector.h"
#include "org/apache/lucene/search/grouping/BlockGroupingCollector.h"
#include "org/apache/lucene/search/grouping/GroupDocs.h"
#include "org/apache/lucene/search/grouping/TopGroups.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue;

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchGroupingBlockGroupingCollector () {
 @public
  IOSIntArray *pendingSubDocs_;
  IOSFloatArray *pendingSubScores_;
  jint subDocUpto_;
  OrgApacheLuceneSearchSort *groupSort_;
  jint topNGroups_;
  OrgApacheLuceneSearchFilter *lastDocPerGroup_;
  jboolean needsScores_;
  IOSObjectArray *comparators_;
  IOSIntArray *reversed_;
  jint compIDXEnd_;
  jint bottomSlot_;
  jboolean queueFull_;
  OrgApacheLuceneIndexIndexReader *currentReader_;
  jint topGroupDoc_;
  jint totalHitCount_;
  jint totalGroupCount_;
  jint docBase_;
  jint groupEndDocID_;
  OrgApacheLuceneSearchDocIdSetIterator *lastDocPerGroupBits_;
  OrgApacheLuceneSearchScorer *scorer_;
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *groupQueue_;
  jboolean groupCompetes_;
}

- (void)processGroup;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, pendingSubDocs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, pendingSubScores_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, groupSort_, OrgApacheLuceneSearchSort *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, lastDocPerGroup_, OrgApacheLuceneSearchFilter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, comparators_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, reversed_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, currentReader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, lastDocPerGroupBits_, OrgApacheLuceneSearchDocIdSetIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, scorer_, OrgApacheLuceneSearchScorer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector, groupQueue_, OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingBlockGroupingCollector_processGroup(OrgApacheLuceneSearchGroupingBlockGroupingCollector *self);

@interface OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer : OrgApacheLuceneSearchScorer {
 @public
  jfloat score_;
  jint doc_;
}

- (instancetype)init;

- (jfloat)score;

- (jint)docID;

- (jint)advanceWithInt:(jint)target;

- (jint)nextDoc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *self);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer)

@interface OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup : NSObject {
 @public
  OrgApacheLuceneIndexIndexReader *reader_;
  jint docBase_;
  jint topGroupDoc_;
  IOSIntArray *docs_;
  IOSFloatArray *scores_;
  jint count_;
  jint comparatorSlot_;
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup, reader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup, docs_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup, scores_, IOSFloatArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *self);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup)

@interface OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue : OrgApacheLuceneUtilPriorityQueue {
 @public
  OrgApacheLuceneSearchGroupingBlockGroupingCollector *this$0_;
}

- (instancetype)initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector:(OrgApacheLuceneSearchGroupingBlockGroupingCollector *)outer$
                                                                    withInt:(jint)size;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)group1
                    withId:(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)group2;

- (OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)pop;

- (OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)top;

- (OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)insertWithOverflowWithId:(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)arg0;

- (OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)addWithId:(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)arg0;

- (OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)getSentinelObject;

- (OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)updateTop;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue)

__attribute__((unused)) static void OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *self, OrgApacheLuceneSearchGroupingBlockGroupingCollector *outer$, jint size);

__attribute__((unused)) static OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(OrgApacheLuceneSearchGroupingBlockGroupingCollector *outer$, jint size) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(OrgApacheLuceneSearchGroupingBlockGroupingCollector *outer$, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue)

@implementation OrgApacheLuceneSearchGroupingBlockGroupingCollector

- (void)processGroup {
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_processGroup(self);
}

- (instancetype)initWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort
                                          withInt:(jint)topNGroups
                                      withBoolean:(jboolean)needsScores
                  withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)lastDocPerGroup {
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(self, groupSort, topNGroups, needsScores, lastDocPerGroup);
  return self;
}

- (OrgApacheLuceneSearchGroupingTopGroups *)getTopGroupsWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)withinGroupSort
                                                                              withInt:(jint)groupOffset
                                                                              withInt:(jint)withinGroupOffset
                                                                              withInt:(jint)maxDocsPerGroup
                                                                          withBoolean:(jboolean)fillSortFields {
  if (subDocUpto_ != 0) {
    OrgApacheLuceneSearchGroupingBlockGroupingCollector_processGroup(self);
  }
  if (groupOffset >= [((OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *) nil_chk(groupQueue_)) size]) {
    return nil;
  }
  jint totalGroupedHitCount = 0;
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *fakeScorer = create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init();
  IOSObjectArray *groups = [IOSObjectArray arrayWithLength:[groupQueue_ size] - groupOffset type:OrgApacheLuceneSearchGroupingGroupDocs_class_()];
  for (jint downTo = [groupQueue_ size] - groupOffset - 1; downTo >= 0; downTo--) {
    OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *og = [groupQueue_ pop];
    OrgApacheLuceneSearchTopDocsCollector *collector;
    if (withinGroupSort == nil) {
      if (!needsScores_) {
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"cannot sort by relevance within group: needsScores=false");
      }
      collector = OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withBoolean_(maxDocsPerGroup, true);
    }
    else {
      collector = OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_withBoolean_(withinGroupSort, maxDocsPerGroup, fillSortFields, needsScores_, needsScores_, true);
    }
    [((OrgApacheLuceneSearchTopDocsCollector *) nil_chk(collector)) setScorerWithOrgApacheLuceneSearchScorer:fakeScorer];
    [collector setNextReaderWithOrgApacheLuceneIndexIndexReader:((OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *) nil_chk(og))->reader_ withInt:og->docBase_];
    for (jint docIDX = 0; docIDX < og->count_; docIDX++) {
      jint doc = IOSIntArray_Get(nil_chk(og->docs_), docIDX);
      fakeScorer->doc_ = doc;
      if (needsScores_) {
        fakeScorer->score_ = IOSFloatArray_Get(nil_chk(og->scores_), docIDX);
      }
      [collector collectWithInt:doc];
    }
    totalGroupedHitCount += og->count_;
    IOSObjectArray *groupSortValues;
    if (fillSortFields) {
      groupSortValues = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(comparators_))->size_ type:JavaLangComparable_class_()];
      for (jint sortFieldIDX = 0; sortFieldIDX < comparators_->size_; sortFieldIDX++) {
        IOSObjectArray_Set(groupSortValues, sortFieldIDX, [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, sortFieldIDX))) valueWithInt:og->comparatorSlot_]);
      }
    }
    else {
      groupSortValues = nil;
    }
    OrgApacheLuceneSearchTopDocs *topDocs = [collector topDocsWithInt:withinGroupOffset withInt:maxDocsPerGroup];
    IOSObjectArray_SetAndConsume(groups, downTo, new_OrgApacheLuceneSearchGroupingGroupDocs_initWithFloat_withInt_withOrgApacheLuceneSearchScoreDocArray_withId_withNSObjectArray_([((OrgApacheLuceneSearchTopDocs *) nil_chk(topDocs)) getMaxScore], og->count_, topDocs->scoreDocs_, nil, groupSortValues));
  }
  return create_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchGroupingTopGroups_withJavaLangInteger_(create_OrgApacheLuceneSearchGroupingTopGroups_initWithOrgApacheLuceneSearchSortFieldArray_withOrgApacheLuceneSearchSortFieldArray_withInt_withInt_withOrgApacheLuceneSearchGroupingGroupDocsArray_([((OrgApacheLuceneSearchSort *) nil_chk(groupSort_)) getSort], withinGroupSort == nil ? nil : [withinGroupSort getSort], totalHitCount_, totalGroupedHitCount, groups), JavaLangInteger_valueOfWithInt_(totalGroupCount_));
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  JreStrongAssign(&self->scorer_, scorer);
  {
    IOSObjectArray *a__ = comparators_;
    OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchFieldComparator *comparator = *b__++;
      [((OrgApacheLuceneSearchFieldComparator *) nil_chk(comparator)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
    }
  }
}

- (void)collectWithInt:(jint)doc {
  if (doc > groupEndDocID_) {
    if (subDocUpto_ != 0) {
      OrgApacheLuceneSearchGroupingBlockGroupingCollector_processGroup(self);
    }
    groupEndDocID_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(lastDocPerGroupBits_)) advanceWithInt:doc];
    subDocUpto_ = 0;
    groupCompetes_ = !queueFull_;
  }
  totalHitCount_++;
  if (subDocUpto_ == ((IOSIntArray *) nil_chk(pendingSubDocs_))->size_) {
    JreStrongAssign(&pendingSubDocs_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_(pendingSubDocs_));
  }
  *IOSIntArray_GetRef(nil_chk(pendingSubDocs_), subDocUpto_) = doc;
  if (needsScores_) {
    if (subDocUpto_ == ((IOSFloatArray *) nil_chk(pendingSubScores_))->size_) {
      JreStrongAssign(&pendingSubScores_, OrgApacheLuceneUtilArrayUtil_growWithFloatArray_(pendingSubScores_));
    }
    *IOSFloatArray_GetRef(nil_chk(pendingSubScores_), subDocUpto_) = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  }
  subDocUpto_++;
  if (groupCompetes_) {
    if (subDocUpto_ == 1) {
      JreAssert((!queueFull_), (@"org/apache/lucene/search/grouping/BlockGroupingCollector.java:428 condition failed: assert !queueFull;"));
      {
        IOSObjectArray *a__ = comparators_;
        OrgApacheLuceneSearchFieldComparator * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          OrgApacheLuceneSearchFieldComparator *fc = *b__++;
          [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) copy__WithInt:bottomSlot_ withInt:doc];
          [fc setBottomWithInt:bottomSlot_];
        }
      }
      topGroupDoc_ = doc;
    }
    else {
      for (jint compIDX = 0; ; compIDX++) {
        jint c = IOSIntArray_Get(nil_chk(reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(nil_chk(comparators_), compIDX))) compareBottomWithInt:doc];
        if (c < 0) {
          return;
        }
        else if (c > 0) {
          break;
        }
        else if (compIDX == compIDXEnd_) {
          return;
        }
      }
      {
        IOSObjectArray *a__ = comparators_;
        OrgApacheLuceneSearchFieldComparator * const *b__ = a__->buffer_;
        OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          OrgApacheLuceneSearchFieldComparator *fc = *b__++;
          [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) copy__WithInt:bottomSlot_ withInt:doc];
          [fc setBottomWithInt:bottomSlot_];
        }
      }
      topGroupDoc_ = doc;
    }
  }
  else {
    for (jint compIDX = 0; ; compIDX++) {
      jint c = IOSIntArray_Get(nil_chk(reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(nil_chk(comparators_), compIDX))) compareBottomWithInt:doc];
      if (c < 0) {
        return;
      }
      else if (c > 0) {
        break;
      }
      else if (compIDX == compIDXEnd_) {
        return;
      }
    }
    groupCompetes_ = true;
    {
      IOSObjectArray *a__ = comparators_;
      OrgApacheLuceneSearchFieldComparator * const *b__ = a__->buffer_;
      OrgApacheLuceneSearchFieldComparator * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchFieldComparator *fc = *b__++;
        [((OrgApacheLuceneSearchFieldComparator *) nil_chk(fc)) copy__WithInt:bottomSlot_ withInt:doc];
        [fc setBottomWithInt:bottomSlot_];
      }
    }
    topGroupDoc_ = doc;
  }
}

- (jboolean)acceptsDocsOutOfOrder {
  return false;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase {
  if (subDocUpto_ != 0) {
    OrgApacheLuceneSearchGroupingBlockGroupingCollector_processGroup(self);
  }
  subDocUpto_ = 0;
  self->docBase_ = docBase;
  JreStrongAssign(&lastDocPerGroupBits_, [((OrgApacheLuceneSearchDocIdSet *) nil_chk([((OrgApacheLuceneSearchFilter *) nil_chk(lastDocPerGroup_)) getDocIdSetWithOrgApacheLuceneIndexIndexReader:reader])) iterator]);
  groupEndDocID_ = -1;
  JreStrongAssign(&currentReader_, reader);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(comparators_))->size_; i++) {
    [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, i))) setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:docBase];
  }
}

- (void)dealloc {
  RELEASE_(pendingSubDocs_);
  RELEASE_(pendingSubScores_);
  RELEASE_(groupSort_);
  RELEASE_(lastDocPerGroup_);
  RELEASE_(comparators_);
  RELEASE_(reversed_);
  RELEASE_(currentReader_);
  RELEASE_(lastDocPerGroupBits_);
  RELEASE_(scorer_);
  RELEASE_(groupQueue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchGroupingTopGroups;", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(processGroup);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchSort:withInt:withBoolean:withOrgApacheLuceneSearchFilter:);
  methods[2].selector = @selector(getTopGroupsWithOrgApacheLuceneSearchSort:withInt:withInt:withInt:withBoolean:);
  methods[3].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[4].selector = @selector(collectWithInt:);
  methods[5].selector = @selector(acceptsDocsOutOfOrder);
  methods[6].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pendingSubDocs_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pendingSubScores_", "[F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "subDocUpto_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "groupSort_", "LOrgApacheLuceneSearchSort;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "topNGroups_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "lastDocPerGroup_", "LOrgApacheLuceneSearchFilter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "needsScores_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "comparators_", "[LOrgApacheLuceneSearchFieldComparator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "reversed_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "compIDXEnd_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "bottomSlot_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "queueFull_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentReader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "topGroupDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "totalHitCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "totalGroupCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "groupEndDocID_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastDocPerGroupBits_", "LOrgApacheLuceneSearchDocIdSetIterator;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "scorer_", "LOrgApacheLuceneSearchScorer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "groupQueue_", "LOrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "groupCompetes_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSort;IZLOrgApacheLuceneSearchFilter;", "LJavaIoIOException;", "getTopGroups", "LOrgApacheLuceneSearchSort;IIIZ", "setScorer", "LOrgApacheLuceneSearchScorer;", "collect", "I", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "LOrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer;LOrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup;LOrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingBlockGroupingCollector = { "BlockGroupingCollector", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1, 7, 22, -1, 10, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGroupingBlockGroupingCollector;
}

@end

void OrgApacheLuceneSearchGroupingBlockGroupingCollector_processGroup(OrgApacheLuceneSearchGroupingBlockGroupingCollector *self) {
  self->totalGroupCount_++;
  if (self->groupCompetes_) {
    if (!self->queueFull_) {
      OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *og = create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init();
      og->count_ = self->subDocUpto_;
      og->topGroupDoc_ = self->docBase_ + self->topGroupDoc_;
      JreStrongAssign(&og->docs_, self->pendingSubDocs_);
      JreStrongAssignAndConsume(&self->pendingSubDocs_, [IOSIntArray newArrayWithLength:10]);
      if (self->needsScores_) {
        JreStrongAssign(&og->scores_, self->pendingSubScores_);
        JreStrongAssignAndConsume(&self->pendingSubScores_, [IOSFloatArray newArrayWithLength:10]);
      }
      JreStrongAssign(&og->reader_, self->currentReader_);
      og->docBase_ = self->docBase_;
      og->comparatorSlot_ = self->bottomSlot_;
      OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *bottomGroup = [((OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *) nil_chk(self->groupQueue_)) addWithId:og];
      self->queueFull_ = ([self->groupQueue_ size] == self->topNGroups_);
      if (self->queueFull_) {
        self->bottomSlot_ = ((OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *) nil_chk(bottomGroup))->comparatorSlot_;
        for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->comparators_))->size_; i++) {
          [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(self->comparators_, i))) setBottomWithInt:self->bottomSlot_];
        }
      }
      else {
        self->bottomSlot_ = [self->groupQueue_ size];
      }
    }
    else {
      OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *og = [((OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *) nil_chk(self->groupQueue_)) top];
      JreAssert((og != nil), (@"org/apache/lucene/search/grouping/BlockGroupingCollector.java:205 condition failed: assert og != null;"));
      ((OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *) nil_chk(og))->count_ = self->subDocUpto_;
      og->topGroupDoc_ = self->docBase_ + self->topGroupDoc_;
      IOSIntArray *savDocs = og->docs_;
      JreStrongAssign(&og->docs_, self->pendingSubDocs_);
      JreStrongAssign(&self->pendingSubDocs_, savDocs);
      if (self->needsScores_) {
        IOSFloatArray *savScores = og->scores_;
        JreStrongAssign(&og->scores_, self->pendingSubScores_);
        JreStrongAssign(&self->pendingSubScores_, savScores);
      }
      JreStrongAssign(&og->reader_, self->currentReader_);
      og->docBase_ = self->docBase_;
      self->bottomSlot_ = ((OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *) nil_chk([self->groupQueue_ updateTop]))->comparatorSlot_;
      for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->comparators_))->size_; i++) {
        [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(self->comparators_, i))) setBottomWithInt:self->bottomSlot_];
      }
    }
  }
  self->subDocUpto_ = 0;
}

void OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchGroupingBlockGroupingCollector *self, OrgApacheLuceneSearchSort *groupSort, jint topNGroups, jboolean needsScores, OrgApacheLuceneSearchFilter *lastDocPerGroup) {
  OrgApacheLuceneSearchCollector_init(self);
  if (topNGroups < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"topNGroups must be >= 1 (got ", topNGroups, ')'));
  }
  JreStrongAssignAndConsume(&self->groupQueue_, new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(self, topNGroups));
  JreStrongAssignAndConsume(&self->pendingSubDocs_, [IOSIntArray newArrayWithLength:10]);
  if (needsScores) {
    JreStrongAssignAndConsume(&self->pendingSubScores_, [IOSFloatArray newArrayWithLength:10]);
  }
  self->needsScores_ = needsScores;
  JreStrongAssign(&self->lastDocPerGroup_, lastDocPerGroup);
  JreStrongAssign(&self->groupSort_, groupSort);
  self->topNGroups_ = topNGroups;
  IOSObjectArray *sortFields = [((OrgApacheLuceneSearchSort *) nil_chk(groupSort)) getSort];
  JreStrongAssignAndConsume(&self->comparators_, [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(sortFields))->size_ type:OrgApacheLuceneSearchFieldComparator_class_()]);
  self->compIDXEnd_ = self->comparators_->size_ - 1;
  JreStrongAssignAndConsume(&self->reversed_, [IOSIntArray newArrayWithLength:sortFields->size_]);
  for (jint i = 0; i < sortFields->size_; i++) {
    OrgApacheLuceneSearchSortField *sortField = IOSObjectArray_Get(sortFields, i);
    IOSObjectArray_Set(self->comparators_, i, [((OrgApacheLuceneSearchSortField *) nil_chk(sortField)) getComparatorWithInt:topNGroups withInt:i]);
    *IOSIntArray_GetRef(self->reversed_, i) = [sortField getReverse] ? -1 : 1;
  }
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchSort *groupSort, jint topNGroups, jboolean needsScores, OrgApacheLuceneSearchFilter *lastDocPerGroup) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector, initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_, groupSort, topNGroups, needsScores, lastDocPerGroup)
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchSort *groupSort, jint topNGroups, jboolean needsScores, OrgApacheLuceneSearchFilter *lastDocPerGroup) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector, initWithOrgApacheLuceneSearchSort_withInt_withBoolean_withOrgApacheLuceneSearchFilter_, groupSort, topNGroups, needsScores, lastDocPerGroup)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingBlockGroupingCollector)

@implementation OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)score {
  return score_;
}

- (jint)docID {
  return doc_;
}

- (jint)advanceWithInt:(jint)target {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jint)nextDoc {
  @throw create_JavaLangUnsupportedOperationException_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(score);
  methods[2].selector = @selector(docID);
  methods[3].selector = @selector(advanceWithInt:);
  methods[4].selector = @selector(nextDoc);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "score_", "F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "advance", "I", "LOrgApacheLuceneSearchGroupingBlockGroupingCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer = { "FakeScorer", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1a, 5, 2, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer;
}

@end

void OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *self) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, nil);
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer, init)
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingBlockGroupingCollector_FakeScorer)

@implementation OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(docs_);
  RELEASE_(scores_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "topGroupDoc_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "docs_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "scores_", "[F", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "comparatorSlot_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchGroupingBlockGroupingCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup = { "OneGroup", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1a, 1, 7, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup;
}

@end

void OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup, init)
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup)

@implementation OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue

- (instancetype)initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector:(OrgApacheLuceneSearchGroupingBlockGroupingCollector *)outer$
                                                                    withInt:(jint)size {
  OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(self, outer$, size);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)group1
                    withId:(OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *)group2 {
  JreAssert((group1 != group2), (@"org/apache/lucene/search/grouping/BlockGroupingCollector.java:148 condition failed: assert group1 != group2;"));
  JreAssert((((OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *) nil_chk(group1))->comparatorSlot_ != ((OrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup *) nil_chk(group2))->comparatorSlot_), (@"org/apache/lucene/search/grouping/BlockGroupingCollector.java:149 condition failed: assert group1.comparatorSlot != group2.comparatorSlot;"));
  jint numComparators = ((IOSObjectArray *) nil_chk(this$0_->comparators_))->size_;
  for (jint compIDX = 0; compIDX < numComparators; compIDX++) {
    jint c = IOSIntArray_Get(nil_chk(this$0_->reversed_), compIDX) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(this$0_->comparators_, compIDX))) compareWithInt:group1->comparatorSlot_ withInt:group2->comparatorSlot_];
    if (c != 0) {
      return c > 0;
    }
  }
  return group1->topGroupDoc_ > group2->topGroupDoc_;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector:withInt:);
  methods[1].selector = @selector(lessThanWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchGroupingBlockGroupingCollector;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "lessThan", "LOrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup;LOrgApacheLuceneSearchGroupingBlockGroupingCollector_OneGroup;", "LOrgApacheLuceneSearchGroupingBlockGroupingCollector;", "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/search/grouping/BlockGroupingCollector$OneGroup;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue = { "GroupQueue", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x12, 2, 1, 3, -1, -1, 4, -1 };
  return &_OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue;
}

@end

void OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *self, OrgApacheLuceneSearchGroupingBlockGroupingCollector *outer$, jint size) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneUtilPriorityQueue_init(self);
  [self initialize__WithInt:size];
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *new_OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(OrgApacheLuceneSearchGroupingBlockGroupingCollector *outer$, jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue, initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_, outer$, size)
}

OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue *create_OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue_initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_(OrgApacheLuceneSearchGroupingBlockGroupingCollector *outer$, jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue, initWithOrgApacheLuceneSearchGroupingBlockGroupingCollector_withInt_, outer$, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingBlockGroupingCollector_GroupQueue)
