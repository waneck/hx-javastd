package java.lang.reflect;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* The {@code Array} class provides static methods to dynamically create and
* access Java arrays.
*
* <p>{@code Array} permits widening conversions to occur during a get or set
* operation, but throws an {@code IllegalArgumentException} if a narrowing
* conversion would occur.
*
* @author Nakul Saraiya
*/
extern class Array
{
	/**
	* Creates a new array with the specified component type and
	* length.
	* Invoking this method is equivalent to creating an array
	* as follows:
	* <blockquote>
	* <pre>
	* int[] x = {length};
	* Array.newInstance(componentType, x);
	* </pre>
	* </blockquote>
	*
	* @param componentType the {@code Class} object representing the
	* component type of the new array
	* @param length the length of the new array
	* @return the new array
	* @exception NullPointerException if the specified
	* {@code componentType} parameter is null
	* @exception IllegalArgumentException if componentType is {@link Void#TYPE}
	* @exception NegativeArraySizeException if the specified {@code length}
	* is negative
	*/
	@:overload @:public @:static public static function newInstance(componentType : Class<Dynamic>, length : Int) : Dynamic;
	
	/**
	* Creates a new array
	* with the specified component type and dimensions.
	* If {@code componentType}
	* represents a non-array class or interface, the new array
	* has {@code dimensions.length} dimensions and
	* {@code componentType} as its component type. If
	* {@code componentType} represents an array class, the
	* number of dimensions of the new array is equal to the sum
	* of {@code dimensions.length} and the number of
	* dimensions of {@code componentType}. In this case, the
	* component type of the new array is the component type of
	* {@code componentType}.
	*
	* <p>The number of dimensions of the new array must not
	* exceed the number of array dimensions supported by the
	* implementation (typically 255).
	*
	* @param componentType the {@code Class} object representing the component
	* type of the new array
	* @param dimensions an array of {@code int} representing the dimensions of
	* the new array
	* @return the new array
	* @exception NullPointerException if the specified
	* {@code componentType} argument is null
	* @exception IllegalArgumentException if the specified {@code dimensions}
	* argument is a zero-dimensional array, or if the number of
	* requested dimensions exceeds the limit on the number of array dimensions
	* supported by the implementation (typically 255), or if componentType
	* is {@link Void#TYPE}.
	* @exception NegativeArraySizeException if any of the components in
	* the specified {@code dimensions} argument is negative.
	*/
	@:overload @:public @:static public static function newInstance(componentType : Class<Dynamic>, dimensions : java.NativeArray<Int>) : Dynamic;
	
	/**
	* Returns the length of the specified array object, as an {@code int}.
	*
	* @param array the array
	* @return the length of the array
	* @exception IllegalArgumentException if the object argument is not
	* an array
	*/
	@:overload @:public @:static @:native public static function getLength(array : Dynamic) : Int;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object.  The value is automatically wrapped in an object
	* if it has a primitive type.
	*
	* @param array the array
	* @param index the index
	* @return the (possibly wrapped) value of the indexed component in
	* the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	*/
	@:overload @:public @:static @:native public static function get(array : Dynamic, index : Int) : Dynamic;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code boolean}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getBoolean(array : Dynamic, index : Int) : Bool;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code byte}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getByte(array : Dynamic, index : Int) : java.StdTypes.Int8;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code char}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getChar(array : Dynamic, index : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code short}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getShort(array : Dynamic, index : Int) : java.StdTypes.Int16;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as an {@code int}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getInt(array : Dynamic, index : Int) : Int;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code long}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getLong(array : Dynamic, index : Int) : haxe.Int64;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code float}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getFloat(array : Dynamic, index : Int) : Single;
	
	/**
	* Returns the value of the indexed component in the specified
	* array object, as a {@code double}.
	*
	* @param array the array
	* @param index the index
	* @return the value of the indexed component in the specified array
	* @exception NullPointerException If the specified object is null
	* @exception IllegalArgumentException If the specified object is not
	* an array, or if the indexed element cannot be converted to the
	* return type by an identity or widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to the
	* length of the specified array
	* @see Array#get
	*/
	@:overload @:public @:static @:native public static function getDouble(array : Dynamic, index : Int) : Float;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified new value.  The new value is first
	* automatically unwrapped if the array has a primitive component
	* type.
	* @param array the array
	* @param index the index into the array
	* @param value the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the array component type is primitive and
	* an unwrapping conversion fails
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	*/
	@:overload @:public @:static @:native public static function set(array : Dynamic, index : Int, value : Dynamic) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code boolean} value.
	* @param array the array
	* @param index the index into the array
	* @param z the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setBoolean(array : Dynamic, index : Int, z : Bool) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code byte} value.
	* @param array the array
	* @param index the index into the array
	* @param b the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setByte(array : Dynamic, index : Int, b : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code char} value.
	* @param array the array
	* @param index the index into the array
	* @param c the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setChar(array : Dynamic, index : Int, c : java.StdTypes.Char16) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code short} value.
	* @param array the array
	* @param index the index into the array
	* @param s the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setShort(array : Dynamic, index : Int, s : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code int} value.
	* @param array the array
	* @param index the index into the array
	* @param i the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setInt(array : Dynamic, index : Int, i : Int) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code long} value.
	* @param array the array
	* @param index the index into the array
	* @param l the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setLong(array : Dynamic, index : Int, l : haxe.Int64) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code float} value.
	* @param array the array
	* @param index the index into the array
	* @param f the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setFloat(array : Dynamic, index : Int, f : Single) : Void;
	
	/**
	* Sets the value of the indexed component of the specified array
	* object to the specified {@code double} value.
	* @param array the array
	* @param index the index into the array
	* @param d the new value of the indexed component
	* @exception NullPointerException If the specified object argument
	* is null
	* @exception IllegalArgumentException If the specified object argument
	* is not an array, or if the specified value cannot be converted
	* to the underlying array's component type by an identity or a
	* primitive widening conversion
	* @exception ArrayIndexOutOfBoundsException If the specified {@code index}
	* argument is negative, or if it is greater than or equal to
	* the length of the specified array
	* @see Array#set
	*/
	@:overload @:public @:static @:native public static function setDouble(array : Dynamic, index : Int, d : Float) : Void;
	
	
}
