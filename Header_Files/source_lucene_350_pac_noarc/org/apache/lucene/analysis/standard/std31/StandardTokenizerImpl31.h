//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/standard/std31/StandardTokenizerImpl31.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31

#if !defined (OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 || defined(INCLUDE_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31))
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_

#define RESTRICT_OrgApacheLuceneAnalysisStandardStandardTokenizerInterface 1
#define INCLUDE_OrgApacheLuceneAnalysisStandardStandardTokenizerInterface 1
#include "org/apache/lucene/analysis/standard/StandardTokenizerInterface.h"

@class JavaIoInputStream;
@class JavaIoReader;
@protocol OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;

@interface OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 : NSObject < OrgApacheLuceneAnalysisStandardStandardTokenizerInterface >

#pragma mark Public

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)inArg;

- (jint)getNextToken;

- (void)getTextWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)t;

- (void)yybeginWithInt:(jint)newState;

- (jint)yychar;

- (jchar)yycharatWithInt:(jint)pos;

- (void)yyclose;

- (jint)yylength;

- (void)yypushbackWithInt:(jint)number;

- (void)yyresetWithJavaIoReader:(JavaIoReader *)reader;

- (jint)yystate;

- (NSString *)yytext;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_YYEOF();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_YYEOF -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, YYEOF, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_YYINITIAL();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_YYINITIAL 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, YYINITIAL, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_WORD_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_WORD_TYPE 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, WORD_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_NUMERIC_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_NUMERIC_TYPE 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, NUMERIC_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_SOUTH_EAST_ASIAN_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_SOUTH_EAST_ASIAN_TYPE 9
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, SOUTH_EAST_ASIAN_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_IDEOGRAPHIC_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_IDEOGRAPHIC_TYPE 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, IDEOGRAPHIC_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_HIRAGANA_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_HIRAGANA_TYPE 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, HIRAGANA_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_KATAKANA_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_KATAKANA_TYPE 12
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, KATAKANA_TYPE, jint)

inline jint OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_get_HANGUL_TYPE();
#define OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_HANGUL_TYPE 13
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31, HANGUL_TYPE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 *self, JavaIoReader *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 *new_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_initWithJavaIoReader_(JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 *create_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_initWithJavaIoReader_(JavaIoReader *inArg);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_initWithJavaIoInputStream_(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 *self, JavaIoInputStream *inArg);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 *new_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_initWithJavaIoInputStream_(JavaIoInputStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31 *create_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31_initWithJavaIoInputStream_(JavaIoInputStream *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardStd31StandardTokenizerImpl31")
