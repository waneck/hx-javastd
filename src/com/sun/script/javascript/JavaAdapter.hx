package com.sun.script.javascript;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class implements Rhino-like JavaAdapter to help implement a Java
* interface in JavaScript. We support this using Invocable.getInterface.
* Using this JavaAdapter, script author could write:
*
*    var r = new java.lang.Runnable() {
*                run: function() { script... }
*            };
*
*    r.run();
*    new java.lang.Thread(r).start();
*
* Note that Rhino's JavaAdapter support allows extending a Java class and/or
* implementing one or more interfaces. This JavaAdapter implementation does
* not support these.
*
* @author A. Sundararajan
* @since 1.6
*/
@:require(java6) @:internal extern class JavaAdapter extends ScriptableObject implements Function
{
	@:overload public function getClassName() : String;
	
	@:overload public function call(cx : Context, scope : Scriptable, thisObj : Scriptable, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload public function construct(cx : Context, scope : Scriptable, args : java.NativeArray<Dynamic>) : Scriptable;
	
	
}
