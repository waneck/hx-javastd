package sun.tools.java;
/*
* Copyright (c) 1994, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MemberDefinition implements sun.tools.java.Constants
{
	/**
	* This class defines a member of a Java class:
	* a variable, a method, or an inner class.
	*
	* WARNING: The contents of this source file are not part of any
	* supported API.  Code that depends on them does so at its own risk:
	* they are subject to change or removal without notice.
	*/
	private var where : haxe.Int64;
	
	private var modifiers : Int;
	
	private var type : sun.tools.java.Type;
	
	private var documentation : String;
	
	private var expIds : java.NativeArray<sun.tools.java.IdentifierToken>;
	
	private var exp : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	private var value : sun.tools.tree.Node;
	
	private var clazz : sun.tools.java.ClassDefinition;
	
	private var name : sun.tools.java.Identifier;
	
	private var innerClass : sun.tools.java.ClassDefinition;
	
	private var nextMember : MemberDefinition;
	
	private var nextMatch : MemberDefinition;
	
	private var accessPeer : MemberDefinition;
	
	private var superAccessMethod : Bool;
	
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, clazz : sun.tools.java.ClassDefinition, modifiers : Int, type : sun.tools.java.Type, name : sun.tools.java.Identifier, expIds : java.NativeArray<sun.tools.java.IdentifierToken>, value : sun.tools.tree.Node) : Void;
	
	/**
	* Constructor for an inner class.
	* Inner classes are represented as fields right along with
	* variables and methods for simplicity of data structure,
	* and to reflect properly the textual declaration order.
	* <p>
	* This constructor calls the generic constructor for this
	* class, extracting all necessary values from the innerClass.
	*/
	@:overload public function new(innerClass : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Create a member which is externally the same as `field' but
	* is defined in class `classDef'.  This is used by code
	* in sun.tools.tree.(MethodExpression,FieldExpression) as
	* part of the fix for bug 4135692.
	*
	* Proxy members should not be added, ala addMember(), to classes.
	* They are merely "stand-ins" to produce modified MethodRef
	* constant pool entries during code generation.
	*
	* We keep a cache of previously created proxy members not to
	* save time or space, but to ensure uniqueness of the proxy
	* member for any (field,classDef) pair.  If these are not made
	* unique then we can end up generating duplicate MethodRef
	* constant pool entries during code generation.
	*/
	@:overload public static function makeProxyMember(field : MemberDefinition, classDef : sun.tools.java.ClassDefinition, env : sun.tools.java.Environment) : MemberDefinition;
	
	/**
	* Get the position in the input
	*/
	@:overload @:final public function getWhere() : haxe.Int64;
	
	/**
	* Get the class declaration
	*/
	@:overload @:final public function getClassDeclaration() : sun.tools.java.ClassDeclaration;
	
	/**
	* A stub.  Subclasses can do more checking.
	*/
	@:overload public function resolveTypeStructure(env : sun.tools.java.Environment) : Void;
	
	/**
	* Get the class declaration in which the field is actually defined
	*/
	@:overload public function getDefiningClassDeclaration() : sun.tools.java.ClassDeclaration;
	
	/**
	* Get the class definition
	*/
	@:overload @:final public function getClassDefinition() : sun.tools.java.ClassDefinition;
	
	/**
	* Get the field's top-level enclosing class
	*/
	@:overload @:final public function getTopClass() : sun.tools.java.ClassDefinition;
	
	/**
	* Get the field's modifiers
	*/
	@:overload @:final public function getModifiers() : Int;
	
	@:overload @:final public function subModifiers(mod : Int) : Void;
	
	@:overload @:final public function addModifiers(mod : Int) : Void;
	
	/**
	* Get the field's type
	*/
	@:overload @:final public function getType() : sun.tools.java.Type;
	
	/**
	* Get the field's name
	*/
	@:overload @:final public function getName() : sun.tools.java.Identifier;
	
	/**
	* Get arguments (a vector of LocalMember)
	*/
	@:overload public function getArguments() : java.util.Vector<Dynamic>;
	
	/**
	* Get the exceptions that are thrown by this method.
	*/
	@:overload public function getExceptions(env : sun.tools.java.Environment) : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	@:overload @:final public function getExceptionIds() : java.NativeArray<sun.tools.java.IdentifierToken>;
	
	/**
	* Get an inner class.
	*/
	@:overload public function getInnerClass() : sun.tools.java.ClassDefinition;
	
	/**
	* Is this a synthetic field which holds a copy of,
	* or reference to, a local variable or enclosing instance?
	*/
	@:overload public function isUplevelValue() : Bool;
	
	@:overload public function isAccessMethod() : Bool;
	
	/**
	* Is this a synthetic method which provides access to a
	* visible private member?
	*/
	@:overload public function getAccessMethodTarget() : MemberDefinition;
	
	@:overload public function setAccessMethodTarget(target : MemberDefinition) : Void;
	
	/**
	* If this method is a getter for a private field, return the setter.
	*/
	@:overload public function getAccessUpdateMember() : MemberDefinition;
	
	@:overload public function setAccessUpdateMember(updater : MemberDefinition) : Void;
	
	/**
	* Is this an access method for a field selection or method call
	* of the form '...super.foo' or '...super.foo()'?
	*/
	@:overload @:final public function isSuperAccessMethod() : Bool;
	
	/**
	* Mark this member as an access method for a field selection
	* or method call via the 'super' keyword.
	*/
	@:overload @:final public function setIsSuperAccessMethod(b : Bool) : Void;
	
	/**
	* Tell if this is a final variable without an initializer.
	* Such variables are subject to definite single assignment.
	*/
	@:overload @:final public function isBlankFinal() : Bool;
	
	@:overload public function isNeverNull() : Bool;
	
	/**
	* Get the field's final value (may return null)
	*/
	@:overload public function getValue(env : sun.tools.java.Environment) : sun.tools.tree.Node;
	
	@:overload @:final public function getValue() : sun.tools.tree.Node;
	
	@:overload @:final public function setValue(value : sun.tools.tree.Node) : Void;
	
	@:overload public function getInitialValue() : Dynamic;
	
	/**
	* Get the next field or the next match
	*/
	@:overload @:final public function getNextMember() : MemberDefinition;
	
	@:overload @:final public function getNextMatch() : MemberDefinition;
	
	/**
	* Get the field's documentation
	*/
	@:overload public function getDocumentation() : String;
	
	/**
	* Request a check of the field definition.
	*/
	@:overload public function check(env : sun.tools.java.Environment) : Void;
	
	/**
	* Really check the field definition.
	*/
	@:overload public function check(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset) : sun.tools.tree.Vset;
	
	/**
	* Generate code
	*/
	@:overload public function code(env : sun.tools.java.Environment, asm : sun.tools.asm.Assembler) : Void;
	
	@:overload public function codeInit(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/**
	* Tells whether to report a deprecation error for this field.
	*/
	@:overload public function reportDeprecated(env : sun.tools.java.Environment) : Bool;
	
	/**
	* Check if a field can reach another field (only considers
	* forward references, not the access modifiers).
	*/
	@:overload @:final public function canReach(env : sun.tools.java.Environment, f : MemberDefinition) : Bool;
	
	/**
	* Convenience method to see if two methods return the same type
	*/
	@:overload public function sameReturnType(method : MemberDefinition) : Bool;
	
	/**
	* Check to see if `this' can override/hide `method'.  Caller is
	* responsible for verifying that `method' has the same signature
	* as `this'.  Caller is also responsible for verifying that
	* `method' is visible to the class where this override is occurring.
	* This method is called for the case when class B extends A and both
	* A and B define some method.
	* <pre>
	*       A - void foo() throws e1
	*       |
	*       |
	*       B - void foo() throws e2
	* </pre>
	*/
	@:overload public function checkOverride(env : sun.tools.java.Environment, method : MemberDefinition) : Bool;
	
	/**
	* Check to see if two method definitions are compatible, that is
	* do they have a `meet'.  The meet of two methods is essentially
	* and `intersection' of
	* two methods.  This method is called when some class C inherits
	* declarations for some method foo from two parents (superclass,
	* interfaces) but it does not, itself, have a declaration of foo.
	* Caller is responsible for making sure that both methods are
	* indeed visible in clazz.
	* <pre>
	*     A - void foo() throws e1
	*      \
	*       \     B void foo() throws e2
	*        \   /
	*         \ /
	*          C
	* </pre>
	*/
	@:overload public function checkMeet(env : sun.tools.java.Environment, method : MemberDefinition, clazz : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* This method is meant to be used to determine if one of two inherited
	* methods could override the other.  Unlike checkOverride(), failure
	* is not an error.  This method is only meant to be called after
	* checkMeet() has succeeded on the two methods.
	*
	* If you call couldOverride() without doing a checkMeet() first, then
	* you are on your own.
	*/
	@:overload public function couldOverride(env : sun.tools.java.Environment, method : MemberDefinition) : Bool;
	
	/**
	* Checks
	*/
	@:overload @:final public function isPublic() : Bool;
	
	@:overload @:final public function isPrivate() : Bool;
	
	@:overload @:final public function isProtected() : Bool;
	
	@:overload @:final public function isPackagePrivate() : Bool;
	
	@:overload @:final public function isFinal() : Bool;
	
	@:overload @:final public function isStatic() : Bool;
	
	@:overload @:final public function isSynchronized() : Bool;
	
	@:overload @:final public function isAbstract() : Bool;
	
	@:overload @:final public function isNative() : Bool;
	
	@:overload @:final public function isVolatile() : Bool;
	
	@:overload @:final public function isTransient() : Bool;
	
	@:overload @:final public function isMethod() : Bool;
	
	@:overload @:final public function isVariable() : Bool;
	
	@:overload @:final public function isSynthetic() : Bool;
	
	@:overload @:final public function isDeprecated() : Bool;
	
	@:overload @:final public function isStrict() : Bool;
	
	@:overload @:final public function isInnerClass() : Bool;
	
	@:overload @:final public function isInitializer() : Bool;
	
	@:overload @:final public function isConstructor() : Bool;
	
	@:overload public function isLocal() : Bool;
	
	@:overload public function isInlineable(env : sun.tools.java.Environment, fromFinal : Bool) : Bool;
	
	/**
	* Check if constant:  Will it inline away to a constant?
	*/
	@:overload public function isConstant() : Bool;
	
	/**
	* toString
	*/
	@:overload public function toString() : String;
	
	/**
	* Print for debugging
	*/
	@:overload public function print(out : java.io.PrintStream) : Void;
	
	@:overload public function cleanup(env : sun.tools.java.Environment) : Void;
	
	
}
