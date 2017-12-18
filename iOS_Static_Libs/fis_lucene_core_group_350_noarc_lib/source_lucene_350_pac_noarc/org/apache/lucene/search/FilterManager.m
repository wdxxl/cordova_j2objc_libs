//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/FilterManager.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Comparator.h"
#include "java/util/Date.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeSet.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilterManager.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchFilterManager__Annotations$0();

@interface OrgApacheLuceneSearchFilterManager_FilterCleaner () {
 @public
  OrgApacheLuceneSearchFilterManager *this$0_;
  jboolean running_;
  JavaUtilTreeSet *sortedFilterItems_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilterManager_FilterCleaner, sortedFilterItems_, JavaUtilTreeSet *)

@interface OrgApacheLuceneSearchFilterManager_FilterCleaner_1 : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(id<JavaUtilMap_Entry>)a
               withId:(id<JavaUtilMap_Entry>)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilterManager_FilterCleaner_1)

__attribute__((unused)) static void OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init(OrgApacheLuceneSearchFilterManager_FilterCleaner_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchFilterManager_FilterCleaner_1 *new_OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchFilterManager_FilterCleaner_1 *create_OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init();

OrgApacheLuceneSearchFilterManager *OrgApacheLuceneSearchFilterManager_manager;

@implementation OrgApacheLuceneSearchFilterManager

+ (OrgApacheLuceneSearchFilterManager *)getInstance {
  return OrgApacheLuceneSearchFilterManager_getInstance();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchFilterManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setCacheSizeWithInt:(jint)cacheCleanSize {
  self->cacheCleanSize_ = cacheCleanSize;
}

- (void)setCleanThreadSleepTimeWithLong:(jlong)cleanSleepTime {
  self->cleanSleepTime_ = cleanSleepTime;
}

- (OrgApacheLuceneSearchFilter *)getFilterWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  @synchronized(cache_) {
    OrgApacheLuceneSearchFilterManager_FilterItem *fi = nil;
    fi = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:JavaLangInteger_valueOfWithInt_(((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter)) hash]))];
    if (fi != nil) {
      fi->timestamp_ = [create_JavaUtilDate_init() getTime];
      return fi->filter_;
    }
    [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:JavaLangInteger_valueOfWithInt_(((jint) [filter hash])) withId:create_OrgApacheLuceneSearchFilterManager_FilterItem_initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_(self, filter)];
    return filter;
  }
}

- (void)dealloc {
  RELEASE_(cache_);
  RELEASE_(filterCleaner_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneSearchFilterManager;", 0x29, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFilter;", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getInstance);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(setCacheSizeWithInt:);
  methods[3].selector = @selector(setCleanThreadSleepTimeWithLong:);
  methods[4].selector = @selector(getFilterWithOrgApacheLuceneSearchFilter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "manager", "LOrgApacheLuceneSearchFilterManager;", .constantValue.asLong = 0, 0xc, -1, 6, -1, -1 },
    { "DEFAULT_CACHE_CLEAN_SIZE", "I", .constantValue.asInt = OrgApacheLuceneSearchFilterManager_DEFAULT_CACHE_CLEAN_SIZE, 0x1c, -1, -1, -1, -1 },
    { "DEFAULT_CACHE_SLEEP_TIME", "J", .constantValue.asLong = OrgApacheLuceneSearchFilterManager_DEFAULT_CACHE_SLEEP_TIME, 0x1c, -1, -1, -1, -1 },
    { "cache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x4, -1, -1, 7, -1 },
    { "cacheCleanSize_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "cleanSleepTime_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "filterCleaner_", "LOrgApacheLuceneSearchFilterManager_FilterCleaner;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setCacheSize", "I", "setCleanThreadSleepTime", "J", "getFilter", "LOrgApacheLuceneSearchFilter;", &OrgApacheLuceneSearchFilterManager_manager, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/lucene/search/FilterManager$FilterItem;>;", "LOrgApacheLuceneSearchFilterManager_FilterItem;LOrgApacheLuceneSearchFilterManager_FilterCleaner;", (void *)&OrgApacheLuceneSearchFilterManager__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilterManager = { "FilterManager", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 5, 7, -1, 8, -1, -1, 9 };
  return &_OrgApacheLuceneSearchFilterManager;
}

@end

OrgApacheLuceneSearchFilterManager *OrgApacheLuceneSearchFilterManager_getInstance() {
  OrgApacheLuceneSearchFilterManager_initialize();
  @synchronized(OrgApacheLuceneSearchFilterManager_class_()) {
    if (OrgApacheLuceneSearchFilterManager_manager == nil) {
      JreStrongAssignAndConsume(&OrgApacheLuceneSearchFilterManager_manager, new_OrgApacheLuceneSearchFilterManager_init());
    }
    return OrgApacheLuceneSearchFilterManager_manager;
  }
}

void OrgApacheLuceneSearchFilterManager_init(OrgApacheLuceneSearchFilterManager *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->cache_, new_JavaUtilHashMap_init());
  self->cacheCleanSize_ = OrgApacheLuceneSearchFilterManager_DEFAULT_CACHE_CLEAN_SIZE;
  self->cleanSleepTime_ = OrgApacheLuceneSearchFilterManager_DEFAULT_CACHE_SLEEP_TIME;
  JreStrongAssignAndConsume(&self->filterCleaner_, new_OrgApacheLuceneSearchFilterManager_FilterCleaner_initWithOrgApacheLuceneSearchFilterManager_(self));
  JavaLangThread *fcThread = create_JavaLangThread_initWithJavaLangRunnable_(self->filterCleaner_);
  [fcThread setDaemonWithBoolean:true];
  [fcThread start];
}

OrgApacheLuceneSearchFilterManager *new_OrgApacheLuceneSearchFilterManager_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFilterManager, init)
}

