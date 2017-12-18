//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/MultiReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/FieldSelector.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermDocs.h"
#include "org/apache/lucene/index/TermEnum.h"
#include "org/apache/lucene/index/TermFreqVector.h"
#include "org/apache/lucene/index/TermPositions.h"
#include "org/apache/lucene/index/TermVectorMapper.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/util/MapBackedSet.h"

@interface OrgApacheLuceneIndexMultiReader () {
 @public
  IOSIntArray *starts_;
  IOSBooleanArray *decrefOnClose_;
  id<JavaUtilMap> normsCache_;
  jint maxDoc_;
  jint numDocs_;
  jboolean hasDeletions_;
}

- (void)initialize__WithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders
                                                 withBoolean:(jboolean)closeSubReaders OBJC_METHOD_FAMILY_NONE;

- (jint)readerIndexWithInt:(jint)n;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiReader, starts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiReader, decrefOnClose_, IOSBooleanArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiReader, normsCache_, id<JavaUtilMap>)

__attribute__((unused)) static void OrgApacheLuceneIndexMultiReader_initialize__WithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(OrgApacheLuceneIndexMultiReader *self, IOSObjectArray *subReaders, jboolean closeSubReaders);

__attribute__((unused)) static jint OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(OrgApacheLuceneIndexMultiReader *self, jint n);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneIndexMultiReader__Annotations$0();

@implementation OrgApacheLuceneIndexMultiReader

- (instancetype)initWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders {
  OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(self, subReaders);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders
                                                 withBoolean:(jboolean)closeSubReaders {
  OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(self, subReaders, closeSubReaders);
  return self;
}

- (void)initialize__WithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders
                                                 withBoolean:(jboolean)closeSubReaders {
  OrgApacheLuceneIndexMultiReader_initialize__WithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(self, subReaders, closeSubReaders);
}

- (OrgApacheLuceneIndexIndexReader *)doOpenIfChanged {
  @synchronized(self) {
    return [self doOpenIfChangedWithBoolean:false];
  }
}

- (id)java_clone {
  @synchronized(self) {
    @try {
      return [self doOpenIfChangedWithBoolean:true];
    }
    @catch (JavaLangException *ex) {
      @throw create_JavaLangRuntimeException_initWithNSException_(ex);
    }
  }
}

- (OrgApacheLuceneIndexIndexReader *)doOpenIfChangedWithBoolean:(jboolean)doClone {
  [self ensureOpen];
  jboolean changed = false;
  IOSObjectArray *newSubReaders = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(subReaders_))->size_ type:OrgApacheLuceneIndexIndexReader_class_()];
  jboolean success = false;
  @try {
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
      if (doClone) {
        IOSObjectArray_Set(newSubReaders, i, (OrgApacheLuceneIndexIndexReader *) cast_chk([((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) java_clone], [OrgApacheLuceneIndexIndexReader class]));
        changed = true;
      }
      else {
        OrgApacheLuceneIndexIndexReader *newSubReader = OrgApacheLuceneIndexIndexReader_openIfChangedWithOrgApacheLuceneIndexIndexReader_(IOSObjectArray_Get(subReaders_, i));
        if (newSubReader != nil) {
          IOSObjectArray_Set(newSubReaders, i, newSubReader);
          changed = true;
        }
        else {
          IOSObjectArray_Set(newSubReaders, i, IOSObjectArray_Get(nil_chk(subReaders_), i));
        }
      }
    }
    success = true;
  }
  @finally {
    if (!success && changed) {
      for (jint i = 0; i < newSubReaders->size_; i++) {
        if (IOSObjectArray_Get(newSubReaders, i) != IOSObjectArray_Get(nil_chk(subReaders_), i)) {
          @try {
            [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(newSubReaders, i))) close];
          }
          @catch (JavaIoIOException *ignore) {
          }
        }
      }
    }
  }
  if (changed) {
    IOSBooleanArray *newDecrefOnClose = [IOSBooleanArray arrayWithLength:((IOSObjectArray *) nil_chk(subReaders_))->size_];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
      if (IOSObjectArray_Get(newSubReaders, i) == IOSObjectArray_Get(subReaders_, i)) {
        [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(newSubReaders, i))) incRef];
        *IOSBooleanArray_GetRef(newDecrefOnClose, i) = true;
      }
    }
    OrgApacheLuceneIndexMultiReader *mr = create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(newSubReaders);
    JreStrongAssign(&mr->decrefOnClose_, newDecrefOnClose);
    return mr;
  }
  else {
    return nil;
  }
}

