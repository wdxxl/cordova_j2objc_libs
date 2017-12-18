//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/store/NativeFSLockFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/io/RandomAccessFile.h"
#include "java/nio/channels/FileChannel.h"
#include "java/nio/channels/FileLock.h"
#include "java/util/HashSet.h"
#include "org/apache/lucene/store/FSLockFactory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockReleaseFailedException.h"
#include "org/apache/lucene/store/NativeFSLockFactory.h"

@interface OrgApacheLuceneStoreNativeFSLock () {
 @public
  JavaIoRandomAccessFile *f_;
  JavaNioChannelsFileChannel *channel_;
  JavaNioChannelsFileLock *lock_;
  JavaIoFile *path_;
  JavaIoFile *lockDir_;
}

- (jboolean)lockExists;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNativeFSLock, f_, JavaIoRandomAccessFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNativeFSLock, channel_, JavaNioChannelsFileChannel *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNativeFSLock, lock_, JavaNioChannelsFileLock *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNativeFSLock, path_, JavaIoFile *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreNativeFSLock, lockDir_, JavaIoFile *)

inline JavaUtilHashSet *OrgApacheLuceneStoreNativeFSLock_get_LOCK_HELD();
inline JavaUtilHashSet *OrgApacheLuceneStoreNativeFSLock_set_LOCK_HELD(JavaUtilHashSet *value);
static JavaUtilHashSet *OrgApacheLuceneStoreNativeFSLock_LOCK_HELD;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneStoreNativeFSLock, LOCK_HELD, JavaUtilHashSet *)

__attribute__((unused)) static jboolean OrgApacheLuceneStoreNativeFSLock_lockExists(OrgApacheLuceneStoreNativeFSLock *self);

@implementation OrgApacheLuceneStoreNativeFSLockFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreNativeFSLockFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)lockDirName {
  OrgApacheLuceneStoreNativeFSLockFactory_initWithNSString_(self, lockDirName);
  return self;
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)lockDir {
  OrgApacheLuceneStoreNativeFSLockFactory_initWithJavaIoFile_(self, lockDir);
  return self;
}

- (OrgApacheLuceneStoreLock *)makeLockWithNSString:(NSString *)lockName {
  @synchronized(self) {
    if (lockPrefix_ != nil) lockName = JreStrcat("$C$", lockPrefix_, '-', lockName);
    return create_OrgApacheLuceneStoreNativeFSLock_initWithJavaIoFile_withNSString_(lockDir_, lockName);
  }
}

- (void)clearLockWithNSString:(NSString *)lockName {
  if ([((JavaIoFile *) nil_chk(lockDir_)) exists]) {
    [((OrgApacheLuceneStoreLock *) nil_chk([self makeLockWithNSString:lockName])) release__];
    if (lockPrefix_ != nil) {
      lockName = JreStrcat("$C$", lockPrefix_, '-', lockName);
    }
    [create_JavaIoFile_initWithJavaIoFile_withNSString_(lockDir_, lockName) delete__];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, 0, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 0, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneStoreLock;", 0x21, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithJavaIoFile:);
  methods[3].selector = @selector(makeLockWithNSString:);
  methods[4].selector = @selector(clearLockWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;", "LNSString;", "LJavaIoFile;", "makeLock", "clearLock" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNativeFSLockFactory = { "NativeFSLockFactory", "org.apache.lucene.store", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNativeFSLockFactory;
}

@end

void OrgApacheLuceneStoreNativeFSLockFactory_init(OrgApacheLuceneStoreNativeFSLockFactory *self) {
  OrgApacheLuceneStoreNativeFSLockFactory_initWithJavaIoFile_(self, nil);
}

OrgApacheLuceneStoreNativeFSLockFactory *new_OrgApacheLuceneStoreNativeFSLockFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNativeFSLockFactory, init)
}

OrgApacheLuceneStoreNativeFSLockFactory *create_OrgApacheLuceneStoreNativeFSLockFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNativeFSLockFactory, init)
}

void OrgApacheLuceneStoreNativeFSLockFactory_initWithNSString_(OrgApacheLuceneStoreNativeFSLockFactory *self, NSString *lockDirName) {
  OrgApacheLuceneStoreNativeFSLockFactory_initWithJavaIoFile_(self, create_JavaIoFile_initWithNSString_(lockDirName));
}

OrgApacheLuceneStoreNativeFSLockFactory *new_OrgApacheLuceneStoreNativeFSLockFactory_initWithNSString_(NSString *lockDirName) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNativeFSLockFactory, initWithNSString_, lockDirName)
}

