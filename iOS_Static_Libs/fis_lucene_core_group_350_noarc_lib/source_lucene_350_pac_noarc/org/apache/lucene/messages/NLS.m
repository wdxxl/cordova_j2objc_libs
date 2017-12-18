//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/messages/NLS.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"
#include "java/lang/Void.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Modifier.h"
#include "java/security/AccessController.h"
#include "java/security/PrivilegedAction.h"
#include "java/text/MessageFormat.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/MissingResourceException.h"
#include "java/util/ResourceBundle.h"
#include "java/util/Set.h"
#include "org/apache/lucene/messages/NLS.h"

@interface OrgApacheLuceneMessagesNLS ()

+ (id)getResourceBundleObjectWithNSString:(NSString *)messageKey
                       withJavaUtilLocale:(JavaUtilLocale *)locale;

+ (void)load__WithIOSClass:(IOSClass *)clazz;

+ (void)loadfieldValueWithJavaLangReflectField:(JavaLangReflectField *)field
                                   withBoolean:(jboolean)isFieldAccessible
                                  withIOSClass:(IOSClass *)clazz;

+ (void)validateMessageWithNSString:(NSString *)key
                       withIOSClass:(IOSClass *)clazz;

+ (void)makeAccessibleWithJavaLangReflectField:(JavaLangReflectField *)field;

@end

inline id<JavaUtilMap> OrgApacheLuceneMessagesNLS_get_bundles();
inline id<JavaUtilMap> OrgApacheLuceneMessagesNLS_set_bundles(id<JavaUtilMap> value);
static id<JavaUtilMap> OrgApacheLuceneMessagesNLS_bundles;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneMessagesNLS, bundles, id<JavaUtilMap>)

__attribute__((unused)) static id OrgApacheLuceneMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(NSString *messageKey, JavaUtilLocale *locale);

__attribute__((unused)) static void OrgApacheLuceneMessagesNLS_load__WithIOSClass_(IOSClass *clazz);

__attribute__((unused)) static void OrgApacheLuceneMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(JavaLangReflectField *field, jboolean isFieldAccessible, IOSClass *clazz);

__attribute__((unused)) static void OrgApacheLuceneMessagesNLS_validateMessageWithNSString_withIOSClass_(NSString *key, IOSClass *clazz);

__attribute__((unused)) static void OrgApacheLuceneMessagesNLS_makeAccessibleWithJavaLangReflectField_(JavaLangReflectField *field);

@interface OrgApacheLuceneMessagesNLS_1 : NSObject < JavaSecurityPrivilegedAction > {
 @public
  JavaLangReflectField *val$field_;
}

- (instancetype)initWithJavaLangReflectField:(JavaLangReflectField *)capture$0;

- (JavaLangVoid *)run;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMessagesNLS_1)

__attribute__((unused)) static void OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(OrgApacheLuceneMessagesNLS_1 *self, JavaLangReflectField *capture$0);

__attribute__((unused)) static OrgApacheLuceneMessagesNLS_1 *new_OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(JavaLangReflectField *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneMessagesNLS_1 *create_OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(JavaLangReflectField *capture$0);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneMessagesNLS)

@implementation OrgApacheLuceneMessagesNLS

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneMessagesNLS_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key {
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_(key);
}

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                           withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(key, locale);
}

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                           withJavaUtilLocale:(JavaUtilLocale *)locale
                            withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(key, locale, args);
}

+ (NSString *)getLocalizedMessageWithNSString:(NSString *)key
                            withNSObjectArray:(IOSObjectArray *)args {
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withNSObjectArray_(key, args);
}

+ (void)initializeMessagesWithNSString:(NSString *)bundleName
                          withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneMessagesNLS_initializeMessagesWithNSString_withIOSClass_(bundleName, clazz);
}

+ (id)getResourceBundleObjectWithNSString:(NSString *)messageKey
                       withJavaUtilLocale:(JavaUtilLocale *)locale {
  return OrgApacheLuceneMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(messageKey, locale);
}

+ (void)load__WithIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneMessagesNLS_load__WithIOSClass_(clazz);
}

+ (void)loadfieldValueWithJavaLangReflectField:(JavaLangReflectField *)field
                                   withBoolean:(jboolean)isFieldAccessible
                                  withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(field, isFieldAccessible, clazz);
}

+ (void)validateMessageWithNSString:(NSString *)key
                       withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneMessagesNLS_validateMessageWithNSString_withIOSClass_(key, clazz);
}

