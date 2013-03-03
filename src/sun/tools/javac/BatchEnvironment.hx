package sun.tools.javac;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Main environment of the batch version of the Java compiler,
* this needs more work.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class BatchEnvironment extends sun.tools.java.Environment implements sun.tools.javac.ErrorConsumer
{
	/**
	* The path we use for finding source files.
	*/
	@:protected private var sourcePath : sun.tools.java.ClassPath;
	
	/**
	* The path we use for finding class (binary) files.
	*/
	@:protected private var binaryPath : sun.tools.java.ClassPath;
	
	/**
	* flags
	*/
	@:public public var flags : Int;
	
	/**
	* Major and minor versions to use for generated class files.
	* Environments that extend BatchEnvironment (such as javadoc's
	* Env class) get the default values below.
	*
	* javac itself may override these versions with values determined
	* from the command line "-target" option.
	*/
	@:public public var majorVersion : java.StdTypes.Int16;
	
	@:public public var minorVersion : java.StdTypes.Int16;
	
	/**
	* coverage data file
	*/
	@:public public var covFile : java.io.File;
	
	/**
	* The number of errors and warnings
	*/
	@:public public var nerrors : Int;
	
	@:public public var nwarnings : Int;
	
	@:public public var ndeprecations : Int;
	
	/**
	* Old constructors -- these constructors build a BatchEnvironment
	* with an old-style class path.
	*/
	@:overload @:public public function new(path : sun.tools.java.ClassPath) : Void;
	
	@:overload @:public public function new(out : java.io.OutputStream, path : sun.tools.java.ClassPath) : Void;
	
	@:overload @:public public function new(out : java.io.OutputStream, path : sun.tools.java.ClassPath, errorConsumer : sun.tools.javac.ErrorConsumer) : Void;
	
	/**
	* New constructors -- these constructors build a BatchEnvironment
	* with a source path and a binary path.
	*/
	@:overload @:public public function new(sourcePath : sun.tools.java.ClassPath, binaryPath : sun.tools.java.ClassPath) : Void;
	
	@:overload @:public public function new(out : java.io.OutputStream, sourcePath : sun.tools.java.ClassPath, binaryPath : sun.tools.java.ClassPath) : Void;
	
	@:overload @:public public function new(out : java.io.OutputStream, sourcePath : sun.tools.java.ClassPath, binaryPath : sun.tools.java.ClassPath, errorConsumer : sun.tools.javac.ErrorConsumer) : Void;
	
	@:overload @:protected @:static private static function classPaths(srcPathString : String, classPathString : String, sysClassPathString : String, extDirsString : String) : java.NativeArray<sun.tools.java.ClassPath>;
	
	/**
	* Return flags
	*/
	@:overload @:public override public function getFlags() : Int;
	
	/**
	* Return major version to use for generated class files
	*/
	@:overload @:public override public function getMajorVersion() : java.StdTypes.Int16;
	
	/**
	* Return minor version to use for generated class files
	*/
	@:overload @:public override public function getMinorVersion() : java.StdTypes.Int16;
	
	/**
	* Return coverage data file
	*/
	@:overload @:public override public function getcovFile() : java.io.File;
	
	/**
	* Return an enumeration of all the currently defined classes
	* in order of appearance to getClassDeclaration().
	*/
	@:overload @:public public function getClasses() : java.util.Enumeration<Dynamic>;
	
	/**
	* Tells whether an Identifier refers to a package which should be
	* exempt from the "exists" check in Imports#resolve().
	*/
	@:overload @:public override public function isExemptPackage(id : sun.tools.java.Identifier) : Bool;
	
	/**
	* Get a class, given the fully qualified class name
	*/
	@:overload @:public override public function getClassDeclaration(nm : sun.tools.java.Identifier) : sun.tools.java.ClassDeclaration;
	
	@:overload @:public override public function getClassDeclaration(t : sun.tools.java.Type) : sun.tools.java.ClassDeclaration;
	
	/**
	* Check if a class exists
	* Applies only to package members (non-nested classes).
	*/
	@:overload @:public override public function classExists(nm : sun.tools.java.Identifier) : Bool;
	
	/**
	* Get the package path for a package
	*/
	@:overload @:public override public function getPackage(pkg : sun.tools.java.Identifier) : sun.tools.java.Package;
	
	/**
	* Parse a source file
	*/
	@:overload @:public public function parseFile(file : sun.tools.java.ClassFile) : Void;
	
	/**
	* Load the definition of a class
	* or at least determine how to load it.
	* The caller must repeat calls to this method
	* until it the state converges to CS_BINARY, CS_PARSED, or the like..
	* @see ClassDeclaration#getClassDefinition
	*/
	@:overload @:public override public function loadDefinition(c : sun.tools.java.ClassDeclaration) : Void;
	
	/**
	* Create a new class.
	*/
	@:overload @:public override public function makeClassDefinition(toplevelEnv : sun.tools.java.Environment, where : haxe.Int64, name : sun.tools.java.IdentifierToken, doc : String, modifiers : Int, superClass : sun.tools.java.IdentifierToken, interfaces : java.NativeArray<sun.tools.java.IdentifierToken>, outerClass : sun.tools.java.ClassDefinition) : sun.tools.java.ClassDefinition;
	
	/**
	* Create a new field.
	*/
	@:overload @:public override public function makeMemberDefinition(origEnv : sun.tools.java.Environment, where : haxe.Int64, clazz : sun.tools.java.ClassDefinition, doc : String, modifiers : Int, type : sun.tools.java.Type, name : sun.tools.java.Identifier, argNames : java.NativeArray<sun.tools.java.IdentifierToken>, expIds : java.NativeArray<sun.tools.java.IdentifierToken>, value : Dynamic) : sun.tools.java.MemberDefinition;
	
	/**
	* Release resources in classpath.
	*/
	@:overload @:public override public function shutdown() : Void;
	
	/**
	* Error String
	*/
	@:overload @:public public function errorString(err : String, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	/**
	* Insert an error message in the list of outstanding error messages.
	* The list is sorted on input position and contains no duplicates.
	* The return value indicates whether or not the message was
	* actually inserted.
	*
	* The method flushErrors() used to check for duplicate error messages.
	* It would only detect duplicates if they were contiguous.  Removing
	* non-contiguous duplicate error messages is slightly less complicated
	* at insertion time, so the functionality was moved here.  This also
	* saves a miniscule number of allocations.
	*/
	@:overload @:protected private function insertError(where : haxe.Int64, message : String) : Bool;
	
	/**
	* Maximum number of errors to print.
	*/
	@:public public var errorLimit : Int;
	
	/**
	* Flush outstanding errors
	*/
	@:overload @:public public function pushError(errorFileName : String, line : Int, message : String, referenceText : String, referenceTextPointer : String) : Void;
	
	@:overload @:public public function flushErrors() : Void;
	
	/**
	* Report error
	*/
	@:overload @:public public function reportError(src : Dynamic, where : haxe.Int64, err : String, msg : String) : Void;
	
	/**
	* Issue an error
	*/
	@:overload @:public override public function error(source : Dynamic, where : haxe.Int64, err : String, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : Void;
	
	/**
	* Output a string. This can either be an error message or something
	* for debugging.
	*/
	@:overload @:public override public function output(msg : String) : Void;
	
	
}
