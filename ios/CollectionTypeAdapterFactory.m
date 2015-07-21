//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/CollectionTypeAdapterFactory.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/bind/CollectionTypeAdapterFactory.java"

#include "$Gson$Types.h"
#include "CollectionTypeAdapterFactory.h"
#include "ConstructorConstructor.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "ObjectConstructor.h"
#include "TypeAdapter.h"
#include "TypeAdapterRuntimeTypeWrapper.h"
#include "TypeToken.h"
#include "java/io/IOException.h"
#include "java/lang/reflect/Type.h"
#include "java/util/Collection.h"

@interface ComGoogleGsonInternalBindCollectionTypeAdapterFactory () {
 @public
  ComGoogleGsonInternalConstructorConstructor *constructorConstructor_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory, constructorConstructor_, ComGoogleGsonInternalConstructorConstructor *)

@interface ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter : ComGoogleGsonTypeAdapter {
 @public
  ComGoogleGsonTypeAdapter *elementTypeAdapter_;
  id<ComGoogleGsonInternalObjectConstructor> constructor_;
}

- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)context
                  withJavaLangReflectType:(id<JavaLangReflectType>)elementType
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)elementTypeAdapter
withComGoogleGsonInternalObjectConstructor:(id<ComGoogleGsonInternalObjectConstructor>)constructor;

- (id<JavaUtilCollection>)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id<JavaUtilCollection>)collection;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter, elementTypeAdapter_, ComGoogleGsonTypeAdapter *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter, constructor_, id<ComGoogleGsonInternalObjectConstructor>)

__attribute__((unused)) static void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *self, ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor);

__attribute__((unused)) static ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter)


#line 36
@implementation ComGoogleGsonInternalBindCollectionTypeAdapterFactory


#line 39
- (instancetype)initWithComGoogleGsonInternalConstructorConstructor:(ComGoogleGsonInternalConstructorConstructor *)constructorConstructor {
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(self, constructorConstructor);
  return self;
}


#line 43
- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken {
  id<JavaLangReflectType> type = [((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken)) getType];
  
#line 46
  IOSClass *rawType = [typeToken getRawType];
  if (![JavaUtilCollection_class_() isAssignableFrom:rawType]) {
    return nil;
  }
  
#line 51
  id<JavaLangReflectType> elementType = ComGoogleGsonInternal$Gson$Types_getCollectionElementTypeWithJavaLangReflectType_withIOSClass_(type, rawType);
  ComGoogleGsonTypeAdapter *elementTypeAdapter = [((ComGoogleGsonGson *) nil_chk(gson)) getAdapterWithComGoogleGsonReflectTypeToken:ComGoogleGsonReflectTypeToken_getWithJavaLangReflectType_(elementType)];
  id<ComGoogleGsonInternalObjectConstructor> constructor = [((ComGoogleGsonInternalConstructorConstructor *) nil_chk(constructorConstructor_)) getWithComGoogleGsonReflectTypeToken:typeToken];
  
#line 55
  ComGoogleGsonTypeAdapter *
#line 56
  result = new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(gson, elementType, elementTypeAdapter, constructor);
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonInternalConstructorConstructor:", "CollectionTypeAdapterFactory", NULL, 0x1, NULL, NULL },
    { "createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:", "create", "Lcom.google.gson.TypeAdapter;", 0x1, NULL, "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "constructorConstructor_", NULL, 0x12, "Lcom.google.gson.internal.ConstructorConstructor;", NULL, NULL,  },
  };
  static const char *inner_classes[] = {"Lcom.google.gson.internal.bind.CollectionTypeAdapterFactory$Adapter;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindCollectionTypeAdapterFactory = { 2, "CollectionTypeAdapterFactory", "com.google.gson.internal.bind", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ComGoogleGsonInternalBindCollectionTypeAdapterFactory;
}

@end


#line 39
void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory *self, ComGoogleGsonInternalConstructorConstructor *constructorConstructor) {
  (void) NSObject_init(self);
  
#line 40
  self->constructorConstructor_ = constructorConstructor;
}


#line 39
ComGoogleGsonInternalBindCollectionTypeAdapterFactory *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor) {
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory *self = [ComGoogleGsonInternalBindCollectionTypeAdapterFactory alloc];
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(self, constructorConstructor);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindCollectionTypeAdapterFactory)


#line 60
@implementation ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter


#line 64
- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)context
                  withJavaLangReflectType:(id<JavaLangReflectType>)elementType
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)elementTypeAdapter
withComGoogleGsonInternalObjectConstructor:(id<ComGoogleGsonInternalObjectConstructor>)constructor {
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(self, context, elementType, elementTypeAdapter, constructor);
  return self;
}

- (id<JavaUtilCollection>)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  if ([((ComGoogleGsonStreamJsonReader *) nil_chk(inArg)) peek] == ComGoogleGsonStreamJsonTokenEnum_get_NULL()) {
    [inArg nextNull];
    return nil;
  }
  
#line 78
  id<JavaUtilCollection> collection = [((id<ComGoogleGsonInternalObjectConstructor>) nil_chk(constructor_)) construct];
  [inArg beginArray];
  while ([inArg hasNext]) {
    id instance = [((ComGoogleGsonTypeAdapter *) nil_chk(elementTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
    [((id<JavaUtilCollection>) nil_chk(collection)) addWithId:instance];
  }
  [inArg endArray];
  return collection;
}


#line 88
- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id<JavaUtilCollection>)collection {
  if (collection == nil) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  
#line 94
  (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) beginArray];
  for (id __strong element in nil_chk(collection)) {
    [((ComGoogleGsonTypeAdapter *) nil_chk(elementTypeAdapter_)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:element];
  }
  (void) [outArg endArray];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonGson:withJavaLangReflectType:withComGoogleGsonTypeAdapter:withComGoogleGsonInternalObjectConstructor:", "Adapter", NULL, 0x1, NULL, NULL },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "Ljava.util.Collection;", 0x1, "Ljava.io.IOException;", NULL },
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "elementTypeAdapter_", NULL, 0x12, "Lcom.google.gson.TypeAdapter;", NULL, "Lcom/google/gson/TypeAdapter<TE;>;",  },
    { "constructor_", NULL, 0x12, "Lcom.google.gson.internal.ObjectConstructor;", NULL, "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;",  },
  };
  static const char *superclass_type_args[] = {"Ljava.util.Collection;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter = { 2, "Adapter", "com.google.gson.internal.bind", "CollectionTypeAdapterFactory", 0x1a, 3, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/util/Collection<TE;>;>;" };
  return &_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter;
}

@end


#line 64
void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *self, ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  (void) ComGoogleGsonTypeAdapter_init(self);
  
#line 67
  self->elementTypeAdapter_ = new_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(
#line 68
  context, elementTypeAdapter, elementType);
  self->constructor_ = constructor;
}


#line 64
ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *self = [ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter alloc];
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(self, context, elementType, elementTypeAdapter, constructor);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter)
