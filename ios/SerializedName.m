//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/annotations/SerializedName.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/annotations/SerializedName.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "SerializedName.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"


#line 68
@implementation ComGoogleGsonAnnotationsSerializedName

@synthesize value = value_;

- (instancetype)initWithValue:(NSString *)value__ {
  if ((self = [super init])) {
    self->value_ = RETAIN_(value__);
  }
  return self;
}

- (IOSClass *)annotationType {
  return ComGoogleGsonAnnotationsSerializedName_class_();
}

- (NSString *)description {
  return @"@com.google.gson.annotations.SerializedName()";
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangAnnotationRetention alloc] initWithValue:JavaLangAnnotationRetentionPolicyEnum_get_RUNTIME()], [[JavaLangAnnotationTarget alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { JavaLangAnnotationElementTypeEnum_get_FIELD() } count:1 type:NSObject_class_()]] } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "value", "value", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "valueDefault", "value", "Ljava.lang.String;", 0x100a, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonAnnotationsSerializedName = { 2, "SerializedName", "com.google.gson.annotations", NULL, 0x2609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonAnnotationsSerializedName;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleGsonAnnotationsSerializedName)
