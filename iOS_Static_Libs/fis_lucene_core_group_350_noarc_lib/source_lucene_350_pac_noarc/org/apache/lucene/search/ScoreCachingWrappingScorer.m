//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/ScoreCachingWrappingScorer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/ScoreCachingWrappingScorer.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchScoreCachingWrappingScorer () {
 @public
  OrgApacheLuceneSearchScorer *scorer_;
  jint curDoc_;
  jfloat curScore_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchScoreCachingWrappingScorer, scorer_, OrgApacheLuceneSearchScorer *)

@implementation OrgApacheLuceneSearchScoreCachingWrappingScorer

- (instancetype)initWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(self, scorer);
  return self;
}

- (jboolean)scoreWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector
                                            withInt:(jint)max
                                            withInt:(jint)firstDocID {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) scoreWithOrgApacheLuceneSearchCollector:collector withInt:max withInt:firstDocID];
}

- (OrgApacheLuceneSearchSimilarity *)getSimilarity {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) getSimilarity];
}

- (jfloat)score {
  jint doc = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) docID];
  if (doc != curDoc_) {
    curScore_ = [scorer_ score];
    curDoc_ = doc;
  }
  return curScore_;
}

- (jint)docID {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) docID];
}

- (jint)nextDoc {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) nextDoc];
}

- (void)scoreWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector {
  [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) scoreWithOrgApacheLuceneSearchCollector:collector];
}

- (jint)advanceWithInt:(jint)target {
  return [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) advanceWithInt:target];
}

- (void)dealloc {
  RELEASE_(scorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilarity;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchScorer:);
  methods[1].selector = @selector(scoreWithOrgApacheLuceneSearchCollector:withInt:withInt:);
  methods[2].selector = @selector(getSimilarity);
  methods[3].selector = @selector(score);
  methods[4].selector = @selector(docID);
  methods[5].selector = @selector(nextDoc);
  methods[6].selector = @selector(scoreWithOrgApacheLuceneSearchCollector:);
  methods[7].selector = @selector(advanceWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "scorer_", "LOrgApacheLuceneSearchScorer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "curDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "curScore_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchScorer;", "score", "LOrgApacheLuceneSearchCollector;II", "LJavaIoIOException;", "LOrgApacheLuceneSearchCollector;", "advance", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchScoreCachingWrappingScorer = { "ScoreCachingWrappingScorer", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchScoreCachingWrappingScorer;
}

@end

void OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScoreCachingWrappingScorer *self, OrgApacheLuceneSearchScorer *scorer) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchSimilarity_withOrgApacheLuceneSearchWeight_(self, [((OrgApacheLuceneSearchScorer *) nil_chk(scorer)) getSimilarity], scorer->weight_);
  self->curDoc_ = -1;
  JreStrongAssign(&self->scorer_, scorer);
}

OrgApacheLuceneSearchScoreCachingWrappingScorer *new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *scorer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchScoreCachingWrappingScorer, initWithOrgApacheLuceneSearchScorer_, scorer)
}

OrgApacheLuceneSearchScoreCachingWrappingScorer *create_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(OrgApacheLuceneSearchScorer *scorer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchScoreCachingWrappingScorer, initWithOrgApacheLuceneSearchScorer_, scorer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchScoreCachingWrappingScorer)
