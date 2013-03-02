package sun.tools.java;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Imports implements sun.tools.java.Constants
{
	/**
	* Are the import names checked yet?
	*/
	private var checked : Int;
	
	/**
	* Constructor, always import java.lang.
	*/
	@:overload public function new(env : sun.tools.java.Environment) : Void;
	
	/**
	* Check the names of the imports.
	*/
	@:overload @:synchronized public function resolve(env : sun.tools.java.Environment) : Void;
	
	/**
	* Lookup a class, given the current set of imports,
	* AmbiguousClass exception is thrown if the name can be
	* resolved in more than one way. A ClassNotFound exception
	* is thrown if the class is not found in the imported classes
	* and packages.
	*/
	@:overload @:synchronized public function resolve(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Check to see if 'id' names an importable class in `env'.
	* This method was made public and static for utility.
	*/
	@:overload public static function importable(id : sun.tools.java.Identifier, env : sun.tools.java.Environment) : Bool;
	
	/**
	* Suppose a resolve() call has failed.
	* This routine can be used silently to give a reasonable
	* default qualification (the current package) to the identifier.
	* This decision is recorded for future reference.
	*/
	@:overload @:synchronized public function forceResolve(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Add a class import
	*/
	@:overload @:synchronized public function addClass(t : sun.tools.java.IdentifierToken) : Void;
	
	@:overload public function addClass(nm : sun.tools.java.Identifier) : Void;
	
	/**
	* Add a package import, or perhaps an inner class scope.
	* Ignore any duplicate imports.
	*/
	@:overload @:synchronized public function addPackage(t : sun.tools.java.IdentifierToken) : Void;
	
	@:overload public function addPackage(id : sun.tools.java.Identifier) : Void;
	
	/**
	* Specify the current package with an IdentifierToken.
	*/
	@:overload @:synchronized public function setCurrentPackage(t : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* Specify the current package
	*/
	@:overload @:synchronized public function setCurrentPackage(id : sun.tools.java.Identifier) : Void;
	
	/**
	* Report the current package
	*/
	@:overload public function getCurrentPackage() : sun.tools.java.Identifier;
	
	/**
	* Return an unmodifiable list of IdentifierToken representing
	* packages specified as imports.
	*/
	@:overload public function getImportedPackages() : java.util.List<Dynamic>;
	
	/**
	* Return an unmodifiable list of IdentifierToken representing
	* classes specified as imports.
	*/
	@:overload public function getImportedClasses() : java.util.List<Dynamic>;
	
	/**
	* Extend an environment with my resolve() method.
	*/
	@:overload public function newEnvironment(env : sun.tools.java.Environment) : sun.tools.java.Environment;
	
	
}
@:internal extern class ImportEnvironment extends sun.tools.java.Environment
{
	@:overload public function resolve(nm : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	@:overload public function getImports() : sun.tools.java.Imports;
	
	
}
