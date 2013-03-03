package java.sql;
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
* <P>The class that defines the constants that are used to identify generic
* SQL types, called JDBC types.
* <p>
* This class is never instantiated.
*/
extern class Types
{
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>BIT</code>.
	*/
	@:public @:final @:static public static var BIT(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>TINYINT</code>.
	*/
	@:public @:final @:static public static var TINYINT(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>SMALLINT</code>.
	*/
	@:public @:final @:static public static var SMALLINT(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>INTEGER</code>.
	*/
	@:public @:final @:static public static var INTEGER(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>BIGINT</code>.
	*/
	@:public @:final @:static public static var BIGINT(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>FLOAT</code>.
	*/
	@:public @:final @:static public static var FLOAT(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>REAL</code>.
	*/
	@:public @:final @:static public static var REAL(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>DOUBLE</code>.
	*/
	@:public @:final @:static public static var DOUBLE(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>NUMERIC</code>.
	*/
	@:public @:final @:static public static var NUMERIC(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>DECIMAL</code>.
	*/
	@:public @:final @:static public static var DECIMAL(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>CHAR</code>.
	*/
	@:public @:final @:static public static var CHAR(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>VARCHAR</code>.
	*/
	@:public @:final @:static public static var VARCHAR(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>LONGVARCHAR</code>.
	*/
	@:public @:final @:static public static var LONGVARCHAR(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>DATE</code>.
	*/
	@:public @:final @:static public static var DATE(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>TIME</code>.
	*/
	@:public @:final @:static public static var TIME(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>TIMESTAMP</code>.
	*/
	@:public @:final @:static public static var TIMESTAMP(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>BINARY</code>.
	*/
	@:public @:final @:static public static var BINARY(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>VARBINARY</code>.
	*/
	@:public @:final @:static public static var VARBINARY(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language, sometimes referred
	* to as a type code, that identifies the generic SQL type
	* <code>LONGVARBINARY</code>.
	*/
	@:public @:final @:static public static var LONGVARBINARY(default, null) : Int;
	
	/**
	* <P>The constant in the Java programming language
	* that identifies the generic SQL value
	* <code>NULL</code>.
	*/
	@:public @:final @:static public static var NULL(default, null) : Int;
	
	/**
	* The constant in the Java programming language that indicates
	* that the SQL type is database-specific and
	* gets mapped to a Java object that can be accessed via
	* the methods <code>getObject</code> and <code>setObject</code>.
	*/
	@:public @:final @:static public static var OTHER(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>JAVA_OBJECT</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var JAVA_OBJECT(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>DISTINCT</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var DISTINCT(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>STRUCT</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var STRUCT(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>ARRAY</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var ARRAY(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>BLOB</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var BLOB(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>CLOB</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var CLOB(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type
	* <code>REF</code>.
	* @since 1.2
	*/
	@:require(java2) @:public @:final @:static public static var REF(default, null) : Int;
	
	/**
	* The constant in the Java programming language, somtimes referred to
	* as a type code, that identifies the generic SQL type <code>DATALINK</code>.
	*
	* @since 1.4
	*/
	@:require(java4) @:public @:final @:static public static var DATALINK(default, null) : Int;
	
	/**
	* The constant in the Java programming language, somtimes referred to
	* as a type code, that identifies the generic SQL type <code>BOOLEAN</code>.
	*
	* @since 1.4
	*/
	@:require(java4) @:public @:final @:static public static var BOOLEAN(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type <code>ROWID</code>
	*
	* @since 1.6
	*
	*/
	@:require(java6) @:public @:final @:static public static var ROWID(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type <code>NCHAR</code>
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var NCHAR(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type <code>NVARCHAR</code>.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var NVARCHAR(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type <code>LONGNVARCHAR</code>.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var LONGNVARCHAR(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type <code>NCLOB</code>.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var NCLOB(default, null) : Int;
	
	/**
	* The constant in the Java programming language, sometimes referred to
	* as a type code, that identifies the generic SQL type <code>XML</code>.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var SQLXML(default, null) : Int;
	
	
}
