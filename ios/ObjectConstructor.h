//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/ObjectConstructor.java
//

#ifndef _ComGoogleGsonInternalObjectConstructor_H_
#define _ComGoogleGsonInternalObjectConstructor_H_

#include "J2ObjC_header.h"

/**
 @brief Defines a generic object construction factory.
 The purpose of this class is to construct a default instance of a class that can be used for object navigation while deserialization from its JSON representation.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@protocol ComGoogleGsonInternalObjectConstructor < NSObject, JavaObject >

/**
 @brief Returns a new instance.
 */
- (id)construct;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalObjectConstructor)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalObjectConstructor)

#endif // _ComGoogleGsonInternalObjectConstructor_H_
