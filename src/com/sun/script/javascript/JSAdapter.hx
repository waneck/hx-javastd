package com.sun.script.javascript;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* JSAdapter is java.lang.reflect.Proxy equivalent for JavaScript. JSAdapter
* calls specially named JavaScript methods on an adaptee object when property
* access is attempted on it.
*
* Example:
*
*    var y = {
*                __get__    : function (name) { ... }
*                __has__    : function (name) { ... }
*                __put__    : function (name, value) {...}
*                __delete__ : function (name) { ... }
*                __getIds__ : function () { ... }
*            };
*
*    var x = new JSAdapter(y);
*
*    x.i;                        // calls y.__get__
*    i in x;                     // calls y.__has__
*    x.p = 10;                   // calls y.__put__
*    delete x.p;                 // calls y.__delete__
*    for (i in x) { print(i); }  // calls y.__getIds__
*
* If a special JavaScript method is not found in the adaptee, then JSAdapter
* forwards the property access to the adaptee itself.
*
* JavaScript caller of adapter object is isolated from the fact that
* the property access/mutation/deletion are really calls to
* JavaScript methods on adaptee.  Use cases include 'smart'
* properties, property access tracing/debugging, encaptulation with
* easy client access - in short JavaScript becomes more "Self" like.
*
* Note that Rhino already supports special properties like __proto__
* (to set, get prototype), __parent__ (to set, get parent scope). We
* follow the same double underscore nameing convention here. Similarly
* the name JSAdapter is derived from JavaAdapter -- which is a facility
* to extend, implement Java classes/interfaces by JavaScript.
*
* @author A. Sundararajan
* @since 1.6
*/
@:require(java6) extern class JSAdapter implements Scriptable implements Function
{
	@:overload @:public @:static public static function init(cx : Context, scope : Scriptable, sealed : Bool) : Void;
	
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function get(name : String, start : Scriptable) : Dynamic;
	
	@:overload @:public public function get(index : Int, start : Scriptable) : Dynamic;
	
	@:overload @:public public function has(name : String, start : Scriptable) : Bool;
	
	@:overload @:public public function has(index : Int, start : Scriptable) : Bool;
	
	@:overload @:public public function put(name : String, start : Scriptable, value : Dynamic) : Void;
	
	@:overload @:public public function put(index : Int, start : Scriptable, value : Dynamic) : Void;
	
	@:overload @:public public function delete(name : String) : Void;
	
	@:overload @:public public function delete(index : Int) : Void;
	
	@:overload @:public public function getPrototype() : Scriptable;
	
	@:overload @:public public function setPrototype(prototype : Scriptable) : Void;
	
	@:overload @:public public function getParentScope() : Scriptable;
	
	@:overload @:public public function setParentScope(parent : Scriptable) : Void;
	
	@:overload @:public public function getIds() : java.NativeArray<Dynamic>;
	
	@:overload @:public public function hasInstance(scriptable : Scriptable) : Bool;
	
	@:overload @:public public function getDefaultValue(hint : Class<Dynamic>) : Dynamic;
	
	@:overload @:public public function call(cx : Context, scope : Scriptable, thisObj : Scriptable, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:public public function construct(cx : Context, scope : Scriptable, args : java.NativeArray<Dynamic>) : Scriptable;
	
	@:overload @:public public function getAdaptee() : Scriptable;
	
	@:overload @:public public function setAdaptee(adaptee : Scriptable) : Void;
	
	
}
