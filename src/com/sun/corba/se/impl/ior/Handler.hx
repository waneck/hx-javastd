package com.sun.corba.se.impl.ior;
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
@:internal extern interface Handler
{
	/** Based on the magic and scid, return the appropriate
* ObjectKeyTemplate.  Expects to be called with a valid
* magic.  If scid is not valid, null should be returned.
*/
	@:overload public function handle(magic : Int, scid : Int, is : org.omg.CORBA_2_3.portable.InputStream, osh : org.omg.CORBA.OctetSeqHolder) : com.sun.corba.se.spi.ior.ObjectKeyTemplate;
	
	
}
extern class ObjectKeyFactoryImpl implements com.sun.corba.se.spi.ior.ObjectKeyFactory
{
	/** Singleton used to manufacture ObjectKey and ObjectKeyTemplate
	* instances.
	* @author Ken Cavanaugh
	*/
	@:public @:static @:final public static var MAGIC_BASE(default, null) : Int;
	
	@:public @:static @:final public static var JAVAMAGIC_OLD(default, null) : Int;
	
	@:public @:static @:final public static var JAVAMAGIC_NEW(default, null) : Int;
	
	@:public @:static @:final public static var JAVAMAGIC_NEWER(default, null) : Int;
	
	@:public @:static @:final public static var MAX_MAGIC(default, null) : Int;
	
	@:public @:static @:final public static var JDK1_3_1_01_PATCH_LEVEL(default, null) : java.StdTypes.Int8;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public public function create(key : java.NativeArray<java.StdTypes.Int8>) : com.sun.corba.se.spi.ior.ObjectKey;
	
	@:overload @:public public function createTemplate(is : org.omg.CORBA_2_3.portable.InputStream) : com.sun.corba.se.spi.ior.ObjectKeyTemplate;
	
	
}
