package sun.reflect.generics.tree;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SimpleClassTypeSignature implements sun.reflect.generics.tree.FieldTypeSignature
{
	@:overload @:public @:static public static function make(n : String, dollar : Bool, tas : java.NativeArray<sun.reflect.generics.tree.TypeArgument>) : sun.reflect.generics.tree.SimpleClassTypeSignature;
	
	/*
	* Should a '$' be used instead of '.' to separate this component
	* of the name from the previous one when composing a string to
	* pass to Class.forName; in other words, is this a transition to
	* a nested class.
	*/
	@:overload @:public public function getDollar() : Bool;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getTypeArguments() : java.NativeArray<sun.reflect.generics.tree.TypeArgument>;
	
	@:overload @:public public function accept(v : sun.reflect.generics.visitor.TypeTreeVisitor<Dynamic>) : Void;
	
	
}
