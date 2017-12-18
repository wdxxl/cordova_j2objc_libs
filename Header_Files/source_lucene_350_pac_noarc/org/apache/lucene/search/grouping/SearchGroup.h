//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/SearchGroup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingSearchGroup")
#ifdef RESTRICT_OrgApacheLuceneSearchGroupingSearchGroup
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingSearchGroup 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchGroupingSearchGroup 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchGroupingSearchGroup

#if !defined (OrgApacheLuceneSearchGroupingSearchGroup_) && (INCLUDE_ALL_OrgApacheLuceneSearchGroupingSearchGroup || defined(INCLUDE_OrgApacheLuceneSearchGroupingSearchGroup))
#define OrgApacheLuceneSearchGroupingSearchGroup_

@class IOSObjectArray;
@class OrgApacheLuceneSearchSort;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

@interface OrgApacheLuceneSearchGroupingSearchGroup : NSObject {
 @public
  id groupValue_;
  IOSObjectArray *sortValues_;
}

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

+ (id<JavaUtilCollection>)mergeWithJavaUtilList:(id<JavaUtilList>)topGroups
                                        withInt:(jint)offset
                                        withInt:(jint)topN
                  withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)groupSort;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingSearchGroup)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup, groupValue_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingSearchGroup, sortValues_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingSearchGroup_init(OrgApacheLuceneSearchGroupingSearchGroup *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingSearchGroup *new_OrgApacheLuceneSearchGroupingSearchGroup_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingSearchGroup *create_OrgApacheLuceneSearchGroupingSearchGroup_init();

FOUNDATION_EXPORT id<JavaUtilCollection> OrgApacheLuceneSearchGroupingSearchGroup_mergeWithJavaUtilList_withInt_withInt_withOrgApacheLuceneSearchSort_(id<JavaUtilList> topGroups, jint offset, jint topN, OrgApacheLuceneSearchSort *groupSort);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingSearchGroup)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchGroupingSearchGroup")