package com.sun.script.javascript;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class RhinoTopLevel extends ImporterTopLevel
{
	/**
	* The bindings function takes a JavaScript scope object
	* of type ExternalScriptable and returns the underlying Bindings
	* instance.
	*
	*    var page = scope(pageBindings);
	*    with (page) {
	*       // code that uses page scope
	*    }
	*    var b = bindings(page);
	*    // operate on bindings here.
	*/
	@:overload @:public @:static public static function bindings(cx : Context, thisObj : Scriptable, args : java.NativeArray<Dynamic>, funObj : Function) : Dynamic;
	
	/**
	* The scope function creates a new JavaScript scope object
	* with given Bindings object as backing store. This can be used
	* to create a script scope based on arbitrary Bindings instance.
	* For example, in webapp scenario, a 'page' level Bindings instance
	* may be wrapped as a scope and code can be run in JavaScripe 'with'
	* statement:
	*
	*    var page = scope(pageBindings);
	*    with (page) {
	*       // code that uses page scope
	*    }
	*/
	@:overload @:public @:static public static function scope(cx : Context, thisObj : Scriptable, args : java.NativeArray<Dynamic>, funObj : Function) : Dynamic;
	
	/**
	* The sync function creates a synchronized function (in the sense
	* of a Java synchronized method) from an existing function. The
	* new function synchronizes on the <code>this</code> object of
	* its invocation.
	* js> var o = { f : sync(function(x) {
	*       print("entry");
	*       Packages.java.lang.Thread.sleep(x*1000);
	*       print("exit");
	*     })};
	* js> thread(function() {o.f(5);});
	* entry
	* js> thread(function() {o.f(5);});
	* js>
	* exit
	* entry
	* exit
	*/
	@:overload @:public @:static public static function sync(cx : Context, thisObj : Scriptable, args : java.NativeArray<Dynamic>, funObj : Function) : Dynamic;
	
	
}
