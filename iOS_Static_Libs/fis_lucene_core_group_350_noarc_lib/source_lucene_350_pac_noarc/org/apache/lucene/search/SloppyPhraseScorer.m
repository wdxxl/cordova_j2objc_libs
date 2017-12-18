//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SloppyPhraseScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "org/apache/lucene/search/PhrasePositions.h"
#include "org/apache/lucene/search/PhraseQueue.h"
#include "org/apache/lucene/search/PhraseScorer.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/SloppyPhraseScorer.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchSloppyPhraseScorer () {
 @public
  jint slop_;
  jboolean checkedRepeats_;
  jboolean hasRepeats_;
  OrgApacheLuceneSearchPhraseQueue *pq_;
  IOSObjectArray *nrPps_;
}

- (jint)advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions:(OrgApacheLuceneSearchPhrasePositions *)pp
                                                       withInt:(jint)end;

- (jint)initPhrasePositions OBJC_METHOD_FAMILY_NONE;

- (jint)tpPosWithOrgApacheLuceneSearchPhrasePositions:(OrgApacheLuceneSearchPhrasePositions *)pp;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSloppyPhraseScorer, pq_, OrgApacheLuceneSearchPhraseQueue *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSloppyPhraseScorer, nrPps_, IOSObjectArray *)

__attribute__((unused)) static jint OrgApacheLuceneSearchSloppyPhraseScorer_advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions_withInt_(OrgApacheLuceneSearchSloppyPhraseScorer *self, OrgApacheLuceneSearchPhrasePositions *pp, jint end);

__attribute__((unused)) static jint OrgApacheLuceneSearchSloppyPhraseScorer_initPhrasePositions(OrgApacheLuceneSearchSloppyPhraseScorer *self);

__attribute__((unused)) static jint OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(OrgApacheLuceneSearchSloppyPhraseScorer *self, OrgApacheLuceneSearchPhrasePositions *pp);

@implementation OrgApacheLuceneSearchSloppyPhraseScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:(IOSObjectArray *)postings
                withOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity
                                            withInt:(jint)slop
                                      withByteArray:(IOSByteArray *)norms {
  OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_(self, weight, postings, similarity, slop, norms);
  return self;
}

- (jfloat)phraseFreq {
  jint end = OrgApacheLuceneSearchSloppyPhraseScorer_initPhrasePositions(self);
  if (end == JavaLangInteger_MIN_VALUE) {
    return 0.0f;
  }
  jfloat freq = 0.0f;
  OrgApacheLuceneSearchPhrasePositions *pp = [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) pop];
  jint matchLength = end - ((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->position_;
  jint next = [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) size] > 0 ? ((OrgApacheLuceneSearchPhrasePositions *) nil_chk([((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) top]))->position_ : pp->position_;
  while ([pp nextPosition] && (end = OrgApacheLuceneSearchSloppyPhraseScorer_advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions_withInt_(self, pp, end)) != JavaLangInteger_MIN_VALUE) {
    if (pp->position_ > next) {
      if (matchLength <= slop_) {
        JrePlusAssignFloatF(&freq, [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) sloppyFreqWithInt:matchLength]);
      }
      [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) addWithId:pp];
      pp = [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) pop];
      next = [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) size] > 0 ? ((OrgApacheLuceneSearchPhrasePositions *) nil_chk([((OrgApacheLuceneSearchPhraseQueue *) nil_chk(pq_)) top]))->position_ : ((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->position_;
      matchLength = end - ((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->position_;
    }
    else {
      jint matchLength2 = end - pp->position_;
      if (matchLength2 < matchLength) {
        matchLength = matchLength2;
      }
    }
  }
  if (matchLength <= slop_) {
    JrePlusAssignFloatF(&freq, [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) sloppyFreqWithInt:matchLength]);
  }
  return freq;
}

- (jint)advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions:(OrgApacheLuceneSearchPhrasePositions *)pp
                                                       withInt:(jint)end {
  return OrgApacheLuceneSearchSloppyPhraseScorer_advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions_withInt_(self, pp, end);
}

- (jint)initPhrasePositions {
  return OrgApacheLuceneSearchSloppyPhraseScorer_initPhrasePositions(self);
}

- (jint)tpPosWithOrgApacheLuceneSearchPhrasePositions:(OrgApacheLuceneSearchPhrasePositions *)pp {
  return OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(self, pp);
}

