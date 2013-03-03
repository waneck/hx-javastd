package com.sun.corba.se.spi.oa;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectAdapterBase extends org.omg.CORBA.LocalObject implements com.sun.corba.se.spi.oa.ObjectAdapter
{
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public @:final public function iorWrapper() : com.sun.corba.se.impl.logging.POASystemException;
	
	@:overload @:public @:final public function lifecycleWrapper() : com.sun.corba.se.impl.logging.POASystemException;
	
	@:overload @:public @:final public function omgLifecycleWrapper() : com.sun.corba.se.impl.logging.OMGSystemException;
	
	@:overload @:public @:final public function invocationWrapper() : com.sun.corba.se.impl.logging.POASystemException;
	
	@:overload @:public @:final public function omgInvocationWrapper() : com.sun.corba.se.impl.logging.OMGSystemException;
	
	/*
	* This creates the complete template.
	* When it is done, reference creation can proceed.
	*/
	@:overload @:final @:public public function initializeTemplate(oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, notifyORB : Bool, policies : com.sun.corba.se.impl.oa.poa.Policies, codebase : String, objectAdapterManagerId : String, objectAdapterId : com.sun.corba.se.spi.ior.ObjectAdapterId) : Void;
	
	@:overload @:final @:public public function makeObject(repId : String, oid : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	@:overload @:final @:public public function getAdapterId() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final @:public public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	@:overload @:abstract @:public public function getEffectivePolicy(type : Int) : org.omg.CORBA.Policy;
	
	@:overload @:final @:public public function getIORTemplate() : com.sun.corba.se.spi.ior.IORTemplate;
	
	@:overload @:abstract @:public public function getManagerId() : Int;
	
	@:overload @:abstract @:public public function getState() : java.StdTypes.Int16;
	
	@:overload @:final @:public public function getAdapterTemplate() : org.omg.PortableInterceptor.ObjectReferenceTemplate;
	
	@:overload @:final @:public public function getCurrentFactory() : org.omg.PortableInterceptor.ObjectReferenceFactory;
	
	@:overload @:final @:public public function setCurrentFactory(factory : org.omg.PortableInterceptor.ObjectReferenceFactory) : Void;
	
	@:overload @:abstract @:public public function getLocalServant(objectId : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	@:overload @:abstract @:public public function getInvocationServant(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload @:abstract @:public public function returnServant() : Void;
	
	@:overload @:abstract @:public public function enter() : Void;
	
	@:overload @:abstract @:public public function exit() : Void;
	
	@:overload @:abstract @:protected private function getObjectCopierFactory() : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	@:overload @:public public function makeInvocationInfo(objectId : java.NativeArray<java.StdTypes.Int8>) : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:abstract @:public public function getInterfaces(servant : org.omg.CORBA.Object, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	
}
