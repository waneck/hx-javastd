package java.sql;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* An object that can be used to get information about the types
* and properties for each parameter marker in a
* <code>PreparedStatement</code> object. For some queries and driver
* implementations, the data that would be returned by a <code>ParameterMetaData</code>
* object may not be available until the <code>PreparedStatement</code> has
* been executed.
*<p>
*Some driver implementations may not be able to provide information about the
*types and properties for each parameter marker in a <code>CallableStatement</code>
*object.
*
* @since 1.4
*/
@:require(java4) extern interface ParameterMetaData extends java.sql.Wrapper
{
	/**
	* Retrieves the number of parameters in the <code>PreparedStatement</code>
	* object for which this <code>ParameterMetaData</code> object contains
	* information.
	*
	* @return the number of parameters
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getParameterCount() : Int;
	
	/**
	* Retrieves whether null values are allowed in the designated parameter.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return the nullability status of the given parameter; one of
	*        <code>ParameterMetaData.parameterNoNulls</code>,
	*        <code>ParameterMetaData.parameterNullable</code>, or
	*        <code>ParameterMetaData.parameterNullableUnknown</code>
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function isNullable(param : Int) : Int;
	
	/**
	* The constant indicating that a
	* parameter will not allow <code>NULL</code> values.
	*/
	public var parameterNoNulls : Int;
	
	/**
	* The constant indicating that a
	* parameter will allow <code>NULL</code> values.
	*/
	public var parameterNullable : Int;
	
	/**
	* The constant indicating that the
	* nullability of a parameter is unknown.
	*/
	public var parameterNullableUnknown : Int;
	
	/**
	* Retrieves whether values for the designated parameter can be signed numbers.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return <code>true</code> if so; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function isSigned(param : Int) : Bool;
	
	/**
	* Retrieves the designated parameter's specified column size.
	*
	* <P>The returned value represents the maximum column size for the given parameter.
	* For numeric data, this is the maximum precision.  For character data, this is the length in characters.
	* For datetime datatypes, this is the length in characters of the String representation (assuming the
	* maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype,
	* this is the length in bytes. 0 is returned for data types where the
	* column size is not applicable.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return precision
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPrecision(param : Int) : Int;
	
	/**
	* Retrieves the designated parameter's number of digits to right of the decimal point.
	* 0 is returned for data types where the scale is not applicable.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return scale
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getScale(param : Int) : Int;
	
	/**
	* Retrieves the designated parameter's SQL type.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return SQL type from <code>java.sql.Types</code>
	* @exception SQLException if a database access error occurs
	* @since 1.4
	* @see Types
	*/
	@:require(java4) @:overload public function getParameterType(param : Int) : Int;
	
	/**
	* Retrieves the designated parameter's database-specific type name.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return type the name used by the database. If the parameter type is
	* a user-defined type, then a fully-qualified type name is returned.
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getParameterTypeName(param : Int) : String;
	
	/**
	* Retrieves the fully-qualified name of the Java class whose instances
	* should be passed to the method <code>PreparedStatement.setObject</code>.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return the fully-qualified name of the class in the Java programming
	*         language that would be used by the method
	*         <code>PreparedStatement.setObject</code> to set the value
	*         in the specified parameter. This is the class name used
	*         for custom mapping.
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getParameterClassName(param : Int) : String;
	
	/**
	* The constant indicating that the mode of the parameter is unknown.
	*/
	public var parameterModeUnknown : Int;
	
	/**
	* The constant indicating that the parameter's mode is IN.
	*/
	public var parameterModeIn : Int;
	
	/**
	* The constant indicating that the parameter's mode is INOUT.
	*/
	public var parameterModeInOut : Int;
	
	/**
	* The constant indicating that the parameter's mode is  OUT.
	*/
	public var parameterModeOut : Int;
	
	/**
	* Retrieves the designated parameter's mode.
	*
	* @param param the first parameter is 1, the second is 2, ...
	* @return mode of the parameter; one of
	*        <code>ParameterMetaData.parameterModeIn</code>,
	*        <code>ParameterMetaData.parameterModeOut</code>, or
	*        <code>ParameterMetaData.parameterModeInOut</code>
	*        <code>ParameterMetaData.parameterModeUnknown</code>.
	* @exception SQLException if a database access error occurs
	* @since 1.4
	*/
	@:require(java4) @:overload public function getParameterMode(param : Int) : Int;
	
	
}