OrgApacheLuceneStoreNativeFSLockFactory *create_OrgApacheLuceneStoreNativeFSLockFactory_initWithNSString_(NSString *lockDirName) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNativeFSLockFactory, initWithNSString_, lockDirName)
}

void OrgApacheLuceneStoreNativeFSLockFactory_initWithJavaIoFile_(OrgApacheLuceneStoreNativeFSLockFactory *self, JavaIoFile *lockDir) {
  OrgApacheLuceneStoreFSLockFactory_init(self);
  [self setLockDirWithJavaIoFile:lockDir];
}

OrgApacheLuceneStoreNativeFSLockFactory *new_OrgApacheLuceneStoreNativeFSLockFactory_initWithJavaIoFile_(JavaIoFile *lockDir) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNativeFSLockFactory, initWithJavaIoFile_, lockDir)
}

OrgApacheLuceneStoreNativeFSLockFactory *create_OrgApacheLuceneStoreNativeFSLockFactory_initWithJavaIoFile_(JavaIoFile *lockDir) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNativeFSLockFactory, initWithJavaIoFile_, lockDir)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNativeFSLockFactory)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneStoreNativeFSLock)

@implementation OrgApacheLuceneStoreNativeFSLock

- (instancetype)initWithJavaIoFile:(JavaIoFile *)lockDir
                      withNSString:(NSString *)lockFileName {
  OrgApacheLuceneStoreNativeFSLock_initWithJavaIoFile_withNSString_(self, lockDir, lockFileName);
  return self;
}

- (jboolean)lockExists {
  return OrgApacheLuceneStoreNativeFSLock_lockExists(self);
}

- (jboolean)obtain {
  @synchronized(self) {
    if (OrgApacheLuceneStoreNativeFSLock_lockExists(self)) {
      return false;
    }
    if (![((JavaIoFile *) nil_chk(lockDir_)) exists]) {
      if (![((JavaIoFile *) nil_chk(lockDir_)) mkdirs]) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$$", @"Cannot create directory: ", [((JavaIoFile *) nil_chk(lockDir_)) getAbsolutePath]));
    }
    else if (![((JavaIoFile *) nil_chk(lockDir_)) isDirectory]) {
      @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$$", @"Found regular file where directory expected: ", [((JavaIoFile *) nil_chk(lockDir_)) getAbsolutePath]));
    }
    NSString *canonicalPath = [((JavaIoFile *) nil_chk(path_)) getCanonicalPath];
    jboolean markedHeld = false;
    @try {
      @synchronized(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD) {
        if ([((JavaUtilHashSet *) nil_chk(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD)) containsWithId:canonicalPath]) {
          return false;
        }
        else {
          [((JavaUtilHashSet *) nil_chk(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD)) addWithId:canonicalPath];
          markedHeld = true;
        }
      }
      @try {
        JreStrongAssignAndConsume(&f_, new_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(path_, @"rw"));
      }
      @catch (JavaIoIOException *e) {
        JreStrongAssign(&failureReason_, e);
        JreStrongAssign(&f_, nil);
      }
      if (f_ != nil) {
        @try {
          JreStrongAssign(&channel_, [f_ getChannel]);
          @try {
            JreStrongAssign(&lock_, [((JavaNioChannelsFileChannel *) nil_chk(channel_)) tryLock]);
          }
          @catch (JavaIoIOException *e) {
            JreStrongAssign(&failureReason_, e);
          }
          @finally {
            if (lock_ == nil) {
              @try {
                [((JavaNioChannelsFileChannel *) nil_chk(channel_)) close];
              }
              @finally {
                JreStrongAssign(&channel_, nil);
              }
            }
          }
        }
        @finally {
          if (channel_ == nil) {
            @try {
              [((JavaIoRandomAccessFile *) nil_chk(f_)) close];
            }
            @finally {
              JreStrongAssign(&f_, nil);
            }
          }
        }
      }
    }
    @finally {
      if (markedHeld && !OrgApacheLuceneStoreNativeFSLock_lockExists(self)) {
        @synchronized(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD) {
          if ([((JavaUtilHashSet *) nil_chk(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD)) containsWithId:canonicalPath]) {
            [((JavaUtilHashSet *) nil_chk(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD)) removeWithId:canonicalPath];
          }
        }
      }
    }
    return OrgApacheLuceneStoreNativeFSLock_lockExists(self);
  }
}

