package com.sun.corba.se.spi.ior;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class IORFactories
{
	/** Create an ObjectId for the given byte sequence.
	*/
	@:overload public static function makeObjectId(id : java.NativeArray<java.StdTypes.Int8>) : com.sun.corba.se.spi.ior.ObjectId;
	
	/** Create an ObjectKey for the given ObjectKeyTemplate and
	* ObjectId.
	*/
	@:overload public static function makeObjectKey(oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, oid : com.sun.corba.se.spi.ior.ObjectId) : com.sun.corba.se.spi.ior.ObjectKey;
	
	/** Create an empty IOR for the given orb and typeid.  The result is mutable.
	*/
	@:overload public static function makeIOR(orb : com.sun.corba.se.spi.orb.ORB, typeid : String) : com.sun.corba.se.spi.ior.IOR;
	
	/** Create an empty IOR for the given orb with a null typeid.  The result is mutable.
	*/
	@:overload public static function makeIOR(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.spi.ior.IOR;
	
	/** Read an IOR from an InputStream.  ObjectKeys are not shared.
	*/
	@:overload public static function makeIOR(is : org.omg.CORBA_2_3.portable.InputStream) : com.sun.corba.se.spi.ior.IOR;
	
	/** Create an IORTemplate with the given ObjectKeyTemplate.  The result
	* is mutable.
	*/
	@:overload public static function makeIORTemplate(oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate) : com.sun.corba.se.spi.ior.IORTemplate;
	
	/** Read an IORTemplate from an InputStream.
	*/
	@:overload public static function makeIORTemplate(is : org.omg.CORBA_2_3.portable.InputStream) : com.sun.corba.se.spi.ior.IORTemplate;
	
	@:overload public static function makeIORTemplateList() : com.sun.corba.se.spi.ior.IORTemplateList;
	
	@:overload public static function makeIORTemplateList(is : org.omg.CORBA_2_3.portable.InputStream) : com.sun.corba.se.spi.ior.IORTemplateList;
	
	@:overload public static function getIORFactory(ort : org.omg.PortableInterceptor.ObjectReferenceTemplate) : com.sun.corba.se.spi.ior.IORFactory;
	
	@:overload public static function getIORTemplateList(orf : org.omg.PortableInterceptor.ObjectReferenceFactory) : com.sun.corba.se.spi.ior.IORTemplateList;
	
	@:overload public static function makeObjectReferenceTemplate(orb : com.sun.corba.se.spi.orb.ORB, iortemp : com.sun.corba.se.spi.ior.IORTemplate) : org.omg.PortableInterceptor.ObjectReferenceTemplate;
	
	@:overload public static function makeObjectReferenceFactory(orb : com.sun.corba.se.spi.orb.ORB, iortemps : com.sun.corba.se.spi.ior.IORTemplateList) : org.omg.PortableInterceptor.ObjectReferenceFactory;
	
	@:overload public static function makeObjectKeyFactory(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.spi.ior.ObjectKeyFactory;
	
	@:overload public static function getIOR(obj : org.omg.CORBA.Object) : com.sun.corba.se.spi.ior.IOR;
	
	@:overload public static function makeObjectReference(ior : com.sun.corba.se.spi.ior.IOR) : org.omg.CORBA.Object;
	
	/** This method must be called in order to register the value
	* factories for the ObjectReferenceTemplate and ObjectReferenceFactory
	* value types.
	*/
	@:overload public static function registerValueFactories(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	
}
