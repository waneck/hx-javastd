package com.sun.corba.se.impl.ior.iiop;
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
extern class IIOPProfileImpl extends com.sun.corba.se.spi.ior.IdentifiableBase implements com.sun.corba.se.spi.ior.iiop.IIOPProfile
{
	private var codebase : String;
	
	private var cachedCodebase : Bool;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function getObjectId() : com.sun.corba.se.spi.ior.ObjectId;
	
	@:overload public function getTaggedProfileTemplate() : com.sun.corba.se.spi.ior.TaggedProfileTemplate;
	
	@:overload public function getObjectKeyTemplate() : com.sun.corba.se.spi.ior.ObjectKeyTemplate;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, oid : com.sun.corba.se.spi.ior.ObjectId, proftemp : com.sun.corba.se.spi.ior.iiop.IIOPProfileTemplate) : Void;
	
	@:overload public function new(is : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, profile : org.omg.IOP.TaggedProfile) : Void;
	
	@:overload override public function writeContents(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload override public function getId() : Int;
	
	@:overload public function isEquivalent(prof : com.sun.corba.se.spi.ior.TaggedProfile) : Bool;
	
	@:overload public function getObjectKey() : com.sun.corba.se.spi.ior.ObjectKey;
	
	@:overload public function getIOPProfile() : org.omg.IOP.TaggedProfile;
	
	@:overload @:synchronized public function getCodebase() : String;
	
	/**
	* @return the ORBVersion associated with the object key in the IOR.
	*/
	@:overload public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload @:synchronized public function isLocal() : Bool;
	
	/** Return the servant for this IOR, if it is local AND if the OA that
	* implements this objref supports direct access to servants outside of an
	* invocation.
	* XXX revisit: do we want this at all?  If we do, it might move to the
	* ObjectKeyTemplate instead.
	*/
	@:overload public function getServant() : Dynamic;
	
	/**
	* Return GIOPVersion for this IOR.
	* Requests created against this IOR will be of the
	* return Version.
	*/
	@:overload @:synchronized public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload public function makeImmutable() : Void;
	
	
}
@:native('com$sun$corba$se$impl$ior$iiop$IIOPProfileImpl$LocalCodeBaseSingletonHolder') @:internal extern class IIOPProfileImpl_LocalCodeBaseSingletonHolder
{
	public static var comp : com.sun.corba.se.spi.ior.iiop.JavaCodebaseComponent;
	
	
}