- (IOSObjectArray *)getTermFreqVectorsWithInt:(jint)n {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) getTermFreqVectorsWithInt:n - IOSIntArray_Get(nil_chk(starts_), i)];
}

- (id<OrgApacheLuceneIndexTermFreqVector>)getTermFreqVectorWithInt:(jint)n
                                                      withNSString:(NSString *)field {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) getTermFreqVectorWithInt:n - IOSIntArray_Get(nil_chk(starts_), i) withNSString:field];
}

- (void)getTermFreqVectorWithInt:(jint)docNumber
                    withNSString:(NSString *)field
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, docNumber);
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) getTermFreqVectorWithInt:docNumber - IOSIntArray_Get(nil_chk(starts_), i) withNSString:field withOrgApacheLuceneIndexTermVectorMapper:mapper];
}

- (void)getTermFreqVectorWithInt:(jint)docNumber
withOrgApacheLuceneIndexTermVectorMapper:(OrgApacheLuceneIndexTermVectorMapper *)mapper {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, docNumber);
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) getTermFreqVectorWithInt:docNumber - IOSIntArray_Get(nil_chk(starts_), i) withOrgApacheLuceneIndexTermVectorMapper:mapper];
}

- (jboolean)isOptimized {
  [self ensureOpen];
  return false;
}

- (jint)numDocs {
  if (numDocs_ == -1) {
    jint n = 0;
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) n += [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) numDocs];
    numDocs_ = n;
  }
  return numDocs_;
}

- (jint)maxDoc {
  return maxDoc_;
}

- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)n
            withOrgApacheLuceneDocumentFieldSelector:(id<OrgApacheLuceneDocumentFieldSelector>)fieldSelector {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) documentWithInt:n - IOSIntArray_Get(nil_chk(starts_), i) withOrgApacheLuceneDocumentFieldSelector:fieldSelector];
}

- (jboolean)isDeletedWithInt:(jint)n {
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) isDeletedWithInt:n - IOSIntArray_Get(nil_chk(starts_), i)];
}

- (jboolean)hasDeletions {
  [self ensureOpen];
  return hasDeletions_;
}

- (void)doDeleteWithInt:(jint)n {
  numDocs_ = -1;
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) deleteDocumentWithInt:n - IOSIntArray_Get(nil_chk(starts_), i)];
  hasDeletions_ = true;
}

- (void)doUndeleteAll {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) undeleteAll];
  hasDeletions_ = false;
  numDocs_ = -1;
}

- (jint)readerIndexWithInt:(jint)n {
  return OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
}

- (jboolean)hasNormsWithNSString:(NSString *)field {
  [self ensureOpen];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
    if ([((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) hasNormsWithNSString:field]) return true;
  }
  return false;
}

- (IOSByteArray *)normsWithNSString:(NSString *)field {
  @synchronized(self) {
    [self ensureOpen];
    IOSByteArray *bytes = [((id<JavaUtilMap>) nil_chk(normsCache_)) getWithId:field];
    if (bytes != nil) return bytes;
    if (![self hasNormsWithNSString:field]) return nil;
    bytes = [IOSByteArray arrayWithLength:[self maxDoc]];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) normsWithNSString:field withByteArray:bytes withInt:IOSIntArray_Get(nil_chk(starts_), i)];
    [((id<JavaUtilMap>) nil_chk(normsCache_)) putWithId:field withId:bytes];
    return bytes;
  }
}

- (void)normsWithNSString:(NSString *)field
            withByteArray:(IOSByteArray *)result
                  withInt:(jint)offset {
  @synchronized(self) {
    [self ensureOpen];
    IOSByteArray *bytes = [((id<JavaUtilMap>) nil_chk(normsCache_)) getWithId:field];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) normsWithNSString:field withByteArray:result withInt:offset + IOSIntArray_Get(nil_chk(starts_), i)];
    if (bytes == nil && ![self hasNormsWithNSString:field]) {
      JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(result, offset, ((IOSByteArray *) nil_chk(result))->size_, [((OrgApacheLuceneSearchSimilarity *) nil_chk(OrgApacheLuceneSearchSimilarity_getDefault())) encodeNormValueWithFloat:1.0f]);
    }
    else if (bytes != nil) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes, 0, result, offset, [self maxDoc]);
    }
    else {
      for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
        [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) normsWithNSString:field withByteArray:result withInt:offset + IOSIntArray_Get(nil_chk(starts_), i)];
      }
    }
  }
}

- (void)doSetNormWithInt:(jint)n
            withNSString:(NSString *)field
                withByte:(jbyte)value {
  @synchronized(normsCache_) {
    [((id<JavaUtilMap>) nil_chk(normsCache_)) removeWithId:field];
  }
  jint i = OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(self, n);
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) setNormWithInt:n - IOSIntArray_Get(nil_chk(starts_), i) withNSString:field withByte:value];
}

