//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/packed/Packed64.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/packed/Packed64.h"
#include "org/apache/lucene/util/packed/PackedInts.h"

@interface OrgApacheLuceneUtilPackedPacked64 () {
 @public
  IOSLongArray *blocks_;
  jint maxPos_;
  IOSIntArray *shifts_;
  IOSLongArray *readMasks_;
  IOSLongArray *writeMasks_;
}

+ (jint)sizeWithInt:(jint)valueCount
            withInt:(jint)bitsPerValue;

- (void)updateCached;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked64, blocks_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked64, shifts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked64, readMasks_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked64, writeMasks_, IOSLongArray *)

inline jint OrgApacheLuceneUtilPackedPacked64_get_ENTRY_SIZE();
#define OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE 65
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedPacked64, ENTRY_SIZE, jint)

inline jint OrgApacheLuceneUtilPackedPacked64_get_FAC_BITPOS();
#define OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilPackedPacked64, FAC_BITPOS, jint)

inline IOSObjectArray *OrgApacheLuceneUtilPackedPacked64_get_SHIFTS();
static IOSObjectArray *OrgApacheLuceneUtilPackedPacked64_SHIFTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPacked64, SHIFTS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneUtilPackedPacked64_get_MASKS();
static IOSObjectArray *OrgApacheLuceneUtilPackedPacked64_MASKS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPacked64, MASKS, IOSObjectArray *)

inline IOSObjectArray *OrgApacheLuceneUtilPackedPacked64_get_WRITE_MASKS();
static IOSObjectArray *OrgApacheLuceneUtilPackedPacked64_WRITE_MASKS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilPackedPacked64, WRITE_MASKS, IOSObjectArray *)

__attribute__((unused)) static jint OrgApacheLuceneUtilPackedPacked64_sizeWithInt_withInt_(jint valueCount, jint bitsPerValue);

__attribute__((unused)) static void OrgApacheLuceneUtilPackedPacked64_updateCached(OrgApacheLuceneUtilPackedPacked64 *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilPackedPacked64)

@implementation OrgApacheLuceneUtilPackedPacked64

- (instancetype)initWithInt:(jint)valueCount
                    withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(self, valueCount, bitsPerValue);
  return self;
}

- (instancetype)initWithLongArray:(IOSLongArray *)blocks
                          withInt:(jint)valueCount
                          withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPacked64_initWithLongArray_withInt_withInt_(self, blocks, valueCount, bitsPerValue);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)valueCount
                                              withInt:(jint)bitsPerValue {
  OrgApacheLuceneUtilPackedPacked64_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(self, inArg, valueCount, bitsPerValue);
  return self;
}

+ (jint)sizeWithInt:(jint)valueCount
            withInt:(jint)bitsPerValue {
  return OrgApacheLuceneUtilPackedPacked64_sizeWithInt_withInt_(valueCount, bitsPerValue);
}

- (void)updateCached {
  OrgApacheLuceneUtilPackedPacked64_updateCached(self);
}

- (jlong)getWithInt:(jint)index {
  jlong majorBitPos = (jlong) index * bitsPerValue_;
  jint elementPos = (jint) (JreURShift64(majorBitPos, OrgApacheLuceneUtilPackedPacked64_BLOCK_BITS));
  jint bitPos = (jint) (majorBitPos & OrgApacheLuceneUtilPackedPacked64_MOD_MASK);
  jint base = bitPos * OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS;
  JreAssert((elementPos < ((IOSLongArray *) nil_chk(blocks_))->size_), (JreStrcat("$I$I", @"elementPos: ", elementPos, @"; blocks.len: ", blocks_->size_)));
  return (JreURShift64((JreLShift64(IOSLongArray_Get(blocks_, elementPos), IOSIntArray_Get(nil_chk(shifts_), base))), IOSIntArray_Get(shifts_, base + 1))) | ((JreURShift64(IOSLongArray_Get(blocks_, elementPos + 1), IOSIntArray_Get(shifts_, base + 2))) & IOSLongArray_Get(nil_chk(readMasks_), bitPos));
}

- (void)setWithInt:(jint)index
          withLong:(jlong)value {
  jlong majorBitPos = (jlong) index * bitsPerValue_;
  jint elementPos = (jint) (JreURShift64(majorBitPos, OrgApacheLuceneUtilPackedPacked64_BLOCK_BITS));
  jint bitPos = (jint) (majorBitPos & OrgApacheLuceneUtilPackedPacked64_MOD_MASK);
  jint base = bitPos * OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS;
  *IOSLongArray_GetRef(nil_chk(blocks_), elementPos) = (IOSLongArray_Get(blocks_, elementPos) & IOSLongArray_Get(nil_chk(writeMasks_), base)) | (JreURShift64(JreLShift64(value, IOSIntArray_Get(nil_chk(shifts_), base + 1)), IOSIntArray_Get(shifts_, base)));
  *IOSLongArray_GetRef(blocks_, elementPos + 1) = (IOSLongArray_Get(blocks_, elementPos + 1) & IOSLongArray_Get(writeMasks_, base + 1)) | ((JreLShift64(value, IOSIntArray_Get(shifts_, base + 2))) & IOSLongArray_Get(writeMasks_, base + 2));
}

