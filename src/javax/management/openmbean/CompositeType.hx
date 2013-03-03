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
extern class CompositeType extends javax.management.openmbean.OpenType<javax.management.openmbean.CompositeData>
{
	/**
	* Constructs a <code>CompositeType</code> instance, checking for the validity of the given parameters.
	* The validity constraints are described below for each parameter.
	* <p>
	* Note that the contents of the three array parameters
	* <var>itemNames</var>, <var>itemDescriptions</var> and <var>itemTypes</var>
	* are internally copied so that any subsequent modification of these arrays by the caller of this constructor
	* has no impact on the constructed <code>CompositeType</code> instance.
	* <p>
	* The Java class name of composite data values this composite type represents
	* (ie the class name returned by the {@link OpenType#getClassName() getClassName} method)
	* is set to the string value returned by <code>CompositeData.class.getName()</code>.
	* <p>
	* @param  typeName  The name given to the composite type this instance represents; cannot be a null or empty string.
	* <br>&nbsp;
	* @param  description  The human readable description of the composite type this instance represents;
	*                      cannot be a null or empty string.
	* <br>&nbsp;
	* @param  itemNames  The names of the items contained in the
	*                    composite data values described by this <code>CompositeType</code> instance;
	*                    cannot be null and should contain at least one element; no element can be a null or empty string.
	*                    Note that the order in which the item names are given is not important to differentiate a
	*                    <code>CompositeType</code> instance from another;
	*                    the item names are internally stored sorted in ascending alphanumeric order.
	* <br>&nbsp;
	* @param  itemDescriptions  The descriptions, in the same order as <var>itemNames</var>, of the items contained in the
	*                           composite data values described by this <code>CompositeType</code> instance;
	*                           should be of the same size as <var>itemNames</var>;
	*                           no element can be null or an empty string.
	* <br>&nbsp;
	* @param  itemTypes  The open type instances, in the same order as <var>itemNames</var>, describing the items contained
	*                    in the composite data values described by this <code>CompositeType</code> instance;
	*                    should be of the same size as <var>itemNames</var>;
	*                    no element can be null.
	* <br>&nbsp;
	* @throws IllegalArgumentException  If <var>typeName</var> or <var>description</var> is a null or empty string,
	*                                   or <var>itemNames</var> or <var>itemDescriptions</var> or <var>itemTypes</var> is null,
	*                                   or any element of <var>itemNames</var> or <var>itemDescriptions</var>
	*                                   is a null or empty string,
	*                                   or any element of <var>itemTypes</var> is null,
	*                                   or <var>itemNames</var> or <var>itemDescriptions</var> or <var>itemTypes</var>
	*                                   are not of the same size.
	* <br>&nbsp;
	* @throws OpenDataException  If <var>itemNames</var> contains duplicate item names
	*                            (case sensitive, but leading and trailing whitespaces removed).
	*/
	@:overload @:public public function new(typeName : String, description : String, itemNames : java.NativeArray<String>, itemDescriptions : java.NativeArray<String>, itemTypes : java.NativeArray<javax.management.openmbean.OpenType<Dynamic>>) : Void;
	
	/**
	* Returns <code>true</code> if this <code>CompositeType</code> instance defines an item
	* whose name is <var>itemName</var>.
	*
	* @param itemName the name of the item.
	*
	* @return true if an item of this name is present.
	*/
	@:overload @:public public function containsKey(itemName : String) : Bool;
	
	/**
	* Returns the description of the item whose name is <var>itemName</var>,
	* or <code>null</code> if this <code>CompositeType</code> instance does not define any item
	* whose name is <var>itemName</var>.
	*
	* @param itemName the name of the item.
	*
	* @return the description.
	*/
	@:overload @:public public function getDescription(itemName : String) : String;
	
	/**
	* Returns the <i>open type</i> of the item whose name is <var>itemName</var>,
	* or <code>null</code> if this <code>CompositeType</code> instance does not define any item
	* whose name is <var>itemName</var>.
	*
	* @param itemName the name of the time.
	*
	* @return the type.
	*/
	@:overload @:public public function getType(itemName : String) : javax.management.openmbean.OpenType<Dynamic>;
	
	/**
	* Returns an unmodifiable Set view of all the item names defined by this <code>CompositeType</code> instance.
	* The set's iterator will return the item names in ascending order.
	*
	* @return a {@link Set} of {@link String}.
	*/
	@:overload @:public public function keySet() : java.util.Set<String>;
	
	/**
	* Tests whether <var>obj</var> is a value which could be
	* described by this <code>CompositeType</code> instance.
	*
	* <p>If <var>obj</var> is null or is not an instance of
	* <code>javax.management.openmbean.CompositeData</code>,
	* <code>isValue</code> returns <code>false</code>.</p>
	*
	* <p>If <var>obj</var> is an instance of
	* <code>javax.management.openmbean.CompositeData</code>, then let
	* {@code ct} be its {@code CompositeType} as returned by {@link
	* CompositeData#getCompositeType()}.  The result is true if
	* {@code this} is <em>assignable from</em> {@code ct}.  This
	* means that:</p>
	*
	* <ul>
	* <li>{@link #getTypeName() this.getTypeName()} equals
	* {@code ct.getTypeName()}, and
	* <li>there are no item names present in {@code this} that are
	* not also present in {@code ct}, and
	* <li>for every item in {@code this}, its type is assignable from
	* the type of the corresponding item in {@code ct}.
	* </ul>
	*
	* <p>A {@code TabularType} is assignable from another {@code
	* TabularType} if they have the same {@linkplain
	* TabularType#getTypeName() typeName} and {@linkplain
	* TabularType#getIndexNames() index name list}, and the
	* {@linkplain TabularType#getRowType() row type} of the first is
	* assignable from the row type of the second.
	*
	* <p>An {@code ArrayType} is assignable from another {@code
	* ArrayType} if they have the same {@linkplain
	* ArrayType#getDimension() dimension}; and both are {@linkplain
	* ArrayType#isPrimitiveArray() primitive arrays} or neither is;
	* and the {@linkplain ArrayType#getElementOpenType() element
	* type} of the first is assignable from the element type of the
	* second.
	*
	* <p>In every other case, an {@code OpenType} is assignable from
	* another {@code OpenType} only if they are equal.</p>
	*
	* <p>These rules mean that extra items can be added to a {@code
	* CompositeData} without making it invalid for a {@code CompositeType}
	* that does not have those items.</p>
	*
	* @param  obj  the value whose open type is to be tested for compatibility
	* with this <code>CompositeType</code> instance.
	*
	* @return <code>true</code> if <var>obj</var> is a value for this
	* composite type, <code>false</code> otherwise.
	*/
	@:overload @:public override public function isValue(obj : Dynamic) : Bool;
	
	/**
	* Compares the specified <code>obj</code> parameter with this <code>CompositeType</code> instance for equality.
	* <p>
	* Two <code>CompositeType</code> instances are equal if and only if all of the following statements are true:
	* <ul>
	* <li>their type names are equal</li>
	* <li>their items' names and types are equal</li>
	* </ul>
	* <br>&nbsp;
	* @param  obj  the object to be compared for equality with this <code>CompositeType</code> instance;
	*              if <var>obj</var> is <code>null</code>, <code>equals</code> returns <code>false</code>.
	*
	* @return  <code>true</code> if the specified object is equal to this <code>CompositeType</code> instance.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this <code>CompositeType</code> instance.
	* <p>
	* The hash code of a <code>CompositeType</code> instance is the sum of the hash codes
	* of all elements of information used in <code>equals</code> comparisons
	* (ie: name, items names, items types).
	* This ensures that <code> t1.equals(t2) </code> implies that <code> t1.hashCode()==t2.hashCode() </code>
	* for any two <code>CompositeType</code> instances <code>t1</code> and <code>t2</code>,
	* as required by the general contract of the method
	* {@link Object#hashCode() Object.hashCode()}.
	* <p>
	* As <code>CompositeType</code> instances are immutable, the hash code for this instance is calculated once,
	* on the first call to <code>hashCode</code>, and then the same value is returned for subsequent calls.
	*
	* @return  the hash code value for this <code>CompositeType</code> instance
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <code>CompositeType</code> instance.
	* <p>
	* The string representation consists of
	* the name of this class (ie <code>javax.management.openmbean.CompositeType</code>), the type name for this instance,
	* and the list of the items names and types string representation of this instance.
	* <p>
	* As <code>CompositeType</code> instances are immutable, the string representation for this instance is calculated once,
	* on the first call to <code>toString</code>, and then the same value is returned for subsequent calls.
	*
	* @return  a string representation of this <code>CompositeType</code> instance
	*/
	@:overload @:public override public function toString() : String;
	
	
}
