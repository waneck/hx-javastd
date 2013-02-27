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
extern class ArrayType<T> extends javax.management.openmbean.OpenType<T>
{
	/**
	* Constructs an <tt>ArrayType</tt> instance describing <i>open data</i> values which are
	* arrays with dimension <var>dimension</var> of elements whose <i>open type</i> is <var>elementType</var>.
	* <p>
	* When invoked on an <tt>ArrayType</tt> instance, the {@link OpenType#getClassName() getClassName} method
	* returns the class name of the array instances it describes (following the rules defined by the
	* {@link Class#getName() getName} method of <code>java.lang.Class</code>), not the class name of the array elements
	* (which is returned by a call to <tt>getElementOpenType().getClassName()</tt>).
	* <p>
	* The internal field corresponding to the type name of this <code>ArrayType</code> instance is also set to
	* the class name of the array instances it describes.
	* In other words, the methods <code>getClassName</code> and <code>getTypeName</code> return the same string value.
	* The internal field corresponding to the description of this <code>ArrayType</code> instance is set to a string value
	* which follows the following template:
	* <ul>
	* <li>if non-primitive array: <tt><i>&lt;dimension&gt;</i>-dimension array of <i>&lt;element_class_name&gt;</i></tt></li>
	* <li>if primitive array: <tt><i>&lt;dimension&gt;</i>-dimension array of <i>&lt;primitive_type_of_the_element_class_name&gt;</i></tt></li>
	* </ul>
	* <p>
	* As an example, the following piece of code:
	* <pre>
	* ArrayType<String[][][]> t = new ArrayType<String[][][]>(3, SimpleType.STRING);
	* System.out.println("array class name       = " + t.getClassName());
	* System.out.println("element class name     = " + t.getElementOpenType().getClassName());
	* System.out.println("array type name        = " + t.getTypeName());
	* System.out.println("array type description = " + t.getDescription());
	* </pre>
	* would produce the following output:
	* <pre>
	* array class name       = [[[Ljava.lang.String;
	* element class name     = java.lang.String
	* array type name        = [[[Ljava.lang.String;
	* array type description = 3-dimension array of java.lang.String
	* </pre>
	* And the following piece of code which is equivalent to the one listed
	* above would also produce the same output:
	* <pre>
	* ArrayType<String[]> t1 = new ArrayType<String[]>(1, SimpleType.STRING);
	* ArrayType<String[][]> t2 = new ArrayType<String[][]>(1, t1);
	* ArrayType<String[][][]> t3 = new ArrayType<String[][][]>(1, t2);
	* System.out.println("array class name       = " + t3.getClassName());
	* System.out.println("element class name     = " + t3.getElementOpenType().getClassName());
	* System.out.println("array type name        = " + t3.getTypeName());
	* System.out.println("array type description = " + t3.getDescription());
	* </pre>
	*
	* @param  dimension  the dimension of arrays described by this <tt>ArrayType</tt> instance;
	*                    must be greater than or equal to 1.
	*
	* @param  elementType  the <i>open type</i> of element values contained
	*                      in the arrays described by this <tt>ArrayType</tt>
	*                      instance; must be an instance of either
	*                      <tt>SimpleType</tt>, <tt>CompositeType</tt>,
	*                      <tt>TabularType</tt> or another <tt>ArrayType</tt>
	*                      with a <tt>SimpleType</tt>, <tt>CompositeType</tt>
	*                      or <tt>TabularType</tt> as its <tt>elementType</tt>.
	*
	* @throws IllegalArgumentException if {@code dimension} is not a positive
	*                                  integer.
	* @throws OpenDataException  if <var>elementType's className</var> is not
	*                            one of the allowed Java class names for open
	*                            data.
	*/
	@:overload public function new(dimension : Int, elementType : javax.management.openmbean.OpenType<Dynamic>) : Void;
	
	/**
	* Constructs a unidimensional {@code ArrayType} instance for the
	* supplied {@code SimpleType}.
	* <p>
	* This constructor supports the creation of arrays of primitive
	* types when {@code primitiveArray} is {@code true}.
	* <p>
	* For primitive arrays the {@link #getElementOpenType()} method
	* returns the {@link SimpleType} corresponding to the wrapper
	* type of the primitive type of the array.
	* <p>
	* When invoked on an <tt>ArrayType</tt> instance, the {@link OpenType#getClassName() getClassName} method
	* returns the class name of the array instances it describes (following the rules defined by the
	* {@link Class#getName() getName} method of <code>java.lang.Class</code>), not the class name of the array elements
	* (which is returned by a call to <tt>getElementOpenType().getClassName()</tt>).
	* <p>
	* The internal field corresponding to the type name of this <code>ArrayType</code> instance is also set to
	* the class name of the array instances it describes.
	* In other words, the methods <code>getClassName</code> and <code>getTypeName</code> return the same string value.
	* The internal field corresponding to the description of this <code>ArrayType</code> instance is set to a string value
	* which follows the following template:
	* <ul>
	* <li>if non-primitive array: <tt>1-dimension array of <i>&lt;element_class_name&gt;</i></tt></li>
	* <li>if primitive array: <tt>1-dimension array of <i>&lt;primitive_type_of_the_element_class_name&gt;</i></tt></li>
	* </ul>
	* <p>
	* As an example, the following piece of code:
	* <pre>
	* ArrayType<int[]> t = new ArrayType<int[]>(SimpleType.INTEGER, true);
	* System.out.println("array class name       = " + t.getClassName());
	* System.out.println("element class name     = " + t.getElementOpenType().getClassName());
	* System.out.println("array type name        = " + t.getTypeName());
	* System.out.println("array type description = " + t.getDescription());
	* </pre>
	* would produce the following output:
	* <pre>
	* array class name       = [I
	* element class name     = java.lang.Integer
	* array type name        = [I
	* array type description = 1-dimension array of int
	* </pre>
	*
	* @param elementType the {@code SimpleType} of the element values
	*                    contained in the arrays described by this
	*                    {@code ArrayType} instance.
	*
	* @param primitiveArray {@code true} when this array describes
	*                       primitive arrays.
	*
	* @throws IllegalArgumentException if {@code dimension} is not a positive
	* integer.
	* @throws OpenDataException if {@code primitiveArray} is {@code true} and
	* {@code elementType} is not a valid {@code SimpleType} for a primitive
	* type.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(elementType : javax.management.openmbean.SimpleType<Dynamic>, primitiveArray : Bool) : Void;
	
	/**
	* Returns the dimension of arrays described by this <tt>ArrayType</tt> instance.
	*
	* @return the dimension.
	*/
	@:overload public function getDimension() : Int;
	
	/**
	* Returns the <i>open type</i> of element values contained in the arrays described by this <tt>ArrayType</tt> instance.
	*
	* @return the element type.
	*/
	@:overload public function getElementOpenType() : javax.management.openmbean.OpenType<Dynamic>;
	
	/**
	* Returns <code>true</code> if the open data values this open
	* type describes are primitive arrays, <code>false</code> otherwise.
	*
	* @return true if this is a primitive array type.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function isPrimitiveArray() : Bool;
	
	/**
	* Tests whether <var>obj</var> is a value for this <code>ArrayType</code>
	* instance.
	* <p>
	* This method returns <code>true</code> if and only if <var>obj</var>
	* is not null, <var>obj</var> is an array and any one of the following
	* is <tt>true</tt>:
	*
	* <ul>
	* <li>if this <code>ArrayType</code> instance describes an array of
	* <tt>SimpleType</tt> elements or their corresponding primitive types,
	* <var>obj</var>'s class name is the same as the className field defined
	* for this <code>ArrayType</code> instance (i.e. the class name returned
	* by the {@link OpenType#getClassName() getClassName} method, which
	* includes the dimension information),<br>&nbsp;</li>
	* <li>if this <code>ArrayType</code> instance describes an array of
	* classes implementing the {@code TabularData} interface or the
	* {@code CompositeData} interface, <var>obj</var> is assignable to
	* such a declared array, and each element contained in <var>obj</var>
	* is either null or a valid value for the element's open type specified
	* by this <code>ArrayType</code> instance.</li>
	* </ul>
	*
	* @param obj the object to be tested.
	*
	* @return <code>true</code> if <var>obj</var> is a value for this
	* <code>ArrayType</code> instance.
	*/
	@:overload override public function isValue(obj : Dynamic) : Bool;
	
	/**
	* Compares the specified <code>obj</code> parameter with this
	* <code>ArrayType</code> instance for equality.
	* <p>
	* Two <code>ArrayType</code> instances are equal if and only if they
	* describe array instances which have the same dimension, elements'
	* open type and primitive array flag.
	*
	* @param obj the object to be compared for equality with this
	*            <code>ArrayType</code> instance; if <var>obj</var>
	*            is <code>null</code> or is not an instance of the
	*            class <code>ArrayType</code> this method returns
	*            <code>false</code>.
	*
	* @return <code>true</code> if the specified object is equal to
	*         this <code>ArrayType</code> instance.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this <code>ArrayType</code> instance.
	* <p>
	* The hash code of an <code>ArrayType</code> instance is the sum of the
	* hash codes of all the elements of information used in <code>equals</code>
	* comparisons (i.e. dimension, elements' open type and primitive array flag).
	* The hashcode for a primitive value is the hashcode of the corresponding boxed
	* object (e.g. the hashcode for <tt>true</tt> is <tt>Boolean.TRUE.hashCode()</tt>).
	* This ensures that <code> t1.equals(t2) </code> implies that
	* <code> t1.hashCode()==t2.hashCode() </code> for any two
	* <code>ArrayType</code> instances <code>t1</code> and <code>t2</code>,
	* as required by the general contract of the method
	* {@link Object#hashCode() Object.hashCode()}.
	* <p>
	* As <code>ArrayType</code> instances are immutable, the hash
	* code for this instance is calculated once, on the first call
	* to <code>hashCode</code>, and then the same value is returned
	* for subsequent calls.
	*
	* @return  the hash code value for this <code>ArrayType</code> instance
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <code>ArrayType</code> instance.
	* <p>
	* The string representation consists of the name of this class (i.e.
	* <code>javax.management.openmbean.ArrayType</code>), the type name,
	* the dimension, the elements' open type and the primitive array flag
	* defined for this instance.
	* <p>
	* As <code>ArrayType</code> instances are immutable, the
	* string representation for this instance is calculated
	* once, on the first call to <code>toString</code>, and
	* then the same value is returned for subsequent calls.
	*
	* @return a string representation of this <code>ArrayType</code> instance
	*/
	@:overload override public function toString() : String;
	
	/**
	* Create an {@code ArrayType} instance in a type-safe manner.
	* <p>
	* Multidimensional arrays can be built up by calling this method as many
	* times as necessary.
	* <p>
	* Calling this method twice with the same parameters may return the same
	* object or two equal but not identical objects.
	* <p>
	* As an example, the following piece of code:
	* <pre>
	* ArrayType<String[]> t1 = ArrayType.getArrayType(SimpleType.STRING);
	* ArrayType<String[][]> t2 = ArrayType.getArrayType(t1);
	* ArrayType<String[][][]> t3 = ArrayType.getArrayType(t2);
	* System.out.println("array class name       = " + t3.getClassName());
	* System.out.println("element class name     = " + t3.getElementOpenType().getClassName());
	* System.out.println("array type name        = " + t3.getTypeName());
	* System.out.println("array type description = " + t3.getDescription());
	* </pre>
	* would produce the following output:
	* <pre>
	* array class name       = [[[Ljava.lang.String;
	* element class name     = java.lang.String
	* array type name        = [[[Ljava.lang.String;
	* array type description = 3-dimension array of java.lang.String
	* </pre>
	*
	* @param  elementType  the <i>open type</i> of element values contained
	*                      in the arrays described by this <tt>ArrayType</tt>
	*                      instance; must be an instance of either
	*                      <tt>SimpleType</tt>, <tt>CompositeType</tt>,
	*                      <tt>TabularType</tt> or another <tt>ArrayType</tt>
	*                      with a <tt>SimpleType</tt>, <tt>CompositeType</tt>
	*                      or <tt>TabularType</tt> as its <tt>elementType</tt>.
	*
	* @throws OpenDataException if <var>elementType's className</var> is not
	*                           one of the allowed Java class names for open
	*                           data.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getArrayType<E>(elementType : javax.management.openmbean.OpenType<E>) : ArrayType<java.NativeArray<E>>;
	
	/**
	* Create an {@code ArrayType} instance in a type-safe manner.
	* <p>
	* Calling this method twice with the same parameters may return the
	* same object or two equal but not identical objects.
	* <p>
	* As an example, the following piece of code:
	* <pre>
	* ArrayType<int[][][]> t = ArrayType.getPrimitiveArrayType(int[][][].class);
	* System.out.println("array class name       = " + t.getClassName());
	* System.out.println("element class name     = " + t.getElementOpenType().getClassName());
	* System.out.println("array type name        = " + t.getTypeName());
	* System.out.println("array type description = " + t.getDescription());
	* </pre>
	* would produce the following output:
	* <pre>
	* array class name       = [[[I
	* element class name     = java.lang.Integer
	* array type name        = [[[I
	* array type description = 3-dimension array of int
	* </pre>
	*
	* @param arrayClass a primitive array class such as {@code int[].class},
	*                   {@code boolean[][].class}, etc. The {@link
	*                   #getElementOpenType()} method of the returned
	*                   {@code ArrayType} returns the {@link SimpleType}
	*                   corresponding to the wrapper type of the primitive
	*                   type of the array.
	*
	* @throws IllegalArgumentException if <var>arrayClass</var> is not
	*                                  a primitive array.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getPrimitiveArrayType<T>(arrayClass : Class<T>) : ArrayType<T>;
	
	
}
