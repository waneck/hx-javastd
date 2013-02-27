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
@:internal extern class DynAnyComplexImpl extends com.sun.corba.se.impl.dynamicany.DynAnyConstructedImpl
{
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, any : org.omg.CORBA.Any, copyValue : Bool) : Void;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, typeCode : org.omg.CORBA.TypeCode) : Void;
	
	/*
	public org.omg.DynamicAny.DynAny copy() {
	if (status == STATUS_DESTROYED) {
	throw new OBJECT_NOT_EXIST();
	}
	DynAnyComplexImpl returnValue = null;
	if ((representations & REPRESENTATION_ANY) != 0) {
	// The flag "true" indicates copying the Any value
	returnValue = (DynAnyComplexImpl)DynAnyUtil.createMostDerivedDynAny(any, orb, true);
	}
	if ((representations & REPRESENTATION_COMPONENTS) != 0) {
	}
	return returnValue;
	}
*/
	@:overload public function current_member_name() : String;
	
	@:overload public function current_member_kind() : org.omg.CORBA.TCKind;
	
	@:overload public function set_members(value : java.NativeArray<org.omg.DynamicAny.NameValuePair>) : Void;
	
	@:overload public function set_members_as_dyn_any(value : java.NativeArray<org.omg.DynamicAny.NameDynAnyPair>) : Void;
	
	@:overload override private function initializeComponentsFromAny() : Bool;
	
	@:overload override private function initializeComponentsFromTypeCode() : Bool;
	
	@:overload override private function clearData() : Void;
	
	
}
