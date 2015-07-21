//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/TypeAdapter.java
//

#ifndef _ComGoogleGsonTypeAdapter_H_
#define _ComGoogleGsonTypeAdapter_H_

#include "J2ObjC_header.h"

@class ComGoogleGsonJsonElement;
@class ComGoogleGsonStreamJsonReader;
@class ComGoogleGsonStreamJsonWriter;
@class JavaIoReader;
@class JavaIoWriter;

/**
 @brief Converts Java objects to and from JSON.
 <h3>Defining a type's JSON form</h3> By default Gson converts application classes to JSON using its built-in type adapters. If Gson's default JSON conversion isn't appropriate for a type, extend this class to customize the conversion. Here's an example of a type adapter for an (X,Y) coordinate point: <pre> <code></code> public class PointAdapter extends TypeAdapter<Point> public Point read(JsonReader reader) throws IOException { if (reader.peek() == JsonToken.NULL) { reader.nextNull(); return null; } String xy = reader.nextString(); String[] parts = xy.split(","); int x = Integer.parseInt(parts[0]); int y = Integer.parseInt(parts[1]); return new Point(x, y); } public void write(JsonWriter writer, Point value) throws IOException { if (value == null) { writer.nullValue(); return; } String xy = value.getX() + "," + value.getY(); writer.value(xy); } }}</pre> With this type adapter installed, Gson will convert <code>Points</code> to JSON as strings like <code>"5,8"</code> rather than objects like <code></code>  "x":5,"y":8}}. In this case the type adapter binds a rich Java class to a compact JSON value. <p>The #read(JsonReader) read() method must read exactly one value and #write(JsonWriter,Object) write() must write exactly one value. For primitive types this is means readers should make exactly one call to <code>nextBoolean()</code> , <code>nextDouble()</code> , <code>nextInt()</code> , <code>nextLong()</code> , <code>nextString()</code> or <code>nextNull()</code> . Writers should make exactly one call to one of <code>value()</code> or <code>nullValue()</code>. For arrays, type adapters should start with a call to <code>beginArray()</code> , convert all elements, and finish with a call to <code>endArray()</code> . For objects, they should start with <code>beginObject()</code> , convert the object, and finish with <code>endObject()</code> . Failing to convert a value or converting too many values may cause the application to crash. <p>Type adapters should be prepared to read null from the stream and write it to the stream. Alternatively, they should use #nullSafe() method while registering the type adapter with Gson. If your <code>Gson</code> instance has been configured to GsonBuilder#serializeNulls() , these nulls will be written to the final document. Otherwise the value (and the corresponding name when writing to a JSON object) will be omitted automatically. In either case your type adapter must handle null. <p>To use a custom type adapter with Gson, you must <i>register</i> it with a GsonBuilder : <pre> <code>GsonBuilder builder = new GsonBuilder(); builder.registerTypeAdapter(Point.class, new PointAdapter()); // if PointAdapter didn't check for nulls in its read/write methods, you should instead use // builder.registerTypeAdapter(Point.class, new PointAdapter().nullSafe()); ... Gson gson = builder.create();</code> </pre>
 @since 2.1
 */
@interface ComGoogleGsonTypeAdapter : NSObject

#pragma mark Public

- (instancetype)init;

/**
 @brief Converts the JSON document in <code>in</code> to a Java object.
 Unlike Gson's similar Gson#fromJson(java.io.Reader,Class) fromJson method, this read is strict. Create a JsonReader#setLenient(boolean) lenient <code>JsonReader</code> and call #read(JsonReader) for lenient reading.
 @return the converted Java object. May be null.
 @since 2.2
 */
- (id)fromJsonWithJavaIoReader:(JavaIoReader *)inArg;

/**
 @brief Converts the JSON document in <code>json</code> to a Java object.
 Unlike Gson's similar Gson#fromJson(String,Class) fromJson method, this read is strict. Create a JsonReader#setLenient(boolean) lenient  <code>JsonReader</code> and call #read(JsonReader) for lenient reading.
 @return the converted Java object. May be null.
 @since 2.2
 */
- (id)fromJsonWithNSString:(NSString *)json;

/**
 @brief Converts <code>jsonTree</code> to a Java object.
 @param jsonTree the Java object to convert. May be JsonNull .
 @since 2.2
 */
- (id)fromJsonTreeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)jsonTree;

/**
 @brief This wrapper method is used to make a type adapter null tolerant.
 In general, a type adapter is required to handle nulls in write and read methods. Here is how this is typically done:<br> <pre> <code>Gson gson = new GsonBuilder().registerTypeAdapter(Foo.class,</code> new TypeAdapter<Foo>() public Foo read(JsonReader in) throws IOException { if (in.peek() == JsonToken.NULL) { in.nextNull(); return null; } // read a Foo from in and return it } public void write(JsonWriter out, Foo src) throws IOException { if (src == null) { out.nullValue(); return; } // write src as JSON to out } }).create(); }</pre> You can avoid this boilerplate handling of nulls by wrapping your type adapter with this method. Here is how we will rewrite the above example: <pre> <code>Gson gson = new GsonBuilder().registerTypeAdapter(Foo.class,</code> new TypeAdapter<Foo>() public Foo read(JsonReader in) throws IOException { // read a Foo from in and return it } public void write(JsonWriter out, Foo src) throws IOException { // write src as JSON to out } }.nullSafe()).create(); }</pre> Note that we didn't need to check for nulls in our type adapter after we used nullSafe.
 */
- (ComGoogleGsonTypeAdapter *)nullSafe;

/**
 @brief Reads one JSON value (an array, object, string, number, boolean or null) and converts it to a Java object.
 Returns the converted object.
 @return the converted Java object. May be null.
 */
- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

/**
 @brief Converts <code>value</code> to a JSON document.
 Unlike Gson's similar Gson#toJson(Object) toJson method, this write is strict. Create a JsonWriter#setLenient(boolean) lenient  <code>JsonWriter</code> and call #write(com.google.gson.stream.JsonWriter,Object) for lenient writing.
 @param value the Java object to convert. May be null.
 @since 2.2
 */
- (NSString *)toJsonWithId:(id)value;

/**
 @brief Converts <code>value</code> to a JSON document and writes it to <code>out</code> .
 Unlike Gson's similar Gson#toJson(JsonElement,Appendable) toJson method, this write is strict. Create a JsonWriter#setLenient(boolean) lenient  <code>JsonWriter</code> and call #write(com.google.gson.stream.JsonWriter,Object) for lenient writing.
 @param value the Java object to convert. May be null.
 @since 2.2
 */
- (void)toJsonWithJavaIoWriter:(JavaIoWriter *)outArg
                        withId:(id)value;

/**
 @brief Converts <code>value</code> to a JSON tree.
 @param value the Java object to convert. May be null.
 @return the converted JSON tree. May be JsonNull .
 @since 2.2
 */
- (ComGoogleGsonJsonElement *)toJsonTreeWithId:(id)value;

/**
 @brief Writes one JSON value (an array, object, string, number, boolean or null) for <code>value</code> .
 @param value the Java object to write. May be null.
 */
- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonTypeAdapter)

FOUNDATION_EXPORT void ComGoogleGsonTypeAdapter_init(ComGoogleGsonTypeAdapter *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonTypeAdapter)

#endif // _ComGoogleGsonTypeAdapter_H_
