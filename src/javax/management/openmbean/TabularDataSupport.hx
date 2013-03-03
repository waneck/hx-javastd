package javax.management.openmbean;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
//// java import
////
extern class TabularDataSupport implements javax.management.openmbean.TabularData implements java.util.Map<Dynamic, Dynamic> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Creates an empty <tt>TabularDataSupport</tt> instance whose open-type is <var>tabularType</var>,
	* and whose underlying <tt>HashMap</tt> has a default initial capacity (101) and default load factor (0.75).
	* <p>
	* This constructor simply calls <tt>this(tabularType, 101, 0.75f);</tt>
	*
	* @param  tabularType               the <i>tabular type</i> describing this <tt>TabularData</tt> instance;
	*                                   cannot be null.
	*
	* @throws IllegalArgumentException  if the tabular type is null.
	*/
	@:overload @:public public function new(tabularType : javax.management.openmbean.TabularType) : Void;
	
	/**
	* Creates an empty <tt>TabularDataSupport</tt> instance whose open-type is <var>tabularType</var>,
	* and whose underlying <tt>HashMap</tt> has the specified initial capacity and load factor.
	*
	* @param  tabularType               the <i>tabular type</i> describing this <tt>TabularData</tt> instance;
	*                           cannot be null.
	*
	* @param  initialCapacity   the initial capacity of the HashMap.
	*
	* @param  loadFactor        the load factor of the HashMap
	*
	* @throws IllegalArgumentException  if the initial capacity is less than zero,
	*                                   or the load factor is nonpositive,
	*                                   or the tabular type is null.
	*/
	@:overload @:public public function new(tabularType : javax.management.openmbean.TabularType, initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Returns the <i>tabular type</i> describing this <tt>TabularData</tt> instance.
	*/
	@:overload @:public public function getTabularType() : javax.management.openmbean.TabularType;
	
	/**
	* Calculates the index that would be used in this <tt>TabularData</tt> instance to refer to the specified
	* composite data <var>value</var> parameter if it were added to this instance.
	* This method checks for the type validity of the specified <var>value</var>,
	* but does not check if the calculated index is already used to refer to a value in this <tt>TabularData</tt> instance.
	*
	* @param  value                      the composite data value whose index in this
	*                                    <tt>TabularData</tt> instance is to be calculated;
	*                                    must be of the same composite type as this instance's row type;
	*                                    must not be null.
	*
	* @return the index that the specified <var>value</var> would have in this <tt>TabularData</tt> instance.
	*
	* @throws NullPointerException       if <var>value</var> is <tt>null</tt>.
	*
	* @throws InvalidOpenTypeException   if <var>value</var> does not conform to this <tt>TabularData</tt> instance's
	*                                    row type definition.
	*/
	@:overload @:public public function calculateIndex(value : javax.management.openmbean.CompositeData) : java.NativeArray<Dynamic>;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>TabularData</tt> instance contains a <tt>CompositeData</tt> value
	* (ie a row) whose index is the specified <var>key</var>. If <var>key</var> cannot be cast to a one dimension array
	* of Object instances, this method simply returns <tt>false</tt>; otherwise it returns the the result of the call to
	* <tt>this.containsKey((Object[]) key)</tt>.
	*
	* @param  key  the index value whose presence in this <tt>TabularData</tt> instance is to be tested.
	*
	* @return  <tt>true</tt> if this <tt>TabularData</tt> indexes a row value with the specified key.
	*/
	@:overload @:public public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>TabularData</tt> instance contains a <tt>CompositeData</tt> value
	* (ie a row) whose index is the specified <var>key</var>. If <var>key</var> is <tt>null</tt> or does not conform to
	* this <tt>TabularData</tt> instance's <tt>TabularType</tt> definition, this method simply returns <tt>false</tt>.
	*
	* @param  key  the index value whose presence in this <tt>TabularData</tt> instance is to be tested.
	*
	* @return  <tt>true</tt> if this <tt>TabularData</tt> indexes a row value with the specified key.
	*/
	@:overload @:public public function containsKey(key : java.NativeArray<Dynamic>) : Bool;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>TabularData</tt> instance contains the specified
	* <tt>CompositeData</tt> value. If <var>value</var> is <tt>null</tt> or does not conform to
	* this <tt>TabularData</tt> instance's row type definition, this method simply returns <tt>false</tt>.
	*
	* @param  value  the row value whose presence in this <tt>TabularData</tt> instance is to be tested.
	*
	* @return  <tt>true</tt> if this <tt>TabularData</tt> instance contains the specified row value.
	*/
	@:overload @:public public function containsValue(value : javax.management.openmbean.CompositeData) : Bool;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>TabularData</tt> instance contains the specified
	* value.
	*
	* @param  value  the row value whose presence in this <tt>TabularData</tt> instance is to be tested.
	*
	* @return  <tt>true</tt> if this <tt>TabularData</tt> instance contains the specified row value.
	*/
	@:overload @:public public function containsValue(value : Dynamic) : Bool;
	
	/**
	* This method simply calls <tt>get((Object[]) key)</tt>.
	*
	* @throws NullPointerException  if the <var>key</var> is <tt>null</tt>
	* @throws ClassCastException    if the <var>key</var> is not of the type <tt>Object[]</tt>
	* @throws InvalidKeyException   if the <var>key</var> does not conform to this <tt>TabularData</tt> instance's
	*                               <tt>TabularType</tt> definition
	*/
	@:overload @:public public function get(key : Dynamic) : Dynamic;
	
	/**
	* Returns the <tt>CompositeData</tt> value whose index is
	* <var>key</var>, or <tt>null</tt> if there is no value mapping
	* to <var>key</var>, in this <tt>TabularData</tt> instance.
	*
	* @param key the index of the value to get in this
	* <tt>TabularData</tt> instance; * must be valid with this
	* <tt>TabularData</tt> instance's row type definition; * must not
	* be null.
	*
	* @return the value corresponding to <var>key</var>.
	*
	* @throws NullPointerException  if the <var>key</var> is <tt>null</tt>
	* @throws InvalidKeyException   if the <var>key</var> does not conform to this <tt>TabularData</tt> instance's
	*                               <tt>TabularType</tt> type definition.
	*/
	@:overload @:public public function get(key : java.NativeArray<Dynamic>) : javax.management.openmbean.CompositeData;
	
	/**
	* This method simply calls <tt>put((CompositeData) value)</tt> and
	* therefore ignores its <var>key</var> parameter which can be <tt>null</tt>.
	*
	* @param key an ignored parameter.
	* @param value the {@link CompositeData} to put.
	*
	* @return the value which is put
	*
	* @throws NullPointerException  if the <var>value</var> is <tt>null</tt>
	* @throws ClassCastException if the <var>value</var> is not of
	* the type <tt>CompositeData</tt>
	* @throws InvalidOpenTypeException if the <var>value</var> does
	* not conform to this <tt>TabularData</tt> instance's
	* <tt>TabularType</tt> definition
	* @throws KeyAlreadyExistsException if the key for the
	* <var>value</var> parameter, calculated according to this
	* <tt>TabularData</tt> instance's <tt>TabularType</tt> definition
	* already maps to an existing value
	*/
	@:overload @:public public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	@:overload @:public public function put(value : javax.management.openmbean.CompositeData) : Void;
	
	/**
	* This method simply calls <tt>remove((Object[]) key)</tt>.
	*
	* @param key an <tt>Object[]</tt> representing the key to remove.
	*
	* @return previous value associated with specified key, or <tt>null</tt>
	*         if there was no mapping for key.
	*
	* @throws NullPointerException  if the <var>key</var> is <tt>null</tt>
	* @throws ClassCastException    if the <var>key</var> is not of the type <tt>Object[]</tt>
	* @throws InvalidKeyException   if the <var>key</var> does not conform to this <tt>TabularData</tt> instance's
	*                               <tt>TabularType</tt> definition
	*/
	@:overload @:public public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Removes the <tt>CompositeData</tt> value whose index is <var>key</var> from this <tt>TabularData</tt> instance,
	* and returns the removed value, or returns <tt>null</tt> if there is no value whose index is <var>key</var>.
	*
	* @param  key  the index of the value to get in this <tt>TabularData</tt> instance;
	*              must be valid with this <tt>TabularData</tt> instance's row type definition;
	*              must not be null.
	*
	* @return previous value associated with specified key, or <tt>null</tt>
	*         if there was no mapping for key.
	*
	* @throws NullPointerException  if the <var>key</var> is <tt>null</tt>
	* @throws InvalidKeyException   if the <var>key</var> does not conform to this <tt>TabularData</tt> instance's
	*                               <tt>TabularType</tt> definition
	*/
	@:overload @:public public function remove(key : java.NativeArray<Dynamic>) : javax.management.openmbean.CompositeData;
	
	/**
	* Add all the values contained in the specified map <var>t</var>
	* to this <tt>TabularData</tt> instance.  This method converts
	* the collection of values contained in this map into an array of
	* <tt>CompositeData</tt> values, if possible, and then call the
	* method <tt>putAll(CompositeData[])</tt>. Note that the keys
	* used in the specified map <var>t</var> are ignored. This method
	* allows, for example to add the content of another
	* <tt>TabularData</tt> instance with the same row type (but
	* possibly different index names) into this instance.
	*
	* @param t the map whose values are to be added as new rows to
	* this <tt>TabularData</tt> instance; if <var>t</var> is
	* <tt>null</tt> or empty, this method returns without doing
	* anything.
	*
	* @throws NullPointerException if a value in <var>t</var> is
	* <tt>null</tt>.
	* @throws ClassCastException if a value in <var>t</var> is not an
	* instance of <tt>CompositeData</tt>.
	* @throws InvalidOpenTypeException if a value in <var>t</var>
	* does not conform to this <tt>TabularData</tt> instance's row
	* type definition.
	* @throws KeyAlreadyExistsException if the index for a value in
	* <var>t</var>, calculated according to this
	* <tt>TabularData</tt> instance's <tt>TabularType</tt> definition
	* already maps to an existing value in this instance, or two
	* values in <var>t</var> have the same index.
	*/
	@:overload @:public public function putAll(t : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Add all the elements in <var>values</var> to this
	* <tt>TabularData</tt> instance.  If any element in
	* <var>values</var> does not satisfy the constraints defined in
	* {@link #put(CompositeData) <tt>put</tt>}, or if any two
	* elements in <var>values</var> have the same index calculated
	* according to this <tt>TabularData</tt> instance's
	* <tt>TabularType</tt> definition, then an exception describing
	* the failure is thrown and no element of <var>values</var> is
	* added, thus leaving this <tt>TabularData</tt> instance
	* unchanged.
	*
	* @param values the array of composite data values to be added as
	* new rows to this <tt>TabularData</tt> instance; if
	* <var>values</var> is <tt>null</tt> or empty, this method
	* returns without doing anything.
	*
	* @throws NullPointerException if an element of <var>values</var>
	* is <tt>null</tt>
	* @throws InvalidOpenTypeException if an element of
	* <var>values</var> does not conform to this
	* <tt>TabularData</tt> instance's row type definition (ie its
	* <tt>TabularType</tt> definition)
	* @throws KeyAlreadyExistsException if the index for an element
	* of <var>values</var>, calculated according to this
	* <tt>TabularData</tt> instance's <tt>TabularType</tt> definition
	* already maps to an existing value in this instance, or two
	* elements of <var>values</var> have the same index
	*/
	@:overload @:public public function putAll(values : java.NativeArray<javax.management.openmbean.CompositeData>) : Void;
	
	/**
	* Removes all rows from this <code>TabularDataSupport</code> instance.
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* Returns the number of rows in this <code>TabularDataSupport</code> instance.
	*
	* @return the number of rows in this <code>TabularDataSupport</code> instance.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if this <code>TabularDataSupport</code> instance contains no rows.
	*
	* @return <tt>true</tt> if this <code>TabularDataSupport</code> instance contains no rows.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Returns a set view of the keys contained in the underlying map of this
	* {@code TabularDataSupport} instance used to index the rows.
	* Each key contained in this {@code Set} is an unmodifiable {@code List<?>}
	* so the returned set view is a {@code Set<List<?>>} but is declared as a
	* {@code Set<Object>} for compatibility reasons.
	* The set is backed by the underlying map of this
	* {@code TabularDataSupport} instance, so changes to the
	* {@code TabularDataSupport} instance are reflected in the
	* set, and vice-versa.
	*
	* The set supports element removal, which removes the corresponding
	* row from this {@code TabularDataSupport} instance, via the
	* {@link Iterator#remove}, {@link Set#remove}, {@link Set#removeAll},
	* {@link Set#retainAll}, and {@link Set#clear} operations. It does
	*  not support the {@link Set#add} or {@link Set#addAll} operations.
	*
	* @return a set view ({@code Set<List<?>>}) of the keys used to index
	* the rows of this {@code TabularDataSupport} instance.
	*/
	@:overload @:public public function keySet() : java.util.Set<Dynamic>;
	
	/**
	* Returns a collection view of the rows contained in this
	* {@code TabularDataSupport} instance. The returned {@code Collection}
	* is a {@code Collection<CompositeData>} but is declared as a
	* {@code Collection<Object>} for compatibility reasons.
	* The returned collection can be used to iterate over the values.
	* The collection is backed by the underlying map, so changes to the
	* {@code TabularDataSupport} instance are reflected in the collection,
	* and vice-versa.
	*
	* The collection supports element removal, which removes the corresponding
	* index to row mapping from this {@code TabularDataSupport} instance, via
	* the {@link Iterator#remove}, {@link Collection#remove},
	* {@link Collection#removeAll}, {@link Collection#retainAll},
	* and {@link Collection#clear} operations. It does not support
	* the {@link Collection#add} or {@link Collection#addAll} operations.
	*
	* @return a collection view ({@code Collection<CompositeData>}) of
	* the values contained in this {@code TabularDataSupport} instance.
	*/
	@:overload @:public public function values() : java.util.Collection<Dynamic>;
	
	/**
	* Returns a collection view of the index to row mappings
	* contained in this {@code TabularDataSupport} instance.
	* Each element in the returned collection is
	* a {@code Map.Entry<List<?>,CompositeData>} but
	* is declared as a {@code Map.Entry<Object,Object>}
	* for compatibility reasons. Each of the map entry
	* keys is an unmodifiable {@code List<?>}.
	* The collection is backed by the underlying map of this
	* {@code TabularDataSupport} instance, so changes to the
	* {@code TabularDataSupport} instance are reflected in
	* the collection, and vice-versa.
	* The collection supports element removal, which removes
	* the corresponding mapping from the map, via the
	* {@link Iterator#remove}, {@link Collection#remove},
	* {@link Collection#removeAll}, {@link Collection#retainAll},
	* and {@link Collection#clear} operations. It does not support
	* the {@link Collection#add} or {@link Collection#addAll}
	* operations.
	* <p>
	* <b>IMPORTANT NOTICE</b>: Do not use the {@code setValue} method of the
	* {@code Map.Entry} elements contained in the returned collection view.
	* Doing so would corrupt the index to row mappings contained in this
	* {@code TabularDataSupport} instance.
	*
	* @return a collection view ({@code Set<Map.Entry<List<?>,CompositeData>>})
	* of the mappings contained in this map.
	* @see java.util.Map.Entry
	*/
	@:overload @:public public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	/* We cannot use covariance here and return TabularDataSupport
	because this would fail with existing code that subclassed
	TabularDataSupport and overrode Object clone().  It would not
	override the new clone().  */
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Compares the specified <var>obj</var> parameter with this <code>TabularDataSupport</code> instance for equality.
	* <p>
	* Returns <tt>true</tt> if and only if all of the following statements are true:
	* <ul>
	* <li><var>obj</var> is non null,</li>
	* <li><var>obj</var> also implements the <code>TabularData</code> interface,</li>
	* <li>their tabular types are equal</li>
	* <li>their contents (ie all CompositeData values) are equal.</li>
	* </ul>
	* This ensures that this <tt>equals</tt> method works properly for <var>obj</var> parameters which are
	* different implementations of the <code>TabularData</code> interface.
	* <br>&nbsp;
	* @param  obj  the object to be compared for equality with this <code>TabularDataSupport</code> instance;
	*
	* @return  <code>true</code> if the specified object is equal to this <code>TabularDataSupport</code> instance.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this <code>TabularDataSupport</code> instance.
	* <p>
	* The hash code of a <code>TabularDataSupport</code> instance is the sum of the hash codes
	* of all elements of information used in <code>equals</code> comparisons
	* (ie: its <i>tabular type</i> and its content, where the content is defined as all the CompositeData values).
	* <p>
	* This ensures that <code> t1.equals(t2) </code> implies that <code> t1.hashCode()==t2.hashCode() </code>
	* for any two <code>TabularDataSupport</code> instances <code>t1</code> and <code>t2</code>,
	* as required by the general contract of the method
	* {@link Object#hashCode() Object.hashCode()}.
	* <p>
	* However, note that another instance of a class implementing the <code>TabularData</code> interface
	* may be equal to this <code>TabularDataSupport</code> instance as defined by {@link #equals},
	* but may have a different hash code if it is calculated differently.
	*
	* @return  the hash code value for this <code>TabularDataSupport</code> instance
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <code>TabularDataSupport</code> instance.
	* <p>
	* The string representation consists of the name of this class (ie <code>javax.management.openmbean.TabularDataSupport</code>),
	* the string representation of the tabular type of this instance, and the string representation of the contents
	* (ie list the key=value mappings as returned by a call to
	* <tt>dataMap.</tt>{@link java.util.HashMap#toString() toString()}).
	*
	* @return  a string representation of this <code>TabularDataSupport</code> instance
	*/
	@:overload @:public public function toString() : String;
	
	
}
