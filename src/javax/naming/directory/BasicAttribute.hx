package javax.naming.directory;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicAttribute implements javax.naming.directory.Attribute
{
	/**
	* Holds the attribute's id. It is initialized by the public constructor and
	* cannot be null unless methods in BasicAttribute that use attrID
	* have been overridden.
	* @serial
	*/
	private var attrID : String;
	
	/**
	* Holds the attribute's values. Initialized by public constructors.
	* Cannot be null unless methods in BasicAttribute that use
	* values have been overridden.
	*/
	@:transient private var values : java.util.Vector<Dynamic>;
	
	/**
	* A flag for recording whether this attribute's values are ordered.
	* @serial
	*/
	private var ordered : Bool;
	
	@:overload public function clone() : Dynamic;
	
	/**
	* Determines whether obj is equal to this attribute.
	* Two attributes are equal if their attribute-ids, syntaxes
	* and values are equal.
	* If the attribute values are unordered, the order that the values were added
	* are irrelevant. If the attribute values are ordered, then the
	* order the values must match.
	* If obj is null or not an Attribute, false is returned.
	*<p>
	* By default <tt>Object.equals()</tt> is used when comparing the attribute
	* id and its values except when a value is an array. For an array,
	* each element of the array is checked using <tt>Object.equals()</tt>.
	* A subclass may override this to make
	* use of schema syntax information and matching rules,
	* which define what it means for two attributes to be equal.
	* How and whether a subclass makes
	* use of the schema information is determined by the subclass.
	* If a subclass overrides <tt>equals()</tt>, it should also override
	* <tt>hashCode()</tt>
	* such that two attributes that are equal have the same hash code.
	*
	* @param obj      The possibly null object to check.
	* @return true if obj is equal to this attribute; false otherwise.
	* @see #hashCode
	* @see #contains
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Calculates the hash code of this attribute.
	*<p>
	* The hash code is computed by adding the hash code of
	* the attribute's id and that of all of its values except for
	* values that are arrays.
	* For an array, the hash code of each element of the array is summed.
	* If a subclass overrides <tt>hashCode()</tt>, it should override
	* <tt>equals()</tt>
	* as well so that two attributes that are equal have the same hash code.
	*
	* @return an int representing the hash code of this attribute.
	* @see #equals
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Generates the string representation of this attribute.
	* The string consists of the attribute's id and its values.
	* This string is meant for debugging and not meant to be
	* interpreted programmatically.
	* @return The non-null string representation of this attribute.
	*/
	@:overload public function toString() : String;
	
	/**
	* Constructs a new instance of an unordered attribute with no value.
	*
	* @param id The attribute's id. It cannot be null.
	*/
	@:overload public function new(id : String) : Void;
	
	/**
	* Constructs a new instance of an unordered attribute with a single value.
	*
	* @param id The attribute's id. It cannot be null.
	* @param value The attribute's value. If null, a null
	*        value is added to the attribute.
	*/
	@:overload public function new(id : String, value : Dynamic) : Void;
	
	/**
	* Constructs a new instance of a possibly ordered attribute with no value.
	*
	* @param id The attribute's id. It cannot be null.
	* @param ordered true means the attribute's values will be ordered;
	* false otherwise.
	*/
	@:overload public function new(id : String, ordered : Bool) : Void;
	
	/**
	* Constructs a new instance of a possibly ordered attribute with a
	* single value.
	*
	* @param id The attribute's id. It cannot be null.
	* @param value The attribute's value. If null, a null
	*        value is added to the attribute.
	* @param ordered true means the attribute's values will be ordered;
	* false otherwise.
	*/
	@:overload public function new(id : String, value : Dynamic, ordered : Bool) : Void;
	
	/**
	* Retrieves an enumeration of this attribute's values.
	*<p>
	* By default, the values returned are those passed to the
	* constructor and/or manipulated using the add/replace/remove methods.
	* A subclass may override this to retrieve the values dynamically
	* from the directory.
	*/
	@:overload public function getAll() : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Retrieves one of this attribute's values.
	*<p>
	* By default, the value returned is one of those passed to the
	* constructor and/or manipulated using the add/replace/remove methods.
	* A subclass may override this to retrieve the value dynamically
	* from the directory.
	*/
	@:overload public function get() : Dynamic;
	
	@:overload public function size() : Int;
	
	@:overload public function getID() : String;
	
	/**
	* Determines whether a value is in this attribute.
	*<p>
	* By default,
	* <tt>Object.equals()</tt> is used when comparing <tt>attrVal</tt>
	* with this attribute's values except when <tt>attrVal</tt> is an array.
	* For an array, each element of the array is checked using
	* <tt>Object.equals()</tt>.
	* A subclass may use schema information to determine equality.
	*/
	@:overload public function contains(attrVal : Dynamic) : Bool;
	
	/**
	* Adds a new value to this attribute.
	*<p>
	* By default, <tt>Object.equals()</tt> is used when comparing <tt>attrVal</tt>
	* with this attribute's values except when <tt>attrVal</tt> is an array.
	* For an array, each element of the array is checked using
	* <tt>Object.equals()</tt>.
	* A subclass may use schema information to determine equality.
	*/
	@:overload public function add(attrVal : Dynamic) : Bool;
	
	/**
	* Removes a specified value from this attribute.
	*<p>
	* By default, <tt>Object.equals()</tt> is used when comparing <tt>attrVal</tt>
	* with this attribute's values except when <tt>attrVal</tt> is an array.
	* For an array, each element of the array is checked using
	* <tt>Object.equals()</tt>.
	* A subclass may use schema information to determine equality.
	*/
	@:overload public function remove(attrval : Dynamic) : Bool;
	
	@:overload public function clear() : Void;
	
	@:overload public function isOrdered() : Bool;
	
	@:overload public function get(ix : Int) : Dynamic;
	
	@:overload public function remove(ix : Int) : Dynamic;
	
	@:overload public function add(ix : Int, attrVal : Dynamic) : Void;
	
	@:overload public function set(ix : Int, attrVal : Dynamic) : Dynamic;
	
	/**
	* Retrieves the syntax definition associated with this attribute.
	*<p>
	* This method by default throws OperationNotSupportedException. A subclass
	* should override this method if it supports schema.
	*/
	@:overload public function getAttributeSyntaxDefinition() : javax.naming.directory.DirContext;
	
	/**
	* Retrieves this attribute's schema definition.
	*<p>
	* This method by default throws OperationNotSupportedException. A subclass
	* should override this method if it supports schema.
	*/
	@:overload public function getAttributeDefinition() : javax.naming.directory.DirContext;
	
	
}
@:native('javax$naming$directory$BasicAttribute$ValuesEnumImpl') @:internal extern class BasicAttribute_ValuesEnumImpl implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function hasMore() : Bool;
	
	@:overload public function close() : Void;
	
	
}
