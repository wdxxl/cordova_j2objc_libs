//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/VirtualMethod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilVirtualMethod")
#ifdef RESTRICT_OrgApacheLuceneUtilVirtualMethod
#define INCLUDE_ALL_OrgApacheLuceneUtilVirtualMethod 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilVirtualMethod 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilVirtualMethod

#if !defined (OrgApacheLuceneUtilVirtualMethod_) && (INCLUDE_ALL_OrgApacheLuceneUtilVirtualMethod || defined(INCLUDE_OrgApacheLuceneUtilVirtualMethod))
#define OrgApacheLuceneUtilVirtualMethod_

@class IOSClass;
@class IOSObjectArray;

@interface OrgApacheLuceneUtilVirtualMethod : NSObject

#pragma mark Public

- (instancetype)initWithIOSClass:(IOSClass *)baseClass
                    withNSString:(NSString *)method
               withIOSClassArray:(IOSObjectArray *)parameters;

+ (jint)compareImplementationDistanceWithIOSClass:(IOSClass *)clazz
             withOrgApacheLuceneUtilVirtualMethod:(OrgApacheLuceneUtilVirtualMethod *)m1
             withOrgApacheLuceneUtilVirtualMethod:(OrgApacheLuceneUtilVirtualMethod *)m2;

- (jint)getImplementationDistanceWithIOSClass:(IOSClass *)subclazz;

- (jboolean)isOverriddenAsOfWithIOSClass:(IOSClass *)subclazz;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilVirtualMethod)

FOUNDATION_EXPORT void OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(OrgApacheLuceneUtilVirtualMethod *self, IOSClass *baseClass, NSString *method, IOSObjectArray *parameters);

FOUNDATION_EXPORT OrgApacheLuceneUtilVirtualMethod *new_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(IOSClass *baseClass, NSString *method, IOSObjectArray *parameters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilVirtualMethod *create_OrgApacheLuceneUtilVirtualMethod_initWithIOSClass_withNSString_withIOSClassArray_(IOSClass *baseClass, NSString *method, IOSObjectArray *parameters);

FOUNDATION_EXPORT jint OrgApacheLuceneUtilVirtualMethod_compareImplementationDistanceWithIOSClass_withOrgApacheLuceneUtilVirtualMethod_withOrgApacheLuceneUtilVirtualMethod_(IOSClass *clazz, OrgApacheLuceneUtilVirtualMethod *m1, OrgApacheLuceneUtilVirtualMethod *m2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilVirtualMethod)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilVirtualMethod")