- (NSString *)description {
  return JreStrcat("$I$I$I$IC", @"Packed64(bitsPerValue=", bitsPerValue_, @", size=", [self size], @", maxPos=", maxPos_, @", elements.length=", ((IOSLongArray *) nil_chk(blocks_))->size_, ')');
}

- (jlong)ramBytesUsed {
  return JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER) + ((IOSLongArray *) nil_chk(blocks_))->size_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG;
}

- (void)clear {
  JavaUtilArrays_fillWithLongArray_withLong_(blocks_, 0LL);
}

- (void)dealloc {
  RELEASE_(blocks_);
  RELEASE_(shifts_);
  RELEASE_(readMasks_);
  RELEASE_(writeMasks_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0xa, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(initWithLongArray:withInt:withInt:);
  methods[2].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withInt:withInt:);
  methods[3].selector = @selector(sizeWithInt:withInt:);
  methods[4].selector = @selector(updateCached);
  methods[5].selector = @selector(getWithInt:);
  methods[6].selector = @selector(setWithInt:withLong:);
  methods[7].selector = @selector(description);
  methods[8].selector = @selector(ramBytesUsed);
  methods[9].selector = @selector(clear);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BLOCK_SIZE", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE, 0x18, -1, -1, -1, -1 },
    { "BLOCK_BITS", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked64_BLOCK_BITS, 0x18, -1, -1, -1, -1 },
    { "MOD_MASK", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked64_MOD_MASK, 0x18, -1, -1, -1, -1 },
    { "ENTRY_SIZE", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE, 0x1a, -1, -1, -1, -1 },
    { "FAC_BITPOS", "I", .constantValue.asInt = OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS, 0x1a, -1, -1, -1, -1 },
    { "SHIFTS", "[[I", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "MASKS", "[[J", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "WRITE_MASKS", "[[J", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "blocks_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxPos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "shifts_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "readMasks_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "writeMasks_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "[JII", "LOrgApacheLuceneStoreDataInput;II", "LJavaIoIOException;", "size", "get", "I", "set", "IJ", "toString", &OrgApacheLuceneUtilPackedPacked64_SHIFTS, &OrgApacheLuceneUtilPackedPacked64_MASKS, &OrgApacheLuceneUtilPackedPacked64_WRITE_MASKS };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilPackedPacked64 = { "Packed64", "org.apache.lucene.util.packed", ptrTable, methods, fields, 7, 0x0, 10, 13, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilPackedPacked64;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilPackedPacked64 class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedPacked64_SHIFTS, [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE, OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE * OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS }]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedPacked64_MASKS, [IOSLongArray newArrayWithDimensions:2 lengths:(jint[]){ OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE, OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE }]);
    {
      for (jint elementBits = 1; elementBits <= OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE; elementBits++) {
        for (jint bitPos = 0; bitPos < OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE; bitPos++) {
          IOSIntArray *currentShifts = IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked64_SHIFTS, elementBits);
          jint base = bitPos * OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS;
          *IOSIntArray_GetRef(nil_chk(currentShifts), base) = bitPos;
          *IOSIntArray_GetRef(currentShifts, base + 1) = OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE - elementBits;
          if (bitPos <= OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE - elementBits) {
            *IOSIntArray_GetRef(currentShifts, base + 2) = 0;
            *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked64_MASKS, elementBits)), bitPos) = 0;
          }
          else {
            jint rBits = elementBits - (OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE - bitPos);
            *IOSIntArray_GetRef(currentShifts, base + 2) = OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE - rBits;
            *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked64_MASKS, elementBits)), bitPos) = ~(JreLShift64(~0LL, rBits));
          }
        }
      }
    }
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilPackedPacked64_WRITE_MASKS, [IOSLongArray newArrayWithDimensions:2 lengths:(jint[]){ OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE, OrgApacheLuceneUtilPackedPacked64_ENTRY_SIZE * OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS }]);
    {
      for (jint elementBits = 1; elementBits <= OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE; elementBits++) {
        jlong elementPosMask = ~(JreLShift64(~0LL, elementBits));
        IOSIntArray *currentShifts = IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked64_SHIFTS, elementBits);
        IOSLongArray *currentMasks = IOSObjectArray_Get(OrgApacheLuceneUtilPackedPacked64_WRITE_MASKS, elementBits);
        for (jint bitPos = 0; bitPos < OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE; bitPos++) {
          jint base = bitPos * OrgApacheLuceneUtilPackedPacked64_FAC_BITPOS;
          *IOSLongArray_GetRef(nil_chk(currentMasks), base) = ~(JreURShift64((JreLShift64(elementPosMask, IOSIntArray_Get(nil_chk(currentShifts), base + 1))), IOSIntArray_Get(currentShifts, base)));
          if (bitPos <= OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE - elementBits) {
            *IOSLongArray_GetRef(currentMasks, base + 1) = ~0;
            *IOSLongArray_GetRef(currentMasks, base + 2) = 0;
          }
          else {
            *IOSLongArray_GetRef(currentMasks, base + 1) = ~(JreLShift64(elementPosMask, IOSIntArray_Get(currentShifts, base + 2)));
            *IOSLongArray_GetRef(currentMasks, base + 2) = IOSIntArray_Get(currentShifts, base + 2) == 0 ? 0 : ~0;
          }
        }
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilPackedPacked64)
  }
}

