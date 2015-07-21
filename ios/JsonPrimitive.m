//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonPrimitive.java
//


#line 1 "jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/JsonPrimitive.java"

#include "$Gson$Preconditions.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonPrimitive.h"
#include "LazilyParsedNumber.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/math/BigDecimal.h"
#include "java/math/BigInteger.h"

@interface ComGoogleGsonJsonPrimitive () {
 @public
  id value_;
}

+ (jboolean)isPrimitiveOrStringWithId:(id)target;

/**
 @brief Returns true if the specified number is an integral type (Long, Integer, Short, Byte, BigInteger)
 */
+ (jboolean)isIntegralWithComGoogleGsonJsonPrimitive:(ComGoogleGsonJsonPrimitive *)primitive;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonJsonPrimitive, value_, id)

static IOSObjectArray *ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleGsonJsonPrimitive, PRIMITIVE_TYPES_, IOSObjectArray *)

__attribute__((unused)) static jboolean ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(id target);

__attribute__((unused)) static jboolean ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(ComGoogleGsonJsonPrimitive *primitive);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonJsonPrimitive)


#line 33
@implementation ComGoogleGsonJsonPrimitive


#line 46
- (instancetype)initWithJavaLangBoolean:(JavaLangBoolean *)bool_ {
  ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(self, bool_);
  return self;
}


#line 55
- (instancetype)initWithNSNumber:(NSNumber *)number {
  ComGoogleGsonJsonPrimitive_initWithNSNumber_(self, number);
  return self;
}


#line 64
- (instancetype)initWithNSString:(NSString *)string {
  ComGoogleGsonJsonPrimitive_initWithNSString_(self, string);
  return self;
}


#line 74
- (instancetype)initWithJavaLangCharacter:(JavaLangCharacter *)c {
  ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(self, c);
  return self;
}


#line 84
- (instancetype)initWithId:(id)primitive {
  ComGoogleGsonJsonPrimitive_initWithId_(self, primitive);
  return self;
}

- (ComGoogleGsonJsonPrimitive *)deepCopy {
  return self;
}

- (void)setValueWithId:(id)primitive {
  if ([primitive isKindOfClass:[JavaLangCharacter class]]) {
    
#line 97
    jchar c = [((JavaLangCharacter *) nil_chk(((JavaLangCharacter *) check_class_cast(primitive, [JavaLangCharacter class])))) charValue];
    self->value_ = NSString_valueOfChar_(c);
  }
  else {
    
#line 100
    ComGoogleGsonInternal$Gson$Preconditions_checkArgumentWithBoolean_([primitive isKindOfClass:[NSNumber class]] || ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(
#line 101
    primitive));
    self->value_ = primitive;
  }
}


#line 111
- (jboolean)isBoolean {
  return [value_ isKindOfClass:[JavaLangBoolean class]];
}


#line 121
- (JavaLangBoolean *)getAsBooleanWrapper {
  return (JavaLangBoolean *) check_class_cast(value_, [JavaLangBoolean class]);
}


#line 131
- (jboolean)getAsBoolean {
  if ([self isBoolean]) {
    return [((JavaLangBoolean *) nil_chk([self getAsBooleanWrapper])) booleanValue];
  }
  else {
    return JavaLangBoolean_parseBooleanWithNSString_([self getAsString]);
  }
}


#line 145
- (jboolean)isNumber {
  return [value_ isKindOfClass:[NSNumber class]];
}


#line 156
- (NSNumber *)getAsNumber {
  return [value_ isKindOfClass:[NSString class]] ? new_ComGoogleGsonInternalLazilyParsedNumber_initWithNSString_((NSString *) check_class_cast(value_, [NSString class])) : (NSNumber *) check_class_cast(value_, [NSNumber class]);
}


#line 165
- (jboolean)isString {
  return [value_ isKindOfClass:[NSString class]];
}


#line 175
- (NSString *)getAsString {
  if ([self isNumber]) {
    return [((NSNumber *) nil_chk([self getAsNumber])) description];
  }
  else
#line 178
  if ([self isBoolean]) {
    return [((JavaLangBoolean *) nil_chk([self getAsBooleanWrapper])) description];
  }
  else {
    
#line 181
    return (NSString *) check_class_cast(value_, [NSString class]);
  }
}


#line 192
- (jdouble)getAsDouble {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) doubleValue] : JavaLangDouble_parseDoubleWithNSString_([self getAsString]);
}


#line 203
- (JavaMathBigDecimal *)getAsBigDecimal {
  return [value_ isKindOfClass:[JavaMathBigDecimal class]] ? (JavaMathBigDecimal *) check_class_cast(value_, [JavaMathBigDecimal class]) : new_JavaMathBigDecimal_initWithNSString_([nil_chk(value_) description]);
}


