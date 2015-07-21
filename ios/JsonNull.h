//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonNull.java
//

#ifndef _ComGoogleGsonJsonNull_H_
#define _ComGoogleGsonJsonNull_H_

#include "J2ObjC_header.h"
#include "JsonElement.h"

/**
 @brief A class representing a Json <code>null</code> value.
 @author Inderjeet Singh
 @author Joel Leitch
 @since 1.2
 */
@interface ComGoogleGsonJsonNull : ComGoogleGsonJsonElement

#pragma mark Public

/**
 @brief Creates a new JsonNull object.
 Deprecated since Gson version 1.8. Use #INSTANCE instead
 */
- (instancetype)init;

/**
 @brief All instances of JsonNull are the same
 */
- (jboolean)isEqual:(id)other;

/**
 @brief All instances of JsonNull have the same hash code since they are indistinguishable
 */
- (NSUInteger)hash;

#pragma mark Package-Private

- (ComGoogleGsonJsonNull *)deepCopy;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonJsonNull)

FOUNDATION_EXPORT ComGoogleGsonJsonNull *ComGoogleGsonJsonNull_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleGsonJsonNull, INSTANCE_, ComGoogleGsonJsonNull *)

FOUNDATION_EXPORT void ComGoogleGsonJsonNull_init(ComGoogleGsonJsonNull *self);

FOUNDATION_EXPORT ComGoogleGsonJsonNull *new_ComGoogleGsonJsonNull_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonNull)

#endif // _ComGoogleGsonJsonNull_H_