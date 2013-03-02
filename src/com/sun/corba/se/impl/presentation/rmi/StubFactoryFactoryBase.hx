package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class StubFactoryFactoryBase implements com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactoryFactory
{
	/**
	* Returns the stub classname for the given interface name.
	*
	* @param fullName fully qualified name remote class
	*/
	@:overload public function getStubName(fullName : String) : String;
	
	/** Create a stub factory for stubs for the interface whose type is given by
	* className.  className may identify either an IDL interface or an RMI-IIOP
	* interface.
	* @param className The name of the remote interface as a Java class name.
	* @param isIDLStub True if className identifies an IDL stub, else false.
	* @param remoteCodeBase The CodeBase to use for loading Stub classes, if
	* necessary (may be null or unused).
	* @param expectedClass The expected stub type (may be null or unused).
	* @param classLoader The classLoader to use (may be null).
	*/
	@:overload public function createStubFactory(className : String, isIDLStub : Bool, remoteCodeBase : String, expectedClass : Class<Dynamic>, classLoader : java.lang.ClassLoader) : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactory;
	
	/** Return whether or not this StubFactoryFactory creates StubFactory
	* instances that create dynamic stubs and ties.  At the top level,
	* true indicates that rmic -iiop is not needed for generating stubs
	* or ties.
	*/
	@:overload public function createsDynamicStubs() : Bool;
	
	/** Return a Tie for the given class.
	*/
	@:overload public function getTie(cls : Class<Dynamic>) : javax.rmi.CORBA.Tie;
	
	
}
