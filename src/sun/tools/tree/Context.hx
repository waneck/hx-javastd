package sun.tools.tree;
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
extern class Context implements sun.tools.java.Constants
{
	/**
	* Create the initial context for a method
	* The incoming context is inherited from
	*/
	@:overload public function new(ctx : Context, field : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Create a new context, for initializing a class.
	*/
	@:overload public function new(ctx : Context, c : sun.tools.java.ClassDefinition) : Void;
	
	@:overload public function new(ctx : Context) : Void;
	
	/**
	* Declare local
	*/
	@:overload public function declare(env : sun.tools.java.Environment, local : sun.tools.tree.LocalMember) : Int;
	
	/**
	* Get a local variable by name
	*/
	@:overload public function getLocalField(name : sun.tools.java.Identifier) : sun.tools.tree.LocalMember;
	
	/**
	* Get the scope number for a reference to a member of this class
	* (Larger scope numbers are more deeply nested.)
	* @see LocalMember#scopeNumber
	*/
	@:overload public function getScopeNumber(c : sun.tools.java.ClassDefinition) : Int;
	
	/**
	* Assign a number to a class field.
	* (This is used to track definite assignment of some blank finals.)
	*/
	@:overload public function declareFieldNumber(field : sun.tools.java.MemberDefinition) : Int;
	
	/**
	* Retrieve a number previously assigned by declareMember().
	* Return -1 if there was no such assignment in this context.
	*/
	@:overload public function getFieldNumber(field : sun.tools.java.MemberDefinition) : Int;
	
	/**
	* Return the local field or member field corresponding to a number.
	* Return null if there is no such field.
	*/
	@:overload public function getElement(number : Int) : sun.tools.java.MemberDefinition;
	
	/**
	* Get a local class by name
	*/
	@:overload public function getLocalClass(name : sun.tools.java.Identifier) : sun.tools.tree.LocalMember;
	
	/**
	* Get either a local variable, or a field in a current class
	*/
	@:overload @:final public function getField(env : sun.tools.java.Environment, name : sun.tools.java.Identifier) : sun.tools.java.MemberDefinition;
	
	/**
	* Like getField, except that it skips over inherited fields.
	* Used for error checking.
	*/
	@:overload @:final public function getApparentField(env : sun.tools.java.Environment, name : sun.tools.java.Identifier) : sun.tools.java.MemberDefinition;
	
	/**
	* Check if the given field is active in this context.
	*/
	@:overload public function isInScope(field : sun.tools.tree.LocalMember) : Bool;
	
	/**
	* Notice a reference (usually an uplevel one).
	* Update the references list of every enclosing class
	* which is enclosed by the scope of the target.
	* Update decisions about which uplevels to make into fields.
	* Return the uplevel reference descriptor, or null if it's local.
	* <p>
	* The target must be in scope in this context.
	* So, call this method only from the check phase.
	* (In other phases, the context may be less complete.)
	* <p>
	* This can and should be called both before and after classes are frozen.
	* It should be a no-op, and will raise a compiler error if not.
	*/
	@:overload public function noteReference(env : sun.tools.java.Environment, target : sun.tools.tree.LocalMember) : sun.tools.tree.UplevelReference;
	
	/**
	* Implement a reference (usually an uplevel one).
	* Call noteReference() first, to make sure the reference
	* lists are up to date.
	* <p>
	* The resulting expression tree does not need checking;
	* it can be code-generated right away.
	* If the reference is not uplevel, the result is an IDENT or THIS.
	*/
	@:overload public function makeReference(env : sun.tools.java.Environment, target : sun.tools.tree.LocalMember) : sun.tools.tree.Expression;
	
	/**
	* Return a local expression which can serve as the base reference
	* for the given field.  If the field is a constructor, return an
	* expression for the implicit enclosing instance argument.
	* <p>
	* Return null if there is no need for such an argument,
	* or if there was an error.
	*/
	@:overload public function findOuterLink(env : sun.tools.java.Environment, where : haxe.Int64, f : sun.tools.java.MemberDefinition) : sun.tools.tree.Expression;
	
	@:overload public function findOuterLink(env : sun.tools.java.Environment, where : haxe.Int64, reqc : sun.tools.java.ClassDefinition, f : sun.tools.java.MemberDefinition, needExactMatch : Bool) : sun.tools.tree.Expression;
	
	/**
	* Is there a "this" of type reqc in scope?
	*/
	@:overload public static function outerLinkExists(env : sun.tools.java.Environment, reqc : sun.tools.java.ClassDefinition, thisc : sun.tools.java.ClassDefinition) : Bool;
	
	/**
	* From which enclosing class do members of this type come?
	*/
	@:overload public function findScope(env : sun.tools.java.Environment, reqc : sun.tools.java.ClassDefinition) : sun.tools.java.ClassDefinition;
	
	/**
	* Return the name of a lexically apparent type,
	* skipping inherited members, and ignoring
	* the current pacakge and imports.
	* This is used for error checking.
	*/
	@:overload public function getApparentClassName(env : sun.tools.java.Environment, name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Raise an error if a blank final was definitely unassigned
	* on entry to a loop, but has possibly been assigned on the
	* back-branch.  If this is the case, the loop may be assigning
	* it multiple times.
	*/
	@:overload public function checkBackBranch(env : sun.tools.java.Environment, loop : sun.tools.tree.Statement, vsEntry : sun.tools.tree.Vset, vsBack : sun.tools.tree.Vset) : Void;
	
	/**
	* Check if a field can reach another field (only considers
	* forward references, not the access modifiers).
	*/
	@:overload public function canReach(env : sun.tools.java.Environment, f : sun.tools.java.MemberDefinition) : Bool;
	
	/**
	* Get the context that corresponds to a label, return null if
	* not found.
	*/
	@:overload public function getLabelContext(lbl : sun.tools.java.Identifier) : Context;
	
	/**
	* Get the destination context of a break
	*/
	@:overload public function getBreakContext(lbl : sun.tools.java.Identifier) : Context;
	
	/**
	* Get the destination context of a continue
	*/
	@:overload public function getContinueContext(lbl : sun.tools.java.Identifier) : Context;
	
	/**
	* Get the destination context of a return (the method body)
	*/
	@:overload public function getReturnContext() : sun.tools.tree.CheckContext;
	
	/**
	* Get the context of the innermost surrounding try-block.
	* Consider only try-blocks contained within the same method.
	* (There could be others when searching from within a method
	* of a local class, but they are irrelevant to our purpose.)
	* This is used for recording DA/DU information preceding
	* all abnormal transfers of control: break, continue, return,
	* and throw.
	*/
	@:overload public function getTryExitContext() : sun.tools.tree.CheckContext;
	
	/**
	* Remove variables from the vset set  that are no longer part of
	* this context.
	*/
	@:overload @:final public function removeAdditionalVars(vset : sun.tools.tree.Vset) : sun.tools.tree.Vset;
	
	@:overload @:final public function getVarNumber() : Int;
	
	/**
	* Return the number of the innermost current instance reference.
	*/
	@:overload public function getThisNumber() : Int;
	
	/**
	* Return the field containing the present context.
	*/
	@:overload @:final public function getField() : sun.tools.java.MemberDefinition;
	
	/**
	* Extend an environment with the given context.
	* The resulting environment behaves the same as
	* the given one, except that resolveName() takes
	* into account local class names in this context.
	*/
	@:overload public static function newEnvironment(env : sun.tools.java.Environment, ctx : Context) : sun.tools.java.Environment;
	
	
}
@:internal extern class ContextEnvironment extends sun.tools.java.Environment
{
	@:overload override public function resolveName(name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	
}