+ (void)makeAccessibleWithJavaLangReflectField:(JavaLangReflectField *)field {
  OrgApacheLuceneMessagesNLS_makeAccessibleWithJavaLangReflectField_(field);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x89, 0, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x89, 0, 4, -1, -1, -1, -1 },
    { NULL, "V", 0xc, 5, 6, -1, 7, -1, -1 },
    { NULL, "LNSObject;", 0xa, 8, 2, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 9, 10, -1, 11, -1, -1 },
    { NULL, "V", 0xa, 12, 13, -1, 14, -1, -1 },
    { NULL, "V", 0xa, 15, 6, -1, 7, -1, -1 },
    { NULL, "V", 0xa, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getLocalizedMessageWithNSString:);
  methods[2].selector = @selector(getLocalizedMessageWithNSString:withJavaUtilLocale:);
  methods[3].selector = @selector(getLocalizedMessageWithNSString:withJavaUtilLocale:withNSObjectArray:);
  methods[4].selector = @selector(getLocalizedMessageWithNSString:withNSObjectArray:);
  methods[5].selector = @selector(initializeMessagesWithNSString:withIOSClass:);
  methods[6].selector = @selector(getResourceBundleObjectWithNSString:withJavaUtilLocale:);
  methods[7].selector = @selector(load__WithIOSClass:);
  methods[8].selector = @selector(loadfieldValueWithJavaLangReflectField:withBoolean:withIOSClass:);
  methods[9].selector = @selector(validateMessageWithNSString:withIOSClass:);
  methods[10].selector = @selector(makeAccessibleWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bundles", "LJavaUtilMap;", .constantValue.asLong = 0, 0xa, -1, 18, 19, -1 },
  };
  static const void *ptrTable[] = { "getLocalizedMessage", "LNSString;", "LNSString;LJavaUtilLocale;", "LNSString;LJavaUtilLocale;[LNSObject;", "LNSString;[LNSObject;", "initializeMessages", "LNSString;LIOSClass;", "(Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/lucene/messages/NLS;>;)V", "getResourceBundleObject", "load", "LIOSClass;", "(Ljava/lang/Class<+Lorg/apache/lucene/messages/NLS;>;)V", "loadfieldValue", "LJavaLangReflectField;ZLIOSClass;", "(Ljava/lang/reflect/Field;ZLjava/lang/Class<+Lorg/apache/lucene/messages/NLS;>;)V", "validateMessage", "makeAccessible", "LJavaLangReflectField;", &OrgApacheLuceneMessagesNLS_bundles, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/lucene/messages/NLS;>;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneMessagesNLS = { "NLS", "org.apache.lucene.messages", ptrTable, methods, fields, 7, 0x1, 11, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneMessagesNLS;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneMessagesNLS class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneMessagesNLS_bundles, new_JavaUtilHashMap_initWithInt_(0));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneMessagesNLS)
  }
}

@end

void OrgApacheLuceneMessagesNLS_init(OrgApacheLuceneMessagesNLS *self) {
  NSObject_init(self);
}

OrgApacheLuceneMessagesNLS *new_OrgApacheLuceneMessagesNLS_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMessagesNLS, init)
}

OrgApacheLuceneMessagesNLS *create_OrgApacheLuceneMessagesNLS_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMessagesNLS, init)
}

NSString *OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_(NSString *key) {
  OrgApacheLuceneMessagesNLS_initialize();
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(key, JavaUtilLocale_getDefault());
}

NSString *OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(NSString *key, JavaUtilLocale *locale) {
  OrgApacheLuceneMessagesNLS_initialize();
  id message = OrgApacheLuceneMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(key, locale);
  if (message == nil) {
    return JreStrcat("$$$@$", @"Message with key:", key, @" and locale: ", locale, @" not found.");
  }
  return [message description];
}

NSString *OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(NSString *key, JavaUtilLocale *locale, IOSObjectArray *args) {
  OrgApacheLuceneMessagesNLS_initialize();
  NSString *str = OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_(key, locale);
  if (((IOSObjectArray *) nil_chk(args))->size_ > 0) {
    str = JavaTextMessageFormat_formatWithNSString_withNSObjectArray_(str, args);
  }
  return str;
}

NSString *OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withNSObjectArray_(NSString *key, IOSObjectArray *args) {
  OrgApacheLuceneMessagesNLS_initialize();
  return OrgApacheLuceneMessagesNLS_getLocalizedMessageWithNSString_withJavaUtilLocale_withNSObjectArray_(key, JavaUtilLocale_getDefault(), args);
}

void OrgApacheLuceneMessagesNLS_initializeMessagesWithNSString_withIOSClass_(NSString *bundleName, IOSClass *clazz) {
  OrgApacheLuceneMessagesNLS_initialize();
  @try {
    OrgApacheLuceneMessagesNLS_load__WithIOSClass_(clazz);
    if (![((id<JavaUtilMap>) nil_chk(OrgApacheLuceneMessagesNLS_bundles)) containsKeyWithId:bundleName]) [((id<JavaUtilMap>) nil_chk(OrgApacheLuceneMessagesNLS_bundles)) putWithId:bundleName withId:clazz];
  }
  @catch (NSException *e) {
  }
}

id OrgApacheLuceneMessagesNLS_getResourceBundleObjectWithNSString_withJavaUtilLocale_(NSString *messageKey, JavaUtilLocale *locale) {
  OrgApacheLuceneMessagesNLS_initialize();
  for (id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(OrgApacheLuceneMessagesNLS_bundles)) keySet])) iterator]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    IOSClass *clazz = [((id<JavaUtilMap>) nil_chk(OrgApacheLuceneMessagesNLS_bundles)) getWithId:[it next]];
    JavaUtilResourceBundle *resourceBundle = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_([((IOSClass *) nil_chk(clazz)) getName], locale);
    if (resourceBundle != nil) {
      @try {
        id obj = [resourceBundle getObjectWithNSString:messageKey];
        if (obj != nil) return obj;
      }
      @catch (JavaUtilMissingResourceException *e) {
      }
    }
  }
  return nil;
}

