package com.sun.tools.javac.comp;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Todo extends java.util.AbstractQueue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>
{
	/** The context key for the todo list. */
	@:protected @:static @:final private static var todoKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Todo>;
	
	/** Get the Todo instance for this context. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Todo;
	
	/** Create a new todo list. */
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function append(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Void;
	
	@:overload @:public override public function iterator() : java.util.Iterator<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public public function offer(e : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Bool;
	
	@:overload @:public override public function poll() : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload @:public override public function peek() : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload @:public public function groupByFile() : java.util.Queue<java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>>;
	
	
}
@:native('com$sun$tools$javac$comp$Todo$FileQueue') @:internal extern class Todo_FileQueue extends java.util.AbstractQueue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>
{
	@:overload @:public override public function iterator() : java.util.Iterator<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public public function offer(e : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Bool;
	
	@:overload @:public override public function poll() : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload @:public override public function peek() : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	
}
