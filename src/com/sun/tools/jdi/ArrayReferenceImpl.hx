package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ArrayReferenceImpl extends com.sun.tools.jdi.ObjectReferenceImpl implements com.sun.jdi.ArrayReference
{
	@:overload @:protected override private function invokableReferenceType(method : com.sun.jdi.Method) : com.sun.tools.jdi.ClassTypeImpl;
	
	/**
	* Return array length.
	* Need not be synchronized since it cannot be provably stale.
	*/
	@:overload @:public public function length() : Int;
	
	@:overload @:public public function getValue(index : Int) : com.sun.jdi.Value;
	
	@:overload @:public public function getValues() : java.util.List<com.sun.jdi.Value>;
	
	@:overload @:public public function getValues(index : Int, length : Int) : java.util.List<com.sun.jdi.Value>;
	
	@:overload @:public public function setValue(index : Int, value : com.sun.jdi.Value) : Void;
	
	@:overload @:public public function setValues(values : java.util.List<com.sun.jdi.Value>) : Void;
	
	@:overload @:public public function setValues(index : Int, values : java.util.List<com.sun.jdi.Value>, srcIndex : Int, length : Int) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
/*
* Represents an array component to other internal parts of this
* implementation. This is not exposed at the JDI level. Currently,
* this class is needed only for type checking so it does not even
* reference a particular component - just a generic component
* of this array. In the future we may need to expand its use.
*/
@:native('com$sun$tools$jdi$ArrayReferenceImpl$Component') @:internal extern class ArrayReferenceImpl_Component implements com.sun.tools.jdi.ValueContainer
{
	@:overload @:public public function type() : com.sun.jdi.Type;
	
	@:overload @:public public function typeName() : String;
	
	@:overload @:public public function signature() : String;
	
	@:overload @:public public function findType(signature : String) : com.sun.jdi.Type;
	
	
}
