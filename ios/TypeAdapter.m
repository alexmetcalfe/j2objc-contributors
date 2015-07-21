//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/TypeAdapter.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/TypeAdapter.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonIOException.h"
#include "JsonReader.h"
#include "JsonToken.h"
#include "JsonTreeReader.h"
#include "JsonTreeWriter.h"
#include "JsonWriter.h"
#include "TypeAdapter.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/io/StringWriter.h"
#include "java/io/Writer.h"

__attribute__((unused)) static void ComGoogleGsonTypeAdapter_toJsonWithJavaIoWriter_withId_(ComGoogleGsonTypeAdapter *self, JavaIoWriter *outArg, id value);

__attribute__((unused)) static id ComGoogleGsonTypeAdapter_fromJsonWithJavaIoReader_(ComGoogleGsonTypeAdapter *self, JavaIoReader *inArg);

@interface ComGoogleGsonTypeAdapter_$1 : ComGoogleGsonTypeAdapter {
 @public
  ComGoogleGsonTypeAdapter *this$0_;
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value;

- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)reader;

- (instancetype)initWithComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonTypeAdapter_$1)

J2OBJC_FIELD_SETTER(ComGoogleGsonTypeAdapter_$1, this$0_, ComGoogleGsonTypeAdapter *)

__attribute__((unused)) static void ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(ComGoogleGsonTypeAdapter_$1 *self, ComGoogleGsonTypeAdapter *outer$);

__attribute__((unused)) static ComGoogleGsonTypeAdapter_$1 *new_ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(ComGoogleGsonTypeAdapter *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonTypeAdapter_$1)


#line 119
@implementation ComGoogleGsonTypeAdapter


#line 127
- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 140
- (void)toJsonWithJavaIoWriter:(JavaIoWriter *)outArg
                        withId:(id)value {
  ComGoogleGsonTypeAdapter_toJsonWithJavaIoWriter_withId_(self, outArg, value);
}


#line 185
- (ComGoogleGsonTypeAdapter *)nullSafe {
  return new_ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(self);
}


#line 214
- (NSString *)toJsonWithId:(id)value {
  JavaIoStringWriter *stringWriter = new_JavaIoStringWriter_init();
  ComGoogleGsonTypeAdapter_toJsonWithJavaIoWriter_withId_(self, stringWriter, value);
  return [stringWriter description];
}


#line 227
- (ComGoogleGsonJsonElement *)toJsonTreeWithId:(id)value {
  @try {
    ComGoogleGsonInternalBindJsonTreeWriter *jsonWriter = new_ComGoogleGsonInternalBindJsonTreeWriter_init();
    [self writeWithComGoogleGsonStreamJsonWriter:jsonWriter withId:value];
    return [jsonWriter get];
  }
  @catch (
#line 232
  JavaIoIOException *e) {
    @throw new_ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(e);
  }
}


#line 243
- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 254
- (id)fromJsonWithJavaIoReader:(JavaIoReader *)inArg {
  return ComGoogleGsonTypeAdapter_fromJsonWithJavaIoReader_(self, inArg);
}


#line 268
- (id)fromJsonWithNSString:(NSString *)json {
  return ComGoogleGsonTypeAdapter_fromJsonWithJavaIoReader_(self, new_JavaIoStringReader_initWithNSString_(json));
}


#line 278
- (id)fromJsonTreeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)jsonTree {
  @try {
    ComGoogleGsonStreamJsonReader *jsonReader = new_ComGoogleGsonInternalBindJsonTreeReader_initWithComGoogleGsonJsonElement_(jsonTree);
    return [self readWithComGoogleGsonStreamJsonReader:jsonReader];
  }
  @catch (
#line 282
  JavaIoIOException *e) {
    @throw new_ComGoogleGsonJsonIOException_initWithJavaLangThrowable_(e);
  }
}

