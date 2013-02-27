package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2001, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class CachedCodeBase extends _CodeBaseImplBase
{
	@:overload @:synchronized public static function cleanCache(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function new(connection : com.sun.corba.se.spi.transport.CorbaConnection) : Void;
	
	@:overload public function get_ir() : com.sun.org.omg.CORBA.Repository;
	
	@:overload @:synchronized public function implementation(repId : String) : String;
	
	@:overload @:synchronized public function implementations(repIds : java.NativeArray<String>) : java.NativeArray<String>;
	
	@:overload @:synchronized public function meta(repId : String) : com.sun.org.omg.CORBA.ValueDefPackage.FullValueDescription;
	
	@:overload @:synchronized public function metas(repIds : java.NativeArray<String>) : java.NativeArray<com.sun.org.omg.CORBA.ValueDefPackage.FullValueDescription>;
	
	@:overload @:synchronized public function bases(repId : String) : java.NativeArray<String>;
	
	
}