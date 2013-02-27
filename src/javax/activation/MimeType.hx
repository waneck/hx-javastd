package javax.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeType implements java.io.Externalizable
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor that builds a MimeType from a String.
	*
	* @param rawdata   the MIME type string
	*/
	@:overload public function new(rawdata : String) : Void;
	
	/**
	* Constructor that builds a MimeType with the given primary and sub type
	* but has an empty parameter list.
	*
	* @param primary   the primary MIME type
	* @param sub       the MIME sub-type
	* @exception       MimeTypeParseException  if the primary type or subtype
	*                                          is not a valid token
	*/
	@:overload public function new(primary : String, sub : String) : Void;
	
	/**
	* Retrieve the primary type of this object.
	*
	* @return  the primary MIME type
	*/
	@:overload public function getPrimaryType() : String;
	
	/**
	* Set the primary type for this object to the given String.
	*
	* @param primary   the primary MIME type
	* @exception       MimeTypeParseException  if the primary type
	*                                          is not a valid token
	*/
	@:overload public function setPrimaryType(primary : String) : Void;
	
	/**
	* Retrieve the subtype of this object.
	*
	* @return  the MIME subtype
	*/
	@:overload public function getSubType() : String;
	
	/**
	* Set the subtype for this object to the given String.
	*
	* @param sub       the MIME subtype
	* @exception       MimeTypeParseException  if the subtype
	*                                          is not a valid token
	*/
	@:overload public function setSubType(sub : String) : Void;
	
	/**
	* Retrieve this object's parameter list.
	*
	* @return  a MimeTypeParameterList object representing the parameters
	*/
	@:overload public function getParameters() : javax.activation.MimeTypeParameterList;
	
	/**
	* Retrieve the value associated with the given name, or null if there
	* is no current association.
	*
	* @param name      the parameter name
	* @return          the paramter's value
	*/
	@:overload public function getParameter(name : String) : String;
	
	/**
	* Set the value to be associated with the given name, replacing
	* any previous association.
	*
	* @param name      the parameter name
	* @param value     the paramter's value
	*/
	@:overload public function setParameter(name : String, value : String) : Void;
	
	/**
	* Remove any value associated with the given name.
	*
	* @param name      the parameter name
	*/
	@:overload public function removeParameter(name : String) : Void;
	
	/**
	* Return the String representation of this object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Return a String representation of this object
	* without the parameter list.
	*
	* @return  the MIME type and sub-type
	*/
	@:overload public function getBaseType() : String;
	
	/**
	* Determine if the primary and sub type of this object is
	* the same as what is in the given type.
	*
	* @param type      the MimeType object to compare with
	* @return          true if they match
	*/
	@:overload public function match(type : MimeType) : Bool;
	
	/**
	* Determine if the primary and sub type of this object is
	* the same as the content type described in rawdata.
	*
	* @param rawdata   the MIME type string to compare with
	* @return          true if they match
	*/
	@:overload public function match(rawdata : String) : Bool;
	
	/**
	* The object implements the writeExternal method to save its contents
	* by calling the methods of DataOutput for its primitive values or
	* calling the writeObject method of ObjectOutput for objects, strings
	* and arrays.
	*
	* @param out       the ObjectOutput object to write to
	* @exception IOException Includes any I/O exceptions that may occur
	*/
	@:overload public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* The object implements the readExternal method to restore its
	* contents by calling the methods of DataInput for primitive
	* types and readObject for objects, strings and arrays.  The
	* readExternal method must read the values in the same sequence
	* and with the same types as were written by writeExternal.
	*
	* @param in        the ObjectInput object to read from
	* @exception ClassNotFoundException If the class for an object being
	*              restored cannot be found.
	*/
	@:overload public function readExternal(_in : java.io.ObjectInput) : Void;
	
	
}
