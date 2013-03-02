package com.sun.corba.se.spi.presentation.rmi;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface PresentationManager
{
	/** Get the ClassData for a particular class.
	* This class may be an implementation class, in which
	* case the IDLNameTranslator handles all Remote interfaces implemented by
	* the class.  If the class implements more than one remote interface, and not
	* all of the remote interfaces are related by inheritance, then the type
	* IDs have the implementation class as element 0.
	*/
	@:overload public function getClassData(cls : Class<Dynamic>) : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_ClassData;
	
	/** Given a particular method, return a DynamicMethodMarshaller
	* for that method.  This is used for dynamic stubs and ties.
	*/
	@:overload public function getDynamicMethodMarshaller(method : java.lang.reflect.Method) : com.sun.corba.se.spi.presentation.rmi.DynamicMethodMarshaller;
	
	/** Return the registered StubFactoryFactory.
	*/
	@:overload public function getStubFactoryFactory(isDynamic : Bool) : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactoryFactory;
	
	/** Register the StubFactoryFactory.  Note that
	* a static StubFactoryFactory is always required for IDL.  The
	* dynamic stubFactoryFactory is optional.
	*/
	@:overload public function setStubFactoryFactory(isDynamic : Bool, sff : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactoryFactory) : Void;
	
	/** Equivalent to getStubFactoryFactory( true ).getTie( null ).
	* Provided for compatibility with earlier versions of PresentationManager
	* as used in the app server.  The class argument is ignored in
	* the dynamic case, so this is safe.
	*/
	@:overload public function getTie() : javax.rmi.CORBA.Tie;
	
	/** Returns the value of the com.sun.CORBA.ORBUseDynamicStub
	* property.
	*/
	@:overload public function useDynamicStubs() : Bool;
	
	
}
/** Creates StubFactory and Tie instances.
*/
@:native('com$sun$corba$se$spi$presentation$rmi$PresentationManager$StubFactoryFactory') extern interface PresentationManager_StubFactoryFactory
{
	/** Return the standard name of a stub (according to the RMI-IIOP specification
	* and rmic).  This is needed so that the name of a stub is known for
	* standalone clients of the app server.
	*/
	@:overload public function getStubName(className : String) : String;
	
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
	
	/** Return a Tie for the given class.
	*/
	@:overload public function getTie(cls : Class<Dynamic>) : javax.rmi.CORBA.Tie;
	
	/** Return whether or not this StubFactoryFactory creates StubFactory
	* instances that create dynamic stubs and ties.  At the top level,
	* true indicates that rmic -iiop is not needed for generating stubs
	* or ties.
	*/
	@:overload public function createsDynamicStubs() : Bool;
	
	
}
/** Creates the actual stub needed for RMI-IIOP remote
* references.
*/
@:native('com$sun$corba$se$spi$presentation$rmi$PresentationManager$StubFactory') extern interface PresentationManager_StubFactory
{
	/** Create a new dynamic stub.  It has the type that was
	* used to create this factory.
	*/
	@:overload public function makeStub() : org.omg.CORBA.Object;
	
	/** Return the repository ID information for all Stubs
	* created by this stub factory.
	*/
	@:overload public function getTypeIds() : java.NativeArray<String>;
	
	
}
@:native('com$sun$corba$se$spi$presentation$rmi$PresentationManager$ClassData') extern interface PresentationManager_ClassData
{
	/** Get the class used to create this ClassData instance
	*/
	@:overload public function getMyClass() : Class<Dynamic>;
	
	/** Get the IDLNameTranslator for the class used to create
	* this ClassData instance.
	*/
	@:overload public function getIDLNameTranslator() : com.sun.corba.se.spi.presentation.rmi.IDLNameTranslator;
	
	/** Return the array of repository IDs for all of the remote
	* interfaces implemented by this class.
	*/
	@:overload public function getTypeIds() : java.NativeArray<String>;
	
	/** Get the InvocationHandlerFactory that is used to create
	* an InvocationHandler for dynamic stubs of the type of the
	* ClassData.
	*/
	@:overload public function getInvocationHandlerFactory() : com.sun.corba.se.spi.orbutil.proxy.InvocationHandlerFactory;
	
	/** Get the dictionary for this ClassData instance.
	* This is used to hold class-specific information for a Class
	* in the class data.  This avoids the need to create other
	* caches for accessing the information.
	*/
	@:overload public function getDictionary() : java.util.Map<Dynamic, Dynamic>;
	
	
}
