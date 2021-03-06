package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class StubGenerator extends sun.rmi.rmic.iiop.Generator
{
	@:protected private var reverseIDs : Bool;
	
	@:protected private var localStubs : Bool;
	
	@:protected private var standardPackage : Bool;
	
	@:protected private var useHash : Bool;
	
	@:protected private var stubBaseClass : String;
	
	@:protected private var tieBaseClass : String;
	
	@:protected private var namesInUse : java.util.HashSet<Dynamic>;
	
	@:protected private var classesInUse : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var imports : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var importCount : Int;
	
	@:protected private var currentPackage : String;
	
	@:protected private var currentClass : String;
	
	@:protected private var castArray : Bool;
	
	@:protected private var transactionalObjects : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var POATie : Bool;
	
	/**
	* Default constructor for Main to use.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Overridden in order to set the standardPackage flag.
	*/
	@:overload @:public override public function generate(env : sun.rmi.rmic.BatchEnvironment, cdef : sun.tools.java.ClassDefinition, destDir : java.io.File) : Void;
	
	/**
	* Return true if a new instance should be created for each
	* class on the command line. Subclasses which return true
	* should override newInstance() to return an appropriately
	* constructed instance.
	*/
	@:overload @:protected override private function requireNewInstance() : Bool;
	
	/**
	* Return true if non-conforming types should be parsed.
	* @param stack The context stack.
	*/
	@:overload @:protected override private function parseNonConforming(stack : sun.rmi.rmic.iiop.ContextStack) : Bool;
	
	/**
	* Create and return a top-level type.
	* @param cdef The top-level class definition.
	* @param stack The context stack.
	* @return The compound type or null if is non-conforming.
	*/
	@:overload @:protected override private function getTopType(cdef : sun.tools.java.ClassDefinition, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.CompoundType;
	
	/**
	* Examine and consume command line arguments.
	* @param argv The command line arguments. Ignore null
	* and unknown arguments. Set each consumed argument to null.
	* @param error Report any errors using the main.error() methods.
	* @return true if no errors, false otherwise.
	*/
	@:overload @:public override public function parseArgs(argv : java.NativeArray<String>, main : sun.rmi.rmic.Main) : Bool;
	
	/**
	* Return an array containing all the file names and types that need to be
	* generated for the given top-level type.  The file names must NOT have an
	* extension (e.g. ".java").
	* @param topType The type returned by getTopType().
	* @param alreadyChecked A set of Types which have already been checked.
	*  Intended to be passed to topType.collectMatching(filter,alreadyChecked).
	*/
	@:overload @:protected override private function getOutputTypesFor(topType : sun.rmi.rmic.iiop.CompoundType, alreadyChecked : java.util.HashSet<Dynamic>) : java.NativeArray<sun.rmi.rmic.iiop.Generator.Generator_OutputType>;
	
	/**
	* Return the file name extension for the given file name (e.g. ".java").
	* All files generated with the ".java" extension will be compiled. To
	* change this behavior for ".java" files, override the compileJavaSourceFile
	* method to return false.
	* @param outputType One of the items returned by getOutputTypesFor(...)
	*/
	@:overload @:protected override private function getFileNameExtensionFor(outputType : sun.rmi.rmic.iiop.Generator.Generator_OutputType) : String;
	
	/**
	* Write the output for the given OutputFileName into the output stream.
	* @param name One of the items returned by getOutputTypesFor(...)
	* @param alreadyChecked A set of Types which have already been checked.
	*  Intended to be passed to Type.collectMatching(filter,alreadyChecked).
	* @param writer The output stream.
	*/
	@:overload @:protected override private function writeOutputFor(outputType : sun.rmi.rmic.iiop.Generator.Generator_OutputType, alreadyChecked : java.util.HashSet<Dynamic>, writer : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write a stub for the specified type.
	*/
	@:overload @:protected private function writeStub(outputType : sun.rmi.rmic.iiop.Generator.Generator_OutputType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Write the Tie for the remote class to a stream.
	*/
	@:overload @:protected private function writeTie(outputType : sun.rmi.rmic.iiop.Generator.Generator_OutputType, p : sun.rmi.rmic.IndentingWriter) : Void;
	
	@:overload @:public public function catchWrongPolicy(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	@:overload @:public public function catchServantNotActive(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	@:overload @:public public function catchObjectNotActive(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	@:overload @:public public function write_tie_thisObject_method(p : sun.rmi.rmic.IndentingWriter, idCorbaObject : sun.tools.java.Identifier) : Void;
	
	@:overload @:public public function write_tie_deactivate_method(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	@:overload @:public public function write_tie_orb_method(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	@:overload @:public public function write_tie__ids_method(p : sun.rmi.rmic.IndentingWriter) : Void;
	
	
}
@:internal extern class StringComparator implements java.util.Comparator<Dynamic>
{
	@:overload @:public public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
@:internal extern class UserExceptionComparator implements java.util.Comparator<Dynamic>
{
	@:overload @:public public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
