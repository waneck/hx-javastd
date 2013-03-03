package com.sun.tools.javac.jvm;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** A helper class for code generation. Items are objects
*  that stand for addressable entities in the bytecode. Each item
*  supports a fixed protocol for loading the item on the stack, storing
*  into it, converting it into a jump condition, and several others.
*  There are many individual forms of items, such as local, static,
*  indexed, or instance variables, values on the top of stack, the
*  special values this or super, etc. Individual items are represented as
*  inner classes in class Items.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Items
{
	@:overload @:public public function new(pool : com.sun.tools.javac.jvm.Pool, code : com.sun.tools.javac.jvm.Code, syms : com.sun.tools.javac.code.Symtab, types : com.sun.tools.javac.code.Types) : Void;
	
	
}
/** The base class of all items, which implements default behavior.
*/
@:native('com$sun$tools$javac$jvm$Items$Item') @:internal extern class Items_Item
{
	@:overload @:public @:abstract public function toString() : String;
	
	
}
/** An item representing a value on stack.
*/
@:native('com$sun$tools$javac$jvm$Items$StackItem') @:internal extern class Items_StackItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing an indexed expression.
*/
@:native('com$sun$tools$javac$jvm$Items$IndexedItem') @:internal extern class Items_IndexedItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing `this' or `super'.
*/
@:native('com$sun$tools$javac$jvm$Items$SelfItem') @:internal extern class Items_SelfItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing a local variable.
*/
@:native('com$sun$tools$javac$jvm$Items$LocalItem') @:internal extern class Items_LocalItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing a static variable or method.
*/
@:native('com$sun$tools$javac$jvm$Items$StaticItem') @:internal extern class Items_StaticItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing an instance variable or method.
*/
@:native('com$sun$tools$javac$jvm$Items$MemberItem') @:internal extern class Items_MemberItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing a literal.
*/
@:native('com$sun$tools$javac$jvm$Items$ImmediateItem') @:internal extern class Items_ImmediateItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing an assignment expressions.
*/
@:native('com$sun$tools$javac$jvm$Items$AssignItem') @:internal extern class Items_AssignItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
/** An item representing a conditional or unconditional jump.
*/
@:native('com$sun$tools$javac$jvm$Items$CondItem') @:internal extern class Items_CondItem extends com.sun.tools.javac.jvm.Items.Items_Item
{
	@:overload @:public override public function toString() : String;
	
	
}
