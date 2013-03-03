package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// -F46082.51<daz> Remove -stateful option. "Stateful interfaces" obsolete.
//// -D58319<daz> Add -version option.  Note that this may occur as the last
////  argument on the command-line.
//// -F60858.1<daz> Add -corba [level] option.  Accept IDL upto this level, and
////  behave in a "proprietary manner" otherwise.
//// -D62023<daz> Add -noWarn option to supress warnings.
extern class Arguments
{
	/**
	* Method parseOtherArgs() is called when the framework detects arguments
	* which are unknown to it.  The default implementation of this method simply
	* throws an InvalidArgument exception.  Any overriding implementation
	* must check the arguments passed to it for validity and process the
	* arguments appropriately.  If it detects an invalid argument, it should
	* throw an InvalidArgument exception.  Arguments MUST be of the form
	* `/<arg> [<qualifiers>]' or `-<arg> [<qualifiers>]' where <qualifiers>
	* is optional (for example, -iC:\includes, `C:\includes' is the qualifier
	* for the argument `i').
	* @param args The arguments which are unknown by the framework.
	* @param properties Environment-style properties collected from the
	* file idl.config.
	* @exception idl.InvalidArgument if the argument is unknown.
	**/
	@:overload @:protected private function parseOtherArgs(args : java.NativeArray<String>, properties : java.util.Properties) : Void;
	
	@:overload @:protected private function setDebugFlags(args : String) : Void;
	
	/**
	* The name of the IDL file.
	**/
	@:public public var file : String;
	
	/**
	* True if the user wishes to see processing remarks.
	**/
	@:public public var verbose : Bool;
	
	/**
	* If this is true, then existing files should not be overwritten
	* by the compiler.
	**/
	@:public public var keepOldFiles : Bool;
	
	/**
	* If this is true, then the types in all included files are also emitted.
	**/
	@:public public var emitAll : Bool;
	
	/**
	* A list of strings, each of which is a path from which included files
	* are found.
	**/
	@:public public var includePaths : java.util.Vector<Dynamic>;
	
	/**
	* A table of defined symbols.  The key is the symbol name; the value
	* (if any) is the replacement value for the symbol.
	**/
	@:public public var definedSymbols : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* <f46082.46.01> True if new module entries are created for each
	* re-opened module.
	**/
	@:public public var cppModule : Bool;
	
	/**
	* -version option.
	**/
	@:public public var versionRequest : Bool;
	
	/**
	* -corba [level] option, where [level] is a floating-point number indicating
	* the maximal level of CORBA IDL the parser framework can accept.
	**/
	@:public public var corbaLevel : Single;
	
	/**
	* -noWarn option.  Suppress warnings when true.
	**/
	@:public public var noWarn : Bool;
	
	@:public public var scannerDebugFlag : Bool;
	
	@:public public var tokenDebugFlag : Bool;
	
	
}
