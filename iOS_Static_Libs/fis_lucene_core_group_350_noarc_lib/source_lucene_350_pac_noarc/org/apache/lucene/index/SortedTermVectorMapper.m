//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/SortedTermVectorMapper.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/SortedSet.h"
#include "java/util/TreeSet.h"
#include "org/apache/lucene/index/SortedTermVectorMapper.h"
#include "org/apache/lucene/index/TermVectorEntry.h"
#include "org/apache/lucene/index/TermVectorMapper.h"
#include "org/apache/lucene/index/TermVectorOffsetInfo.h"

@interface OrgApacheLuceneIndexSortedTermVectorMapper () {
 @public
  id<JavaUtilSortedSet> currentSet_;
  id<JavaUtilMap> termToTVE_;
  jboolean storeOffsets_;
  jboolean storePositions_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortedTermVectorMapper, currentSet_, id<JavaUtilSortedSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortedTermVectorMapper, termToTVE_, id<JavaUtilMap>)

NSString *OrgApacheLuceneIndexSortedTermVectorMapper_ALL = @"_ALL_";

@implementation OrgApacheLuceneIndexSortedTermVectorMapper

- (instancetype)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneIndexSortedTermVectorMapper_initWithJavaUtilComparator_(self, comparator);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)ignoringPositions
                    withBoolean:(jboolean)ignoringOffsets
         withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneIndexSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(self, ignoringPositions, ignoringOffsets, comparator);
  return self;
}

- (void)mapWithNSString:(NSString *)term
                withInt:(jint)frequency
withOrgApacheLuceneIndexTermVectorOffsetInfoArray:(IOSObjectArray *)offsets
           withIntArray:(IOSIntArray *)positions {
  OrgApacheLuceneIndexTermVectorEntry *entry_ = [((id<JavaUtilMap>) nil_chk(termToTVE_)) getWithId:term];
  if (entry_ == nil) {
    entry_ = create_OrgApacheLuceneIndexTermVectorEntry_initWithNSString_withNSString_withInt_withOrgApacheLuceneIndexTermVectorOffsetInfoArray_withIntArray_(OrgApacheLuceneIndexSortedTermVectorMapper_ALL, term, frequency, storeOffsets_ == true ? offsets : nil, storePositions_ == true ? positions : nil);
    [((id<JavaUtilMap>) nil_chk(termToTVE_)) putWithId:term withId:entry_];
    [((id<JavaUtilSortedSet>) nil_chk(currentSet_)) addWithId:entry_];
  }
  else {
    [entry_ setFrequencyWithInt:[entry_ getFrequency] + frequency];
    if (storeOffsets_) {
      IOSObjectArray *existingOffsets = [entry_ getOffsets];
      if (existingOffsets != nil && offsets != nil && offsets->size_ > 0) {
        IOSObjectArray *newOffsets = [IOSObjectArray arrayWithLength:existingOffsets->size_ + offsets->size_ type:OrgApacheLuceneIndexTermVectorOffsetInfo_class_()];
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(existingOffsets, 0, newOffsets, 0, existingOffsets->size_);
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(offsets, 0, newOffsets, existingOffsets->size_, offsets->size_);
        [entry_ setOffsetsWithOrgApacheLuceneIndexTermVectorOffsetInfoArray:newOffsets];
      }
      else if (existingOffsets == nil && offsets != nil && offsets->size_ > 0) {
        [entry_ setOffsetsWithOrgApacheLuceneIndexTermVectorOffsetInfoArray:offsets];
      }
    }
    if (storePositions_) {
      IOSIntArray *existingPositions = [entry_ getPositions];
      if (existingPositions != nil && positions != nil && positions->size_ > 0) {
        IOSIntArray *newPositions = [IOSIntArray arrayWithLength:existingPositions->size_ + positions->size_];
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(existingPositions, 0, newPositions, 0, existingPositions->size_);
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(positions, 0, newPositions, existingPositions->size_, positions->size_);
        [entry_ setPositionsWithIntArray:newPositions];
      }
      else if (existingPositions == nil && positions != nil && positions->size_ > 0) {
        [entry_ setPositionsWithIntArray:positions];
      }
    }
  }
}

