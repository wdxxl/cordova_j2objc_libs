//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/document/SetBasedFieldSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentSetBasedFieldSelector")
#ifdef RESTRICT_OrgApacheLuceneDocumentSetBasedFieldSelector
#define INCLUDE_ALL_OrgApacheLuceneDocumentSetBasedFieldSelector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentSetBasedFieldSelector 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentSetBasedFieldSelector

#if !defined (OrgApacheLuceneDocumentSetBasedFieldSelector_) && (INCLUDE_ALL_OrgApacheLuceneDocumentSetBasedFieldSelector || defined(INCLUDE_OrgApacheLuceneDocumentSetBasedFieldSelector))
#define OrgApacheLuceneDocumentSetBasedFieldSelector_

#define RESTRICT_OrgApacheLuceneDocumentFieldSelector 1
#define INCLUDE_OrgApacheLuceneDocumentFieldSelector 1
#include "org/apache/lucene/document/FieldSelector.h"

@class OrgApacheLuceneDocumentFieldSelectorResult;
@protocol JavaUtilSet;

@interface OrgApacheLuceneDocumentSetBasedFieldSelector : NSObject < OrgApacheLuceneDocumentFieldSelector >

#pragma mark Public

- (instancetype)initWithJavaUtilSet:(id<JavaUtilSet>)fieldsToLoad
                    withJavaUtilSet:(id<JavaUtilSet>)lazyFieldsToLoad;

- (OrgApacheLuceneDocumentFieldSelectorResult *)acceptWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentSetBasedFieldSelector)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(OrgApacheLuceneDocumentSetBasedFieldSelector *self, id<JavaUtilSet> fieldsToLoad, id<JavaUtilSet> lazyFieldsToLoad);

FOUNDATION_EXPORT OrgApacheLuceneDocumentSetBasedFieldSelector *new_OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(id<JavaUtilSet> fieldsToLoad, id<JavaUtilSet> lazyFieldsToLoad) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentSetBasedFieldSelector *create_OrgApacheLuceneDocumentSetBasedFieldSelector_initWithJavaUtilSet_withJavaUtilSet_(id<JavaUtilSet> fieldsToLoad, id<JavaUtilSet> lazyFieldsToLoad);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentSetBasedFieldSelector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentSetBasedFieldSelector")