- (void)dealloc {
  RELEASE_(pq_);
  RELEASE_(nrPps_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x2, 2, 3, 1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x12, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:withOrgApacheLuceneSearchSimilarity:withInt:withByteArray:);
  methods[1].selector = @selector(phraseFreq);
  methods[2].selector = @selector(advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions:withInt:);
  methods[3].selector = @selector(initPhrasePositions);
  methods[4].selector = @selector(tpPosWithOrgApacheLuceneSearchPhrasePositions:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "slop_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "checkedRepeats_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "hasRepeats_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pq_", "LOrgApacheLuceneSearchPhraseQueue;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "nrPps_", "[LOrgApacheLuceneSearchPhrasePositions;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchWeight;[LOrgApacheLuceneSearchPhraseQuery_PostingsAndFreq;LOrgApacheLuceneSearchSimilarity;I[B", "LJavaIoIOException;", "advanceRepeats", "LOrgApacheLuceneSearchPhrasePositions;I", "tpPos", "LOrgApacheLuceneSearchPhrasePositions;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSloppyPhraseScorer = { "SloppyPhraseScorer", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 5, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSloppyPhraseScorer;
}

@end

void OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_(OrgApacheLuceneSearchSloppyPhraseScorer *self, OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilarity *similarity, jint slop, IOSByteArray *norms) {
  OrgApacheLuceneSearchPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, weight, postings, similarity, norms);
  self->slop_ = slop;
}

OrgApacheLuceneSearchSloppyPhraseScorer *new_OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_(OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilarity *similarity, jint slop, IOSByteArray *norms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSloppyPhraseScorer, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_, weight, postings, similarity, slop, norms)
}

OrgApacheLuceneSearchSloppyPhraseScorer *create_OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_(OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilarity *similarity, jint slop, IOSByteArray *norms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSloppyPhraseScorer, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_, weight, postings, similarity, slop, norms)
}

jint OrgApacheLuceneSearchSloppyPhraseScorer_advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions_withInt_(OrgApacheLuceneSearchSloppyPhraseScorer *self, OrgApacheLuceneSearchPhrasePositions *pp, jint end) {
  jint repeatsEnd = end;
  if (((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->position_ > repeatsEnd) {
    repeatsEnd = pp->position_;
  }
  if (!self->hasRepeats_) {
    return repeatsEnd;
  }
  jint tpPos = OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(self, pp);
  for (OrgApacheLuceneSearchPhrasePositions *pp2 = pp->nextRepeating_; pp2 != nil; pp2 = pp2->nextRepeating_) {
    while (OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(self, pp2) <= tpPos) {
      if (![pp2 nextPosition]) {
        return JavaLangInteger_MIN_VALUE;
      }
    }
    tpPos = OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(self, pp2);
    if (pp2->position_ > repeatsEnd) {
      repeatsEnd = pp2->position_;
    }
    if (pp2->position_ < pp->position_) {
      pp->position_ = pp2->position_;
    }
  }
  return repeatsEnd;
}

jint OrgApacheLuceneSearchSloppyPhraseScorer_initPhrasePositions(OrgApacheLuceneSearchSloppyPhraseScorer *self) {
  jint end = JavaLangInteger_MIN_VALUE;
  if (self->checkedRepeats_ && !self->hasRepeats_) {
    [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(self->pq_)) clear];
    for (OrgApacheLuceneSearchPhrasePositions *pp = self->min_, *prev = nil; prev != self->max_; pp = (prev = pp)->next_) {
      [((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp)) firstPosition];
      if (pp->position_ > end) {
        end = pp->position_;
      }
      [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(self->pq_)) addWithId:pp];
    }
    return end;
  }
  for (OrgApacheLuceneSearchPhrasePositions *pp = self->min_, *prev = nil; prev != self->max_; pp = (prev = pp)->next_) {
    [((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp)) firstPosition];
  }
  if (!self->checkedRepeats_) {
    self->checkedRepeats_ = true;
    JavaUtilArrayList *ppsA = create_JavaUtilArrayList_init();
    OrgApacheLuceneSearchPhrasePositions *dummyPP = create_OrgApacheLuceneSearchPhrasePositions_initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_(nil, -1, -1);
    for (OrgApacheLuceneSearchPhrasePositions *pp = self->min_, *prev = nil; prev != self->max_; pp = (prev = pp)->next_) {
      if (((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->nextRepeating_ != nil) {
        continue;
      }
      [ppsA addWithId:pp];
      jint tpPos = OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(self, pp);
      for (OrgApacheLuceneSearchPhrasePositions *prevB = pp, *pp2 = pp->next_; pp2 != self->min_; pp2 = pp2->next_) {
        if (((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp2))->nextRepeating_ != nil || pp->offset_ == pp2->offset_ || OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(self, pp2) != tpPos) {
          continue;
        }
        self->hasRepeats_ = true;
        JreStrongAssign(&prevB->nextRepeating_, pp2);
        JreStrongAssign(&pp2->nextRepeating_, dummyPP);
        prevB = pp2;
      }
    }
    if (self->hasRepeats_) {
      for (OrgApacheLuceneSearchPhrasePositions *pp = self->min_, *prev = nil; prev != self->max_; pp = (prev = pp)->next_) {
        if (((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->nextRepeating_ == dummyPP) {
          JreStrongAssign(&pp->nextRepeating_, nil);
        }
      }
    }
    JreStrongAssign(&self->nrPps_, [ppsA toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchPhrasePositions_class_()]]);
    JreStrongAssignAndConsume(&self->pq_, new_OrgApacheLuceneSearchPhraseQueue_initWithInt_(((IOSObjectArray *) nil_chk(self->nrPps_))->size_));
  }
  if (self->hasRepeats_) {
    {
      IOSObjectArray *a__ = self->nrPps_;
      OrgApacheLuceneSearchPhrasePositions * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      OrgApacheLuceneSearchPhrasePositions * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchPhrasePositions *pp = *b__++;
        if ((end = OrgApacheLuceneSearchSloppyPhraseScorer_advanceRepeatsWithOrgApacheLuceneSearchPhrasePositions_withInt_(self, pp, end)) == JavaLangInteger_MIN_VALUE) {
          return JavaLangInteger_MIN_VALUE;
        }
      }
    }
  }
  [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(self->pq_)) clear];
  {
    IOSObjectArray *a__ = self->nrPps_;
    OrgApacheLuceneSearchPhrasePositions * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchPhrasePositions * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchPhrasePositions *pp = *b__++;
      if (((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->position_ > end) {
        end = pp->position_;
      }
      [((OrgApacheLuceneSearchPhraseQueue *) nil_chk(self->pq_)) addWithId:pp];
    }
  }
  return end;
}

jint OrgApacheLuceneSearchSloppyPhraseScorer_tpPosWithOrgApacheLuceneSearchPhrasePositions_(OrgApacheLuceneSearchSloppyPhraseScorer *self, OrgApacheLuceneSearchPhrasePositions *pp) {
  return ((OrgApacheLuceneSearchPhrasePositions *) nil_chk(pp))->position_ + pp->offset_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSloppyPhraseScorer)
