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
* A serialized mapping in the Java programming language of an SQL
* structured type. Each attribute that is not already serialized
* is mapped to a serialized form, and if an attribute is itself
* a structured type, each of its attributes that is not already
* serialized is mapped to a serialized form.
* <P>
* In addition, the structured type is custom mapped to a class in the
* Java programming language if there is such a mapping, as are
* its attributes, if appropriate.
* <P>
* The <code>SerialStruct</code> class provides a constructor for creating
* an instance from a <code>Struct</code> object, a method for retrieving
* the SQL type name of the SQL structured type in the database, and methods
* for retrieving its attribute values.
*/
extern class SerialStruct implements java.sql.Struct implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructs a <code>SerialStruct</code> object from the given
	* <code>Struct</code> object, using the given <code>java.util.Map</code>
	* object for custom mapping the SQL structured type or any of its
	* attributes that are SQL structured types.
	*
	* @param map a <code>java.util.Map</code> object in which
	*        each entry consists of 1) a <code>String</code> object
	*        giving the fully qualified name of a UDT and 2) the
	*        <code>Class</code> object for the <code>SQLData</code> implementation
	*        that defines how the UDT is to be mapped
	* @throws SerialException if an error occurs
	* @see java.sql.Struct
	*/
	@:overload public function new(_in : java.sql.Struct, map : java.util.Map<String, Class<Dynamic>>) : Void;
	
	/**
	* Constructs a <code>SerialStruct</code> object from the
	* given <code>SQLData</code> object, using the given type
	* map to custom map it to a class in the Java programming
	* language.  The type map gives the SQL type and the class
	* to which it is mapped.  The <code>SQLData</code> object
	* defines the class to which the SQL type will be mapped.
	*
	* @param in an instance of the <code>SQLData</code> class
	*           that defines the mapping of the SQL structured
	*           type to one or more objects in the Java programming language
	* @param map a <code>java.util.Map</code> object in which
	*        each entry consists of 1) a <code>String</code> object
	*        giving the fully qualified name of a UDT and 2) the
	*        <code>Class</code> object for the <code>SQLData</code> implementation
	*        that defines how the UDT is to be mapped
	* @throws SerialException if an error occurs
	*/
	@:overload public function new(_in : java.sql.SQLData, map : java.util.Map<String, Class<Dynamic>>) : Void;
	
	/**
	* Retrieves the SQL type name for this <code>SerialStruct</code>
	* object. This is the name used in the SQL definition of the
	* structured type
	*
	* @return a <code>String</code> object representing the SQL
	*         type name for the SQL structured type that this
	*         <code>SerialStruct</code> object represents
	* @throws SerialException if an error occurs
	*/
	@:overload public function getSQLTypeName() : String;
	
	/**
	* Retrieves an array of <code>Object</code> values containing the
	* attributes of the SQL structured type that this
	* <code>SerialStruct</code> object represents.
	*
	* @return an array of <code>Object</code> values, with each
	*         element being an attribute of the SQL structured type
	*         that this <code>SerialStruct</code> object represents
	* @throws SerialException if an error occurs
	*/
	@:overload public function getAttributes() : java.NativeArray<Dynamic>;
	
	/**
	* Retrieves the attributes for the SQL structured type that
	* this <code>SerialStruct</code> represents as an array of
	* <code>Object</code> values, using the given type map for
	* custom mapping if appropriate.
	*
	* @param map a <code>java.util.Map</code> object in which
	*        each entry consists of 1) a <code>String</code> object
	*        giving the fully qualified name of a UDT and 2) the
	*        <code>Class</code> object for the <code>SQLData</code> implementation
	*        that defines how the UDT is to be mapped
	* @return an array of <code>Object</code> values, with each
	*         element being an attribute of the SQL structured
	*         type that this <code>SerialStruct</code> object
	*         represents
	* @throws SerialException if an error occurs
	*/
	@:overload public function getAttributes(map : java.util.Map<String, Class<Dynamic>>) : java.NativeArray<Dynamic>;
	
	
}
