package com.sun.corba.se.impl.protocol;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class SpecialMethod
{
	@:overload @:abstract public function isNonExistentMethod() : Bool;
	
	@:overload @:abstract public function getName() : String;
	
	@:overload @:abstract public function invoke(servant : Dynamic, request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, objectId : java.NativeArray<java.StdTypes.Int8>, objectAdapter : com.sun.corba.se.spi.oa.ObjectAdapter) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:final public static function getSpecialMethod(operation : String) : com.sun.corba.se.impl.protocol.SpecialMethod;
	
	
}
@:internal extern class NonExistent extends com.sun.corba.se.impl.protocol.SpecialMethod
{
	@:overload override public function isNonExistentMethod() : Bool;
	
	@:overload override public function getName() : String;
	
	@:overload override public function invoke(servant : Dynamic, request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, objectId : java.NativeArray<java.StdTypes.Int8>, objectAdapter : com.sun.corba.se.spi.oa.ObjectAdapter) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	
}
@:internal extern class NotExistent extends com.sun.corba.se.impl.protocol.SpecialMethod.NonExistent
{
	@:overload override public function getName() : String;
	
	
}
@:internal extern class IsA extends com.sun.corba.se.impl.protocol.SpecialMethod
{
	@:overload override public function isNonExistentMethod() : Bool;
	
	@:overload override public function getName() : String;
	
	@:overload override public function invoke(servant : Dynamic, request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, objectId : java.NativeArray<java.StdTypes.Int8>, objectAdapter : com.sun.corba.se.spi.oa.ObjectAdapter) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	
}
@:internal extern class GetInterface extends com.sun.corba.se.impl.protocol.SpecialMethod
{
	@:overload override public function isNonExistentMethod() : Bool;
	
	@:overload override public function getName() : String;
	
	@:overload override public function invoke(servant : Dynamic, request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, objectId : java.NativeArray<java.StdTypes.Int8>, objectAdapter : com.sun.corba.se.spi.oa.ObjectAdapter) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	
}
