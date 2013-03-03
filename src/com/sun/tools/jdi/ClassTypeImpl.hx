package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassTypeImpl extends com.sun.tools.jdi.ReferenceTypeImpl implements com.sun.jdi.ClassType
{
	@:overload @:protected private function new(aVm : com.sun.jdi.VirtualMachine, aRef : haxe.Int64) : Void;
	
	@:overload @:public public function superclass() : com.sun.jdi.ClassType;
	
	@:overload @:public public function interfaces() : java.util.List<com.sun.jdi.InterfaceType>;
	
	@:overload @:public public function allInterfaces() : java.util.List<com.sun.jdi.InterfaceType>;
	
	@:overload @:public public function subclasses() : java.util.List<com.sun.jdi.ClassType>;
	
	@:overload @:public public function isEnum() : Bool;
	
	@:overload @:public public function setValue(field : com.sun.jdi.Field, value : com.sun.jdi.Value) : Void;
	
	@:overload @:public public function invokeMethod(threadIntf : com.sun.jdi.ThreadReference, methodIntf : com.sun.jdi.Method, origArguments : java.util.List<com.sun.jdi.Value>, options : Int) : com.sun.jdi.Value;
	
	@:overload @:public public function newInstance(threadIntf : com.sun.jdi.ThreadReference, methodIntf : com.sun.jdi.Method, origArguments : java.util.List<com.sun.jdi.Value>, options : Int) : com.sun.jdi.ObjectReference;
	
	@:overload @:public public function concreteMethodByName(name : String, signature : String) : com.sun.jdi.Method;
	
	@:overload @:public override public function allMethods() : java.util.List<com.sun.jdi.Method>;
	
	@:overload @:public override public function toString() : String;
	
	
}