void OrgApacheLuceneMessagesNLS_load__WithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneMessagesNLS_initialize();
  IOSObjectArray *fieldArray = [((IOSClass *) nil_chk(clazz)) getDeclaredFields];
  jboolean isFieldAccessible = ([clazz getModifiers] & JavaLangReflectModifier_PUBLIC) != 0;
  jint len = ((IOSObjectArray *) nil_chk(fieldArray))->size_;
  id<JavaUtilMap> fields = create_JavaUtilHashMap_initWithInt_(len * 2);
  for (jint i = 0; i < len; i++) {
    [fields putWithId:[((JavaLangReflectField *) nil_chk(IOSObjectArray_Get(fieldArray, i))) getName] withId:IOSObjectArray_Get(fieldArray, i)];
    OrgApacheLuceneMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(IOSObjectArray_Get(fieldArray, i), isFieldAccessible, clazz);
  }
}

void OrgApacheLuceneMessagesNLS_loadfieldValueWithJavaLangReflectField_withBoolean_withIOSClass_(JavaLangReflectField *field, jboolean isFieldAccessible, IOSClass *clazz) {
  OrgApacheLuceneMessagesNLS_initialize();
  jint MOD_EXPECTED = JavaLangReflectModifier_PUBLIC | JavaLangReflectModifier_STATIC;
  jint MOD_MASK = MOD_EXPECTED | JavaLangReflectModifier_FINAL;
  if (([((JavaLangReflectField *) nil_chk(field)) getModifiers] & MOD_MASK) != MOD_EXPECTED) return;
  if (!isFieldAccessible) OrgApacheLuceneMessagesNLS_makeAccessibleWithJavaLangReflectField_(field);
  @try {
    [field setWithId:nil withId:[field getName]];
    OrgApacheLuceneMessagesNLS_validateMessageWithNSString_withIOSClass_([field getName], clazz);
  }
  @catch (JavaLangIllegalArgumentException *e) {
  }
  @catch (JavaLangIllegalAccessException *e) {
  }
}

void OrgApacheLuceneMessagesNLS_validateMessageWithNSString_withIOSClass_(NSString *key, IOSClass *clazz) {
  OrgApacheLuceneMessagesNLS_initialize();
  @try {
    JavaUtilResourceBundle *resourceBundle = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_([((IOSClass *) nil_chk(clazz)) getName], JavaUtilLocale_getDefault());
    if (resourceBundle != nil) {
      id obj = [resourceBundle getObjectWithNSString:key];
      if (obj == nil) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$@$", @"WARN: Message with key:", key, @" and locale: ", JavaUtilLocale_getDefault(), @" not found.")];
    }
  }
  @catch (JavaUtilMissingResourceException *e) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$@$", @"WARN: Message with key:", key, @" and locale: ", JavaUtilLocale_getDefault(), @" not found.")];
  }
  @catch (NSException *e) {
  }
}

void OrgApacheLuceneMessagesNLS_makeAccessibleWithJavaLangReflectField_(JavaLangReflectField *field) {
  OrgApacheLuceneMessagesNLS_initialize();
  if (JavaLangSystem_getSecurityManager() == nil) {
    [((JavaLangReflectField *) nil_chk(field)) setAccessibleWithBoolean:true];
  }
  else {
    JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(create_OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(field));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMessagesNLS)

@implementation OrgApacheLuceneMessagesNLS_1

- (instancetype)initWithJavaLangReflectField:(JavaLangReflectField *)capture$0 {
  OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(self, capture$0);
  return self;
}

- (JavaLangVoid *)run {
  [((JavaLangReflectField *) nil_chk(val$field_)) setAccessibleWithBoolean:true];
  return nil;
}

- (void)dealloc {
  RELEASE_(val$field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangReflectField:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$field_", "LJavaLangReflectField;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneMessagesNLS;", "makeAccessibleWithJavaLangReflectField:", "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/Void;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneMessagesNLS_1 = { "", "org.apache.lucene.messages", ptrTable, methods, fields, 7, 0x8018, 2, 1, 0, -1, 1, 2, -1 };
  return &_OrgApacheLuceneMessagesNLS_1;
}

@end

void OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(OrgApacheLuceneMessagesNLS_1 *self, JavaLangReflectField *capture$0) {
  JreStrongAssign(&self->val$field_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneMessagesNLS_1 *new_OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(JavaLangReflectField *capture$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMessagesNLS_1, initWithJavaLangReflectField_, capture$0)
}

OrgApacheLuceneMessagesNLS_1 *create_OrgApacheLuceneMessagesNLS_1_initWithJavaLangReflectField_(JavaLangReflectField *capture$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMessagesNLS_1, initWithJavaLangReflectField_, capture$0)
}
