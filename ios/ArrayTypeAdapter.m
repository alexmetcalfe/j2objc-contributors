//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/ArrayTypeAdapter.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/ArrayTypeAdapter.java"

#include "$Gson$Types.h"
#include "ArrayTypeAdapter.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeAdapterRuntimeTypeWrapper.h"
#include "TypeToken.h"
#include "java/io/IOException.h"
#include "java/lang/reflect/Array.h"
#include "java/lang/reflect/GenericArrayType.h"
#include "java/lang/reflect/Type.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ComGoogleGsonInternalBindArrayTypeAdapter () {
 @public
  IOSClass *componentType_;
  ComGoogleGsonTypeAdapter *componentTypeAdapter_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindArrayTypeAdapter, componentType_, IOSClass *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindArrayTypeAdapter, componentTypeAdapter_, ComGoogleGsonTypeAdapter *)

@interface ComGoogleGsonInternalBindArrayTypeAdapter_$1 : NSObject < ComGoogleGsonTypeAdapterFactory >

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindArrayTypeAdapter_$1)

__attribute__((unused)) static void ComGoogleGsonInternalBindArrayTypeAdapter_$1_init(ComGoogleGsonInternalBindArrayTypeAdapter_$1 *self);

__attribute__((unused)) static ComGoogleGsonInternalBindArrayTypeAdapter_$1 *new_ComGoogleGsonInternalBindArrayTypeAdapter_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindArrayTypeAdapter_$1)

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonInternalBindArrayTypeAdapter)

id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonInternalBindArrayTypeAdapter_FACTORY_;


#line 38
@implementation ComGoogleGsonInternalBindArrayTypeAdapter


#line 57
- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)context
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)componentTypeAdapter
                             withIOSClass:(IOSClass *)componentType {
  ComGoogleGsonInternalBindArrayTypeAdapter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withIOSClass_(self, context, componentTypeAdapter, componentType);
  return self;
}


#line 63
- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  if ([((ComGoogleGsonStreamJsonReader *) nil_chk(inArg)) peek] == ComGoogleGsonStreamJsonTokenEnum_get_NULL()) {
    [inArg nextNull];
    return nil;
  }
  
