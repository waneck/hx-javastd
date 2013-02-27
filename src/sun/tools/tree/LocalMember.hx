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
extern class LocalMember extends sun.tools.java.MemberDefinition
{
	/**
	* Return current nesting level, i.e., the value of 'scopeNumber'.
	* Made public for the benefit of 'ClassDefinition.resolveName'.
	*/
	@:overload public function getScopeNumber() : Int;
	
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, clazz : sun.tools.java.ClassDefinition, modifiers : Int, type : sun.tools.java.Type, name : sun.tools.java.Identifier) : Void;
	
	/**
	* Constructor for a block-inner class.
	*/
	@:overload public function new(innerClass : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Special checks
	*/
	@:overload override public function isLocal() : Bool;
	
	/**
	* Make a copy of this field, which is an argument to a method
	* or constructor.  Arrange so that when occurrences of the field
	* are encountered in an immediately following copyInline() operation,
	* the expression nodes will replace the original argument by the
	* fresh copy.
	*/
	@:overload public function copyInline(ctx : sun.tools.tree.Context) : LocalMember;
	
	/**
	* Returns the previous result of copyInline(ctx).
	* Must be called in the course of an Expression.copyInline()
	* operation that immediately follows the LocalMember.copyInline().
	* Return "this" if there is no such copy.
	*/
	@:overload public function getCurrentInlineCopy(ctx : sun.tools.tree.Context) : LocalMember;
	
	/**
	* May inline copies of all the arguments of the given method.
	*/
	@:overload public static function copyArguments(ctx : sun.tools.tree.Context, field : sun.tools.java.MemberDefinition) : java.NativeArray<LocalMember>;
	
	/**
	* Call this when finished with the result of a copyArguments() call.
	*/
	@:overload public static function doneWithArguments(ctx : sun.tools.tree.Context, res : java.NativeArray<LocalMember>) : Void;
	
	/**
	* Is this local variable's value stable and simple enough to be directly
	* substituted for occurrences of the variable itself?
	* (This decision is made by VarDeclarationStatement.inline().)
	*/
	@:overload override public function isInlineable(env : sun.tools.java.Environment, fromFinal : Bool) : Bool;
	
	/**
	* Check if used
	*/
	@:overload public function isUsed() : Bool;
	
	/**
	* Return value
	*/
	@:overload override public function getValue(env : sun.tools.java.Environment) : sun.tools.tree.Node;
	
	/**
	* Value number for vsets, or -1 if none.
	*/
	@:overload public function getNumber(ctx : sun.tools.tree.Context) : Int;
	
	
}
