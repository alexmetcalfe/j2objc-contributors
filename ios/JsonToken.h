//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/stream/JsonToken.java
//

#ifndef _ComGoogleGsonStreamJsonToken_H_
#define _ComGoogleGsonStreamJsonToken_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ComGoogleGsonStreamJsonToken) {
  ComGoogleGsonStreamJsonToken_BEGIN_ARRAY = 0,
  ComGoogleGsonStreamJsonToken_END_ARRAY = 1,
  ComGoogleGsonStreamJsonToken_BEGIN_OBJECT = 2,
  ComGoogleGsonStreamJsonToken_END_OBJECT = 3,
  ComGoogleGsonStreamJsonToken_NAME = 4,
  ComGoogleGsonStreamJsonToken_STRING = 5,
  ComGoogleGsonStreamJsonToken_NUMBER = 6,
  ComGoogleGsonStreamJsonToken_BOOLEAN = 7,
  ComGoogleGsonStreamJsonToken_NULL = 8,
  ComGoogleGsonStreamJsonToken_END_DOCUMENT = 9,
};

/**
 @brief A structure, name or value type in a JSON-encoded string.
 @author Jesse Wilson
 @since 1.6
 */
@interface ComGoogleGsonStreamJsonTokenEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ComGoogleGsonStreamJsonTokenEnum_values();

+ (ComGoogleGsonStreamJsonTokenEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT ComGoogleGsonStreamJsonTokenEnum *ComGoogleGsonStreamJsonTokenEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonStreamJsonTokenEnum)

FOUNDATION_EXPORT ComGoogleGsonStreamJsonTokenEnum *ComGoogleGsonStreamJsonTokenEnum_values_[];

#define ComGoogleGsonStreamJsonTokenEnum_BEGIN_ARRAY ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_BEGIN_ARRAY]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, BEGIN_ARRAY)

#define ComGoogleGsonStreamJsonTokenEnum_END_ARRAY ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_END_ARRAY]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, END_ARRAY)

#define ComGoogleGsonStreamJsonTokenEnum_BEGIN_OBJECT ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_BEGIN_OBJECT]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, BEGIN_OBJECT)

#define ComGoogleGsonStreamJsonTokenEnum_END_OBJECT ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_END_OBJECT]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, END_OBJECT)

#define ComGoogleGsonStreamJsonTokenEnum_NAME ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_NAME]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, NAME)

#define ComGoogleGsonStreamJsonTokenEnum_STRING ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_STRING]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, STRING)

#define ComGoogleGsonStreamJsonTokenEnum_NUMBER ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_NUMBER]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, NUMBER)

#define ComGoogleGsonStreamJsonTokenEnum_BOOLEAN ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_BOOLEAN]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, BOOLEAN)

#define ComGoogleGsonStreamJsonTokenEnum_NULL ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_NULL]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, NULL)

#define ComGoogleGsonStreamJsonTokenEnum_END_DOCUMENT ComGoogleGsonStreamJsonTokenEnum_values_[ComGoogleGsonStreamJsonToken_END_DOCUMENT]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoogleGsonStreamJsonTokenEnum, END_DOCUMENT)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonStreamJsonTokenEnum)

#endif // _ComGoogleGsonStreamJsonToken_H_
