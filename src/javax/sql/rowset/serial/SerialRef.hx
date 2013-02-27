package javax.sql.rowset.serial;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A serialized mapping of a <code>Ref</code> object, which is the mapping in the
* Java programming language of an SQL <code>REF</code> value.
* <p>
* The <code>SerialRef</code> class provides a constructor  for
* creating a <code>SerialRef</code> instance from a <code>Ref</code>
* object and provides methods for getting and setting the <code>Ref</code> object.
*/
extern class SerialRef implements java.sql.Ref implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructs a <code>SerialRef</code> object from the given <code>Ref</code>
	* object.
	*
	* @param ref a Ref object; cannot be <code>null</code>
	* @throws SQLException if a database access occurs; if <code>ref</code>
	*     is <code>null</code>; or if the <code>Ref</code> object returns a
	*     <code>null</code> value base type name.
	* @throws SerialException if an error occurs serializing the <code>Ref</code>
	*     object
	*/
	@:overload public function new(ref : java.sql.Ref) : Void;
	
	/**
	* Returns a string describing the base type name of the <code>Ref</code>.
	*
	* @return a string of the base type name of the Ref
	* @throws SerialException in no Ref object has been set
	*/
	@:overload public function getBaseTypeName() : String;
	
	/**
	* Returns an <code>Object</code> representing the SQL structured type
	* to which this <code>SerialRef</code> object refers.  The attributes
	* of the structured type are mapped according to the given type map.
	*
	* @param map a <code>java.util.Map</code> object containing zero or
	*        more entries, with each entry consisting of 1) a <code>String</code>
	*        giving the fully qualified name of a UDT and 2) the
	*        <code>Class</code> object for the <code>SQLData</code> implementation
	*        that defines how the UDT is to be mapped
	* @return an object instance resolved from the Ref reference and mapped
	*        according to the supplied type map
	* @throws SerialException if an error is encountered in the reference
	*        resolution
	*/
	@:overload public function getObject(map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Returns an <code>Object</code> representing the SQL structured type
	* to which this <code>SerialRef</code> object refers.
	*
	* @return an object instance resolved from the Ref reference
	* @throws SerialException if an error is encountered in the reference
	*         resolution
	*/
	@:overload public function getObject() : Dynamic;
	
	/**
	* Sets the SQL structured type that this <code>SerialRef</code> object
	* references to the given <code>Object</code> object.
	*
	* @param obj an <code>Object</code> representing the SQL structured type
	*        to be referenced
	* @throws SerialException if an error is encountered generating the
	* the structured type referenced by this <code>SerialRef</code> object
	*/
	@:overload public function setObject(obj : Dynamic) : Void;
	
	
}
