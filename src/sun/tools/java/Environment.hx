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
extern class Environment implements sun.tools.java.Constants
{
	@:overload public function new(env : Environment, source : Dynamic) : Void;
	
	@:overload public function new() : Void;
	
	/**
	* Tells whether an Identifier refers to a package which should be
	* exempt from the "exists" check in Imports#resolve().
	*/
	@:overload public function isExemptPackage(id : sun.tools.java.Identifier) : Bool;
	
	/**
	* Return a class declaration given a fully qualified class name.
	*/
	@:overload public function getClassDeclaration(nm : sun.tools.java.Identifier) : sun.tools.java.ClassDeclaration;
	
	/**
	* Return a class definition given a fully qualified class name.
	* <p>
	* Should be called only with 'internal' class names, i.e., the result
	* of a call to 'resolveName' or a synthetic class name.
	*/
	@:overload @:final public function getClassDefinition(nm : sun.tools.java.Identifier) : sun.tools.java.ClassDefinition;
	
	/**
	* Return a class declaration given a type. Only works for
	* class types.
	*/
	@:overload public function getClassDeclaration(t : sun.tools.java.Type) : sun.tools.java.ClassDeclaration;
	
	/**
	* Return a class definition given a type. Only works for
	* class types.
	*/
	@:overload @:final public function getClassDefinition(t : sun.tools.java.Type) : sun.tools.java.ClassDefinition;
	
	/**
	* Check if a class exists (without actually loading it).
	* (Since inner classes cannot in general be examined without
	* loading source, this method does not accept inner names.)
	*/
	@:overload public function classExists(nm : sun.tools.java.Identifier) : Bool;
	
	@:overload @:final public function classExists(t : sun.tools.java.Type) : Bool;
	
	/**
	* Get the package path for a package
	*/
	@:overload public function getPackage(pkg : sun.tools.java.Identifier) : sun.tools.java.Package;
	
	/**
	* Load the definition of a class.
	*/
	@:overload public function loadDefinition(c : sun.tools.java.ClassDeclaration) : Void;
	
	/**
	* Return the source of the environment (ie: the thing being compiled/parsed).
	*/
	@:overload @:final public function getSource() : Dynamic;
	
	/**
	* Resolve a type. Make sure that all the classes referred to by
	* the type have a definition.  Report errors.  Return true if
	* the type is well-formed.  Presently used for types appearing
	* in member declarations, which represent named types internally as
	* qualified identifiers.  Type names appearing in local variable
	* declarations and within expressions are represented as identifier
	* or field expressions, and are resolved by 'toType', which delegates
	* handling of the non-inner portion of the name to this method.
	* <p>
	* In 'toType', the various stages of qualification are represented by
	* separate AST nodes.  Here, we are given a single identifier which
	* contains the entire qualification structure.  It is not possible in
	* general to set the error location to the exact position of a component
	* that is in error, so an error message must refer to the entire qualified
	* name.  An attempt to keep track of the string length of the components of
	* the name and to offset the location accordingly fails because the initial
	* prefix of the name may have been rewritten by an earlier call to
	* 'resolveName'.  See 'SourceMember.resolveTypeStructure'.  The situation
	* is actually even worse than this, because only a single location is
	* passed in for an entire declaration, which may contain many type names.
	* All error messages are thus poorly localized.  These checks should be
	* done while traversing the parse tree for the type, not the type descriptor.
	* <p>
	* DESIGN NOTE:
	* As far as I can tell, the two-stage resolution of names represented in
	* string form is an artifact of the late implementation of inner classes
	* and the use of mangled names internally within the compiler.  All
	* qualified names should have their hiearchical structure made explicit
	* in the parse tree at the phase at which they are presented for static
	* semantic checking.  This would affect class names appearing in 'extends',
	* 'implements', and 'throws' clauses, as well as in member declarations.
	*/
	@:overload public function resolve(where : haxe.Int64, c : sun.tools.java.ClassDefinition, t : sun.tools.java.Type) : Bool;
	
	/**
	* Given its fully-qualified name, verify that a class is defined and accessible.
	* Used to check components of qualified names in contexts where a class is expected.
	* Like 'resolve', but is given a single type name, not a type descriptor.
	*/
	@:overload public function resolveByName(where : haxe.Int64, c : sun.tools.java.ClassDefinition, nm : sun.tools.java.Identifier) : Bool;
	
	@:overload public function resolveExtendsByName(where : haxe.Int64, c : sun.tools.java.ClassDefinition, nm : sun.tools.java.Identifier) : Bool;
	
	/**
	* Like 'getClassDefinition(env)', but check access on each component.
	* Currently called only by 'resolve' above.  It is doubtful that calls
	* to 'getClassDefinition(env)' are appropriate now.
	*/
	@:overload @:final public function getQualifiedClassDefinition(where : haxe.Int64, nm : sun.tools.java.Identifier, ctxClass : sun.tools.java.ClassDefinition, isExtends : Bool) : sun.tools.java.ClassDefinition;
	
	/**
	* Resolve the names within a type, returning the adjusted type.
	* Adjust class names to reflect scoping.
	* Do not report errors.
	* <p>
	* NOTE: It would be convenient to check for errors here, such as
	* verifying that each component of a qualified name exists and is
	* accessible.  Why must this be done in a separate phase?
	* <p>
	* If the 'synth' argument is true, indicating that the member whose
	* type is being resolved is synthetic, names are resolved with respect
	* to the package scope.  (Fix for 4097882)
	*/
	@:overload public function resolveNames(c : sun.tools.java.ClassDefinition, t : sun.tools.java.Type, synth : Bool) : sun.tools.java.Type;
	
	/**
	* Resolve a class name, using only package and import directives.
	* Report no errors.
	* <p>
	*/
	@:overload public function resolveName(name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Discover if name consists of a package prefix, followed by the
	* name of a class (that actually exists), followed possibly by
	* some inner class names.  If we can't find a class that exists,
	* return the name unchanged.
	* <p>
	* This routine is used after a class name fails to
	* be resolved by means of imports or inner classes.
	* However, import processing uses this routine directly,
	* since import names must be exactly qualified to start with.
	*/
	@:overload @:final public function resolvePackageQualifiedName(name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Resolve a class name, using only package and import directives.
	*/
	@:overload public function resolve(nm : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Get the imports used to resolve class names.
	*/
	@:overload public function getImports() : sun.tools.java.Imports;
	
	/**
	* Create a new class.
	*/
	@:overload public function makeClassDefinition(origEnv : Environment, where : haxe.Int64, name : sun.tools.java.IdentifierToken, doc : String, modifiers : Int, superClass : sun.tools.java.IdentifierToken, interfaces : java.NativeArray<sun.tools.java.IdentifierToken>, outerClass : sun.tools.java.ClassDefinition) : sun.tools.java.ClassDefinition;
	
	/**
	* Create a new field.
	*/
	@:overload public function makeMemberDefinition(origEnv : Environment, where : haxe.Int64, clazz : sun.tools.java.ClassDefinition, doc : String, modifiers : Int, type : sun.tools.java.Type, name : sun.tools.java.Identifier, argNames : java.NativeArray<sun.tools.java.IdentifierToken>, expIds : java.NativeArray<sun.tools.java.IdentifierToken>, value : Dynamic) : sun.tools.java.MemberDefinition;
	
	/**
	* Returns true if the given method is applicable to the given arguments
	*/
	@:overload public function isApplicable(m : sun.tools.java.MemberDefinition, args : java.NativeArray<sun.tools.java.Type>) : Bool;
	
	/**
	* Returns true if "best" is in every argument at least as good as "other"
	*/
	@:overload public function isMoreSpecific(best : sun.tools.java.MemberDefinition, other : sun.tools.java.MemberDefinition) : Bool;
	
	/**
	* Returns true if "from" is a more specific type than "to"
	*/
	@:overload public function isMoreSpecific(from : sun.tools.java.Type, to : sun.tools.java.Type) : Bool;
	
	/**
	* Return true if an implicit cast from this type to
	* the given type is allowed.
	*/
	@:overload public function implicitCast(from : sun.tools.java.Type, to : sun.tools.java.Type) : Bool;
	
	/**
	* Return true if an explicit cast from this type to
	* the given type is allowed.
	*/
	@:overload public function explicitCast(from : sun.tools.java.Type, to : sun.tools.java.Type) : Bool;
	
	/**
	* Flags.
	*/
	@:overload public function getFlags() : Int;
	
	/**
	* Debugging flags.  There used to be a method debug()
	* that has been replaced because -g has changed meaning
	* (it now cooperates with -O and line number, variable
	* range and source file info can be toggled separately).
	*/
	@:overload @:final public function debug_lines() : Bool;
	
	@:overload @:final public function debug_vars() : Bool;
	
	@:overload @:final public function debug_source() : Bool;
	
	/**
	* Optimization flags.  There used to be a method optimize()
	* that has been replaced because -O has changed meaning in
	* javac to be replaced with -O and -O:interclass.
	*/
	@:overload @:final public function opt() : Bool;
	
	@:overload @:final public function opt_interclass() : Bool;
	
	/**
	* Verbose
	*/
	@:overload @:final public function verbose() : Bool;
	
	/**
	* Dump debugging stuff
	*/
	@:overload @:final public function dump() : Bool;
	
	/**
	* Verbose
	*/
	@:overload @:final public function warnings() : Bool;
	
	/**
	* Dependencies
	*/
	@:overload @:final public function dependencies() : Bool;
	
	/**
	* Print Dependencies to stdout
	*/
	@:overload @:final public function print_dependencies() : Bool;
	
	/**
	* Deprecation warnings are enabled.
	*/
	@:overload @:final public function deprecation() : Bool;
	
	/**
	* Do not support virtual machines before version 1.2.
	* This option is not supported and is only here for testing purposes.
	*/
	@:overload @:final public function version12() : Bool;
	
	/**
	* Floating point is strict by default
	*/
	@:overload @:final public function strictdefault() : Bool;
	
	/**
	* Release resources, if any.
	*/
	@:overload public function shutdown() : Void;
	
	/**
	* Issue an error.
	*  source   - the input source, usually a file name string
	*  offset   - the offset in the source of the error
	*  err      - the error number (as defined in this interface)
	*  arg1     - an optional argument to the error (null if not applicable)
	*  arg2     - a second optional argument to the error (null if not applicable)
	*  arg3     - a third optional argument to the error (null if not applicable)
	*/
	@:overload public function error(source : Dynamic, where : haxe.Int64, err : String, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : Void;
	
	@:overload @:final public function error(where : haxe.Int64, err : String, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : Void;
	
	@:overload @:final public function error(where : haxe.Int64, err : String, arg1 : Dynamic, arg2 : Dynamic) : Void;
	
	@:overload @:final public function error(where : haxe.Int64, err : String, arg1 : Dynamic) : Void;
	
	@:overload @:final public function error(where : haxe.Int64, err : String) : Void;
	
	/**
	* Output a string. This can either be an error message or something
	* for debugging. This should be used instead of println.
	*/
	@:overload public function output(msg : String) : Void;
	
	@:overload public static function debugOutput(msg : Dynamic) : Void;
	
	/**
	* set character encoding name
	*/
	@:overload public function setCharacterEncoding(encoding : String) : Void;
	
	/**
	* Return character encoding name
	*/
	@:overload public function getCharacterEncoding() : String;
	
	/**
	* Return major version to use in generated class files.
	*/
	@:overload public function getMajorVersion() : java.StdTypes.Int16;
	
	/**
	* Return minor version to use in generated class files.
	*/
	@:overload public function getMinorVersion() : java.StdTypes.Int16;
	
	/**
	*  get coverage flag
	*/
	@:overload @:final public function coverage() : Bool;
	
	/**
	*  get flag of generation the coverage data file
	*/
	@:overload @:final public function covdata() : Bool;
	
	/**
	* Return the coverage data file
	*/
	@:overload public function getcovFile() : java.io.File;
	
	@:overload public function dtEnter(s : String) : Void;
	
	@:overload public function dtExit(s : String) : Void;
	
	@:overload public function dtEvent(s : String) : Void;
	
	@:overload public function dumpModifiers() : Bool;
	
	
}