- (void)setExpectationsWithNSString:(NSString *)field
                            withInt:(jint)numTerms
                        withBoolean:(jboolean)storeOffsets
                        withBoolean:(jboolean)storePositions {
  self->storeOffsets_ = storeOffsets;
  self->storePositions_ = storePositions;
}

- (id<JavaUtilSortedSet>)getTermVectorEntrySet {
  return currentSet_;
}

- (void)dealloc {
  RELEASE_(currentSet_);
  RELEASE_(termToTVE_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSortedSet;", 0x1, -1, -1, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilComparator:);
  methods[1].selector = @selector(initWithBoolean:withBoolean:withJavaUtilComparator:);
  methods[2].selector = @selector(mapWithNSString:withInt:withOrgApacheLuceneIndexTermVectorOffsetInfoArray:withIntArray:);
  methods[3].selector = @selector(setExpectationsWithNSString:withInt:withBoolean:withBoolean:);
  methods[4].selector = @selector(getTermVectorEntrySet);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "currentSet_", "LJavaUtilSortedSet;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
    { "termToTVE_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
    { "storeOffsets_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "storePositions_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ALL", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilComparator;", "(Ljava/util/Comparator<Lorg/apache/lucene/index/TermVectorEntry;>;)V", "ZZLJavaUtilComparator;", "(ZZLjava/util/Comparator<Lorg/apache/lucene/index/TermVectorEntry;>;)V", "map", "LNSString;I[LOrgApacheLuceneIndexTermVectorOffsetInfo;[I", "setExpectations", "LNSString;IZZ", "()Ljava/util/SortedSet<Lorg/apache/lucene/index/TermVectorEntry;>;", "Ljava/util/SortedSet<Lorg/apache/lucene/index/TermVectorEntry;>;", "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/TermVectorEntry;>;", &OrgApacheLuceneIndexSortedTermVectorMapper_ALL };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSortedTermVectorMapper = { "SortedTermVectorMapper", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 5, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSortedTermVectorMapper;
}

@end

void OrgApacheLuceneIndexSortedTermVectorMapper_initWithJavaUtilComparator_(OrgApacheLuceneIndexSortedTermVectorMapper *self, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneIndexSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(self, false, false, comparator);
}

OrgApacheLuceneIndexSortedTermVectorMapper *new_OrgApacheLuceneIndexSortedTermVectorMapper_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSortedTermVectorMapper, initWithJavaUtilComparator_, comparator)
}

OrgApacheLuceneIndexSortedTermVectorMapper *create_OrgApacheLuceneIndexSortedTermVectorMapper_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSortedTermVectorMapper, initWithJavaUtilComparator_, comparator)
}

void OrgApacheLuceneIndexSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(OrgApacheLuceneIndexSortedTermVectorMapper *self, jboolean ignoringPositions, jboolean ignoringOffsets, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneIndexTermVectorMapper_initWithBoolean_withBoolean_(self, ignoringPositions, ignoringOffsets);
  JreStrongAssignAndConsume(&self->termToTVE_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->currentSet_, new_JavaUtilTreeSet_initWithJavaUtilComparator_(comparator));
}

OrgApacheLuceneIndexSortedTermVectorMapper *new_OrgApacheLuceneIndexSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(jboolean ignoringPositions, jboolean ignoringOffsets, id<JavaUtilComparator> comparator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSortedTermVectorMapper, initWithBoolean_withBoolean_withJavaUtilComparator_, ignoringPositions, ignoringOffsets, comparator)
}

OrgApacheLuceneIndexSortedTermVectorMapper *create_OrgApacheLuceneIndexSortedTermVectorMapper_initWithBoolean_withBoolean_withJavaUtilComparator_(jboolean ignoringPositions, jboolean ignoringOffsets, id<JavaUtilComparator> comparator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSortedTermVectorMapper, initWithBoolean_withBoolean_withJavaUtilComparator_, ignoringPositions, ignoringOffsets, comparator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSortedTermVectorMapper)