#line 214
- (JavaMathBigInteger *)getAsBigInteger {
  return [value_ isKindOfClass:[JavaMathBigInteger class]] ?
#line 216
  (JavaMathBigInteger *) check_class_cast(value_, [JavaMathBigInteger class]) : new_JavaMathBigInteger_initWithNSString_([nil_chk(value_) description]);
}


#line 226
- (jfloat)getAsFloat {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) floatValue] : JavaLangFloat_parseFloatWithNSString_([self getAsString]);
}


#line 237
- (jlong)getAsLong {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) longLongValue] : JavaLangLong_parseLongWithNSString_([self getAsString]);
}


#line 248
- (jshort)getAsShort {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) shortValue] : JavaLangShort_parseShortWithNSString_([self getAsString]);
}


#line 259
- (jint)getAsInt {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) intValue] : JavaLangInteger_parseIntWithNSString_([self getAsString]);
}


#line 264
- (jbyte)getAsByte {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) charValue] : JavaLangByte_parseByteWithNSString_([self getAsString]);
}


#line 269
- (jchar)getAsCharacter {
  return [((NSString *) nil_chk([self getAsString])) charAtWithInt:0];
}

+ (jboolean)isPrimitiveOrStringWithId:(id)target {
  return ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(target);
}


#line 288
- (NSUInteger)hash {
  if (value_ == nil) {
    return 31;
  }
  
#line 293
  if (ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(self)) {
    jlong value = [((NSNumber *) nil_chk([self getAsNumber])) longLongValue];
    return (jint) (value ^ (URShift64(value, 32)));
  }
  if ([value_ isKindOfClass:[NSNumber class]]) {
    jlong value = JavaLangDouble_doubleToLongBitsWithDouble_([((NSNumber *) nil_chk([self getAsNumber])) doubleValue]);
    return (jint) (value ^ (URShift64(value, 32)));
  }
  return ((jint) [nil_chk(value_) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if (obj == nil || [self getClass] != [obj getClass]) {
    return NO;
  }
  ComGoogleGsonJsonPrimitive *other = (ComGoogleGsonJsonPrimitive *) check_class_cast(obj, [ComGoogleGsonJsonPrimitive class]);
  if (value_ == nil) {
    return ((ComGoogleGsonJsonPrimitive *) nil_chk(other))->value_ == nil;
  }
  if (ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(self) && ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(other)) {
    return [((NSNumber *) nil_chk([self getAsNumber])) longLongValue] == [((NSNumber *) nil_chk([((ComGoogleGsonJsonPrimitive *) nil_chk(other)) getAsNumber])) longLongValue];
  }
  if ([value_ isKindOfClass:[NSNumber class]] && [((ComGoogleGsonJsonPrimitive *) nil_chk(other))->value_ isKindOfClass:[NSNumber class]]) {
    jdouble a = [((NSNumber *) nil_chk([self getAsNumber])) doubleValue];
    
#line 323
    jdouble b = [((NSNumber *) nil_chk([other getAsNumber])) doubleValue];
    return a == b || (JavaLangDouble_isNaNWithDouble_(a) && JavaLangDouble_isNaNWithDouble_(b));
  }
  return [nil_chk(value_) isEqual:((ComGoogleGsonJsonPrimitive *) nil_chk(other))->value_];
}


#line 333
+ (jboolean)isIntegralWithComGoogleGsonJsonPrimitive:(ComGoogleGsonJsonPrimitive *)primitive {
  return ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(primitive);
}

+ (void)initialize {
  if (self == [ComGoogleGsonJsonPrimitive class]) {
    ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES_ = [IOSObjectArray newArrayWithObjects:(id[]){
#line 35
      [IOSClass intClass], [IOSClass longClass], [IOSClass shortClass],
#line 36
      [IOSClass floatClass], [IOSClass doubleClass], [IOSClass byteClass], [IOSClass booleanClass], [IOSClass charClass], JavaLangInteger_class_(), JavaLangLong_class_(),
#line 37
      JavaLangShort_class_(), JavaLangFloat_class_(), JavaLangDouble_class_(), JavaLangByte_class_(), JavaLangBoolean_class_(), JavaLangCharacter_class_() } count:16 type:IOSClass_class_()];
      J2OBJC_SET_INITIALIZED(ComGoogleGsonJsonPrimitive)
    }
  }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangBoolean:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithNSNumber:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithJavaLangCharacter:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithId:", "JsonPrimitive", NULL, 0x0, NULL, NULL },
    { "deepCopy", NULL, "Lcom.google.gson.JsonPrimitive;", 0x0, NULL, NULL },
    { "setValueWithId:", "setValue", "V", 0x0, NULL, NULL },
    { "isBoolean", NULL, "Z", 0x1, NULL, NULL },
    { "getAsBooleanWrapper", NULL, "Ljava.lang.Boolean;", 0x0, NULL, NULL },
    { "getAsBoolean", NULL, "Z", 0x1, NULL, NULL },
    { "isNumber", NULL, "Z", 0x1, NULL, NULL },
    { "getAsNumber", NULL, "Ljava.lang.Number;", 0x1, NULL, NULL },
    { "isString", NULL, "Z", 0x1, NULL, NULL },
    { "getAsString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsDouble", NULL, "D", 0x1, NULL, NULL },
    { "getAsBigDecimal", NULL, "Ljava.math.BigDecimal;", 0x1, NULL, NULL },
    { "getAsBigInteger", NULL, "Ljava.math.BigInteger;", 0x1, NULL, NULL },
    { "getAsFloat", NULL, "F", 0x1, NULL, NULL },
    { "getAsLong", NULL, "J", 0x1, NULL, NULL },
    { "getAsShort", NULL, "S", 0x1, NULL, NULL },
    { "getAsInt", NULL, "I", 0x1, NULL, NULL },
    { "getAsByte", NULL, "B", 0x1, NULL, NULL },
    { "getAsCharacter", NULL, "C", 0x1, NULL, NULL },
    { "isPrimitiveOrStringWithId:", "isPrimitiveOrString", "Z", 0xa, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "isIntegralWithComGoogleGsonJsonPrimitive:", "isIntegral", "Z", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PRIMITIVE_TYPES_", NULL, 0x1a, "[Ljava.lang.Class;", &ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES_, "[Ljava/lang/Class<*>;",  },
    { "value_", NULL, 0x2, "Ljava.lang.Object;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonPrimitive = { 2, "JsonPrimitive", "com.google.gson", NULL, 0x11, 27, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonJsonPrimitive;
}

@end


#line 46
void ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(ComGoogleGsonJsonPrimitive *self, JavaLangBoolean *bool_) {
  (void) ComGoogleGsonJsonElement_init(self);
  
#line 47
  [self setValueWithId:bool_];
}


#line 46
ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(self, bool_);
  return self;
}


#line 55
void ComGoogleGsonJsonPrimitive_initWithNSNumber_(ComGoogleGsonJsonPrimitive *self, NSNumber *number) {
  (void) ComGoogleGsonJsonElement_init(self);
  
#line 56
  [self setValueWithId:number];
}


#line 55
ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSNumber_(NSNumber *number) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithNSNumber_(self, number);
  return self;
}


#line 64
void ComGoogleGsonJsonPrimitive_initWithNSString_(ComGoogleGsonJsonPrimitive *self, NSString *string) {
  (void) ComGoogleGsonJsonElement_init(self);
  
#line 65
  [self setValueWithId:string];
}


#line 64
ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString *string) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithNSString_(self, string);
  return self;
}


#line 74
void ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(ComGoogleGsonJsonPrimitive *self, JavaLangCharacter *c) {
  (void) ComGoogleGsonJsonElement_init(self);
  
#line 75
  [self setValueWithId:c];
}


#line 74
ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(self, c);
  return self;
}


