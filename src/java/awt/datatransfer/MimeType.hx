package java.awt.datatransfer;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MimeType implements java.io.Externalizable implements java.lang.Cloneable
{
	/**
	* Constructor for externalization; this constructor should not be
	* called directly by an application, since the result will be an
	* uninitialized, immutable <code>MimeType</code> object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Builds a <code>MimeType</code> from a <code>String</code>.
	*
	* @param rawdata text used to initialize the <code>MimeType</code>
	* @throws NullPointerException if <code>rawdata</code> is null
	*/
	@:overload public function new(rawdata : String) : Void;
	
	/**
	* Builds a <code>MimeType</code> with the given primary and sub
	* type but has an empty parameter list.
	*
	* @param primary the primary type of this <code>MimeType</code>
	* @param sub the subtype of this <code>MimeType</code>
	* @throws NullPointerException if either <code>primary</code> or
	*         <code>sub</code> is null
	*/
	@:overload public function new(primary : String, sub : String) : Void;
	
	/**
	* Builds a <code>MimeType</code> with a pre-defined
	* and valid (or empty) parameter list.
	*
	* @param primary the primary type of this <code>MimeType</code>
	* @param sub the subtype of this <code>MimeType</code>
	* @param mtpl the requested parameter list
	* @throws NullPointerException if either <code>primary</code>,
	*         <code>sub</code> or <code>mtpl</code> is null
	*/
	@:overload public function new(primary : String, sub : String, mtpl : java.awt.datatransfer.MimeTypeParameterList) : Void;
	
	@:overload public function hashCode() : Int;
	
	/**
	* <code>MimeType</code>s are equal if their primary types,
	* subtypes, and  parameters are all equal. No default values
	* are taken into account.
	* @param thatObject the object to be evaluated as a
	*    <code>MimeType</code>
	* @return <code>true</code> if <code>thatObject</code> is
	*    a <code>MimeType</code>; otherwise returns <code>false</code>
	*/
	@:overload public function equals(thatObject : Dynamic) : Bool;
	
	/**
	* Retrieve the primary type of this object.
	*/
	@:overload public function getPrimaryType() : String;
	
	/**
	* Retrieve the sub type of this object.
	*/
	@:overload public function getSubType() : String;
	
	/**
	* Retrieve a copy of this object's parameter list.
	*/
	@:overload public function getParameters() : java.awt.datatransfer.MimeTypeParameterList;
	
	/**
	* Retrieve the value associated with the given name, or null if there
	* is no current association.
	*/
	@:overload public function getParameter(name : String) : String;
	
	/**
	* Set the value to be associated with the given name, replacing
	* any previous association.
	*
	* @throw IllegalArgumentException if parameter or value is illegal
	*/
	@:overload public function setParameter(name : String, value : String) : Void;
	
	/**
	* Remove any value associated with the given name.
	*
	* @throw IllegalArgumentExcpetion if parameter may not be deleted
	*/
	@:overload public function removeParameter(name : String) : Void;
	
	/**
	* Return the String representation of this object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Return a String representation of this object
	* without the parameter list.
	*/
	@:overload public function getBaseType() : String;
	
	/**
	* Returns <code>true</code> if the primary type and the
	* subtype of this object are the same as the specified
	* <code>type</code>; otherwise returns <code>false</code>.
	*
	* @param type the type to compare to <code>this</code>'s type
	* @return <code>true</code> if the primary type and the
	*    subtype of this object are the same as the
	*    specified <code>type</code>; otherwise returns
	*    <code>false</code>
	*/
	@:overload public function match(type : MimeType) : Bool;
	
	/**
	* Returns <code>true</code> if the primary type and the
	* subtype of this object are the same as the content type
	* described in <code>rawdata</code>; otherwise returns
	* <code>false</code>.
	*
	* @param rawdata the raw data to be examined
	* @return <code>true</code> if the primary type and the
	*    subtype of this object are the same as the content type
	*    described in <code>rawdata</code>; otherwise returns
	*    <code>false</code>; if <code>rawdata</code> is
	*    <code>null</code>, returns <code>false</code>
	*/
	@:overload public function match(rawdata : String) : Bool;
	
	/**
	* The object implements the writeExternal method to save its contents
	* by calling the methods of DataOutput for its primitive values or
	* calling the writeObject method of ObjectOutput for objects, strings
	* and arrays.
	* @exception IOException Includes any I/O exceptions that may occur
	*/
	@:overload public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* The object implements the readExternal method to restore its
	* contents by calling the methods of DataInput for primitive
	* types and readObject for objects, strings and arrays.  The
	* readExternal method must read the values in the same sequence
	* and with the same types as were written by writeExternal.
	* @exception ClassNotFoundException If the class for an object being
	*              restored cannot be found.
	*/
	@:overload public function readExternal(_in : java.io.ObjectInput) : Void;
	
	/**
	* Returns a clone of this object.
	* @return a clone of this object
	*/
	@:overload public function clone() : Dynamic;
	
	
}
