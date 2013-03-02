package com.sun.corba.se.impl.dynamicany;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DynAnyCollectionImpl extends com.sun.corba.se.impl.dynamicany.DynAnyConstructedImpl
{
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, any : org.omg.CORBA.Any, copyValue : Bool) : Void;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, typeCode : org.omg.CORBA.TypeCode) : Void;
	
	@:overload private function createDefaultComponentAt(i : Int, contentType : org.omg.CORBA.TypeCode) : Void;
	
	@:overload private function getContentType() : org.omg.CORBA.TypeCode;
	
	@:overload private function getBound() : Int;
	
	@:overload public function get_elements() : java.NativeArray<org.omg.CORBA.Any>;
	
	@:overload @:abstract private function checkValue(value : java.NativeArray<org.omg.CORBA.Object>) : Void;
	
	@:overload public function set_elements(value : java.NativeArray<org.omg.CORBA.Any>) : Void;
	
	@:overload public function get_elements_as_dyn_any() : java.NativeArray<org.omg.DynamicAny.DynAny>;
	
	@:overload public function set_elements_as_dyn_any(value : java.NativeArray<org.omg.DynamicAny.DynAny>) : Void;
	
	
}
