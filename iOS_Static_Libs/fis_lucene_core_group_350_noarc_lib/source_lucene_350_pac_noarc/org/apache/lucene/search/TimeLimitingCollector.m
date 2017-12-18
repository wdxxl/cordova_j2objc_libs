//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/TimeLimitingCollector.java
//

#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Thread.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TimeLimitingCollector.h"
#include "org/apache/lucene/util/Counter.h"
#include "org/apache/lucene/util/ThreadInterruptedException.h"

@interface OrgApacheLuceneSearchTimeLimitingCollector () {
 @public
  jlong t0_;
  jlong timeout_;
  OrgApacheLuceneSearchCollector *collector_;
  OrgApacheLuceneUtilCounter *clock_;
  jlong ticksAllowed_;
  jboolean greedy_;
  jint docBase_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTimeLimitingCollector, collector_, OrgApacheLuceneSearchCollector *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTimeLimitingCollector, clock_, OrgApacheLuceneUtilCounter *)

@interface OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException () {
 @public
  jlong timeAllowed_;
  jlong timeElapsed_;
  jint lastDocCollected_;
}

- (instancetype)initWithLong:(jlong)timeAllowed
                    withLong:(jlong)timeElapsed
                     withInt:(jint)lastDocCollected;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException *self, jlong timeAllowed, jlong timeElapsed, jint lastDocCollected);

__attribute__((unused)) static OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException *new_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(jlong timeAllowed, jlong timeElapsed, jint lastDocCollected) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException *create_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(jlong timeAllowed, jlong timeElapsed, jint lastDocCollected);

@interface OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder)

inline OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_get_THREAD();
static OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_THREAD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder, THREAD, OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *)

__attribute__((unused)) static void OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder *self);

__attribute__((unused)) static OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder *new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder *create_OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder)

@interface OrgApacheLuceneSearchTimeLimitingCollector_TimerThread () {
 @public
  volatile_jlong time_;
  volatile_jboolean stop_;
  volatile_jlong resolution_;
}

@end

@implementation OrgApacheLuceneSearchTimeLimitingCollector

- (instancetype)initWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector
                        withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)clock
                                              withLong:(jlong)ticksAllowed {
  OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(self, collector, clock, ticksAllowed);
  return self;
}

- (void)setBaselineWithLong:(jlong)clockTime {
  t0_ = clockTime;
  timeout_ = t0_ + ticksAllowed_;
}

- (void)setBaseline {
  [self setBaselineWithLong:[((OrgApacheLuceneUtilCounter *) nil_chk(clock_)) get]];
}

- (jboolean)isGreedy {
  return greedy_;
}

- (void)setGreedyWithBoolean:(jboolean)greedy {
  self->greedy_ = greedy;
}

