package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
* COMPONENT_NAME: idl.parser
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// -capitalize and parseTypeModifier should probably be in the
////  generators package.
//// -D58319<daz> Add version() method.
//// -D62023<daz> Add absDelta() method to support float computations.
extern class Util
{
	/**
	* Fetch the version number of this build of the IDL Parser Framework
	* from the appropriate properties file.
	* @return the version number contained within the appropriate properties
	*  file, which indicates the build of this IDL Parser Framework.
	**/
	@:overload public static function getVersion() : String;
	
	/**
	* Fetch the version number of this build of the IDL Parser Framework.
	* This method may be called before or after the framework has been
	* initialized. If the framework is inititialized, the version information
	* is extracted from the message properties object; otherwise, it is extracted
	* from the indicated messages file.
	* @return the version number.
	**/
	@:overload public static function getVersion(filename : String) : String;
	
	@:overload public static function isAttribute(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isConst(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isEnum(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isException(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isInterface(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isMethod(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isModule(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isParameter(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isPrimitive(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isSequence(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isStruct(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isString(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isTypedef(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function isUnion(name : String, symbolTable : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function getMessage(key : String) : String;
	
	@:overload public static function getMessage(key : String, fill : String) : String;
	
	@:overload public static function getMessage(key : String, fill : java.NativeArray<String>) : String;
	
	/** Register a message file.  This file will be searched for
	in the CLASSPATH. */
	@:overload public static function registerMessageFile(filename : String) : Void;
	
	@:overload public static function capitalize(lc : String) : String;
	
	/** Searches the current user directory and a list of directories for
	a given short file name and returns its absolute file specification.
	@return Absolute file name of a given short filename
	@throws FileNotFoundException The file does not exist in the
	current user or specified directories.
	@see java.io.File.getAbsolutePath */
	@:overload public static function getAbsolutePath(filename : String, includePaths : java.util.Vector<Dynamic>) : String;
	
	/**
	* Compute the absolute value of the difference between two floating-point
	* numbers having single precision.
	* @return the absolute value of the difference between two floats.
	**/
	@:overload public static function absDelta(f1 : Single, f2 : Single) : Single;
	
	
}
