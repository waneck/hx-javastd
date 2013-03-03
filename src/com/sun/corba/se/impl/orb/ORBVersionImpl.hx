package com.sun.corba.se.impl.orb;
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
extern class ORBVersionImpl implements com.sun.corba.se.spi.orb.ORBVersion
{
	@:overload @:public public function new(orbType : java.StdTypes.Int8) : Void;
	
	@:public @:static @:final public static var FOREIGN(default, null) : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:public @:static @:final public static var OLD(default, null) : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:public @:static @:final public static var NEW(default, null) : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:public @:static @:final public static var JDK1_3_1_01(default, null) : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:public @:static @:final public static var NEWER(default, null) : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:public @:static @:final public static var PEORB(default, null) : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload @:public public function getORBType() : java.StdTypes.Int8;
	
	@:overload @:public public function write(os : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function lessThan(version : com.sun.corba.se.spi.orb.ORBVersion) : Bool;
	
	@:overload @:public public function compareTo(obj : Dynamic) : Int;
	
	
}
