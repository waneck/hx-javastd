package com.sun.corba.se.impl.oa.toa;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class TOAImpl extends com.sun.corba.se.spi.oa.ObjectAdapterBase implements com.sun.corba.se.impl.oa.toa.TOA
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, tom : com.sun.corba.se.impl.oa.toa.TransientObjectManager, codebase : String) : Void;
	
	@:overload override public function getObjectCopierFactory() : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	@:overload override public function getLocalServant(objectId : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	/** Get the servant for the request given by the parameters.
	* This will update thread Current, so that subsequent calls to
	* returnServant and removeCurrent from the same thread are for the
	* same request.
	* @param request is the request containing the rest of the request
	*/
	@:overload override public function getInvocationServant(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload override public function returnServant() : Void;
	
	/** Return the most derived interface for the given servant and objectId.
	*/
	@:overload override public function getInterfaces(servant : Dynamic, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	@:overload override public function getEffectivePolicy(type : Int) : org.omg.CORBA.Policy;
	
	@:overload override public function getManagerId() : Int;
	
	@:overload override public function getState() : java.StdTypes.Int16;
	
	@:overload override public function enter() : Void;
	
	@:overload override public function exit() : Void;
	
	@:overload public function connect(objref : org.omg.CORBA.Object) : Void;
	
	@:overload public function disconnect(objref : org.omg.CORBA.Object) : Void;
	
	
}
