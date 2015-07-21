//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/TimeTypeAdapter.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/TimeTypeAdapter.java"

#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "TimeTypeAdapter.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeToken.h"
#include "java/io/IOException.h"
#include "java/sql/Time.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"

@interface ComGoogleGsonInternalBindTimeTypeAdapter () {
 @public
  JavaTextDateFormat *format_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindTimeTypeAdapter, format_, JavaTextDateFormat *)

@interface ComGoogleGsonInternalBindTimeTypeAdapter_$1 : NSObject < ComGoogleGsonTypeAdapterFactory >

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindTimeTypeAdapter_$1)

__attribute__((unused)) static void ComGoogleGsonInternalBindTimeTypeAdapter_$1_init(ComGoogleGsonInternalBindTimeTypeAdapter_$1 *self);

__attribute__((unused)) static ComGoogleGsonInternalBindTimeTypeAdapter_$1 *new_ComGoogleGsonInternalBindTimeTypeAdapter_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindTimeTypeAdapter_$1)

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonInternalBindTimeTypeAdapter)

id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY_;


#line 40
@implementation ComGoogleGsonInternalBindTimeTypeAdapter


#line 50
- (JavaSqlTime *)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  @synchronized(self) {
    
#line 51
    if ([((ComGoogleGsonStreamJsonReader *) nil_chk(inArg)) peek] == ComGoogleGsonStreamJsonTokenEnum_get_NULL()) {
      [inArg nextNull];
      return nil;
    }
    @try {
      JavaUtilDate *date = [((JavaTextDateFormat *) nil_chk(format_)) parseWithNSString:[inArg nextString]];
      return new_JavaSqlTime_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
    }
    @catch (
#line 58
    JavaTextParseException *e) {
      @throw new_ComGoogleGsonJsonSyntaxException_initWithJavaLangThrowable_(e);
    }
  }
}


#line 63
- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(JavaSqlTime *)value {
  @synchronized(self) {
    
#line 64
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) valueWithNSString:value == nil ? nil : [((JavaTextDateFormat *) nil_chk(format_)) formatWithJavaUtilDate:value]];
  }
}

- (instancetype)init {
  ComGoogleGsonInternalBindTimeTypeAdapter_init(self);
  return self;
}

+ (void)initialize {
  if (self == [ComGoogleGsonInternalBindTimeTypeAdapter class]) {
    ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY_ = new_ComGoogleGsonInternalBindTimeTypeAdapter_$1_init();
    J2OBJC_SET_INITIALIZED(ComGoogleGsonInternalBindTimeTypeAdapter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithComGoogleGsonStreamJsonReader:", "read", "Ljava.sql.Time;", 0x21, "Ljava.io.IOException;", NULL },
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x21, "Ljava.io.IOException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FACTORY_", NULL, 0x19, "Lcom.google.gson.TypeAdapterFactory;", &ComGoogleGsonInternalBindTimeTypeAdapter_FACTORY_, NULL,  },
    { "format_", NULL, 0x12, "Ljava.text.DateFormat;", NULL, NULL,  },
  };
  static const char *superclass_type_args[] = {"Ljava.sql.Time;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindTimeTypeAdapter = { 2, "TimeTypeAdapter", "com.google.gson.internal.bind", NULL, 0x11, 3, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lcom/google/gson/TypeAdapter<Ljava/sql/Time;>;" };
  return &_ComGoogleGsonInternalBindTimeTypeAdapter;
}

@end

void ComGoogleGsonInternalBindTimeTypeAdapter_init(ComGoogleGsonInternalBindTimeTypeAdapter *self) {
  (void) ComGoogleGsonTypeAdapter_init(self);
  self->format_ = new_JavaTextSimpleDateFormat_initWithNSString_(
#line 48
  @"hh:mm:ss a");
}

ComGoogleGsonInternalBindTimeTypeAdapter *new_ComGoogleGsonInternalBindTimeTypeAdapter_init() {
  ComGoogleGsonInternalBindTimeTypeAdapter *self = [ComGoogleGsonInternalBindTimeTypeAdapter alloc];
  ComGoogleGsonInternalBindTimeTypeAdapter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindTimeTypeAdapter)

@implementation ComGoogleGsonInternalBindTimeTypeAdapter_$1


#line 43
- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken {
  return [((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken)) getRawType] == JavaSqlTime_class_() ? (ComGoogleGsonTypeAdapter *) check_class_cast(new_ComGoogleGsonInternalBindTimeTypeAdapter_init(), [ComGoogleGsonTypeAdapter class]) : nil;
}

- (instancetype)init {
  ComGoogleGsonInternalBindTimeTypeAdapter_$1_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:", "create", "Lcom.google.gson.TypeAdapter;", 0x1, NULL, "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;" },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindTimeTypeAdapter_$1 = { 2, "", "com.google.gson.internal.bind", "TimeTypeAdapter", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonInternalBindTimeTypeAdapter_$1;
}

@end

void ComGoogleGsonInternalBindTimeTypeAdapter_$1_init(ComGoogleGsonInternalBindTimeTypeAdapter_$1 *self) {
  (void) NSObject_init(self);
}

ComGoogleGsonInternalBindTimeTypeAdapter_$1 *new_ComGoogleGsonInternalBindTimeTypeAdapter_$1_init() {
  ComGoogleGsonInternalBindTimeTypeAdapter_$1 *self = [ComGoogleGsonInternalBindTimeTypeAdapter_$1 alloc];
  ComGoogleGsonInternalBindTimeTypeAdapter_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindTimeTypeAdapter_$1)
