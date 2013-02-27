package com.sun.corba.se.impl.util;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class Utility
{
	/**
	*  Handy class full of static functions.
	*/
	public static var STUB_PREFIX(default, null) : String;
	
	public static var RMI_STUB_SUFFIX(default, null) : String;
	
	public static var DYNAMIC_STUB_SUFFIX(default, null) : String;
	
	public static var IDL_STUB_SUFFIX(default, null) : String;
	
	public static var TIE_SUFIX(default, null) : String;
	
	/**
	* Ensure that stubs, ties, and implementation objects
	* are 'connected' to the runtime. Converts implementation
	* objects to a type suitable for sending on the wire.
	* @param obj the object to connect.
	* @param orb the ORB to connect to if obj is exported to IIOP.
	* @param convertToStub true if implementation types should be
	* converted to Stubs rather than just org.omg.CORBA.Object.
	* @return the connected object.
	* @exception NoSuchObjectException if obj is an implementation
	* which has not been exported.
	*/
	@:overload public static function autoConnect(obj : Dynamic, orb : org.omg.CORBA.ORB, convertToStub : Bool) : Dynamic;
	
	/*
	* Get a new instance of an RMI-IIOP Tie for the
	* given server object.
	*/
	@:overload public static function loadTie(obj : java.rmi.Remote) : javax.rmi.CORBA.Tie;
	
	/*
	* Clear the stub/tie caches. Intended for use by
	* test code.
	*/
	@:overload public static function clearCaches() : Void;
	
	/*
	* Load a class and check that it is compatible with a given type.
	* @param className the class name.
	* @param remoteCodebase the codebase to use. May be null.
	* @param loadingContext the loading context. May be null.
	* @param relatedType the related type. May be null.
	* @return the loaded class.
	*/
	@:overload public static function loadClassForClass(className : String, remoteCodebase : String, loader : java.lang.ClassLoader, relatedType : Class<Dynamic>, relatedTypeClassLoader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* Get the helper for an IDLValue
	*
	* Throws MARSHAL exception if no helper found.
	*/
	@:overload public static function getHelper(clazz : Class<Dynamic>, codebase : String, repId : String) : org.omg.CORBA.portable.BoxedValueHelper;
	
	/**
	* Get the factory for an IDLValue
	*
	* Throws MARSHAL exception if no factory found.
	*/
	@:overload public static function getFactory(clazz : Class<Dynamic>, codebase : String, orb : org.omg.CORBA.ORB, repId : String) : org.omg.CORBA.portable.ValueFactory;
	
	/*
	* Load an RMI-IIOP Stub given a Tie.
	* @param tie the tie.
	* @param stubClass the stub class. May be null.
	* @param remoteCodebase the codebase to use. May be null.
	* @param onlyMostDerived if true, will fail if cannot load a stub for the
	* first repID in the tie. If false, will walk all repIDs.
	* @return the stub or null if not found.
	*/
	@:overload public static function loadStub(tie : javax.rmi.CORBA.Tie, stubFactory : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactory, remoteCodebase : String, onlyMostDerived : Bool) : java.rmi.Remote;
	
	/*
	* If we loadStub(Tie,...) stashed away a tie which was
	* not connected, remove it from the cache and return
	* it.
	*/
	@:overload public static function getAndForgetTie(stub : org.omg.CORBA.Object) : javax.rmi.CORBA.Tie;
	
	/*
	* Remove any cached Stub for the given tie.
	*/
	@:overload public static function purgeStubForTie(tie : javax.rmi.CORBA.Tie) : Void;
	
	/*
	* Remove cached tie/servant pair.
	*/
	@:overload public static function purgeTieAndServant(tie : javax.rmi.CORBA.Tie) : Void;
	
	/*
	* Convert a RepId to a stubName...
	*/
	@:overload public static function stubNameFromRepID(repID : String) : String;
	
	/*
	* Load an RMI-IIOP Stub.  This is used in PortableRemoteObject.narrow.
	*/
	@:overload public static function loadStub(narrowFrom : org.omg.CORBA.Object, narrowTo : Class<Dynamic>) : java.rmi.Remote;
	
	/*
	* Load an RMI-IIOP Stub class.  This is used in the
	* StaticStubFactoryFactory code.
	*/
	@:overload public static function loadStubClass(repID : String, remoteCodebase : String, expectedType : Class<Dynamic>) : Class<Dynamic>;
	
	/**
	* Create an RMI stub name.
	*/
	@:overload public static function stubName(className : String) : String;
	
	@:overload public static function dynamicStubName(className : String) : String;
	
	@:overload public static function stubNameForCompiler(className : String) : String;
	
	/**
	* Create an RMI tie name.
	*/
	@:overload public static function tieName(className : String) : String;
	
	@:overload public static function tieNameForCompiler(className : String) : String;
	
	/**
	* Throws the CORBA equivalent of a java.io.NotSerializableException
	*/
	@:overload public static function throwNotSerializableForCorba(className : String) : Void;
	
	/**
	* Create an IDL stub name.
	*/
	@:overload public static function idlStubName(className : String) : String;
	
	@:overload public static function printStackTrace() : Void;
	
	/**
	* Read an object reference from the input stream and narrow
	* it to the desired type.
	* @param in the stream to read from.
	* @throws ClassCastException if narrowFrom cannot be cast to narrowTo.
	*/
	@:overload public static function readObjectAndNarrow(_in : org.omg.CORBA.portable.InputStream, narrowTo : Class<Dynamic>) : Dynamic;
	
	/**
	* Read an abstract interface type from the input stream and narrow
	* it to the desired type.
	* @param in the stream to read from.
	* @throws ClassCastException if narrowFrom cannot be cast to narrowTo.
	*/
	@:overload public static function readAbstractAndNarrow(_in : org.omg.CORBA_2_3.portable.InputStream, narrowTo : Class<Dynamic>) : Dynamic;
	
	
}
@:internal extern class StubEntry
{
	
}