#line 84
void ComGoogleGsonJsonPrimitive_initWithId_(ComGoogleGsonJsonPrimitive *self, id primitive) {
  (void) ComGoogleGsonJsonElement_init(self);
  
#line 85
  [self setValueWithId:primitive];
}


#line 84
ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithId_(id primitive) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithId_(self, primitive);
  return self;
}


#line 273
jboolean ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(id target) {
  ComGoogleGsonJsonPrimitive_initialize();
  
#line 274
  if ([target isKindOfClass:[NSString class]]) {
    return YES;
  }
  
#line 278
  IOSClass *classOfPrimitive = [nil_chk(target) getClass];
  {
    IOSObjectArray *a__ =
#line 279
    ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES_;
    IOSClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    IOSClass * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSClass *standardPrimitive = *b__++;
      
#line 280
      if ([((IOSClass *) nil_chk(standardPrimitive)) isAssignableFrom:classOfPrimitive]) {
        return YES;
      }
    }
  }
  
#line 284
  return NO;
}


#line 333
jboolean ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(ComGoogleGsonJsonPrimitive *primitive) {
  ComGoogleGsonJsonPrimitive_initialize();
  
#line 334
  if ([((ComGoogleGsonJsonPrimitive *) nil_chk(primitive))->value_ isKindOfClass:[NSNumber class]]) {
    NSNumber *number = (NSNumber *) check_class_cast(primitive->value_, [NSNumber class]);
    return [number isKindOfClass:[JavaMathBigInteger class]] || [number isKindOfClass:[JavaLangLong class]] || [number isKindOfClass:[JavaLangInteger class]] ||
#line 337
    [number isKindOfClass:[JavaLangShort class]] || [number isKindOfClass:[JavaLangByte class]];
  }
  return NO;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonPrimitive)
