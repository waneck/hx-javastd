package sun.tools.tree;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class FieldUpdater implements sun.tools.java.Constants
{
	/**
	* Constructor.
	*/
	@:overload public function new(where : haxe.Int64, field : sun.tools.java.MemberDefinition, base : sun.tools.tree.Expression, getter : sun.tools.java.MemberDefinition, setter : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Since the object reference expression may be captured before it has been inlined,
	* we must inline it later.  A <code>FieldUpdater</code> is inlined essentially as if
	* it were a child of the assignment node to which it belongs.
	*/
	//@:overload public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : FieldUpdater;
	
	@:overload public function copyInline(ctx : sun.tools.tree.Context) : FieldUpdater;
	
	@:overload public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, needGet : Bool) : Int;
	
	/**
	* Begin a field update by an assignment, increment, or decrement operator.
	* The current value of the field is left at the top of the stack.
	* If <code>valNeeded</code> is true, we arrange for the initial value to remain
	* on the stack after the update.
	*/
	@:overload public function startUpdate(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler, valNeeded : Bool) : Void;
	
	/**
	* Complete a field update by an assignment, increment, or decrement operator.
	* The original value of the field left on the stack by <code>startUpdate</code>
	* must have been replaced with the updated value, with no other stack alterations.
	* If <code>valNeeded</code> is true, we arrange for the updated value to remain
	* on the stack after the update.  The <code>valNeeded</code> argument must not be
	* true in both <code>startUpdate</code> and <code>finishUpdate</code>.
	*/
	@:overload public function finishUpdate(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler, valNeeded : Bool) : Void;
	
	/**
	* Like above, but used when assigning a new value independent of the
	* old, as in a simple assignment expression.  After 'startAssign',
	* code must be emitted to leave one additional value on the stack without
	* altering any others, followed by 'finishAssign'.
	*/
	@:overload public function startAssign(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	@:overload public function finishAssign(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler, valNeeded : Bool) : Void;
	
	
}
