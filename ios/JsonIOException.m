//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonIOException.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonIOException.java"

#include "J2ObjC_source.h"
#include "JsonIOException.h"
#include "JsonParseException.h"
#include "java/lang/Throwable.h"

#define ComGoogleGsonJsonIOException_serialVersionUID 1LL

J2OBJC_STATIC_FIELD_GETTER(ComGoogleGsonJsonIOException, serialVersionUID, jlong)


#line 25
@implementation ComGoogleGsonJsonIOException


#line 28
- (instancetype)initWithNSString:(NSString *)msg {
  ComGoogleGsonJsonIOException_initWithNSString_(self, msg);
  return self;
}


#line 32
- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  ComGoogleGsonJsonIOException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}


#line 42
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(self, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "JsonIOException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withJavaLangThrowable:", "JsonIOException", NULL, 0x1, NULL, NULL },
    { "initWithJavaLangThrowable:", "JsonIOException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, NULL, .constantValue.asLong = ComGoogleGsonJsonIOException_serialVersionUID },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonIOException = { 2, "JsonIOException", "com.google.gson", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonJsonIOException;
}

@end


#line 28
void ComGoogleGsonJsonIOException_initWithNSString_(ComGoogleGsonJsonIOException *self, NSString *msg) {
  (void) ComGoogleGsonJsonParseException_initWithNSString_(self, msg);
}


#line 28
ComGoogleGsonJsonIOException *new_ComGoogleGsonJsonIOException_initWithNSString_(NSString *msg) {
  ComGoogleGsonJsonIOException *self = [ComGoogleGsonJsonIOException alloc];
  ComGoogleGsonJsonIOException_initWithNSString_(self, msg);
  return self;
}


#line 32
void ComGoogleGsonJsonIOException_initWithNSString_withJavaLangThrowable_(ComGoogleGsonJsonIOException *self, NSString *msg, JavaLangThrowable *cause) {
  (void) ComGoogleGsonJsonParseException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
}


#line 32
ComGoogleGsonJsonIOException *new_ComGoogleGsonJsonIOException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  ComGoogleGsonJsonIOException *self = [ComGoogleGsonJsonIOException alloc];
  ComGoogleGsonJsonIOException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}


#line 42
void ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(ComGoogleGsonJsonIOException *self, JavaLangThrowable *cause) {
  (void) ComGoogleGsonJsonParseException_initWithJavaLangThrowable_(self, cause);
}


#line 42
ComGoogleGsonJsonIOException *new_ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  ComGoogleGsonJsonIOException *self = [ComGoogleGsonJsonIOException alloc];
  ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(self, cause);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonIOException)
