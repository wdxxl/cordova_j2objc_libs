//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SearcherLifetimeManager.java
//

#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/lang/Comparable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/TimeUnit.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/SearcherLifetimeManager.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneSearchSearcherLifetimeManager () {
 @public
  volatile_jboolean closed_;
  JavaUtilConcurrentConcurrentHashMap *searchers_;
}

- (void)ensureOpen;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherLifetimeManager, searchers_, JavaUtilConcurrentConcurrentHashMap *)

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(OrgApacheLuceneSearchSearcherLifetimeManager *self);

@interface OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker : NSObject < JavaLangComparable, JavaIoCloseable > {
 @public
  OrgApacheLuceneSearchIndexSearcher *searcher_;
  jlong recordTimeSec_;
  jlong version__;
}

- (instancetype)initWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (jint)compareToWithId:(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *)other;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker, searcher_, OrgApacheLuceneSearchIndexSearcher *)

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *self, OrgApacheLuceneSearchIndexSearcher *searcher);

__attribute__((unused)) static OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *new_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *create_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker)

@interface OrgApacheLuceneSearchSearcherLifetimeManager_Pruner : NSObject

@end

@interface OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge () {
 @public
  jint maxAgeSec_;
}

@end

@implementation OrgApacheLuceneSearchSearcherLifetimeManager

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSearcherLifetimeManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)ensureOpen {
  OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(self);
}

- (jlong)recordWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(self);
  jlong version_ = [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) getVersion];
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *tracker = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) getWithId:JavaLangLong_valueOfWithLong_(version_)];
  if (tracker == nil) {
    tracker = create_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(searcher);
    if ([searchers_ putIfAbsentWithId:JavaLangLong_valueOfWithLong_(version_) withId:tracker] != nil) {
      [tracker close];
    }
  }
  else if (tracker->searcher_ != searcher) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@", @"the provided searcher has the same underlying reader version yet the searcher instance differs from before (new=", searcher, @" vs old=", tracker->searcher_));
  }
  return version_;
}

- (OrgApacheLuceneSearchIndexSearcher *)acquireWithLong:(jlong)version_ {
  OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(self);
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *tracker = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) getWithId:JavaLangLong_valueOfWithLong_(version_)];
  if (tracker != nil && [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(tracker->searcher_)) getIndexReader])) tryIncRef]) {
    return tracker->searcher_;
  }
  return nil;
}

- (void)release__WithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)s {
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(s)) getIndexReader])) decRef];
}

- (void)pruneWithOrgApacheLuceneSearchSearcherLifetimeManager_Pruner:(id<OrgApacheLuceneSearchSearcherLifetimeManager_Pruner>)pruner {
  @synchronized(self) {
    id<JavaUtilList> trackers = create_JavaUtilArrayList_init();
    for (OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker * __strong tracker in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) values])) {
      [trackers addWithId:tracker];
    }
    JavaUtilCollections_sortWithJavaUtilList_(trackers);
    jlong newestSec = [trackers isEmpty] ? 0LL : ((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk([trackers getWithInt:0]))->recordTimeSec_;
    for (OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker * __strong tracker in trackers) {
      jint ageSec = (jint) (newestSec - ((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk(tracker))->recordTimeSec_);
      JreAssert((ageSec >= 0), (@"org/apache/lucene/search/SearcherLifetimeManager.java:265 condition failed: assert ageSec >= 0;"));
      if ([((id<OrgApacheLuceneSearchSearcherLifetimeManager_Pruner>) nil_chk(pruner)) doPruneWithInt:ageSec withOrgApacheLuceneSearchIndexSearcher:tracker->searcher_]) {
        [searchers_ removeWithId:JavaLangLong_valueOfWithLong_(tracker->version__)];
        [tracker close];
      }
    }
  }
}

- (void)close {
  @synchronized(self) {
    JreAssignVolatileBoolean(&closed_, true);
    id<JavaUtilList> toClose = create_JavaUtilArrayList_initWithJavaUtilCollection_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(searchers_)) values]);
    for (OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker * __strong tracker in toClose) {
      [searchers_ removeWithId:JavaLangLong_valueOfWithLong_(((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk(tracker))->version__)];
    }
    OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(toClose);
    if ([searchers_ size] != 0) {
      @throw create_JavaLangIllegalStateException_initWithNSString_(@"another thread called record while this SearcherLifetimeManager instance was being closed; not all searchers were closed");
    }
  }
}

- (void)dealloc {
  RELEASE_(searchers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchIndexSearcher;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x21, 6, 7, 2, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(ensureOpen);
  methods[2].selector = @selector(recordWithOrgApacheLuceneSearchIndexSearcher:);
  methods[3].selector = @selector(acquireWithLong:);
  methods[4].selector = @selector(release__WithOrgApacheLuceneSearchIndexSearcher:);
  methods[5].selector = @selector(pruneWithOrgApacheLuceneSearchSearcherLifetimeManager_Pruner:);
  methods[6].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "closed_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "searchers_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "record", "LOrgApacheLuceneSearchIndexSearcher;", "LJavaIoIOException;", "acquire", "J", "release", "prune", "LOrgApacheLuceneSearchSearcherLifetimeManager_Pruner;", "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lorg/apache/lucene/search/SearcherLifetimeManager$SearcherTracker;>;", "LOrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker;LOrgApacheLuceneSearchSearcherLifetimeManager_Pruner;LOrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager = { "SearcherLifetimeManager", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager;
}

@end

void OrgApacheLuceneSearchSearcherLifetimeManager_init(OrgApacheLuceneSearchSearcherLifetimeManager *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->searchers_, new_JavaUtilConcurrentConcurrentHashMap_init());
}

OrgApacheLuceneSearchSearcherLifetimeManager *new_OrgApacheLuceneSearchSearcherLifetimeManager_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherLifetimeManager, init)
}

OrgApacheLuceneSearchSearcherLifetimeManager *create_OrgApacheLuceneSearchSearcherLifetimeManager_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherLifetimeManager, init)
}

void OrgApacheLuceneSearchSearcherLifetimeManager_ensureOpen(OrgApacheLuceneSearchSearcherLifetimeManager *self) {
  if (JreLoadVolatileBoolean(&self->closed_)) {
    @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this SearcherLifetimeManager instance is closed");
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager)

@implementation OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker

- (instancetype)initWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(self, searcher);
  return self;
}

- (jint)compareToWithId:(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *)other {
  cast_chk(other, [OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker class]);
  if (recordTimeSec_ < ((OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *) nil_chk(other))->recordTimeSec_) {
    return 1;
  }
  else if (other->recordTimeSec_ < recordTimeSec_) {
    return -1;
  }
  else {
    return 0;
  }
}

- (void)close {
  @synchronized(self) {
    [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher_)) getIndexReader])) decRef];
  }
}

- (void)dealloc {
  RELEASE_(searcher_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchIndexSearcher:);
  methods[1].selector = @selector(compareToWithId:);
  methods[2].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "searcher_", "LOrgApacheLuceneSearchIndexSearcher;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "recordTimeSec_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "version__", "J", .constantValue.asLong = 0, 0x11, 4, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchIndexSearcher;", "compareTo", "LOrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker;", "LJavaIoIOException;", "version", "LOrgApacheLuceneSearchSearcherLifetimeManager;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/search/SearcherLifetimeManager$SearcherTracker;>;Ljava/io/Closeable;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker = { "SearcherTracker", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 3, 3, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker;
}

@end

void OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *self, OrgApacheLuceneSearchIndexSearcher *searcher) {
  NSObject_init(self);
  JreStrongAssign(&self->searcher_, searcher);
  self->version__ = [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) getVersion];
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([searcher getIndexReader])) incRef];
  self->recordTimeSec_ = [((JavaUtilConcurrentTimeUnit *) nil_chk(JreLoadEnum(JavaUtilConcurrentTimeUnit, NANOSECONDS))) toSecondsWithLong:JavaLangSystem_nanoTime()];
}

OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *new_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker, initWithOrgApacheLuceneSearchIndexSearcher_, searcher)
}

OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker *create_OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker_initWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker, initWithOrgApacheLuceneSearchIndexSearcher_, searcher)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager_SearcherTracker)

@implementation OrgApacheLuceneSearchSearcherLifetimeManager_Pruner

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(doPruneWithInt:withOrgApacheLuceneSearchIndexSearcher:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "doPrune", "ILOrgApacheLuceneSearchIndexSearcher;", "LOrgApacheLuceneSearchSearcherLifetimeManager;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager_Pruner = { "Pruner", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x609, 1, 0, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager_Pruner;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager_Pruner)

@implementation OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge

- (instancetype)initWithInt:(jint)maxAgeSec {
  OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(self, maxAgeSec);
  return self;
}

- (jboolean)doPruneWithInt:(jint)ageSec
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  return ageSec > maxAgeSec_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(doPruneWithInt:withOrgApacheLuceneSearchIndexSearcher:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxAgeSec_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "doPrune", "ILOrgApacheLuceneSearchIndexSearcher;", "LOrgApacheLuceneSearchSearcherLifetimeManager;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge = { "PruneByAge", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x19, 2, 1, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge;
}

@end

void OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *self, jint maxAgeSec) {
  NSObject_init(self);
  if (maxAgeSec < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"maxAgeSec must be > 0 (got ", maxAgeSec, ')'));
  }
  self->maxAgeSec_ = maxAgeSec;
}

OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *new_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(jint maxAgeSec) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge, initWithInt_, maxAgeSec)
}

OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *create_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(jint maxAgeSec) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge, initWithInt_, maxAgeSec)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge)
