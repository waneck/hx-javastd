package sun.reflect.generics.scope;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MethodScope extends sun.reflect.generics.scope.AbstractScope<java.lang.reflect.Method>
{
	/**
	* Overrides the abstract method in the superclass.
	* @return the enclosing scope
	*/
	@:overload @:protected override private function computeEnclosingScope() : sun.reflect.generics.scope.Scope;
	
	/**
	* Factory method. Takes a <tt>Method</tt> object and creates a
	* scope for it.
	* @param m - A Method whose scope we want to obtain
	* @return The type-variable scope for the method m
	*/
	@:overload @:public @:static public static function make(m : java.lang.reflect.Method) : sun.reflect.generics.scope.MethodScope;
	
	
}