OrgApacheLuceneSearchFilterManager *create_OrgApacheLuceneSearchFilterManager_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFilterManager, init)
}

IOSObjectArray *OrgApacheLuceneSearchFilterManager__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilterManager)

@implementation OrgApacheLuceneSearchFilterManager_FilterItem

- (instancetype)initWithOrgApacheLuceneSearchFilterManager:(OrgApacheLuceneSearchFilterManager *)outer$
                           withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  OrgApacheLuceneSearchFilterManager_FilterItem_initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_(self, outer$, filter);
  return self;
}

- (void)dealloc {
  RELEASE_(filter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchFilterManager:withOrgApacheLuceneSearchFilter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "filter_", "LOrgApacheLuceneSearchFilter;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "timestamp_", "J", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchFilter;", "LOrgApacheLuceneSearchFilterManager;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilterManager_FilterItem = { "FilterItem", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x4, 1, 2, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFilterManager_FilterItem;
}

@end

void OrgApacheLuceneSearchFilterManager_FilterItem_initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilterManager_FilterItem *self, OrgApacheLuceneSearchFilterManager *outer$, OrgApacheLuceneSearchFilter *filter) {
  NSObject_init(self);
  JreStrongAssign(&self->filter_, filter);
  self->timestamp_ = [create_JavaUtilDate_init() getTime];
}

OrgApacheLuceneSearchFilterManager_FilterItem *new_OrgApacheLuceneSearchFilterManager_FilterItem_initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilterManager *outer$, OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFilterManager_FilterItem, initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_, outer$, filter)
}

OrgApacheLuceneSearchFilterManager_FilterItem *create_OrgApacheLuceneSearchFilterManager_FilterItem_initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilterManager *outer$, OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFilterManager_FilterItem, initWithOrgApacheLuceneSearchFilterManager_withOrgApacheLuceneSearchFilter_, outer$, filter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilterManager_FilterItem)

@implementation OrgApacheLuceneSearchFilterManager_FilterCleaner

- (instancetype)initWithOrgApacheLuceneSearchFilterManager:(OrgApacheLuceneSearchFilterManager *)outer$ {
  OrgApacheLuceneSearchFilterManager_FilterCleaner_initWithOrgApacheLuceneSearchFilterManager_(self, outer$);
  return self;
}

- (void)run {
  while (running_) {
    if ([((id<JavaUtilMap>) nil_chk(this$0_->cache_)) size] > this$0_->cacheCleanSize_) {
      [((JavaUtilTreeSet *) nil_chk(sortedFilterItems_)) clear];
      @synchronized(this$0_->cache_) {
        [((JavaUtilTreeSet *) nil_chk(sortedFilterItems_)) addAllWithJavaUtilCollection:[((id<JavaUtilMap>) nil_chk(this$0_->cache_)) entrySet]];
        id<JavaUtilIterator> it = [((JavaUtilTreeSet *) nil_chk(sortedFilterItems_)) iterator];
        jint numToDelete = JreFpToInt((([((id<JavaUtilMap>) nil_chk(this$0_->cache_)) size] - this$0_->cacheCleanSize_) * 1.5));
        jint counter = 0;
        while ([((id<JavaUtilIterator>) nil_chk(it)) hasNext] && counter++ < numToDelete) {
          id<JavaUtilMap_Entry> entry_ = [it next];
          [((id<JavaUtilMap>) nil_chk(this$0_->cache_)) removeWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
        }
      }
      [((JavaUtilTreeSet *) nil_chk(sortedFilterItems_)) clear];
    }
    @try {
      JavaLangThread_sleepWithLong_(this$0_->cleanSleepTime_);
    }
    @catch (JavaLangInterruptedException *ie) {
      @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie);
    }
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(sortedFilterItems_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchFilterManager:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchFilterManager;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "running_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sortedFilterItems_", "LJavaUtilTreeSet;", .constantValue.asLong = 0, 0x2, -1, -1, 0, -1 },
  };
  static const void *ptrTable[] = { "Ljava/util/TreeSet<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/lucene/search/FilterManager$FilterItem;>;>;", "LOrgApacheLuceneSearchFilterManager;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilterManager_FilterCleaner = { "FilterCleaner", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x4, 2, 3, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFilterManager_FilterCleaner;
}

@end

void OrgApacheLuceneSearchFilterManager_FilterCleaner_initWithOrgApacheLuceneSearchFilterManager_(OrgApacheLuceneSearchFilterManager_FilterCleaner *self, OrgApacheLuceneSearchFilterManager *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->running_ = true;
  JreStrongAssignAndConsume(&self->sortedFilterItems_, new_JavaUtilTreeSet_initWithJavaUtilComparator_(create_OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init()));
}

OrgApacheLuceneSearchFilterManager_FilterCleaner *new_OrgApacheLuceneSearchFilterManager_FilterCleaner_initWithOrgApacheLuceneSearchFilterManager_(OrgApacheLuceneSearchFilterManager *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFilterManager_FilterCleaner, initWithOrgApacheLuceneSearchFilterManager_, outer$)
}

OrgApacheLuceneSearchFilterManager_FilterCleaner *create_OrgApacheLuceneSearchFilterManager_FilterCleaner_initWithOrgApacheLuceneSearchFilterManager_(OrgApacheLuceneSearchFilterManager *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFilterManager_FilterCleaner, initWithOrgApacheLuceneSearchFilterManager_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilterManager_FilterCleaner)

@implementation OrgApacheLuceneSearchFilterManager_FilterCleaner_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(id<JavaUtilMap_Entry>)a
               withId:(id<JavaUtilMap_Entry>)b {
  OrgApacheLuceneSearchFilterManager_FilterItem *fia = [((id<JavaUtilMap_Entry>) nil_chk(a)) getValue];
  OrgApacheLuceneSearchFilterManager_FilterItem *fib = [((id<JavaUtilMap_Entry>) nil_chk(b)) getValue];
  if (((OrgApacheLuceneSearchFilterManager_FilterItem *) nil_chk(fia))->timestamp_ == ((OrgApacheLuceneSearchFilterManager_FilterItem *) nil_chk(fib))->timestamp_) {
    return 0;
  }
  if (fia->timestamp_ < fib->timestamp_) {
    return -1;
  }
  return 1;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LJavaUtilMap_Entry;LJavaUtilMap_Entry;", "(Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/lucene/search/FilterManager$FilterItem;>;Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/lucene/search/FilterManager$FilterItem;>;)I", "LOrgApacheLuceneSearchFilterManager_FilterCleaner;", "initWithOrgApacheLuceneSearchFilterManager:", "Ljava/lang/Object;Ljava/util/Comparator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/lucene/search/FilterManager$FilterItem;>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilterManager_FilterCleaner_1 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, 4, 5, -1 };
  return &_OrgApacheLuceneSearchFilterManager_FilterCleaner_1;
}

@end

void OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init(OrgApacheLuceneSearchFilterManager_FilterCleaner_1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchFilterManager_FilterCleaner_1 *new_OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFilterManager_FilterCleaner_1, init)
}

OrgApacheLuceneSearchFilterManager_FilterCleaner_1 *create_OrgApacheLuceneSearchFilterManager_FilterCleaner_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFilterManager_FilterCleaner_1, init)
}