- (instancetype)init {
  ComGoogleGsonTypeAdapter_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x401, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonWriter;TT;)V" },
    { "toJsonWithJavaIoWriter:withId:", "toJson", "V", 0x11, "Ljava.io.IOException;", "(Ljava/io/Writer;TT;)V" },
    { "nullSafe", NULL, "Lcom.google.gson.TypeAdapter;", 0x11, NULL, NULL },
    { "toJsonWithId:", "toJson", "Ljava.lang.String;", 0x11, "Ljava.io.IOException;", "(TT;)Ljava/lang/String;" },
    { "toJsonTreeWithId:", "toJsonTree", "Lcom.google.gson.JsonElement;", 0x11, NULL, "(TT;)Lcom/google/gson/JsonElement;" },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "TT;", 0x401, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonReader;)TT;" },
    { "fromJsonWithJavaIoReader:", "fromJson", "TT;", 0x11, "Ljava.io.IOException;", "(Ljava/io/Reader;)TT;" },
    { "fromJsonWithNSString:", "fromJson", "TT;", 0x11, "Ljava.io.IOException;", "(Ljava/lang/String;)TT;" },
    { "fromJsonTreeWithComGoogleGsonJsonElement:", "fromJsonTree", "TT;", 0x11, NULL, "(Lcom/google/gson/JsonElement;)TT;" },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonTypeAdapter = { 2, "TypeAdapter", "com.google.gson", NULL, 0x401, 10, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_ComGoogleGsonTypeAdapter;
}

@end


#line 140
void ComGoogleGsonTypeAdapter_toJsonWithJavaIoWriter_withId_(ComGoogleGsonTypeAdapter *self, JavaIoWriter *outArg, id value) {
  ComGoogleGsonStreamJsonWriter *writer = new_ComGoogleGsonStreamJsonWriter_initWithJavaIoWriter_(outArg);
  [self writeWithComGoogleGsonStreamJsonWriter:writer withId:value];
}


#line 254
id ComGoogleGsonTypeAdapter_fromJsonWithJavaIoReader_(ComGoogleGsonTypeAdapter *self, JavaIoReader *inArg) {
  ComGoogleGsonStreamJsonReader *reader = new_ComGoogleGsonStreamJsonReader_initWithJavaIoReader_(inArg);
  return [self readWithComGoogleGsonStreamJsonReader:reader];
}

void ComGoogleGsonTypeAdapter_init(ComGoogleGsonTypeAdapter *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonTypeAdapter)

@implementation ComGoogleGsonTypeAdapter_$1


#line 187
- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value {
  if (value == nil) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) nullValue];
  }
  else {
    
#line 191
    [this$0_ writeWithComGoogleGsonStreamJsonWriter:outArg withId:value];
  }
}


#line 194
- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)reader {
  if ([((ComGoogleGsonStreamJsonReader *) nil_chk(reader)) peek] == ComGoogleGsonStreamJsonTokenEnum_get_NULL()) {
    [reader nextNull];
    return nil;
  }
  return [this$0_ readWithComGoogleGsonStreamJsonReader:reader];
}

- (instancetype)initWithComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)outer$ {
  ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonWriter;TT;)V" },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "TT;", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonReader;)TT;" },
    { "initWithComGoogleGsonTypeAdapter:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.google.gson.TypeAdapter;", NULL, NULL,  },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ComGoogleGsonTypeAdapter", "nullSafe" };
  static const J2ObjcClassInfo _ComGoogleGsonTypeAdapter_$1 = { 2, "", "com.google.gson", "TypeAdapter", 0x8008, 3, methods, 1, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lcom/google/gson/TypeAdapter<TT;>;" };
  return &_ComGoogleGsonTypeAdapter_$1;
}

@end

void ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(ComGoogleGsonTypeAdapter_$1 *self, ComGoogleGsonTypeAdapter *outer$) {
  self->this$0_ = outer$;
  (void) ComGoogleGsonTypeAdapter_init(self);
}

ComGoogleGsonTypeAdapter_$1 *new_ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(ComGoogleGsonTypeAdapter *outer$) {
  ComGoogleGsonTypeAdapter_$1 *self = [ComGoogleGsonTypeAdapter_$1 alloc];
  ComGoogleGsonTypeAdapter_$1_initWithComGoogleGsonTypeAdapter_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonTypeAdapter_$1)