- (OrgApacheLuceneIndexTermEnum *)terms {
  [self ensureOpen];
  if (((IOSObjectArray *) nil_chk(subReaders_))->size_ == 1) {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, 0))) terms];
  }
  else {
    return create_OrgApacheLuceneIndexDirectoryReader_MultiTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReaderArray_withIntArray_withOrgApacheLuceneIndexTerm_(self, subReaders_, starts_, nil);
  }
}

- (OrgApacheLuceneIndexTermEnum *)termsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [self ensureOpen];
  if (((IOSObjectArray *) nil_chk(subReaders_))->size_ == 1) {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, 0))) termsWithOrgApacheLuceneIndexTerm:term];
  }
  else {
    return create_OrgApacheLuceneIndexDirectoryReader_MultiTermEnum_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReaderArray_withIntArray_withOrgApacheLuceneIndexTerm_(self, subReaders_, starts_, term);
  }
}

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t {
  [self ensureOpen];
  jint total = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) total += [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) docFreqWithOrgApacheLuceneIndexTerm:t];
  return total;
}

- (id<OrgApacheLuceneIndexTermDocs>)termDocs {
  [self ensureOpen];
  if (((IOSObjectArray *) nil_chk(subReaders_))->size_ == 1) {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, 0))) termDocs];
  }
  else {
    return create_OrgApacheLuceneIndexDirectoryReader_MultiTermDocs_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReaderArray_withIntArray_(self, subReaders_, starts_);
  }
}

- (id<OrgApacheLuceneIndexTermDocs>)termDocsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [self ensureOpen];
  if (((IOSObjectArray *) nil_chk(subReaders_))->size_ == 1) {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, 0))) termDocsWithOrgApacheLuceneIndexTerm:term];
  }
  else {
    return [super termDocsWithOrgApacheLuceneIndexTerm:term];
  }
}

- (id<OrgApacheLuceneIndexTermPositions>)termPositions {
  [self ensureOpen];
  if (((IOSObjectArray *) nil_chk(subReaders_))->size_ == 1) {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, 0))) termPositions];
  }
  else {
    return create_OrgApacheLuceneIndexDirectoryReader_MultiTermPositions_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexIndexReaderArray_withIntArray_(self, subReaders_, starts_);
  }
}

- (void)doCommitWithJavaUtilMap:(id<JavaUtilMap>)commitUserData {
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) commitWithJavaUtilMap:commitUserData];
}

- (void)doClose {
  @synchronized(self) {
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
      if (IOSBooleanArray_Get(nil_chk(decrefOnClose_), i)) {
        [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) decRef];
      }
      else {
        [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) close];
      }
    }
  }
}

- (id<JavaUtilCollection>)getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption:(OrgApacheLuceneIndexIndexReader_FieldOption *)fieldNames {
  [self ensureOpen];
  return OrgApacheLuceneIndexDirectoryReader_getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption_withOrgApacheLuceneIndexIndexReaderArray_(fieldNames, self->subReaders_);
}

- (jboolean)isCurrent {
  [self ensureOpen];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
    if (![((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) isCurrent]) {
      return false;
    }
  }
  return true;
}

- (jlong)getVersion {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"MultiReader does not support this method.");
}

- (IOSObjectArray *)getSequentialSubReaders {
  return subReaders_;
}

- (void)addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)listener {
  [super addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
  {
    IOSObjectArray *a__ = subReaders_;
    OrgApacheLuceneIndexIndexReader * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneIndexIndexReader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexIndexReader *sub = *b__++;
      [((OrgApacheLuceneIndexIndexReader *) nil_chk(sub)) addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
    }
  }
}

- (void)removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderFinishedListener>)listener {
  [super removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
  {
    IOSObjectArray *a__ = subReaders_;
    OrgApacheLuceneIndexIndexReader * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneIndexIndexReader * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexIndexReader *sub = *b__++;
      [((OrgApacheLuceneIndexIndexReader *) nil_chk(sub)) removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:listener];
    }
  }
}

- (void)dealloc {
  RELEASE_(subReaders_);
  RELEASE_(starts_);
  RELEASE_(decrefOnClose_);
  RELEASE_(normsCache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x81, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexReader;", 0x24, -1, -1, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x21, 4, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexReader;", 0x4, 5, 6, 3, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneIndexTermFreqVector;", 0x1, 7, 8, 9, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermFreqVector;", 0x1, 10, 11, 9, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 12, 9, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 13, 9, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, 14, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentDocument;", 0x1, 15, 16, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 18, 8, 3, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x2, 19, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 20, 21, 9, -1, -1, -1 },
    { NULL, "[B", 0x21, 22, 21, 9, -1, -1, -1 },
    { NULL, "V", 0x21, 22, 23, 9, -1, -1, -1 },
    { NULL, "V", 0x4, 24, 25, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermEnum;", 0x1, -1, -1, 9, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermEnum;", 0x1, 26, 27, 9, -1, -1, -1 },
    { NULL, "I", 0x1, 28, 27, 9, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermDocs;", 0x1, -1, -1, 9, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermDocs;", 0x1, 29, 27, 9, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermPositions;", 0x1, -1, -1, 9, -1, -1, -1 },
    { NULL, "V", 0x4, 30, 31, 9, 32, -1, -1 },
    { NULL, "V", 0x24, -1, -1, 9, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, 33, 34, -1, 35, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneIndexIndexReader;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 36, 37, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 38, 37, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReaderArray:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexIndexReaderArray:withBoolean:);
  methods[2].selector = @selector(initialize__WithOrgApacheLuceneIndexIndexReaderArray:withBoolean:);
  methods[3].selector = @selector(doOpenIfChanged);
  methods[4].selector = @selector(java_clone);
  methods[5].selector = @selector(doOpenIfChangedWithBoolean:);
  methods[6].selector = @selector(getTermFreqVectorsWithInt:);
  methods[7].selector = @selector(getTermFreqVectorWithInt:withNSString:);
  methods[8].selector = @selector(getTermFreqVectorWithInt:withNSString:withOrgApacheLuceneIndexTermVectorMapper:);
  methods[9].selector = @selector(getTermFreqVectorWithInt:withOrgApacheLuceneIndexTermVectorMapper:);
  methods[10].selector = @selector(isOptimized);
  methods[11].selector = @selector(numDocs);
  methods[12].selector = @selector(maxDoc);
  methods[13].selector = @selector(documentWithInt:withOrgApacheLuceneDocumentFieldSelector:);
  methods[14].selector = @selector(isDeletedWithInt:);
  methods[15].selector = @selector(hasDeletions);
  methods[16].selector = @selector(doDeleteWithInt:);
  methods[17].selector = @selector(doUndeleteAll);
  methods[18].selector = @selector(readerIndexWithInt:);
  methods[19].selector = @selector(hasNormsWithNSString:);
  methods[20].selector = @selector(normsWithNSString:);
  methods[21].selector = @selector(normsWithNSString:withByteArray:withInt:);
  methods[22].selector = @selector(doSetNormWithInt:withNSString:withByte:);
  methods[23].selector = @selector(terms);
  methods[24].selector = @selector(termsWithOrgApacheLuceneIndexTerm:);
  methods[25].selector = @selector(docFreqWithOrgApacheLuceneIndexTerm:);
  methods[26].selector = @selector(termDocs);
  methods[27].selector = @selector(termDocsWithOrgApacheLuceneIndexTerm:);
  methods[28].selector = @selector(termPositions);
  methods[29].selector = @selector(doCommitWithJavaUtilMap:);
  methods[30].selector = @selector(doClose);
  methods[31].selector = @selector(getFieldNamesWithOrgApacheLuceneIndexIndexReader_FieldOption:);
  methods[32].selector = @selector(isCurrent);
  methods[33].selector = @selector(getVersion);
  methods[34].selector = @selector(getSequentialSubReaders);
  methods[35].selector = @selector(addReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:);
  methods[36].selector = @selector(removeReaderFinishedListenerWithOrgApacheLuceneIndexIndexReader_ReaderFinishedListener:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "subReaders_", "[LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "starts_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "decrefOnClose_", "[Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "normsCache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 39, -1 },
    { "maxDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "numDocs_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "hasDeletions_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneIndexIndexReader;", "[LOrgApacheLuceneIndexIndexReader;Z", "initialize", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;", "clone", "doOpenIfChanged", "Z", "getTermFreqVectors", "I", "LJavaIoIOException;", "getTermFreqVector", "ILNSString;", "ILNSString;LOrgApacheLuceneIndexTermVectorMapper;", "ILOrgApacheLuceneIndexTermVectorMapper;", (void *)&OrgApacheLuceneIndexMultiReader__Annotations$0, "document", "ILOrgApacheLuceneDocumentFieldSelector;", "isDeleted", "doDelete", "readerIndex", "hasNorms", "LNSString;", "norms", "LNSString;[BI", "doSetNorm", "ILNSString;B", "terms", "LOrgApacheLuceneIndexTerm;", "docFreq", "termDocs", "doCommit", "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "getFieldNames", "LOrgApacheLuceneIndexIndexReader_FieldOption;", "(Lorg/apache/lucene/index/IndexReader$FieldOption;)Ljava/util/Collection<Ljava/lang/String;>;", "addReaderFinishedListener", "LOrgApacheLuceneIndexIndexReader_ReaderFinishedListener;", "removeReaderFinishedListener", "Ljava/util/Map<Ljava/lang/String;[B>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMultiReader = { "MultiReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 37, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexMultiReader;
}

@end

void OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(OrgApacheLuceneIndexMultiReader *self, IOSObjectArray *subReaders) {
  OrgApacheLuceneIndexIndexReader_init(self);
  JreStrongAssignAndConsume(&self->normsCache_, new_JavaUtilHashMap_init());
  self->maxDoc_ = 0;
  self->numDocs_ = -1;
  self->hasDeletions_ = false;
  OrgApacheLuceneIndexMultiReader_initialize__WithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(self, subReaders, true);
}

OrgApacheLuceneIndexMultiReader *new_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(IOSObjectArray *subReaders) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexMultiReader, initWithOrgApacheLuceneIndexIndexReaderArray_, subReaders)
}

OrgApacheLuceneIndexMultiReader *create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_(IOSObjectArray *subReaders) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexMultiReader, initWithOrgApacheLuceneIndexIndexReaderArray_, subReaders)
}

void OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(OrgApacheLuceneIndexMultiReader *self, IOSObjectArray *subReaders, jboolean closeSubReaders) {
  OrgApacheLuceneIndexIndexReader_init(self);
  JreStrongAssignAndConsume(&self->normsCache_, new_JavaUtilHashMap_init());
  self->maxDoc_ = 0;
  self->numDocs_ = -1;
  self->hasDeletions_ = false;
  OrgApacheLuceneIndexMultiReader_initialize__WithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(self, subReaders, closeSubReaders);
}

OrgApacheLuceneIndexMultiReader *new_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(IOSObjectArray *subReaders, jboolean closeSubReaders) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexMultiReader, initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_, subReaders, closeSubReaders)
}

OrgApacheLuceneIndexMultiReader *create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(IOSObjectArray *subReaders, jboolean closeSubReaders) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexMultiReader, initWithOrgApacheLuceneIndexIndexReaderArray_withBoolean_, subReaders, closeSubReaders)
}

void OrgApacheLuceneIndexMultiReader_initialize__WithOrgApacheLuceneIndexIndexReaderArray_withBoolean_(OrgApacheLuceneIndexMultiReader *self, IOSObjectArray *subReaders, jboolean closeSubReaders) {
  JreStrongAssign(&self->subReaders_, [((IOSObjectArray *) nil_chk(subReaders)) java_clone]);
  JreStrongAssignAndConsume(&self->starts_, [IOSIntArray newArrayWithLength:subReaders->size_ + 1]);
  JreStrongAssignAndConsume(&self->decrefOnClose_, [IOSBooleanArray newArrayWithLength:subReaders->size_]);
  for (jint i = 0; i < subReaders->size_; i++) {
    *IOSIntArray_GetRef(nil_chk(self->starts_), i) = self->maxDoc_;
    self->maxDoc_ += [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders, i))) maxDoc];
    if (!closeSubReaders) {
      [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders, i))) incRef];
      *IOSBooleanArray_GetRef(nil_chk(self->decrefOnClose_), i) = true;
    }
    else {
      *IOSBooleanArray_GetRef(nil_chk(self->decrefOnClose_), i) = false;
    }
    if ([((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders, i))) hasDeletions]) self->hasDeletions_ = true;
  }
  *IOSIntArray_GetRef(nil_chk(self->starts_), subReaders->size_) = self->maxDoc_;
  JreVolatileStrongAssign(&self->readerFinishedListeners_, create_OrgApacheLuceneUtilMapBackedSet_initWithJavaUtilMap_(create_JavaUtilConcurrentConcurrentHashMap_init()));
}

jint OrgApacheLuceneIndexMultiReader_readerIndexWithInt_(OrgApacheLuceneIndexMultiReader *self, jint n) {
  return OrgApacheLuceneIndexDirectoryReader_readerIndexWithInt_withIntArray_withInt_(n, self->starts_, ((IOSObjectArray *) nil_chk(self->subReaders_))->size_);
}

IOSObjectArray *OrgApacheLuceneIndexMultiReader__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMultiReader)