- (void)release__ {
  @synchronized(self) {
    if (OrgApacheLuceneStoreNativeFSLock_lockExists(self)) {
      @try {
        [((JavaNioChannelsFileLock *) nil_chk(lock_)) release__];
      }
      @finally {
        JreStrongAssign(&lock_, nil);
        @try {
          [((JavaNioChannelsFileChannel *) nil_chk(channel_)) close];
        }
        @finally {
          JreStrongAssign(&channel_, nil);
          @try {
            [((JavaIoRandomAccessFile *) nil_chk(f_)) close];
          }
          @finally {
            JreStrongAssign(&f_, nil);
            @synchronized(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD) {
              [((JavaUtilHashSet *) nil_chk(OrgApacheLuceneStoreNativeFSLock_LOCK_HELD)) removeWithId:[((JavaIoFile *) nil_chk(path_)) getCanonicalPath]];
            }
          }
        }
      }
      [((JavaIoFile *) nil_chk(path_)) delete__];
    }
    else {
      jboolean obtained = false;
      @try {
        if (!(obtained = [self obtain])) {
          @throw create_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_(JreStrcat("$@", @"Cannot forcefully unlock a NativeFSLock which is held by another indexer component: ", path_));
        }
      }
      @finally {
        if (obtained) {
          [self release__];
        }
      }
    }
  }
}

- (jboolean)isLocked {
  @synchronized(self) {
    if (OrgApacheLuceneStoreNativeFSLock_lockExists(self)) return true;
    if (![((JavaIoFile *) nil_chk(path_)) exists]) return false;
    @try {
      jboolean obtained = [self obtain];
      if (obtained) [self release__];
      return !obtained;
    }
    @catch (JavaIoIOException *ioe) {
      return false;
    }
  }
}

- (NSString *)description {
  return JreStrcat("$@", @"NativeFSLock@", path_);
}

- (void)dealloc {
  RELEASE_(f_);
  RELEASE_(channel_);
  RELEASE_(lock_);
  RELEASE_(path_);
  RELEASE_(lockDir_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x22, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x21, 2, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoFile:withNSString:);
  methods[1].selector = @selector(lockExists);
  methods[2].selector = @selector(obtain);
  methods[3].selector = @selector(release__);
  methods[4].selector = @selector(isLocked);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "f_", "LJavaIoRandomAccessFile;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "channel_", "LJavaNioChannelsFileChannel;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lock_", "LJavaNioChannelsFileLock;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "path_", "LJavaIoFile;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lockDir_", "LJavaIoFile;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "LOCK_HELD", "LJavaUtilHashSet;", .constantValue.asLong = 0, 0xa, -1, 4, 5, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoFile;LNSString;", "LJavaIoIOException;", "release", "toString", &OrgApacheLuceneStoreNativeFSLock_LOCK_HELD, "Ljava/util/HashSet<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreNativeFSLock = { "NativeFSLock", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x0, 6, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreNativeFSLock;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneStoreNativeFSLock class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNativeFSLock_LOCK_HELD, new_JavaUtilHashSet_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneStoreNativeFSLock)
  }
}

@end

void OrgApacheLuceneStoreNativeFSLock_initWithJavaIoFile_withNSString_(OrgApacheLuceneStoreNativeFSLock *self, JavaIoFile *lockDir, NSString *lockFileName) {
  OrgApacheLuceneStoreLock_init(self);
  JreStrongAssign(&self->lockDir_, lockDir);
  JreStrongAssignAndConsume(&self->path_, new_JavaIoFile_initWithJavaIoFile_withNSString_(lockDir, lockFileName));
}

OrgApacheLuceneStoreNativeFSLock *new_OrgApacheLuceneStoreNativeFSLock_initWithJavaIoFile_withNSString_(JavaIoFile *lockDir, NSString *lockFileName) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneStoreNativeFSLock, initWithJavaIoFile_withNSString_, lockDir, lockFileName)
}

OrgApacheLuceneStoreNativeFSLock *create_OrgApacheLuceneStoreNativeFSLock_initWithJavaIoFile_withNSString_(JavaIoFile *lockDir, NSString *lockFileName) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneStoreNativeFSLock, initWithJavaIoFile_withNSString_, lockDir, lockFileName)
}

jboolean OrgApacheLuceneStoreNativeFSLock_lockExists(OrgApacheLuceneStoreNativeFSLock *self) {
  @synchronized(self) {
    return self->lock_ != nil;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreNativeFSLock)
