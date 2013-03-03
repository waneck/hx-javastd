package java.io;
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
extern class ObjectStreamField implements java.lang.Comparable<Dynamic>
{
	/**
	* Create a Serializable field with the specified type.  This field should
	* be documented with a <code>serialField</code> tag.
	*
	* @param   name the name of the serializable field
	* @param   type the <code>Class</code> object of the serializable field
	*/
	@:overload @:public public function new(name : String, type : Class<Dynamic>) : Void;
	
	/**
	* Creates an ObjectStreamField representing a serializable field with the
	* given name and type.  If unshared is false, values of the represented
	* field are serialized and deserialized in the default manner--if the
	* field is non-primitive, object values are serialized and deserialized as
	* if they had been written and read by calls to writeObject and
	* readObject.  If unshared is true, values of the represented field are
	* serialized and deserialized as if they had been written and read by
	* calls to writeUnshared and readUnshared.
	*
	* @param   name field name
	* @param   type field type
	* @param   unshared if false, write/read field values in the same manner
	*          as writeObject/readObject; if true, write/read in the same
	*          manner as writeUnshared/readUnshared
	* @since   1.4
	*/
	@:require(java4) @:overload @:public public function new(name : String, type : Class<Dynamic>, unshared : Bool) : Void;
	
	/**
	* Get the name of this field.
	*
	* @return  a <code>String</code> representing the name of the serializable
	*          field
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Get the type of the field.  If the type is non-primitive and this
	* <code>ObjectStreamField</code> was obtained from a deserialized {@link
	* ObjectStreamClass} instance, then <code>Object.class</code> is returned.
	* Otherwise, the <code>Class</code> object for the type of the field is
	* returned.
	*
	* @return  a <code>Class</code> object representing the type of the
	*          serializable field
	*/
	@:overload @:public public function getType() : Class<Dynamic>;
	
	/**
	* Returns character encoding of field type.  The encoding is as follows:
	* <blockquote><pre>
	* B            byte
	* C            char
	* D            double
	* F            float
	* I            int
	* J            long
	* L            class or interface
	* S            short
	* Z            boolean
	* [            array
	* </pre></blockquote>
	*
	* @return  the typecode of the serializable field
	*/
	@:overload @:public public function getTypeCode() : java.StdTypes.Char16;
	
	/**
	* Return the JVM type signature.
	*
	* @return  null if this field has a primitive type.
	*/
	@:overload @:public public function getTypeString() : String;
	
	/**
	* Offset of field within instance data.
	*
	* @return  the offset of this field
	* @see #setOffset
	*/
	@:overload @:public public function getOffset() : Int;
	
	/**
	* Offset within instance data.
	*
	* @param   offset the offset of the field
	* @see #getOffset
	*/
	@:overload @:protected private function setOffset(offset : Int) : Void;
	
	/**
	* Return true if this field has a primitive type.
	*
	* @return  true if and only if this field corresponds to a primitive type
	*/
	@:overload @:public public function isPrimitive() : Bool;
	
	/**
	* Returns boolean value indicating whether or not the serializable field
	* represented by this ObjectStreamField instance is unshared.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function isUnshared() : Bool;
	
	/**
	* Compare this field with another <code>ObjectStreamField</code>.  Return
	* -1 if this is smaller, 0 if equal, 1 if greater.  Types that are
	* primitives are "smaller" than object types.  If equal, the field names
	* are compared.
	*/
	@:overload @:public public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Return a string that describes this field.
	*/
	@:overload @:public public function toString() : String;
	
	
}
