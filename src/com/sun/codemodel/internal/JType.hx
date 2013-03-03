package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A representation of a type in codeModel.
*
* A type is always either primitive ({@link JPrimitiveType}) or
* a reference type ({@link JClass}).
*/
extern class JType implements com.sun.codemodel.internal.JGenerable implements java.lang.Comparable<com.sun.codemodel.internal.JType>
{
	/**
	* Obtains a reference to the primitive type object from a type name.
	*/
	@:overload @:public @:static public static function parse(codeModel : com.sun.codemodel.internal.JCodeModel, typeName : String) : com.sun.codemodel.internal.JPrimitiveType;
	
	/** Gets the owner code model object. */
	@:overload @:public @:abstract public function owner() : com.sun.codemodel.internal.JCodeModel;
	
	/**
	* Gets the full name of the type.
	*
	* See http://java.sun.com/docs/books/jls/second_edition/html/names.doc.html#25430 for the details.
	*
	* @return
	*      Strings like "int", "java.lang.String",
	*      "java.io.File[]". Never null.
	*/
	@:overload @:public @:abstract public function fullName() : String;
	
	/**
	* Gets the binary name of the type.
	*
	* See http://java.sun.com/docs/books/jls/third_edition/html/binaryComp.html#44909
	*
	* @return
	*      Name like "Foo$Bar", "int", "java.lang.String", "java.io.File[]". Never null.
	*/
	@:overload @:public public function binaryName() : String;
	
	/**
	* Gets the name of this type.
	*
	* @return
	*     Names like "int", "void", "BigInteger".
	*/
	@:overload @:public @:abstract public function name() : String;
	
	/**
	* Create an array type of this type.
	*
	* This method is undefined for primitive void type, which
	* doesn't have any corresponding array representation.
	*
	* @return A {@link JClass} representing the array type
	*         whose element type is this type
	*/
	@:overload @:public @:abstract public function array() : com.sun.codemodel.internal.JClass;
	
	/** Tell whether or not this is an array type. */
	@:overload @:public public function isArray() : Bool;
	
	/** Tell whether or not this is a built-in primitive type, such as int or void. */
	@:overload @:public public function isPrimitive() : Bool;
	
	/**
	* If this class is a primitive type, return the boxed class. Otherwise return <tt>this</tt>.
	*
	* <p>
	* For example, for "int", this method returns "java.lang.Integer".
	*/
	@:overload @:public @:abstract public function boxify() : com.sun.codemodel.internal.JClass;
	
	/**
	* If this class is a wrapper type for a primitive, return the primitive type.
	* Otherwise return <tt>this</tt>.
	*
	* <p>
	* For example, for "java.lang.Integer", this method returns "int".
	*/
	@:overload @:public @:abstract public function unboxify() : com.sun.codemodel.internal.JType;
	
	/**
	* Returns the erasure of this type.
	*/
	@:overload @:public public function erasure() : com.sun.codemodel.internal.JType;
	
	/**
	* Returns true if this is a referenced type.
	*/
	@:overload @:public @:final public function isReference() : Bool;
	
	/**
	* If this is an array, returns the component type of the array.
	* (T of T[])
	*/
	@:overload @:public public function elementType() : com.sun.codemodel.internal.JType;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Compare two JTypes by FQCN, giving sorting precedence to types
	* that belong to packages java and javax over all others.
	*
	* This method is used to sort generated import statments in a
	* conventional way for readability.
	*/
	@:overload @:public public function compareTo(o : com.sun.codemodel.internal.JType) : Int;
	
	@:overload @:public @:public @:public public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	
}
