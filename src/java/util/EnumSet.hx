package java.util;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class EnumSet<E> extends java.util.AbstractSet<E> implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Creates an empty enum set with the specified element type.
	*
	* @param elementType the class object of the element type for this enum
	*     set
	* @throws NullPointerException if <tt>elementType</tt> is null
	*/
	@:overload public static function noneOf<E : java.lang.Enum<E>>(elementType : Class<E>) : EnumSet<E>;
	
	/**
	* Creates an enum set containing all of the elements in the specified
	* element type.
	*
	* @param elementType the class object of the element type for this enum
	*     set
	* @throws NullPointerException if <tt>elementType</tt> is null
	*/
	@:overload public static function allOf<E : java.lang.Enum<E>>(elementType : Class<E>) : EnumSet<E>;
	
	/**
	* Creates an enum set with the same element type as the specified enum
	* set, initially containing the same elements (if any).
	*
	* @param s the enum set from which to initialize this enum set
	* @throws NullPointerException if <tt>s</tt> is null
	*/
	@:overload public static function copyOf<E : java.lang.Enum<E>>(s : EnumSet<E>) : EnumSet<E>;
	
	/**
	* Creates an enum set initialized from the specified collection.  If
	* the specified collection is an <tt>EnumSet</tt> instance, this static
	* factory method behaves identically to {@link #copyOf(EnumSet)}.
	* Otherwise, the specified collection must contain at least one element
	* (in order to determine the new enum set's element type).
	*
	* @param c the collection from which to initialize this enum set
	* @throws IllegalArgumentException if <tt>c</tt> is not an
	*     <tt>EnumSet</tt> instance and contains no elements
	* @throws NullPointerException if <tt>c</tt> is null
	*/
	@:overload public static function copyOf<E : java.lang.Enum<E>>(c : java.util.Collection<E>) : EnumSet<E>;
	
	/**
	* Creates an enum set with the same element type as the specified enum
	* set, initially containing all the elements of this type that are
	* <i>not</i> contained in the specified set.
	*
	* @param s the enum set from whose complement to initialize this enum set
	* @throws NullPointerException if <tt>s</tt> is null
	*/
	@:overload public static function complementOf<E : java.lang.Enum<E>>(s : EnumSet<E>) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing the specified element.
	*
	* Overloadings of this method exist to initialize an enum set with
	* one through five elements.  A sixth overloading is provided that
	* uses the varargs feature.  This overloading may be used to create
	* an enum set initially containing an arbitrary number of elements, but
	* is likely to run slower than the overloadings that do not use varargs.
	*
	* @param e the element that this set is to contain initially
	* @throws NullPointerException if <tt>e</tt> is null
	* @return an enum set initially containing the specified element
	*/
	@:overload public static function of<E : java.lang.Enum<E>>(e : E) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing the specified elements.
	*
	* Overloadings of this method exist to initialize an enum set with
	* one through five elements.  A sixth overloading is provided that
	* uses the varargs feature.  This overloading may be used to create
	* an enum set initially containing an arbitrary number of elements, but
	* is likely to run slower than the overloadings that do not use varargs.
	*
	* @param e1 an element that this set is to contain initially
	* @param e2 another element that this set is to contain initially
	* @throws NullPointerException if any parameters are null
	* @return an enum set initially containing the specified elements
	*/
	@:overload public static function of<E : java.lang.Enum<E>>(e1 : E, e2 : E) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing the specified elements.
	*
	* Overloadings of this method exist to initialize an enum set with
	* one through five elements.  A sixth overloading is provided that
	* uses the varargs feature.  This overloading may be used to create
	* an enum set initially containing an arbitrary number of elements, but
	* is likely to run slower than the overloadings that do not use varargs.
	*
	* @param e1 an element that this set is to contain initially
	* @param e2 another element that this set is to contain initially
	* @param e3 another element that this set is to contain initially
	* @throws NullPointerException if any parameters are null
	* @return an enum set initially containing the specified elements
	*/
	@:overload public static function of<E : java.lang.Enum<E>>(e1 : E, e2 : E, e3 : E) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing the specified elements.
	*
	* Overloadings of this method exist to initialize an enum set with
	* one through five elements.  A sixth overloading is provided that
	* uses the varargs feature.  This overloading may be used to create
	* an enum set initially containing an arbitrary number of elements, but
	* is likely to run slower than the overloadings that do not use varargs.
	*
	* @param e1 an element that this set is to contain initially
	* @param e2 another element that this set is to contain initially
	* @param e3 another element that this set is to contain initially
	* @param e4 another element that this set is to contain initially
	* @throws NullPointerException if any parameters are null
	* @return an enum set initially containing the specified elements
	*/
	@:overload public static function of<E : java.lang.Enum<E>>(e1 : E, e2 : E, e3 : E, e4 : E) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing the specified elements.
	*
	* Overloadings of this method exist to initialize an enum set with
	* one through five elements.  A sixth overloading is provided that
	* uses the varargs feature.  This overloading may be used to create
	* an enum set initially containing an arbitrary number of elements, but
	* is likely to run slower than the overloadings that do not use varargs.
	*
	* @param e1 an element that this set is to contain initially
	* @param e2 another element that this set is to contain initially
	* @param e3 another element that this set is to contain initially
	* @param e4 another element that this set is to contain initially
	* @param e5 another element that this set is to contain initially
	* @throws NullPointerException if any parameters are null
	* @return an enum set initially containing the specified elements
	*/
	@:overload public static function of<E : java.lang.Enum<E>>(e1 : E, e2 : E, e3 : E, e4 : E, e5 : E) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing the specified elements.
	* This factory, whose parameter list uses the varargs feature, may
	* be used to create an enum set initially containing an arbitrary
	* number of elements, but it is likely to run slower than the overloadings
	* that do not use varargs.
	*
	* @param first an element that the set is to contain initially
	* @param rest the remaining elements the set is to contain initially
	* @throws NullPointerException if any of the specified elements are null,
	*     or if <tt>rest</tt> is null
	* @return an enum set initially containing the specified elements
	*/
	@:overload public static function of<E : java.lang.Enum<E>>(first : E, rest : java.NativeArray<E>) : EnumSet<E>;
	
	/**
	* Creates an enum set initially containing all of the elements in the
	* range defined by the two specified endpoints.  The returned set will
	* contain the endpoints themselves, which may be identical but must not
	* be out of order.
	*
	* @param from the first element in the range
	* @param to the last element in the range
	* @throws NullPointerException if {@code from} or {@code to} are null
	* @throws IllegalArgumentException if {@code from.compareTo(to) > 0}
	* @return an enum set initially containing all of the elements in the
	*         range defined by the two specified endpoints
	*/
	@:overload public static function range<E : java.lang.Enum<E>>(from : E, to : E) : EnumSet<E>;
	
	/**
	* Returns a copy of this set.
	*
	* @return a copy of this set
	*/
	@:overload public function clone() : EnumSet<E>;
	
	
}
/**
* This class is used to serialize all EnumSet instances, regardless of
* implementation type.  It captures their "logical contents" and they
* are reconstructed using public static factories.  This is necessary
* to ensure that the existence of a particular implementation type is
* an implementation detail.
*
* @serial include
*/
@:native('java$util$EnumSet$SerializationProxy') @:internal extern class EnumSet_SerializationProxy<E> implements java.io.Serializable
{
	
}
