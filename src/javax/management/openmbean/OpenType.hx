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
extern class OpenType<T> implements java.io.Serializable
{
	/**
	* List of the fully qualified names of the Java classes allowed for open
	* data values. A multidimensional array of any one of these classes or
	* their corresponding primitive types is also an allowed class for open
	* data values.
	*
	<pre>ALLOWED_CLASSNAMES_LIST = {
	"java.lang.Void",
	"java.lang.Boolean",
	"java.lang.Character",
	"java.lang.Byte",
	"java.lang.Short",
	"java.lang.Integer",
	"java.lang.Long",
	"java.lang.Float",
	"java.lang.Double",
	"java.lang.String",
	"java.math.BigDecimal",
	"java.math.BigInteger",
	"java.util.Date",
	"javax.management.ObjectName",
	CompositeData.class.getName(),
	TabularData.class.getName() } ;
	</pre>
	*
	*/
	public static var ALLOWED_CLASSNAMES_LIST(default, null) : java.util.List<String>;
	
	/**
	* @deprecated Use {@link #ALLOWED_CLASSNAMES_LIST ALLOWED_CLASSNAMES_LIST} instead.
	*/
	public static var ALLOWED_CLASSNAMES(default, null) : java.NativeArray<String>;
	
	/**
	* Constructs an <code>OpenType</code> instance (actually a subclass instance as <code>OpenType</code> is abstract),
	* checking for the validity of the given parameters.
	* The validity constraints are described below for each parameter.
	* <br>&nbsp;
	* @param  className  The fully qualified Java class name of the open data values this open type describes.
	*                    The valid Java class names allowed for open data values are listed in
	*                    {@link #ALLOWED_CLASSNAMES_LIST ALLOWED_CLASSNAMES_LIST}.
	*                    A multidimensional array of any one of these classes
	*                    or their corresponding primitive types is also an allowed class,
	*                    in which case the class name follows the rules defined by the method
	*                    {@link Class#getName() getName()} of <code>java.lang.Class</code>.
	*                    For example, a 3-dimensional array of Strings has for class name
	*                    &quot;<code>[[[Ljava.lang.String;</code>&quot; (without the quotes).
	* <br>&nbsp;
	* @param  typeName  The name given to the open type this instance represents; cannot be a null or empty string.
	* <br>&nbsp;
	* @param  description  The human readable description of the open type this instance represents;
	*                      cannot be a null or empty string.
	* <br>&nbsp;
	* @throws IllegalArgumentException  if <var>className</var>, <var>typeName</var> or <var>description</var>
	*                                   is a null or empty string
	* <br>&nbsp;
	* @throws OpenDataException  if <var>className</var> is not one of the allowed Java class names for open data
	*/
	@:overload private function new(className : String, typeName : String, description : String) : Void;
	
	/**
	* Returns the fully qualified Java class name of the open data values
	* this open type describes.
	* The only possible Java class names for open data values are listed in
	* {@link #ALLOWED_CLASSNAMES_LIST ALLOWED_CLASSNAMES_LIST}.
	* A multidimensional array of any one of these classes or their
	* corresponding primitive types is also an allowed class,
	* in which case the class name follows the rules defined by the method
	* {@link Class#getName() getName()} of <code>java.lang.Class</code>.
	* For example, a 3-dimensional array of Strings has for class name
	* &quot;<code>[[[Ljava.lang.String;</code>&quot; (without the quotes),
	* a 3-dimensional array of Integers has for class name
	* &quot;<code>[[[Ljava.lang.Integer;</code>&quot; (without the quotes),
	* and a 3-dimensional array of int has for class name
	* &quot;<code>[[[I</code>&quot; (without the quotes)
	*
	* @return the class name.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns the name of this <code>OpenType</code> instance.
	*
	* @return the type name.
	*/
	@:overload public function getTypeName() : String;
	
	/**
	* Returns the text description of this <code>OpenType</code> instance.
	*
	* @return the description.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* Returns <code>true</code> if the open data values this open
	* type describes are arrays, <code>false</code> otherwise.
	*
	* @return true if this is an array type.
	*/
	@:overload public function isArray() : Bool;
	
	/**
	* Tests whether <var>obj</var> is a value for this open type.
	*
	* @param obj the object to be tested for validity.
	*
	* @return <code>true</code> if <var>obj</var> is a value for this
	* open type, <code>false</code> otherwise.
	*/
	@:overload @:abstract public function isValue(obj : Dynamic) : Bool;
	
	/**
	* Compares the specified <code>obj</code> parameter with this
	* open type instance for equality.
	*
	* @param obj the object to compare to.
	*
	* @return true if this object and <code>obj</code> are equal.
	*/
	@:overload @:abstract public function equals(obj : Dynamic) : Bool;
	
	@:overload @:abstract public function hashCode() : Int;
	
	/**
	* Returns a string representation of this open type instance.
	*
	* @return the string representation.
	*/
	@:overload @:abstract public function toString() : String;
	
	
}
