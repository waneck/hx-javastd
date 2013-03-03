package com.sun.corba.se.spi.orb;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ORB extends com.sun.corba.se.org.omg.CORBA.ORB implements com.sun.corba.se.pept.broker.Broker implements com.sun.corba.se.impl.corba.TypeCodeFactory
{
	@:public @:static public static var ORBInitDebug : Bool;
	
	@:public public var transportDebugFlag : Bool;
	
	@:public public var subcontractDebugFlag : Bool;
	
	@:public public var poaDebugFlag : Bool;
	
	@:public public var poaConcurrencyDebugFlag : Bool;
	
	@:public public var poaFSMDebugFlag : Bool;
	
	@:public public var orbdDebugFlag : Bool;
	
	@:public public var namingDebugFlag : Bool;
	
	@:public public var serviceContextDebugFlag : Bool;
	
	@:public public var transientObjectManagerDebugFlag : Bool;
	
	@:public public var giopVersionDebugFlag : Bool;
	
	@:public public var shutdownDebugFlag : Bool;
	
	@:public public var giopDebugFlag : Bool;
	
	@:public public var invocationTimingDebugFlag : Bool;
	
	@:protected @:static private static var staticWrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var omgWrapper : com.sun.corba.se.impl.logging.OMGSystemException;
	
	@:overload @:public @:abstract public function isLocalHost(hostName : String) : Bool;
	
	@:overload @:public @:abstract public function isLocalServerId(subcontractId : Int, serverId : Int) : Bool;
	
	@:overload @:public @:abstract public function peekInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:public @:abstract public function pushInvocationInfo(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload @:public @:abstract public function popInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:public @:abstract public function getCorbaTransportManager() : com.sun.corba.se.spi.transport.CorbaTransportManager;
	
	@:overload @:public @:abstract public function getLegacyServerSocketManager() : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketManager;
	
	@:protected private var monitoringManager : com.sun.corba.se.spi.monitoring.MonitoringManager;
	
	@:overload @:public override public function destroy() : Void;
	
	/**
	* Returns the Presentation Manager for the current thread group, using the ThreadGroup-specific
	* AppContext to hold it. Creates and records one if needed.
	*/
	@:overload @:public @:static public static function getPresentationManager() : com.sun.corba.se.spi.presentation.rmi.PresentationManager;
	
	/** Get the appropriate StubFactoryFactory.  This
	* will be dynamic or static depending on whether
	* com.sun.CORBA.ORBUseDynamicStub is true or false.
	*/
	@:overload @:public @:static public static function getStubFactoryFactory() : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactoryFactory;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function get_primitive_tc(kind : Int) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload @:public @:synchronized public function setTypeCode(id : String, code : com.sun.corba.se.impl.corba.TypeCodeImpl) : Void;
	
	@:overload @:public @:synchronized public function getTypeCode(id : String) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload @:public public function getMonitoringManager() : com.sun.corba.se.spi.monitoring.MonitoringManager;
	
	@:overload @:public @:abstract public function set_parameters(props : java.util.Properties) : Void;
	
	@:overload @:public @:abstract public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload @:public @:abstract public function setORBVersion(version : com.sun.corba.se.spi.orb.ORBVersion) : Void;
	
	@:overload @:public @:abstract public function getFVDCodeBaseIOR() : com.sun.corba.se.spi.ior.IOR;
	
	/**
	* Handle a bad server id for the given object key.  This should
	* always through an exception: either a ForwardException to
	* allow another server to handle the request, or else an error
	* indication.  XXX Remove after ORT for ORBD work is integrated.
	*/
	@:overload @:public @:abstract public function handleBadServerId(okey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	@:overload @:public @:abstract public function setBadServerIdHandler(handler : com.sun.corba.se.impl.oa.poa.BadServerIdHandler) : Void;
	
	@:overload @:public @:abstract public function initBadServerIdHandler() : Void;
	
	@:overload @:public @:abstract public function notifyORB() : Void;
	
	@:overload @:public @:abstract public function getPIHandler() : com.sun.corba.se.spi.protocol.PIHandler;
	
	@:overload @:public @:abstract public function checkShutdownState() : Void;
	
	@:overload @:public @:abstract public function isDuringDispatch() : Bool;
	
	@:overload @:public @:abstract public function startingDispatch() : Void;
	
	@:overload @:public @:abstract public function finishedDispatch() : Void;
	
	/** Return this ORB's transient server ID.  This is needed for
	* initializing object adapters.
	*/
	@:overload @:public @:abstract public function getTransientServerId() : Int;
	
	@:overload @:public @:abstract public function getServiceContextRegistry() : com.sun.corba.se.spi.servicecontext.ServiceContextRegistry;
	
	@:overload @:public @:abstract public function getRequestDispatcherRegistry() : com.sun.corba.se.spi.protocol.RequestDispatcherRegistry;
	
	@:overload @:public @:abstract public function getORBData() : com.sun.corba.se.spi.orb.ORBData;
	
	@:overload @:public @:abstract public function setClientDelegateFactory(factory : com.sun.corba.se.spi.protocol.ClientDelegateFactory) : Void;
	
	@:overload @:public @:abstract public function getClientDelegateFactory() : com.sun.corba.se.spi.protocol.ClientDelegateFactory;
	
	@:overload @:public @:abstract public function setCorbaContactInfoListFactory(factory : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory) : Void;
	
	@:overload @:public @:abstract public function getCorbaContactInfoListFactory() : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory;
	
	/** Set the resolver used in this ORB.  This resolver will be used for list_initial_services
	* and resolve_initial_references.
	*/
	@:overload @:public @:abstract public function setResolver(resolver : com.sun.corba.se.spi.resolver.Resolver) : Void;
	
	/** Get the resolver used in this ORB.  This resolver will be used for list_initial_services
	* and resolve_initial_references.
	*/
	@:overload @:public @:abstract public function getResolver() : com.sun.corba.se.spi.resolver.Resolver;
	
	/** Set the LocalResolver used in this ORB.  This LocalResolver is used for
	* register_initial_reference only.
	*/
	@:overload @:public @:abstract public function setLocalResolver(resolver : com.sun.corba.se.spi.resolver.LocalResolver) : Void;
	
	/** Get the LocalResolver used in this ORB.  This LocalResolver is used for
	* register_initial_reference only.
	*/
	@:overload @:public @:abstract public function getLocalResolver() : com.sun.corba.se.spi.resolver.LocalResolver;
	
	/** Set the operation used in string_to_object calls.  The Operation must expect a
	* String and return an org.omg.CORBA.Object.
	*/
	@:overload @:public @:abstract public function setURLOperation(stringToObject : com.sun.corba.se.spi.orb.Operation) : Void;
	
	/** Get the operation used in string_to_object calls.  The Operation must expect a
	* String and return an org.omg.CORBA.Object.
	*/
	@:overload @:public @:abstract public function getURLOperation() : com.sun.corba.se.spi.orb.Operation;
	
	/** Set the ServerRequestDispatcher that should be used for handling INS requests.
	*/
	@:overload @:public @:abstract public function setINSDelegate(insDelegate : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher) : Void;
	
	/** Factory finders for the various parts of the IOR: tagged components, tagged
	* profiles, and tagged profile templates.
	*/
	@:overload @:public @:abstract public function getTaggedComponentFactoryFinder() : com.sun.corba.se.spi.ior.TaggedComponentFactoryFinder;
	
	@:overload @:public @:abstract public function getTaggedProfileFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload @:public @:abstract public function getTaggedProfileTemplateFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload @:public @:abstract public function getObjectKeyFactory() : com.sun.corba.se.spi.ior.ObjectKeyFactory;
	
	@:overload @:public @:abstract public function setObjectKeyFactory(factory : com.sun.corba.se.spi.ior.ObjectKeyFactory) : Void;
	
	/**
	* Returns the logger based on the category.
	*/
	@:overload @:public public function getLogger(domain : String) : java.util.logging.Logger;
	
	@:overload @:public @:static public static function staticGetLogger(domain : String) : java.util.logging.Logger;
	
	/** get the log wrapper class (its type is dependent on the exceptionGroup) for the
	* given log domain and exception group in this ORB instance.
	*/
	@:overload @:public public function getLogWrapper(logDomain : String, exceptionGroup : String, factory : com.sun.corba.se.spi.logging.LogWrapperFactory) : com.sun.corba.se.spi.logging.LogWrapperBase;
	
	/** get the log wrapper class (its type is dependent on the exceptionGroup) for the
	* given log domain and exception group in this ORB instance.
	*/
	@:overload @:public @:static public static function staticGetLogWrapper(logDomain : String, exceptionGroup : String, factory : com.sun.corba.se.spi.logging.LogWrapperFactory) : com.sun.corba.se.spi.logging.LogWrapperBase;
	
	@:overload @:public public function getByteBufferPool() : com.sun.corba.se.pept.transport.ByteBufferPool;
	
	@:overload @:public @:abstract public function setThreadPoolManager(mgr : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager) : Void;
	
	@:overload @:public @:abstract public function getThreadPoolManager() : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager;
	
	@:overload @:public @:abstract public function getCopierManager() : com.sun.corba.se.spi.copyobject.CopierManager;
	
	/**
	* @author Harold Carr
	*/
	@:overload @:public public function createOrIncrementInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload @:public public function releaseOrDecrementInvocationInfo() : Void;
	
	@:overload @:public public function getTypeCodeForClass(c : Class<Dynamic>) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload @:public public function getInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload @:public @:abstract public function getTransportManager() : com.sun.corba.se.pept.transport.TransportManager;
	
	@:overload @:public public function setTypeCodeForClass(c : Class<Dynamic>, tcimpl : com.sun.corba.se.impl.corba.TypeCodeImpl) : Void;
	
	
}
