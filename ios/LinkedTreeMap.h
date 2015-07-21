//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:libs/gson-2.3.1-sources.jar!com/google/gson/internal/LinkedTreeMap.java
//

#ifndef _ComGoogleGsonInternalLinkedTreeMap_H_
#define _ComGoogleGsonInternalLinkedTreeMap_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "java/util/AbstractMap.h"
#include "java/util/AbstractSet.h"
#include "java/util/Map.h"

@class ComGoogleGsonInternalLinkedTreeMap_Node;
@protocol JavaUtilComparator;
@protocol JavaUtilIterator;
@protocol JavaUtilSet;

/**
 @brief A map of comparable keys to values.
 Unlike <code>TreeMap</code> , this class uses insertion order for iteration order. Comparison order is only used as an optimization for efficient insertion and removal. <p>This implementation was derived from Android 4.1's TreeMap class.
 */
@interface ComGoogleGsonInternalLinkedTreeMap : JavaUtilAbstractMap < JavaIoSerializable > {
 @public
  id<JavaUtilComparator> comparator_;
  ComGoogleGsonInternalLinkedTreeMap_Node *root_;
  jint size__;
  jint modCount_;
  ComGoogleGsonInternalLinkedTreeMap_Node *header_;
}

#pragma mark Public

/**
 @brief Create a natural order, empty tree map whose keys must be mutually comparable and non-null.
 */
- (instancetype)init;

/**
 @brief Create a tree map ordered by <code>comparator</code> .
 This map's keys may only be null if <code>comparator</code> permits.
 @param comparator the comparator to order elements with, or <code>null</code> to use the natural ordering.
 */
- (instancetype)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (void)clear;

- (jboolean)containsKeyWithId:(id)key;

- (id<JavaUtilSet>)entrySet;

- (id)getWithId:(id)key;

- (id<JavaUtilSet>)keySet;

- (id)putWithId:(id)key
         withId:(id)value;

- (id)removeWithId:(id)key;

- (jint)size;

#pragma mark Package-Private

/**
 @brief Returns the node at or adjacent to the given key, creating it if requested.
 @throws ClassCastException if <code>key</code> and the tree's keys aren't mutually comparable.
 */
- (ComGoogleGsonInternalLinkedTreeMap_Node *)findWithId:(id)key
                                            withBoolean:(jboolean)create;

/**
 @brief Returns this map's entry that has the same key and value as <code>entry</code> , or null if this map has no such entry.
 <p>This method uses the comparator for key equality rather than <code>equals</code> . If this map's comparator isn't consistent with equals (such as <code>String.CASE_INSENSITIVE_ORDER</code> ), then <code>remove()</code> and <code>contains()</code> will violate the collections API.
 */
- (ComGoogleGsonInternalLinkedTreeMap_Node *)findByEntryWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry_;

- (ComGoogleGsonInternalLinkedTreeMap_Node *)findByObjectWithId:(id)key;

/**
 @brief Removes <code>node</code> from this tree, rearranging the tree's structure as necessary.
 @param unlink true to also unlink this node from the iteration linked list.
 */
- (void)removeInternalWithComGoogleGsonInternalLinkedTreeMap_Node:(ComGoogleGsonInternalLinkedTreeMap_Node *)node
                                                      withBoolean:(jboolean)unlink;

- (ComGoogleGsonInternalLinkedTreeMap_Node *)removeInternalByKeyWithId:(id)key;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonInternalLinkedTreeMap)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap, comparator_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap, root_, ComGoogleGsonInternalLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap, header_, ComGoogleGsonInternalLinkedTreeMap_Node *)

FOUNDATION_EXPORT void ComGoogleGsonInternalLinkedTreeMap_init(ComGoogleGsonInternalLinkedTreeMap *self);

FOUNDATION_EXPORT ComGoogleGsonInternalLinkedTreeMap *new_ComGoogleGsonInternalLinkedTreeMap_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonInternalLinkedTreeMap_initWithJavaUtilComparator_(ComGoogleGsonInternalLinkedTreeMap *self, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT ComGoogleGsonInternalLinkedTreeMap *new_ComGoogleGsonInternalLinkedTreeMap_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalLinkedTreeMap)

