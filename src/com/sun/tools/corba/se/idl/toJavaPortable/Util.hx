package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
* COMPONENT_NAME: idl.toJava
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// Notes:
//// -F46838.4<klr> Ported -td option from toJava.
//// -10/17/98  KLR Ported fix for d48911 from toJava
//// -10/18/98  KLR Ported fix from toJava for "unsigned long" constants
//// -F46082.51<daz> Removed code to collect makefile list generation inforamtion
////  from getStream(); see f46830.
//// -F46082.51<daz> Removed -stateful feature: methods javaStatefulName(String)
////  and javaStatefulName(SymtabEntry) are obsolete, supplanted by javaName().
//// -D54640<daz> Represent unsigned long long expressions with their computed
////  value rather than their actual representation (see notes in method
////  parseTerminal(), parseBinary(), and parseUnary().)
//// -D58319<daz> Add getVersion() method.
//// -D48034<daz> Import Helper classes for typedef struct members when generating
////  helper.  See method addImportLines().
//// -D59851<daz> Modify to enable QuickTest build. (pending)
//// -D42256<daz> Determine import lines for template types, which may specify any
////  positive int., constant expression for a boundary. Such expression containing
////  non-literal contansts previously caused problems when appearing in constructs
////  structs, unions, exceptions, typedefs, operation types and parameters,
////  attributes; and of course, sequences, strings.
//// -D59063<daz> Add helper for global exception to stub import list.
//// -D58951<daz> Publicise members for QuickTest.
//// -D59421<klr> Change ValueBaseHolder to SerializableHolder
//// -D59596<klr> Prevent accesses to elements of empty Vectors.
//// -D59771<daz> Add import stmt for Helper of global type in stubs.
//// -D59355<daz> Remove target dir. from filename when writing to prolog.
//// -D59437<daz> Fill typename information for value boxes.
//// -D62023<klr> Don't import ValueBase*
//// -D62023<klr> Add corbaLevel
/**
* Class Util is a repository of static members available for general
* use by the IDL parser framework and any generator extensions.
**/
extern class Util extends com.sun.tools.corba.se.idl.Util
{
	/**
	* Fetch the version number of this build of the IDL-to-Java (portable)
	* compiler from the appropriate properties file.
	* @return the version number of this compiler build.
	**/
	@:overload @:public @:static public static function getVersion() : String;
	
	@:overload @:public @:static public static function setPackageTranslation(pkgtrans : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:public @:static public static function isInterface(name : String) : Bool;
	
	@:overload @:public @:static public static function sansArrayInfo(arrayInfo : java.util.Vector<Dynamic>) : String;
	
	@:overload @:static @:public public static function sansArrayInfo(name : String) : String;
	
	/**
	* Given a symbol table entry, return the name of
	* the file which should be created.
	**/
	@:overload @:public @:static public static function fileName(entry : com.sun.tools.corba.se.idl.SymtabEntry, extension : String) : String;
	
	@:overload @:public @:static public static function fileName(entry : com.sun.tools.corba.se.idl.SymtabEntry, modifier : com.sun.tools.corba.se.idl.toJavaPortable.NameModifier, extension : String) : String;
	
	@:overload @:public @:static public static function stream(entry : com.sun.tools.corba.se.idl.SymtabEntry, extension : String) : com.sun.tools.corba.se.idl.GenFileStream;
	
	@:overload @:public @:static public static function stream(entry : com.sun.tools.corba.se.idl.SymtabEntry, modifier : com.sun.tools.corba.se.idl.toJavaPortable.NameModifier, extension : String) : com.sun.tools.corba.se.idl.GenFileStream;
	
	@:overload @:public @:static public static function getStream(name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry) : com.sun.tools.corba.se.idl.GenFileStream;
	
	@:overload @:public @:static public static function containerFullName(container : com.sun.tools.corba.se.idl.SymtabEntry) : String;
	
	@:overload @:public @:static public static function translate(name : String) : String;
	
	/**
	* Given a SymtabEntry, return the string which should be used
	* for this entry. Enums are converted to ints, typedefs and
	* sequences are converted to their info types. javaQualifiedName
	* does not do any of these conversions.
	**/
	@:overload @:public @:static public static function javaName(entry : com.sun.tools.corba.se.idl.SymtabEntry) : String;
	
	@:overload @:public @:static public static function javaPrimName(name : String) : String;
	
	@:overload @:public @:static public static function javaNativeName(name : String) : String;
	
	/**
	* Given a symtabEntry, return the name of this entry. This
	* method does not do any conversions like javaName does.
	**/
	@:overload @:public @:static public static function javaQualifiedName(entry : com.sun.tools.corba.se.idl.SymtabEntry) : String;
	
	/**
	* Collapse primitive type names.
	**/
	@:overload @:public @:static public static function collapseName(name : String) : String;
	
	/**
	*
	**/
	@:overload @:public @:static public static function typeOf(entry : com.sun.tools.corba.se.idl.SymtabEntry) : com.sun.tools.corba.se.idl.SymtabEntry;
	
	/**
	*
	**/
	@:overload @:public @:static public static function holderName(entry : com.sun.tools.corba.se.idl.SymtabEntry) : String;
	
	/**
	* <d61056>
	**/
	@:overload @:public @:static public static function helperName(entry : com.sun.tools.corba.se.idl.SymtabEntry, qualifiedName : Bool) : String;
	
	@:public @:static @:final public static var TypeFile(default, null) : java.StdTypes.Int16;
	
	/**
	*
	**/
	@:overload @:public @:static public static function writePackage(stream : java.io.PrintWriter, entry : com.sun.tools.corba.se.idl.SymtabEntry) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function writePackage(stream : java.io.PrintWriter, entry : com.sun.tools.corba.se.idl.SymtabEntry, name : String, type : java.StdTypes.Int16) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function writePackage(stream : java.io.PrintWriter, entry : com.sun.tools.corba.se.idl.SymtabEntry, type : java.StdTypes.Int16) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function writeInitializer(indent : String, name : String, arrayDcl : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function writeInitializer(indent : String, name : String, arrayDcl : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, initializer : String, stream : java.io.PrintWriter) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function mkdir(name : String) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function writeProlog(stream : java.io.PrintWriter, filename : String) : Void;
	
	/**
	*
	**/
	@:overload @:public @:static public static function stripLeadingUnderscores(string : String) : String;
	
	/**
	*
	**/
	@:overload @:public @:static public static function stripLeadingUnderscoresFromID(string : String) : String;
	
	/**
	*
	**/
	@:overload @:public @:static public static function parseExpression(e : com.sun.tools.corba.se.idl.constExpr.Expression) : String;
	
	/**
	*
	**/
	@:overload @:public @:static public static function IDLEntity(entry : com.sun.tools.corba.se.idl.SymtabEntry) : Bool;
	
	/**
	* @return true if the current setting of corbaLevel is within delta of
	*    the range min <= corbaLevel <= max
	**/
	@:overload @:public @:static public static function corbaLevel(min : Single, max : Single) : Bool;
	
	
}
