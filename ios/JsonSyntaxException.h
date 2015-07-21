//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonSyntaxException.java
//

#ifndef _ComGoogleGsonJsonSyntaxException_H_
#define _ComGoogleGsonJsonSyntaxException_H_

#include "J2ObjC_header.h"
#include "JsonParseException.h"

@class JavaLangThrowable;

/**
 @brief This exception is raised when Gson attempts to read (or write) a malformed JSON element.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface ComGoogleGsonJsonSyntaxException : ComGoogleGsonJsonParseException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)msg;

- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause;

/**
 @brief Creates exception with the specified cause.
 Consider using #JsonSyntaxException(String,Throwable) instead if you can describe what actually happened.
 @param cause root exception that caused this exception to be thrown.
 */
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonJsonSyntaxException)

FOUNDATION_EXPORT void ComGoogleGsonJsonSyntaxException_initWithNSString_(ComGoogleGsonJsonSyntaxException *self, NSString *msg);

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(ComGoogleGsonJsonSyntaxException *self, NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(ComGoogleGsonJsonSyntaxException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonSyntaxException)

#endif // _ComGoogleGsonJsonSyntaxException_H_