- (void)collectWithInt:(jint)doc {
  jlong time = [((OrgApacheLuceneUtilCounter *) nil_chk(clock_)) get];
  if (timeout_ < time) {
    if (greedy_) {
      [((OrgApacheLuceneSearchCollector *) nil_chk(collector_)) collectWithInt:doc];
    }
    @throw create_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(timeout_ - t0_, time - t0_, docBase_ + doc);
  }
  [((OrgApacheLuceneSearchCollector *) nil_chk(collector_)) collectWithInt:doc];
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base {
  [((OrgApacheLuceneSearchCollector *) nil_chk(collector_)) setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:base];
  self->docBase_ = base;
  if (JavaLangLong_MIN_VALUE == t0_) {
    [self setBaseline];
  }
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  [((OrgApacheLuceneSearchCollector *) nil_chk(collector_)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
}

- (jboolean)acceptsDocsOutOfOrder {
  return [((OrgApacheLuceneSearchCollector *) nil_chk(collector_)) acceptsDocsOutOfOrder];
}

+ (OrgApacheLuceneUtilCounter *)getGlobalCounter {
  return OrgApacheLuceneSearchTimeLimitingCollector_getGlobalCounter();
}

+ (OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *)getGlobalTimerThread {
  return OrgApacheLuceneSearchTimeLimitingCollector_getGlobalTimerThread();
}

- (void)dealloc {
  RELEASE_(collector_);
  RELEASE_(clock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 7, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCounter;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTimeLimitingCollector_TimerThread;", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchCollector:withOrgApacheLuceneUtilCounter:withLong:);
  methods[1].selector = @selector(setBaselineWithLong:);
  methods[2].selector = @selector(setBaseline);
  methods[3].selector = @selector(isGreedy);
  methods[4].selector = @selector(setGreedyWithBoolean:);
  methods[5].selector = @selector(collectWithInt:);
  methods[6].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[7].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[8].selector = @selector(acceptsDocsOutOfOrder);
  methods[9].selector = @selector(getGlobalCounter);
  methods[10].selector = @selector(getGlobalTimerThread);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "t0_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "timeout_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "collector_", "LOrgApacheLuceneSearchCollector;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "clock_", "LOrgApacheLuceneUtilCounter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "ticksAllowed_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "greedy_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchCollector;LOrgApacheLuceneUtilCounter;J", "setBaseline", "J", "setGreedy", "Z", "collect", "I", "LJavaIoIOException;", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "setScorer", "LOrgApacheLuceneSearchScorer;", "LOrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException;LOrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder;LOrgApacheLuceneSearchTimeLimitingCollector_TimerThread;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTimeLimitingCollector = { "TimeLimitingCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 11, 7, -1, 12, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTimeLimitingCollector;
}

@end

void OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(OrgApacheLuceneSearchTimeLimitingCollector *self, OrgApacheLuceneSearchCollector *collector, OrgApacheLuceneUtilCounter *clock, jlong ticksAllowed) {
  OrgApacheLuceneSearchCollector_init(self);
  self->t0_ = JavaLangLong_MIN_VALUE;
  self->timeout_ = JavaLangLong_MIN_VALUE;
  self->greedy_ = false;
  JreStrongAssign(&self->collector_, collector);
  JreStrongAssign(&self->clock_, clock);
  self->ticksAllowed_ = ticksAllowed;
}

OrgApacheLuceneSearchTimeLimitingCollector *new_OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(OrgApacheLuceneSearchCollector *collector, OrgApacheLuceneUtilCounter *clock, jlong ticksAllowed) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTimeLimitingCollector, initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_, collector, clock, ticksAllowed)
}

OrgApacheLuceneSearchTimeLimitingCollector *create_OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(OrgApacheLuceneSearchCollector *collector, OrgApacheLuceneUtilCounter *clock, jlong ticksAllowed) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTimeLimitingCollector, initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_, collector, clock, ticksAllowed)
}

OrgApacheLuceneUtilCounter *OrgApacheLuceneSearchTimeLimitingCollector_getGlobalCounter() {
  OrgApacheLuceneSearchTimeLimitingCollector_initialize();
  return ((OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *) nil_chk(JreLoadStatic(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder, THREAD)))->counter_;
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *OrgApacheLuceneSearchTimeLimitingCollector_getGlobalTimerThread() {
  OrgApacheLuceneSearchTimeLimitingCollector_initialize();
  return JreLoadStatic(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder, THREAD);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTimeLimitingCollector)

@implementation OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException

- (instancetype)initWithLong:(jlong)timeAllowed
                    withLong:(jlong)timeElapsed
                     withInt:(jint)lastDocCollected {
  OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(self, timeAllowed, timeElapsed, lastDocCollected);
  return self;
}

- (jlong)getTimeAllowed {
  return timeAllowed_;
}

- (jlong)getTimeElapsed {
  return timeElapsed_;
}

- (jint)getLastDocCollected {
  return lastDocCollected_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:withLong:withInt:);
  methods[1].selector = @selector(getTimeAllowed);
  methods[2].selector = @selector(getTimeElapsed);
  methods[3].selector = @selector(getLastDocCollected);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "timeAllowed_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "timeElapsed_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastDocCollected_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JJI", "LOrgApacheLuceneSearchTimeLimitingCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException = { "TimeExceededException", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x9, 4, 3, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException;
}

@end

void OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException *self, jlong timeAllowed, jlong timeElapsed, jint lastDocCollected) {
  JavaLangRuntimeException_initWithNSString_(self, JreStrcat("$J$J$", @"Elapsed time: ", timeElapsed, @"Exceeded allowed search time: ", timeAllowed, @" ms."));
  self->timeAllowed_ = timeAllowed;
  self->timeElapsed_ = timeElapsed;
  self->lastDocCollected_ = lastDocCollected;
}

OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException *new_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(jlong timeAllowed, jlong timeElapsed, jint lastDocCollected) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException, initWithLong_withLong_withInt_, timeAllowed, timeElapsed, lastDocCollected)
}

OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException *create_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_initWithLong_withLong_withInt_(jlong timeAllowed, jlong timeElapsed, jint lastDocCollected) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException, initWithLong_withLong_withInt_, timeAllowed, timeElapsed, lastDocCollected)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder)

@implementation OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "THREAD", "LOrgApacheLuceneSearchTimeLimitingCollector_TimerThread;", .constantValue.asLong = 0, 0x18, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_THREAD, "LOrgApacheLuceneSearchTimeLimitingCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder = { "TimerThreadHolder", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1a, 1, 1, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder class]) {
    {
      JreStrongAssignAndConsume(&OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_THREAD, new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter_newCounterWithBoolean_(true)));
      [OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_THREAD start];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder)
  }
}

@end

void OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder *new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder, init)
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder *create_OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTimeLimitingCollector_TimerThreadHolder)

NSString *OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_THREAD_NAME = @"TimeLimitedCollector timer thread";

@implementation OrgApacheLuceneSearchTimeLimitingCollector_TimerThread

- (instancetype)initWithLong:(jlong)resolution
withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)counter {
  OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(self, resolution, counter);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)counter {
  OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(self, counter);
  return self;
}

- (void)run {
  while (!JreLoadVolatileBoolean(&stop_)) {
    [((OrgApacheLuceneUtilCounter *) nil_chk(counter_)) addAndGetWithLong:JreLoadVolatileLong(&resolution_)];
    @try {
      JavaLangThread_sleepWithLong_(JreLoadVolatileLong(&resolution_));
    }
    @catch (JavaLangInterruptedException *ie) {
      @throw create_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(ie);
    }
  }
}

- (jlong)getMilliseconds {
  return JreLoadVolatileLong(&time_);
}

- (void)stopTimer {
  JreAssignVolatileBoolean(&stop_, true);
}

- (jlong)getResolution {
  return JreLoadVolatileLong(&resolution_);
}

- (void)setResolutionWithLong:(jlong)resolution {
  JreAssignVolatileLong(&self->resolution_, JavaLangMath_maxWithLong_withLong_(resolution, 5));
}

- (void)dealloc {
  RELEASE_(counter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:withOrgApacheLuceneUtilCounter:);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilCounter:);
  methods[2].selector = @selector(run);
  methods[3].selector = @selector(getMilliseconds);
  methods[4].selector = @selector(stopTimer);
  methods[5].selector = @selector(getResolution);
  methods[6].selector = @selector(setResolutionWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "THREAD_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "DEFAULT_RESOLUTION", "I", .constantValue.asInt = OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_DEFAULT_RESOLUTION, 0x19, -1, -1, -1, -1 },
    { "time_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "stop_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "resolution_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "counter_", "LOrgApacheLuceneUtilCounter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JLOrgApacheLuceneUtilCounter;", "LOrgApacheLuceneUtilCounter;", "setResolution", "J", &OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_THREAD_NAME, "LOrgApacheLuceneSearchTimeLimitingCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTimeLimitingCollector_TimerThread = { "TimerThread", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x19, 7, 6, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread;
}

@end

void OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *self, jlong resolution, OrgApacheLuceneUtilCounter *counter) {
  JavaLangThread_initWithNSString_(self, OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_THREAD_NAME);
  JreAssignVolatileLong(&self->time_, 0);
  JreAssignVolatileBoolean(&self->stop_, false);
  JreAssignVolatileLong(&self->resolution_, resolution);
  JreStrongAssign(&self->counter_, counter);
  [self setDaemonWithBoolean:true];
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(jlong resolution, OrgApacheLuceneUtilCounter *counter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, initWithLong_withOrgApacheLuceneUtilCounter_, resolution, counter)
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *create_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(jlong resolution, OrgApacheLuceneUtilCounter *counter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, initWithLong_withOrgApacheLuceneUtilCounter_, resolution, counter)
}

void OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *self, OrgApacheLuceneUtilCounter *counter) {
  OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(self, OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_DEFAULT_RESOLUTION, counter);
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *counter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, initWithOrgApacheLuceneUtilCounter_, counter)
}

OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *create_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *counter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, initWithOrgApacheLuceneUtilCounter_, counter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread)