#line 69
  id<JavaUtilList> list = new_JavaUtilArrayList_init();
  [inArg beginArray];
  while ([inArg hasNext]) {
    id instance = [((ComGoogleGsonTypeAdapter *) nil_chk(componentTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
    [list addWithId:instance];
  }
  [inArg endArray];
  id array = JavaLangReflectArray_newInstanceWithIOSClass_withInt_(componentType_, [list size]);
  for (jint i = 0; i < [list size]; i++) {
    JavaLangReflectArray_setWithId_withInt_withId_(array, i, [list getWithInt:i]);
  }
  return array;
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)array {
  if (array == nil) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  
#line 90
  (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) beginArray];
  for (jint i = 0, length = JavaLangReflectArray_getLengthWithId_(array); i < length; i++) {
    id value = (id) JavaLangReflectArray_getWithId_withInt_(array, i);
    [((ComGoogleGsonTypeAdapter *) nil_chk(componentTypeAdapter_)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:value];
  }
  (void) [outArg endArray];
}

+ (void)initialize {
  if (self == [ComGoogleGsonInternalBindArrayTypeAdapter class]) {
    ComGoogleGsonInternalBindArrayTypeAdapter_FACTORY_ = new_ComGoogleGsonInternalBindArrayTypeAdapter_$1_init();
    J2OBJC_SET_INITIALIZED(ComGoogleGsonInternalBindArrayTypeAdapter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonGson:withComGoogleGsonTypeAdapter:withIOSClass:", "ArrayTypeAdapter", NULL, 0x1, NULL, NULL },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "Ljava.lang.Object;", 0x1, "Ljava.io.IOException;", NULL },
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FACTORY_", NULL, 0x19, "Lcom.google.gson.TypeAdapterFactory;", &ComGoogleGsonInternalBindArrayTypeAdapter_FACTORY_, NULL,  },
    { "componentType_", NULL, 0x12, "Ljava.lang.Class;", NULL, "Ljava/lang/Class<TE;>;",  },
    { "componentTypeAdapter_", NULL, 0x12, "Lcom.google.gson.TypeAdapter;", NULL, "Lcom/google/gson/TypeAdapter<TE;>;",  },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Object;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindArrayTypeAdapter = { 2, "ArrayTypeAdapter", "com.google.gson.internal.bind", NULL, 0x11, 3, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/lang/Object;>;" };
  return &_ComGoogleGsonInternalBindArrayTypeAdapter;
}

@end


#line 57
void ComGoogleGsonInternalBindArrayTypeAdapter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withIOSClass_(ComGoogleGsonInternalBindArrayTypeAdapter *self, ComGoogleGsonGson *context, ComGoogleGsonTypeAdapter *componentTypeAdapter, IOSClass *componentType) {
  (void) ComGoogleGsonTypeAdapter_init(self);
  
#line 58
  self->componentTypeAdapter_ = new_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(
#line 59
  context, componentTypeAdapter, componentType);
  self->componentType_ = componentType;
}


#line 57
ComGoogleGsonInternalBindArrayTypeAdapter *new_ComGoogleGsonInternalBindArrayTypeAdapter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withIOSClass_(ComGoogleGsonGson *context, ComGoogleGsonTypeAdapter *componentTypeAdapter, IOSClass *componentType) {
  ComGoogleGsonInternalBindArrayTypeAdapter *self = [ComGoogleGsonInternalBindArrayTypeAdapter alloc];
  ComGoogleGsonInternalBindArrayTypeAdapter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withIOSClass_(self, context, componentTypeAdapter, componentType);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindArrayTypeAdapter)

@implementation ComGoogleGsonInternalBindArrayTypeAdapter_$1


#line 41
- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken {
  id<JavaLangReflectType> type = [((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken)) getType];
  if (!([JavaLangReflectGenericArrayType_class_() isInstance:type] || ([type isKindOfClass:[IOSClass class]] && [((IOSClass *) nil_chk(((IOSClass *) check_class_cast(type, [IOSClass class])))) isArray]))) {
    return nil;
  }
  
#line 47
  id<JavaLangReflectType> componentType = ComGoogleGsonInternal$Gson$Types_getArrayComponentTypeWithJavaLangReflectType_(type);
  ComGoogleGsonTypeAdapter *componentTypeAdapter = [((ComGoogleGsonGson *) nil_chk(gson)) getAdapterWithComGoogleGsonReflectTypeToken:ComGoogleGsonReflectTypeToken_getWithJavaLangReflectType_(componentType)];
  return new_ComGoogleGsonInternalBindArrayTypeAdapter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withIOSClass_(
#line 50
  gson, componentTypeAdapter, ComGoogleGsonInternal$Gson$Types_getRawTypeWithJavaLangReflectType_(componentType));
}

- (instancetype)init {
  ComGoogleGsonInternalBindArrayTypeAdapter_$1_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:", "create", "Lcom.google.gson.TypeAdapter;", 0x1, NULL, "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;" },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindArrayTypeAdapter_$1 = { 2, "", "com.google.gson.internal.bind", "ArrayTypeAdapter", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonInternalBindArrayTypeAdapter_$1;
}

@end

void ComGoogleGsonInternalBindArrayTypeAdapter_$1_init(ComGoogleGsonInternalBindArrayTypeAdapter_$1 *self) {
  (void) NSObject_init(self);
}

ComGoogleGsonInternalBindArrayTypeAdapter_$1 *new_ComGoogleGsonInternalBindArrayTypeAdapter_$1_init() {
  ComGoogleGsonInternalBindArrayTypeAdapter_$1 *self = [ComGoogleGsonInternalBindArrayTypeAdapter_$1 alloc];
  ComGoogleGsonInternalBindArrayTypeAdapter_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindArrayTypeAdapter_$1)