@interface ComGoogleGsonInternalLinkedTreeMap_Node : NSObject < JavaUtilMap_Entry > {
 @public
  ComGoogleGsonInternalLinkedTreeMap_Node *parent_;
  ComGoogleGsonInternalLinkedTreeMap_Node *left_;
  ComGoogleGsonInternalLinkedTreeMap_Node *right_;
  ComGoogleGsonInternalLinkedTreeMap_Node *next_;
  ComGoogleGsonInternalLinkedTreeMap_Node *prev_;
  id key_;
  id value_;
  jint height_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

/**
 @brief Returns the first node in this subtree.
 */
- (ComGoogleGsonInternalLinkedTreeMap_Node *)first;

- (id)getKey;

- (id)getValue;

- (NSUInteger)hash;

/**
 @brief Returns the last node in this subtree.
 */
- (ComGoogleGsonInternalLinkedTreeMap_Node *)last;

- (id)setValueWithId:(id)value;

- (NSString *)description;

#pragma mark Package-Private

/**
 @brief Create the header entry
 */
- (instancetype)init;

/**
 @brief Create a regular entry
 */
- (instancetype)initWithComGoogleGsonInternalLinkedTreeMap_Node:(ComGoogleGsonInternalLinkedTreeMap_Node *)parent
                                                         withId:(id)key
                    withComGoogleGsonInternalLinkedTreeMap_Node:(ComGoogleGsonInternalLinkedTreeMap_Node *)next
                    withComGoogleGsonInternalLinkedTreeMap_Node:(ComGoogleGsonInternalLinkedTreeMap_Node *)prev;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalLinkedTreeMap_Node)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, parent_, ComGoogleGsonInternalLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, left_, ComGoogleGsonInternalLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, right_, ComGoogleGsonInternalLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, next_, ComGoogleGsonInternalLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, prev_, ComGoogleGsonInternalLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, key_, id)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalLinkedTreeMap_Node, value_, id)

FOUNDATION_EXPORT void ComGoogleGsonInternalLinkedTreeMap_Node_init(ComGoogleGsonInternalLinkedTreeMap_Node *self);

FOUNDATION_EXPORT ComGoogleGsonInternalLinkedTreeMap_Node *new_ComGoogleGsonInternalLinkedTreeMap_Node_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComGoogleGsonInternalLinkedTreeMap_Node_initWithComGoogleGsonInternalLinkedTreeMap_Node_withId_withComGoogleGsonInternalLinkedTreeMap_Node_withComGoogleGsonInternalLinkedTreeMap_Node_(ComGoogleGsonInternalLinkedTreeMap_Node *self, ComGoogleGsonInternalLinkedTreeMap_Node *parent, id key, ComGoogleGsonInternalLinkedTreeMap_Node *next, ComGoogleGsonInternalLinkedTreeMap_Node *prev);

FOUNDATION_EXPORT ComGoogleGsonInternalLinkedTreeMap_Node *new_ComGoogleGsonInternalLinkedTreeMap_Node_initWithComGoogleGsonInternalLinkedTreeMap_Node_withId_withComGoogleGsonInternalLinkedTreeMap_Node_withComGoogleGsonInternalLinkedTreeMap_Node_(ComGoogleGsonInternalLinkedTreeMap_Node *parent, id key, ComGoogleGsonInternalLinkedTreeMap_Node *next, ComGoogleGsonInternalLinkedTreeMap_Node *prev) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalLinkedTreeMap_Node)

@interface ComGoogleGsonInternalLinkedTreeMap_EntrySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)o;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithComGoogleGsonInternalLinkedTreeMap:(ComGoogleGsonInternalLinkedTreeMap *)outer$;


@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalLinkedTreeMap_EntrySet)

FOUNDATION_EXPORT void ComGoogleGsonInternalLinkedTreeMap_EntrySet_initWithComGoogleGsonInternalLinkedTreeMap_(ComGoogleGsonInternalLinkedTreeMap_EntrySet *self, ComGoogleGsonInternalLinkedTreeMap *outer$);

FOUNDATION_EXPORT ComGoogleGsonInternalLinkedTreeMap_EntrySet *new_ComGoogleGsonInternalLinkedTreeMap_EntrySet_initWithComGoogleGsonInternalLinkedTreeMap_(ComGoogleGsonInternalLinkedTreeMap *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalLinkedTreeMap_EntrySet)

@interface ComGoogleGsonInternalLinkedTreeMap_KeySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)key;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithComGoogleGsonInternalLinkedTreeMap:(ComGoogleGsonInternalLinkedTreeMap *)outer$;


@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalLinkedTreeMap_KeySet)

FOUNDATION_EXPORT void ComGoogleGsonInternalLinkedTreeMap_KeySet_initWithComGoogleGsonInternalLinkedTreeMap_(ComGoogleGsonInternalLinkedTreeMap_KeySet *self, ComGoogleGsonInternalLinkedTreeMap *outer$);

FOUNDATION_EXPORT ComGoogleGsonInternalLinkedTreeMap_KeySet *new_ComGoogleGsonInternalLinkedTreeMap_KeySet_initWithComGoogleGsonInternalLinkedTreeMap_(ComGoogleGsonInternalLinkedTreeMap *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalLinkedTreeMap_KeySet)

#endif // _ComGoogleGsonInternalLinkedTreeMap_H_