package com.sun.corba.se.spi.ior.iiop;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class GIOPVersion
{
	@:public @:static @:final public static var V1_0(default, null) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:public @:static @:final public static var V1_1(default, null) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:public @:static @:final public static var V1_2(default, null) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:public @:static @:final public static var V1_3(default, null) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:public @:static @:final public static var V13_XX(default, null) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:public @:static @:final public static var DEFAULT_VERSION(default, null) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:public @:static @:final public static var VERSION_1_0(default, null) : Int;
	
	@:public @:static @:final public static var VERSION_1_1(default, null) : Int;
	
	@:public @:static @:final public static var VERSION_1_2(default, null) : Int;
	
	@:public @:static @:final public static var VERSION_1_3(default, null) : Int;
	
	@:public @:static @:final public static var VERSION_13_XX(default, null) : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(majorB : java.StdTypes.Int8, minorB : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function new(major : Int, minor : Int) : Void;
	
	@:overload @:public public function getMajor() : java.StdTypes.Int8;
	
	@:overload @:public public function getMinor() : java.StdTypes.Int8;
	
	@:overload @:public public function equals(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Bool;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function lessThan(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Bool;
	
	@:overload @:public public function intValue() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:static public static function getInstance(major : java.StdTypes.Int8, minor : java.StdTypes.Int8) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:public @:static public static function parseVersion(s : String) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	/**
	* This chooses the appropriate GIOP version.
	*
	* @return the GIOP version 13.00 if Java serialization is enabled, or
	*         smallest(profGIOPVersion, orbGIOPVersion)
	*/
	@:overload @:public @:static public static function chooseRequestVersion(orb : com.sun.corba.se.spi.orb.ORB, ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:public public function supportsIORIIOPProfileComponents() : Bool;
	
	@:overload @:public public function read(istream : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload @:public public function write(ostream : org.omg.CORBA.portable.OutputStream) : Void;
	
	
}
