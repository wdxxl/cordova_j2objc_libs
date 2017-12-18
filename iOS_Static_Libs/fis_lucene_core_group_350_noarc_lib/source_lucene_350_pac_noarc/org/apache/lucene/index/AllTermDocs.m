//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/AllTermDocs.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/AbstractAllTermDocs.h"
#include "org/apache/lucene/index/AllTermDocs.h"
#include "org/apache/lucene/index/SegmentReader.h"
#include "org/apache/lucene/util/BitVector.h"

@implementation OrgApacheLuceneIndexAllTermDocs

- (instancetype)initWithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)parent {
  OrgApacheLuceneIndexAllTermDocs_initWithOrgApacheLuceneIndexSegmentReader_(self, parent);
  return self;
}

- (jboolean)isDeletedWithInt:(jint)doc {
  return deletedDocs_ != nil && [deletedDocs_ getWithInt:doc];
}

- (void)dealloc {
  RELEASE_(deletedDocs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSegmentReader:);
  methods[1].selector = @selector(isDeletedWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "deletedDocs_", "LOrgApacheLuceneUtilBitVector;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSegmentReader;", "isDeleted", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexAllTermDocs = { "AllTermDocs", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexAllTermDocs;
}

@end

void OrgApacheLuceneIndexAllTermDocs_initWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexAllTermDocs *self, OrgApacheLuceneIndexSegmentReader *parent) {
  OrgApacheLuceneIndexAbstractAllTermDocs_initWithInt_(self, [((OrgApacheLuceneIndexSegmentReader *) nil_chk(parent)) maxDoc]);
  @synchronized(parent) {
    JreStrongAssign(&self->deletedDocs_, parent->deletedDocs_);
  }
}

OrgApacheLuceneIndexAllTermDocs *new_OrgApacheLuceneIndexAllTermDocs_initWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentReader *parent) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexAllTermDocs, initWithOrgApacheLuceneIndexSegmentReader_, parent)
}

OrgApacheLuceneIndexAllTermDocs *create_OrgApacheLuceneIndexAllTermDocs_initWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentReader *parent) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexAllTermDocs, initWithOrgApacheLuceneIndexSegmentReader_, parent)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexAllTermDocs)
