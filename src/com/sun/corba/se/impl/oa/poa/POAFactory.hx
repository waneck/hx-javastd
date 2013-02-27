package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class POAFactory implements com.sun.corba.se.spi.oa.ObjectAdapterFactory
{
	@:overload public function getWrapper() : com.sun.corba.se.impl.logging.POASystemException;
	
	/** All object adapter factories must have a no-arg constructor.
	*/
	@:overload public function new() : Void;
	
	@:overload @:synchronized public function lookupPOA(servant : org.omg.PortableServer.Servant) : org.omg.PortableServer.POA;
	
	@:overload @:synchronized public function registerPOAForServant(poa : org.omg.PortableServer.POA, servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload @:synchronized public function unregisterPOAForServant(poa : org.omg.PortableServer.POA, servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload public function init(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function find(oaid : com.sun.corba.se.spi.ior.ObjectAdapterId) : com.sun.corba.se.spi.oa.ObjectAdapter;
	
	@:overload public function shutdown(waitForCompletion : Bool) : Void;
	
	@:overload @:synchronized public function removePoaManager(manager : org.omg.PortableServer.POAManager) : Void;
	
	@:overload @:synchronized public function addPoaManager(manager : org.omg.PortableServer.POAManager) : Void;
	
	@:overload @:synchronized public function newPOAManagerId() : Int;
	
	@:overload public function registerRootPOA() : Void;
	
	@:overload @:synchronized public function getRootPOA() : org.omg.PortableServer.POA;
	
	@:overload public function getDelegateImpl() : org.omg.PortableServer.portable.Delegate;
	
	@:overload @:synchronized public function newPOAId() : Int;
	
	@:overload public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	
}
