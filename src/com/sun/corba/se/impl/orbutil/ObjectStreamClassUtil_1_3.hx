package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
//// for computing the structural UID
extern class ObjectStreamClassUtil_1_3
{
	@:overload public static function computeSerialVersionUID(cl : Class<Dynamic>) : haxe.Int64;
	
	@:overload public static function computeStructuralUID(hasWriteObject : Bool, cl : Class<Dynamic>) : haxe.Int64;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClassUtil_1_3$CompareClassByName') @:internal extern class ObjectStreamClassUtil_1_3_CompareClassByName implements java.util.Comparator<Dynamic>
{
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClassUtil_1_3$CompareMemberByName') @:internal extern class ObjectStreamClassUtil_1_3_CompareMemberByName implements java.util.Comparator<Dynamic>
{
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$ObjectStreamClassUtil_1_3$MethodSignature') @:internal extern class ObjectStreamClassUtil_1_3_MethodSignature implements java.util.Comparator<Dynamic>
{
	/* Assumes that o1 and o2 are either both methods
	or both constructors.*/
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
