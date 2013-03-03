package com.sun.tools.corba.se.idl;
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
//// -D56351<daz> Update computation of RepositoryIDs to CORBA 2.3 (see spec.).
//// -D58319<daz> Display version info. for -version option.
extern class Compile
{
	/**
	* Compiler usage:
	* <br><br>
	*
	* java com.sun.tools.corba.se.idl.toJava.compile [options] <idl file>
	* <br><br>
	*
	* where &lt;idl file&gt; is the name of a file containing IDL definitions,
	* and [options] is any combination of the options listed below.  The options
	* and the idl file name can appear in any order.
	* <br><br>
	*
	* Options:
	* <dl>
	* <dt>-i &lt;include path&gt;
	* <dd>By default, the current directory is scanned for included files.
	*     This option adds another directory.  See also Note 1 below.
	*
	* <dt>-d &lt;symbol&gt;
	* <dd>This is equivalent to the following line in an IDL file: #define &lt;symbol&gt;
	*
	* <dt>-emitAll
	* <dd>Emit all types, including those found in #included files.
	*
	* <dt>-v
	* <dd>Verbose mode.
	* </dl>
	*
	* Note 1:  If you have an include path or paths that you will always be using,
	* it can get tedious putting these on the command with the -i option all the
	* time.  Instead, these can be placed into a config file called idl.config.
	* This file must be in the CLASSPATH.  The format of the includes line is:
	*
	* <pre>
	* includes=<path1>;<path2>;...;<pathN>
	* </pre>
	*
	* Note that the path separator character, here shown as a semicolon, is
	* machine dependent.  For instance, on Windows 95 this character is a
	* semicolon, on UNIX it is a colon.
	*
	* <p>
	* Note 2:  If you are directly invoking the main method on this class (not
	* a subclass), then it will only check that the IDL file is syntactically
	* correct.  It does not generate any files.  Only extensions to this
	* framework generate files, therefore an extension must be invoked if you
	* want files to be generated.
	* <br><br>
	*
	* To Extend the compiler:
	* <br><br>
	*
	* You only need to extend the compiler if you want it to generate something
	* other than what it currently generates.
	* <br><br>
	*
	* Step 1 - Implement the generator interfaces:
	* <br><br>
	*
	* Each generator interface defines one method: generate (Hashtable, XXXEntry, PrintWriter);
	* <br>
	* - The Hashtable is the symbol table; each element is a SymtabEntry (or a
	*   subclass of SymtabEntry) and is keyed by its fully qualified name;
	*   <br>
	* - XXXEntry is the appropriate entry for the type to be generated.  For
	*   example: AttributeGen defines generate (Hashtable, AttributeEntry, PrintWriter);
	*   ConstGen defines generate (Hashtable, ConstEntry, PrintWriter); etc.
	*   <br>
	* - The PrintWriter is a stream to the file being generated.  For the
	*   generators called by the compiler framework, this will be null.  The
	*   generator is responsible for creating and opening files.  But for
	*   generators that are called by other generators - for instance,
	*   MethodGen.generate will most likely be called by InterfaceGen.generate -
	*   this parameter is provided so that the proper file can be written to.
	*   <br><br>
	*
	* Step 2 - Implement the GenFactory interface:
	* <br><br>
	*
	* All of the generators implemented in Step 1 must be created somehow.  There
	* is an interface for a factory, GenFactory, which must be implemented.  The
	* name of this factory must be set in the extension to the Compile class (see
	* Step 3, below).
	* <br><br>
	*
	* Step 3 - Extend com.sun.tools.corba.se.idl.Factories:
	* <br><br>
	*
	* Extend com.sun.tools.corba.se.idl.Factories and override the method genFactory.  This
	* method must return an instance of the factory which you implemented in
	* step 2.  Your extension of this class may also do more, this is only the
	* minimum.  See com.sun.tools.corba.se.idl.Factories for more information.
	* <br><br>
	*
	* Step 4 - Extend com.sun.tools.corba.se.idl.Compile:
	* <br><br>
	*
	* Your extension of com.sun.tools.corba.se.idl.Compile should contain a minimum of
	* two methods:
	* <dl>
	* <dt>protected com.sun.tools.corba.se.idl.Factories ()
	* <dd>This method overrides com.sun.tools.corba.se.idl.Compile.factories and returns your
	*     extension from Step 3.
	*
	* <dt>public static void main (String[] args)
	* <dd>This main method must instantiate this class and call its start method.
	* </dl>
	*
	* Given that the extension of Factories is MyFactories, the extension of
	* Compile could be:
	*
	* <pre>
	* public class MyCompile extends com.sun.tools.corba.se.idl.Compile
	* {
	*   protected com.sun.tools.corba.se.idl.Factories factories ()
	*   {
	*     return new MyFactories ();
	*   }
	*   public static void main (String[] args)
	*   {
	*     MyCompile compile = new MyCompile ();
	*     compile.start (args);
	*   }
	* }
	* </pre>
	*
	* If you would like a bit more control over the processing of the framework,
	* you can replace compile.start with what it calls.  But then you also have
	* to handle the exceptions which start handles for you:
	* <pre>
	* public class MyCompile extends com.sun.tools.corba.se.idl.Compile
	* {
	*   ...
	*
	*   public static void main (String[] args)
	*   {
	*     MyCompile compile = new MyCompile ();
	*     try
	*     {
	*       compile.init (args);
	*       java.util.Enumeration emitList = compile.parse ();
	*       compile.generate ();
	*     }
	*     catch (com.sun.tools.corba.se.idl.InvalidArgument e)
	*     {
	*       System.err.println (e);
	*     }
	*     catch (java.io.IOException e)
	*     {
	*       System.err.println (e);
	*     }
	*   }
	* }
	* </pre>
	*
	* Note that compile.parse returns an enumeration.  This enumerates the
	* SymtabEntry's which should be generated.  If the parse method detects
	* errors, it returns null.  Note that you do not have to check that
	* `emitList' is valid before calling generate (that's done internally), but
	* if you do any processing between parse and generate, emitList should be
	* checked before executing that code.
	* <br><br>
	**/
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	@:overload @:protected private function factories() : com.sun.tools.corba.se.idl.Factories;
	
	@:overload @:protected private function registerPragma(handler : com.sun.tools.corba.se.idl.PragmaHandler) : Void;
	
	/**
	* Initialize the framework.
	**/
	@:overload @:protected private function init(args : java.NativeArray<String>) : Void;
	
	/**
	* Parse the IDL file and return an enumeration of the symbols to be
	* generated.  All elements of the Enumeration will be extensions of
	* SymtabEntry.  If any errors were encountered during parsing, null
	* will be returned.
	**/
	@:overload @:protected private function parse() : java.util.Enumeration<Dynamic>;
	
	/**
	* Invoke the generators.
	**/
	@:overload @:protected private function generate() : Void;
	
	/**
	* Start the parse/code generation process.  This method calls init,
	* parse, generate.  If more control is desired, rather than call start,
	* those three methods could be called explicitly.
	**/
	@:overload @:public public function start(args : java.NativeArray<String>) : Void;
	
	/**
	* Write the version number of this compiler to standard out.
	**/
	@:overload @:protected private function displayVersion() : Void;
	
	/**
	* This is the repository of emitter arguments.
	**/
	@:public public var arguments : com.sun.tools.corba.se.idl.Arguments;
	
	/**
	* This hashtable contains <real name, alias> pairs.  It is filled in by
	* extenders in cases where they wish to override an IDL type name with
	* some other name.  For instance, when mapping to Java, there could be
	* an overrideNames entry of <"TRUE", "true">.  NOTE:  Do NOT change this
	* variable to a new Hash table.  Just add elements to it.
	**/
	@:protected private var overrideNames : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* This is the symbol table.  It will be empty until the parse method
	* executes.  If errors are encountered, the state of the symbol table
	* is undefined.
	**/
	@:protected private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* This is a vector of strings of the form "IDLfile" or <IDLfile>.  It is
	* a list of the files included in the given IDL file.  It will be empty
	* until the parse method executes.  If errors are encountered, the state
	* of this vector is undefined.
	**/
	@:protected private var includes : java.util.Vector<Dynamic>;
	
	/**
	* This is a vector of IncludeEntry's.  It is a list of the files included
	* in the given IDL file.  It mirrors the includes vector.  It will be empty
	* until the parse method executes.  If errors are encountered, the state of
	* this vector is undefined.
	**/
	@:protected private var includeEntries : java.util.Vector<Dynamic>;
	
	
}
