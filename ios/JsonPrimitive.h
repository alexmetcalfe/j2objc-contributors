//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonPrimitive.java
//

#ifndef _ComGoogleGsonJsonPrimitive_H_
#define _ComGoogleGsonJsonPrimitive_H_

#include "J2ObjC_header.h"
#include "JsonElement.h"

@class JavaLangBoolean;
@class JavaLangCharacter;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;

/**
 @brief A class representing a Json primitive value.
 A primitive value is either a String, a Java primitive, or a Java primitive wrapper type.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface ComGoogleGsonJsonPrimitive : ComGoogleGsonJsonElement

#pragma mark Public

/**
 @brief Create a primitive containing a boolean value.
 @param bool the value to create the primitive with.
 */
- (instancetype)initWithJavaLangBoolean:(JavaLangBoolean *)bool_;

/**
 @brief Create a primitive containing a character.
 The character is turned into a one character String since Json only supports String.
 @param c the value to create the primitive with.
 */
- (instancetype)initWithJavaLangCharacter:(JavaLangCharacter *)c;

/**
 @brief Create a primitive containing a Number .
 @param number the value to create the primitive with.
 */
- (instancetype)initWithNSNumber:(NSNumber *)number;

/**
 @brief Create a primitive containing a String value.
 @param string the value to create the primitive with.
 */
- (instancetype)initWithNSString:(NSString *)string;

- (jboolean)isEqual:(id)obj;

/**
 @brief convenience method to get this element as a BigDecimal .
 @return get this element as a BigDecimal .
 @throws NumberFormatException if the value contained is not a valid BigDecimal .
 */
- (JavaMathBigDecimal *)getAsBigDecimal;

/**
 @brief convenience method to get this element as a BigInteger .
 @return get this element as a BigInteger .
 @throws NumberFormatException if the value contained is not a valid BigInteger .
 */
- (JavaMathBigInteger *)getAsBigInteger;

/**
 @brief convenience method to get this element as a boolean value.
 @return get this element as a primitive boolean value.
 */
- (jboolean)getAsBoolean;

- (jbyte)getAsByte;

- (jchar)getAsCharacter;

/**
 @brief convenience method to get this element as a primitive double.
 @return get this element as a primitive double.
 @throws NumberFormatException if the value contained is not a valid double.
 */
- (jdouble)getAsDouble;

/**
 @brief convenience method to get this element as a float.
 @return get this element as a float.
 @throws NumberFormatException if the value contained is not a valid float.
 */
- (jfloat)getAsFloat;

/**
 @brief convenience method to get this element as a primitive integer.
 @return get this element as a primitive integer.
 @throws NumberFormatException if the value contained is not a valid integer.
 */
- (jint)getAsInt;

/**
 @brief convenience method to get this element as a primitive long.
 @return get this element as a primitive long.
 @throws NumberFormatException if the value contained is not a valid long.
 */
- (jlong)getAsLong;

/**
 @brief convenience method to get this element as a Number.
 @return get this element as a Number.
 @throws NumberFormatException if the value contained is not a valid Number.
 */
- (NSNumber *)getAsNumber;

/**
 @brief convenience method to get this element as a primitive short.
 @return get this element as a primitive short.
 @throws NumberFormatException if the value contained is not a valid short value.
 */
- (jshort)getAsShort;

/**
 @brief convenience method to get this element as a String.
 @return get this element as a String.
 */
- (NSString *)getAsString;

- (NSUInteger)hash;

/**
 @brief Check whether this primitive contains a boolean value.
 @return true if this primitive contains a boolean value, false otherwise.
 */
- (jboolean)isBoolean;

/**
 @brief Check whether this primitive contains a Number.
 @return true if this primitive contains a Number, false otherwise.
 */
- (jboolean)isNumber;

/**
 @brief Check whether this primitive contains a String value.
 @return true if this primitive contains a String value, false otherwise.
 */
- (jboolean)isString;

#pragma mark Package-Private

/**
 @brief Create a primitive using the specified Object.
 It must be an instance of Number , a Java primitive type, or a String.
 @param primitive the value to create the primitive with.
 */
- (instancetype)initWithId:(id)primitive;

- (ComGoogleGsonJsonPrimitive *)deepCopy;

/**
 @brief convenience method to get this element as a Boolean .
 @return get this element as a Boolean .
 */
- (JavaLangBoolean *)getAsBooleanWrapper;

- (void)setValueWithId:(id)primitive;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonJsonPrimitive)

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(ComGoogleGsonJsonPrimitive *self, JavaLangBoolean *bool_);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithNSNumber_(ComGoogleGsonJsonPrimitive *self, NSNumber *number);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSNumber_(NSNumber *number) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithNSString_(ComGoogleGsonJsonPrimitive *self, NSString *string);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString *string) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(ComGoogleGsonJsonPrimitive *self, JavaLangCharacter *c);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithId_(ComGoogleGsonJsonPrimitive *self, id primitive);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithId_(id primitive) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonPrimitive)

#endif // _ComGoogleGsonJsonPrimitive_H_