@end

void OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(OrgApacheLuceneUtilPackedPacked64 *self, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPacked64_initWithLongArray_withInt_withInt_(self, [IOSLongArray arrayWithLength:(jint) ((jlong) valueCount * bitsPerValue / OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE + 2)], valueCount, bitsPerValue);
}

OrgApacheLuceneUtilPackedPacked64 *new_OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked64, initWithInt_withInt_, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPacked64 *create_OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked64, initWithInt_withInt_, valueCount, bitsPerValue)
}

void OrgApacheLuceneUtilPackedPacked64_initWithLongArray_withInt_withInt_(OrgApacheLuceneUtilPackedPacked64 *self, IOSLongArray *blocks, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, bitsPerValue);
  JreStrongAssign(&self->blocks_, blocks);
  OrgApacheLuceneUtilPackedPacked64_updateCached(self);
}

OrgApacheLuceneUtilPackedPacked64 *new_OrgApacheLuceneUtilPackedPacked64_initWithLongArray_withInt_withInt_(IOSLongArray *blocks, jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked64, initWithLongArray_withInt_withInt_, blocks, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPacked64 *create_OrgApacheLuceneUtilPackedPacked64_initWithLongArray_withInt_withInt_(IOSLongArray *blocks, jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked64, initWithLongArray_withInt_withInt_, blocks, valueCount, bitsPerValue)
}

void OrgApacheLuceneUtilPackedPacked64_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneUtilPackedPacked64 *self, OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_withInt_(self, valueCount, bitsPerValue);
  jint size = OrgApacheLuceneUtilPackedPacked64_sizeWithInt_withInt_(valueCount, bitsPerValue);
  JreStrongAssignAndConsume(&self->blocks_, [IOSLongArray newArrayWithLength:size + 1]);
  for (jint i = 0; i < size; i++) {
    *IOSLongArray_GetRef(nil_chk(self->blocks_), i) = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readLong];
  }
  OrgApacheLuceneUtilPackedPacked64_updateCached(self);
}

OrgApacheLuceneUtilPackedPacked64 *new_OrgApacheLuceneUtilPackedPacked64_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilPackedPacked64, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_, inArg, valueCount, bitsPerValue)
}

OrgApacheLuceneUtilPackedPacked64 *create_OrgApacheLuceneUtilPackedPacked64_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilPackedPacked64, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_, inArg, valueCount, bitsPerValue)
}

jint OrgApacheLuceneUtilPackedPacked64_sizeWithInt_withInt_(jint valueCount, jint bitsPerValue) {
  OrgApacheLuceneUtilPackedPacked64_initialize();
  jlong totBitCount = (jlong) valueCount * bitsPerValue;
  return (jint) (totBitCount / 64 + ((totBitCount % 64 == 0) ? 0 : 1));
}

void OrgApacheLuceneUtilPackedPacked64_updateCached(OrgApacheLuceneUtilPackedPacked64 *self) {
  JreStrongAssign(&self->readMasks_, IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedPacked64_MASKS), self->bitsPerValue_));
  JreStrongAssign(&self->shifts_, IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedPacked64_SHIFTS), self->bitsPerValue_));
  JreStrongAssign(&self->writeMasks_, IOSObjectArray_Get(nil_chk(OrgApacheLuceneUtilPackedPacked64_WRITE_MASKS), self->bitsPerValue_));
  self->maxPos_ = (jint) ((((jlong) ((IOSLongArray *) nil_chk(self->blocks_))->size_) * OrgApacheLuceneUtilPackedPacked64_BLOCK_SIZE / self->bitsPerValue_) - 2);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilPackedPacked64)
