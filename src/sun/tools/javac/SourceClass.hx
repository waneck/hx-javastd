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
extern class SourceClass extends sun.tools.java.ClassDefinition
{
	/**
	* Constructor
	*/
	@:overload public function new(env : sun.tools.java.Environment, where : haxe.Int64, declaration : sun.tools.java.ClassDeclaration, documentation : String, modifiers : Int, superClass : sun.tools.java.IdentifierToken, interfaces : java.NativeArray<sun.tools.java.IdentifierToken>, outerClass : SourceClass, localName : sun.tools.java.Identifier) : Void;
	
	/**
	* Return last position in this class.
	* @see #getWhere
	*/
	@:overload public function getEndPosition() : haxe.Int64;
	
	@:overload public function setEndPosition(endPosition : haxe.Int64) : Void;
	
	/**
	* Return absolute name of source file
	*/
	@:overload public function getAbsoluteName() : String;
	
	/**
	* Return imports
	*/
	@:overload public function getImports() : sun.tools.java.Imports;
	
	/**
	* Find or create my "this" argument, which is used for all methods.
	*/
	@:overload public function getThisArgument() : sun.tools.tree.LocalMember;
	
	/**
	* Add a dependency
	*/
	@:overload override public function addDependency(c : sun.tools.java.ClassDeclaration) : Void;
	
	/**
	* Add a field (check it first)
	*/
	@:overload override public function addMember(env : sun.tools.java.Environment, f : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Create an environment suitable for checking this class.
	* Make sure the source and imports are set right.
	* Make sure the environment contains no context information.
	* (Actually, throw away env altogether and use toplevelEnv instead.)
	*/
	@:overload public function setupEnv(env : sun.tools.java.Environment) : sun.tools.java.Environment;
	
	/**
	* A source class never reports deprecation, since the compiler
	* allows access to deprecated features that are being compiled
	* in the same job.
	*/
	@:overload override public function reportDeprecated(env : sun.tools.java.Environment) : Bool;
	
	/**
	* See if the source file of this class is right.
	* @see ClassDefinition#noteUsedBy
	*/
	@:overload public function noteUsedBy(ref : sun.tools.java.ClassDefinition, where : haxe.Int64, env : sun.tools.java.Environment) : Void;
	
	/**
	* Check this class and all its fields.
	*/
	@:overload override public function check(env : sun.tools.java.Environment) : Void;
	
	/**
	* See if the source file of this class is of the right name.
	*/
	@:overload public function checkSourceFile(env : sun.tools.java.Environment, where : haxe.Int64) : Void;
	
	/**
	* Overrides 'ClassDefinition.getSuperClass'.
	*/
	@:overload override public function getSuperClass(env : sun.tools.java.Environment) : sun.tools.java.ClassDeclaration;
	
	@:overload override private function basicCheck(env : sun.tools.java.Environment) : Void;
	
	/**
	* Add a group of methods to this class as miranda methods.
	*
	* For a definition of Miranda methods, see the comment above the
	* method addMirandaMethods() in the file
	* sun/tools/java/ClassDeclaration.java
	*/
	@:overload override private function addMirandaMethods(env : sun.tools.java.Environment, mirandas : java.util.Iterator<Dynamic>) : Void;
	
	@:overload override public function resolveTypeStructure(env : sun.tools.java.Environment) : Void;
	
	@:overload private function resolveSupers(env : sun.tools.java.Environment) : Void;
	
	/**
	* During the type-checking of an outer method body or initializer,
	* this routine is called to check a local class body
	* in the proper context.
	* @param   sup     the named super class or interface (if anonymous)
	* @param   args    the actual arguments (if anonymous)
	*/
	@:overload public function checkLocalClass(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, sup : sun.tools.java.ClassDefinition, args : java.NativeArray<sun.tools.tree.Expression>, argTypes : java.NativeArray<sun.tools.java.Type>) : sun.tools.tree.Vset;
	
	/**
	* As with checkLocalClass, run the inline phase for a local class.
	*/
	@:overload override public function inlineLocalClass(env : sun.tools.java.Environment) : Void;
	
	/**
	* Check a class which is inside a local class, but is not itself local.
	*/
	@:overload public function checkInsideClass(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset) : sun.tools.tree.Vset;
	
	/**
	* Find or create an access method for a private member,
	* or return null if this is not possible.
	*/
	@:overload override public function getAccessMember(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, field : sun.tools.java.MemberDefinition, isSuper : Bool) : sun.tools.java.MemberDefinition;
	
	@:overload override public function getUpdateMember(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, field : sun.tools.java.MemberDefinition, isSuper : Bool) : sun.tools.java.MemberDefinition;
	
	/**
	* Get helper method for class literal lookup.
	*/
	@:overload override public function getClassLiteralLookup(fwhere : haxe.Int64) : sun.tools.java.MemberDefinition;
	
	/**
	* Compile this class
	*/
	@:overload public function compile(out : java.io.OutputStream) : Void;
	
	@:overload private function compileClass(env : sun.tools.java.Environment, out : java.io.OutputStream) : Void;
	
	/**
	* Print out the dependencies for this class (-xdepend) option
	*/
	@:overload public function printClassDependencies(env : sun.tools.java.Environment) : Void;
	
	
}
