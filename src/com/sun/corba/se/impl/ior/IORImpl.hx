package com.sun.corba.se.impl.ior;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class IORImpl extends com.sun.corba.se.spi.ior.IdentifiableContainerBase implements com.sun.corba.se.spi.ior.IOR
{
	@:overload public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:synchronized override public function hashCode() : Int;
	
	/** Construct an empty IOR.  This is needed for null object references.
	*/
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, typeid : String) : Void;
	
	/** Construct an IOR from an IORTemplate by applying the same
	* object id to each TaggedProfileTemplate in the IORTemplate.
	*/
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, typeId : String, iortemp : com.sun.corba.se.spi.ior.IORTemplate, id : com.sun.corba.se.spi.ior.ObjectId) : Void;
	
	/** Construct an IOR from an IORTemplate by applying the same
	* object id to each TaggedProfileTemplate in the IORTemplate.
	*/
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, typeId : String, iortemps : com.sun.corba.se.spi.ior.IORTemplateList, id : com.sun.corba.se.spi.ior.ObjectId) : Void;
	
	@:overload public function new(is : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload public function getTypeId() : String;
	
	@:overload public function write(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload public function stringify() : String;
	
	@:overload @:synchronized override public function makeImmutable() : Void;
	
	@:overload public function getIOPIOR() : org.omg.IOP.IOR;
	
	@:overload public function isNil() : Bool;
	
	@:overload public function isEquivalent(ior : com.sun.corba.se.spi.ior.IOR) : Bool;
	
	/** Return the IORTemplateList for this IOR.  Will throw
	* exception if it is not possible to generate an IOR
	* from the IORTemplateList that is equal to this IOR,
	* which can only happen if not every TaggedProfile in the
	* IOR has the same ObjectId.
	*/
	@:overload @:synchronized public function getIORTemplates() : com.sun.corba.se.spi.ior.IORTemplateList;
	
	/** Return the first IIOPProfile in this IOR.
	* XXX THIS IS TEMPORARY FOR BACKWARDS COMPATIBILITY AND WILL BE REMOVED
	* SOON!
	*/
	@:overload public function getProfile() : com.sun.corba.se.spi.ior.iiop.IIOPProfile;
	
	
}
