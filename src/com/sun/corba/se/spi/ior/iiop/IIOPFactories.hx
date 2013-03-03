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
extern class IIOPFactories
{
	@:overload @:public @:static public static function makeRequestPartitioningComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeRequestPartitioningComponent(threadPoolToUse : Int) : com.sun.corba.se.spi.ior.iiop.RequestPartitioningComponent;
	
	@:overload @:public @:static public static function makeAlternateIIOPAddressComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeAlternateIIOPAddressComponent(addr : com.sun.corba.se.spi.ior.iiop.IIOPAddress) : com.sun.corba.se.spi.ior.iiop.AlternateIIOPAddressComponent;
	
	@:overload @:public @:static public static function makeCodeSetsComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeCodeSetsComponent(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.spi.ior.iiop.CodeSetsComponent;
	
	@:overload @:public @:static public static function makeJavaCodebaseComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeJavaCodebaseComponent(codebase : String) : com.sun.corba.se.spi.ior.iiop.JavaCodebaseComponent;
	
	@:overload @:public @:static public static function makeORBTypeComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeORBTypeComponent(type : Int) : com.sun.corba.se.spi.ior.iiop.ORBTypeComponent;
	
	@:overload @:public @:static public static function makeMaxStreamFormatVersionComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeMaxStreamFormatVersionComponent() : com.sun.corba.se.spi.ior.iiop.MaxStreamFormatVersionComponent;
	
	@:overload @:public @:static public static function makeJavaSerializationComponentFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeJavaSerializationComponent() : com.sun.corba.se.impl.ior.iiop.JavaSerializationComponent;
	
	@:overload @:public @:static public static function makeIIOPProfileFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeIIOPProfile(orb : com.sun.corba.se.spi.orb.ORB, oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, oid : com.sun.corba.se.spi.ior.ObjectId, ptemp : com.sun.corba.se.spi.ior.iiop.IIOPProfileTemplate) : com.sun.corba.se.spi.ior.iiop.IIOPProfile;
	
	@:overload @:public @:static public static function makeIIOPProfile(orb : com.sun.corba.se.spi.orb.ORB, profile : org.omg.IOP.TaggedProfile) : com.sun.corba.se.spi.ior.iiop.IIOPProfile;
	
	@:overload @:public @:static public static function makeIIOPProfileTemplateFactory() : com.sun.corba.se.spi.ior.IdentifiableFactory;
	
	@:overload @:public @:static public static function makeIIOPProfileTemplate(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, primary : com.sun.corba.se.spi.ior.iiop.IIOPAddress) : com.sun.corba.se.spi.ior.iiop.IIOPProfileTemplate;
	
	@:overload @:public @:static public static function makeIIOPAddress(orb : com.sun.corba.se.spi.orb.ORB, host : String, port : Int) : com.sun.corba.se.spi.ior.iiop.IIOPAddress;
	
	@:overload @:public @:static public static function makeIIOPAddress(is : org.omg.CORBA_2_3.portable.InputStream) : com.sun.corba.se.spi.ior.iiop.IIOPAddress;
	
	
}
