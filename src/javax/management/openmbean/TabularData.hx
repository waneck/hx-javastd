package javax.management.openmbean;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface TabularData
{
	/**
	* Returns the <i>tabular type</i> describing this
	* <tt>TabularData</tt> instance.
	*
	* @return the tabular type.
	*/
	@:overload public function getTabularType() : javax.management.openmbean.TabularType;
	
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
	* @throws NullPointerException       if <var>value</var> is <tt>null</tt>
	*
	* @throws InvalidOpenTypeException   if <var>value</var> does not conform to this <tt>TabularData</tt> instance's
	*                                    row type definition.
	*/
	@:overload public function calculateIndex(value : javax.management.openmbean.CompositeData) : java.NativeArray<Dynamic>;
	
	/**
	* Returns the number of <tt>CompositeData</tt> values (ie the
	* number of rows) contained in this <tt>TabularData</tt>
	* instance.
	*
	* @return the number of values contained.
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns <tt>true</tt> if the number of <tt>CompositeData</tt>
	* values (ie the number of rows) contained in this
	* <tt>TabularData</tt> instance is zero.
	*
	* @return true if this <tt>TabularData</tt> is empty.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>TabularData</tt> instance contains a <tt>CompositeData</tt> value
	* (ie a row) whose index is the specified <var>key</var>. If <var>key</var> is <tt>null</tt> or does not conform to
	* this <tt>TabularData</tt> instance's <tt>TabularType</tt> definition, this method simply returns <tt>false</tt>.
	*
	* @param  key  the index value whose presence in this <tt>TabularData</tt> instance is to be tested.
	*
	* @return  <tt>true</tt> if this <tt>TabularData</tt> indexes a row value with the specified key.
	*/
	@:overload public function containsKey(key : java.NativeArray<Dynamic>) : Bool;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>TabularData</tt> instance contains the specified
	* <tt>CompositeData</tt> value. If <var>value</var> is <tt>null</tt> or does not conform to
	* this <tt>TabularData</tt> instance's row type definition, this method simply returns <tt>false</tt>.
	*
	* @param  value  the row value whose presence in this <tt>TabularData</tt> instance is to be tested.
	*
	* @return  <tt>true</tt> if this <tt>TabularData</tt> instance contains the specified row value.
	*/
	@:overload public function containsValue(value : javax.management.openmbean.CompositeData) : Bool;
	
	/**
	* Returns the <tt>CompositeData</tt> value whose index is
	* <var>key</var>, or <tt>null</tt> if there is no value mapping
	* to <var>key</var>, in this <tt>TabularData</tt> instance.
	*
	* @param key the key of the row to return.
	*
	* @return the value corresponding to <var>key</var>.
	*
	* @throws NullPointerException if the <var>key</var> is
	* <tt>null</tt>
	* @throws InvalidKeyException if the <var>key</var> does not
	* conform to this <tt>TabularData</tt> instance's *
	* <tt>TabularType</tt> definition
	*/
	@:overload public function get(key : java.NativeArray<Dynamic>) : javax.management.openmbean.CompositeData;
	
	/**
	* Adds <var>value</var> to this <tt>TabularData</tt> instance.
	* The composite type of <var>value</var> must be the same as this
	* instance's row type (ie the composite type returned by
	* <tt>this.getTabularType().{@link TabularType#getRowType
	* getRowType()}</tt>), and there must not already be an existing
	* value in this <tt>TabularData</tt> instance whose index is the
	* same as the one calculated for the <var>value</var> to be
	* added. The index for <var>value</var> is calculated according
	* to this <tt>TabularData</tt> instance's <tt>TabularType</tt>
	* definition (see <tt>TabularType.{@link
	* TabularType#getIndexNames getIndexNames()}</tt>).
	*
	* @param  value                      the composite data value to be added as a new row to this <tt>TabularData</tt> instance;
	*                                    must be of the same composite type as this instance's row type;
	*                                    must not be null.
	*
	* @throws NullPointerException       if <var>value</var> is <tt>null</tt>
	* @throws InvalidOpenTypeException   if <var>value</var> does not conform to this <tt>TabularData</tt> instance's
	*                                    row type definition.
	* @throws KeyAlreadyExistsException  if the index for <var>value</var>, calculated according to
	*                                    this <tt>TabularData</tt> instance's <tt>TabularType</tt> definition
	*                                    already maps to an existing value in the underlying HashMap.
	*/
	@:overload public function put(value : javax.management.openmbean.CompositeData) : Void;
	
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
	@:overload public function remove(key : java.NativeArray<Dynamic>) : javax.management.openmbean.CompositeData;
	
	/**
	* Add all the elements in <var>values</var> to this <tt>TabularData</tt> instance.
	* If any  element in <var>values</var> does not satisfy the constraints defined in {@link #put(CompositeData) <tt>put</tt>},
	* or if any two elements in <var>values</var> have the same index calculated according to this <tt>TabularData</tt>
	* instance's <tt>TabularType</tt> definition, then an exception describing the failure is thrown
	* and no element of <var>values</var> is added,  thus leaving this <tt>TabularData</tt> instance unchanged.
	*
	* @param  values  the array of composite data values to be added as new rows to this <tt>TabularData</tt> instance;
	*                 if <var>values</var> is <tt>null</tt> or empty, this method returns without doing anything.
	*
	* @throws NullPointerException       if an element of <var>values</var> is <tt>null</tt>
	* @throws InvalidOpenTypeException   if an element of <var>values</var> does not conform to
	*                                    this <tt>TabularData</tt> instance's row type definition
	* @throws KeyAlreadyExistsException  if the index for an element of <var>values</var>, calculated according to
	*                                    this <tt>TabularData</tt> instance's <tt>TabularType</tt> definition
	*                                    already maps to an existing value in this instance,
	*                                    or two elements of <var>values</var> have the same index.
	*/
	@:overload public function putAll(values : java.NativeArray<javax.management.openmbean.CompositeData>) : Void;
	
	/**
	* Removes all <tt>CompositeData</tt> values (ie rows) from this <tt>TabularData</tt> instance.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns a set view of the keys (ie the index values) of the
	* {@code CompositeData} values (ie the rows) contained in this
	* {@code TabularData} instance. The returned {@code Set} is a
	* {@code Set<List<?>>} but is declared as a {@code Set<?>} for
	* compatibility reasons. The returned set can be used to iterate
	* over the keys.
	*
	* @return a set view ({@code Set<List<?>>}) of the index values
	* used in this {@code TabularData} instance.
	*/
	@:overload public function keySet() : java.util.Set<Dynamic>;
	
	/**
	* Returns a collection view of the {@code CompositeData} values
	* (ie the rows) contained in this {@code TabularData} instance.
	* The returned {@code Collection} is a {@code Collection<CompositeData>}
	* but is declared as a {@code Collection<?>} for compatibility reasons.
	* The returned collection can be used to iterate over the values.
	*
	* @return a collection view ({@code Collection<CompositeData>})
	* of the rows contained in this {@code TabularData} instance.
	*/
	@:overload public function values() : java.util.Collection<Dynamic>;
	
	
}
