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
extern class SourceMember extends sun.tools.java.MemberDefinition implements sun.tools.java.Constants
{
	@:overload override public function getArguments() : java.util.Vector<Dynamic>;
	
	/**
	* Constructor
	* @param argNames a vector of IdentifierToken
	*/
	@:overload public function new(where : haxe.Int64, clazz : sun.tools.java.ClassDefinition, doc : String, modifiers : Int, type : sun.tools.java.Type, name : sun.tools.java.Identifier, argNames : java.util.Vector<Dynamic>, exp : java.NativeArray<sun.tools.java.IdentifierToken>, value : sun.tools.tree.Node) : Void;
	
	/**
	* Get outer instance link, or null if none.
	*/
	@:overload public function getOuterThisArg() : sun.tools.tree.LocalMember;
	
	/**
	* Constructor for an inner class.
	*/
	@:overload public function new(innerClass : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Constructor.
	* Used only to generate an abstract copy of a method that a class
	* inherits from an interface
	*/
	@:overload public function new(f : sun.tools.java.MemberDefinition, c : sun.tools.java.ClassDefinition, env : sun.tools.java.Environment) : Void;
	
	/**
	* Get exceptions
	*/
	@:overload override public function getExceptions(env : sun.tools.java.Environment) : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	/**
	* Set array of name-resolved exceptions directly, e.g., for access methods.
	*/
	@:overload public function setExceptions(exp : java.NativeArray<sun.tools.java.ClassDeclaration>) : Void;
	
	/**
	* Resolve types in a field, after parsing.
	* @see ClassDefinition.resolveTypeStructure
	*/
	public var resolved : Bool;
	
	@:overload override public function resolveTypeStructure(env : sun.tools.java.Environment) : Void;
	
	/**
	* Get the class declaration in which the field is actually defined
	*/
	@:overload override public function getDefiningClassDeclaration() : sun.tools.java.ClassDeclaration;
	
	/**
	* A source field never reports deprecation, since the compiler
	* allows access to deprecated features that are being compiled
	* in the same job.
	*/
	@:overload override public function reportDeprecated(env : sun.tools.java.Environment) : Bool;
	
	/**
	* Check this field.
	* <p>
	* This is the method which requests checking.
	* The real work is done by
	* <tt>Vset check(Environment, Context, Vset)</tt>.
	*/
	@:overload override public function check(env : sun.tools.java.Environment) : Void;
	
	/**
	* Check a field.
	* @param vset tells which uplevel variables are definitely assigned
	* The vset is also used to track the initialization of blank finals
	* by whichever fields which are relevant to them.
	*/
	@:overload override public function check(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset) : sun.tools.tree.Vset;
	
	/**
	* Get the value of the field (or null if the value can't be determined)
	*/
	@:overload override public function getValue(env : sun.tools.java.Environment) : sun.tools.tree.Node;
	
	@:overload override public function isInlineable(env : sun.tools.java.Environment, fromFinal : Bool) : Bool;
	
	/**
	* Get the initial value of the field
	*/
	@:overload override public function getInitialValue() : Dynamic;
	
	/**
	* Generate code
	*/
	@:overload override public function code(env : sun.tools.java.Environment, asm : sun.tools.asm.Assembler) : Void;
	
	@:overload override public function codeInit(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/**
	* Print for debugging
	*/
	@:overload override public function print(out : java.io.PrintStream) : Void;
	
	
}
