package com.sun.corba.se.impl.orb;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class ORBSingleton extends com.sun.corba.se.spi.orb.ORB
{
	@:overload override public function set_parameters(props : java.util.Properties) : Void;
	
	@:overload override private function set_parameters(app : java.applet.Applet, props : java.util.Properties) : Void;
	
	@:overload override private function set_parameters(params : java.NativeArray<String>, props : java.util.Properties) : Void;
	
	@:overload override public function create_output_stream() : org.omg.CORBA.portable.OutputStream;
	
	@:overload override public function create_struct_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_union_tc(id : String, name : String, discriminator_type : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.UnionMember>) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_enum_tc(id : String, name : String, members : java.NativeArray<String>) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_alias_tc(id : String, name : String, original_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_exception_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_string_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_wstring_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_sequence_tc(bound : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_recursive_sequence_tc(bound : Int, offset : Int) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_array_tc(length : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_native_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_abstract_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_fixed_tc(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_value_tc(id : String, name : String, type_modifier : java.StdTypes.Int16, concrete_base : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.ValueMember>) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_recursive_tc(id : String) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_value_box_tc(id : String, name : String, boxed_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload override public function get_primitive_tc(tckind : org.omg.CORBA.TCKind) : org.omg.CORBA.TypeCode;
	
	@:overload override public function create_any() : org.omg.CORBA.Any;
	
	/*
	* Not strictly needed for TypeCode factory duty but these seem
	* harmless enough.
	*/
	@:overload override public function create_list(count : Int) : org.omg.CORBA.NVList;
	
	@:overload override public function create_operation_list(oper : org.omg.CORBA.Object) : org.omg.CORBA.NVList;
	
	@:overload override public function create_named_value(s : String, any : org.omg.CORBA.Any, flags : Int) : org.omg.CORBA.NamedValue;
	
	@:overload override public function create_exception_list() : org.omg.CORBA.ExceptionList;
	
	@:overload override public function create_context_list() : org.omg.CORBA.ContextList;
	
	@:overload override public function get_default_context() : org.omg.CORBA.Context;
	
	@:overload override public function create_environment() : org.omg.CORBA.Environment;
	
	@:overload override public function get_current() : org.omg.CORBA.Current;
	
	/*
	* Things that aren't allowed.
	*/
	@:overload override public function list_initial_services() : java.NativeArray<String>;
	
	@:overload override public function resolve_initial_references(identifier : String) : org.omg.CORBA.Object;
	
	@:overload override public function register_initial_reference(id : String, obj : org.omg.CORBA.Object) : Void;
	
	@:overload override public function send_multiple_requests_oneway(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	@:overload override public function send_multiple_requests_deferred(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	@:overload override public function poll_next_response() : Bool;
	
	@:overload override public function get_next_response() : org.omg.CORBA.Request;
	
	@:overload override public function object_to_string(obj : org.omg.CORBA.Object) : String;
	
	@:overload override public function string_to_object(s : String) : org.omg.CORBA.Object;
	
	@:overload public function string_to_remote(s : String) : java.rmi.Remote;
	
	@:overload override public function connect(servant : org.omg.CORBA.Object) : Void;
	
	@:overload override public function disconnect(obj : org.omg.CORBA.Object) : Void;
	
	@:overload override public function run() : Void;
	
	@:overload override public function shutdown(wait_for_completion : Bool) : Void;
	
	@:overload private function shutdownServants(wait_for_completion : Bool) : Void;
	
	@:overload private function destroyConnections() : Void;
	
	@:overload override public function destroy() : Void;
	
	@:overload override public function work_pending() : Bool;
	
	@:overload override public function perform_work() : Void;
	
	@:overload override public function register_value_factory(repositoryID : String, factory : org.omg.CORBA.portable.ValueFactory) : org.omg.CORBA.portable.ValueFactory;
	
	@:overload override public function unregister_value_factory(repositoryID : String) : Void;
	
	@:overload override public function lookup_value_factory(repositoryID : String) : org.omg.CORBA.portable.ValueFactory;
	
	@:overload override public function getTransportManager() : com.sun.corba.se.pept.transport.TransportManager;
	
	@:overload override public function getCorbaTransportManager() : com.sun.corba.se.spi.transport.CorbaTransportManager;
	
	@:overload override public function getLegacyServerSocketManager() : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketManager;
	
	@:overload override public function getRequestDispatcherRegistry() : com.sun.corba.se.spi.protocol.RequestDispatcherRegistry;
	
	/**
	* Return the service context registry
	*/
	@:overload override public function getServiceContextRegistry() : com.sun.corba.se.spi.servicecontext.ServiceContextRegistry;
	
	/**
	* Get the transient server ID
	*/
	@:overload override public function getTransientServerId() : Int;
	
	/**
	* Return the bootstrap naming port specified in the ORBInitialPort param.
	*/
	@:overload public function getORBInitialPort() : Int;
	
	/**
	* Return the bootstrap naming host specified in the ORBInitialHost param.
	*/
	@:overload public function getORBInitialHost() : String;
	
	@:overload public function getORBServerHost() : String;
	
	@:overload public function getORBServerPort() : Int;
	
	@:overload public function getCodeSetComponentInfo() : com.sun.corba.se.impl.encoding.CodeSetComponentInfo;
	
	@:overload override public function isLocalHost(host : String) : Bool;
	
	@:overload override public function isLocalServerId(subcontractId : Int, serverId : Int) : Bool;
	
	/*
	* Things from corba.ORB.
	*/
	@:overload override public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload override public function setORBVersion(verObj : com.sun.corba.se.spi.orb.ORBVersion) : Void;
	
	@:overload public function getAppletHost() : String;
	
	@:overload public function getAppletCodeBase() : java.net.URL;
	
	@:overload public function getHighWaterMark() : Int;
	
	@:overload public function getLowWaterMark() : Int;
	
	@:overload public function getNumberToReclaim() : Int;
	
	@:overload public function getGIOPFragmentSize() : Int;
	
	@:overload public function getGIOPBuffMgrStrategy(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Int;
	
	@:overload override public function getFVDCodeBaseIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload override public function create_policy(type : Int, val : org.omg.CORBA.Any) : org.omg.CORBA.Policy;
	
	@:overload public function getServerEndpoint() : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketEndPointInfo;
	
	@:overload public function setPersistentServerId(id : Int) : Void;
	
	@:overload override public function getTypeCodeForClass(c : Class<Dynamic>) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload override public function setTypeCodeForClass(c : Class<Dynamic>, tcimpl : com.sun.corba.se.impl.corba.TypeCodeImpl) : Void;
	
	@:overload public function alwaysSendCodeSetServiceContext() : Bool;
	
	@:overload override public function isDuringDispatch() : Bool;
	
	@:overload override public function notifyORB() : Void;
	
	@:overload override public function getPIHandler() : com.sun.corba.se.spi.protocol.PIHandler;
	
	@:overload override public function checkShutdownState() : Void;
	
	@:overload override public function startingDispatch() : Void;
	
	@:overload override public function finishedDispatch() : Void;
	
	@:overload public function registerInitialReference(id : String, closure : com.sun.corba.se.spi.orbutil.closure.Closure) : Void;
	
	@:overload override public function getORBData() : com.sun.corba.se.spi.orb.ORBData;
	
	@:overload override public function setClientDelegateFactory(factory : com.sun.corba.se.spi.protocol.ClientDelegateFactory) : Void;
	
	@:overload override public function getClientDelegateFactory() : com.sun.corba.se.spi.protocol.ClientDelegateFactory;
	
	@:overload override public function setCorbaContactInfoListFactory(factory : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory) : Void;
	
	@:overload override public function getCorbaContactInfoListFactory() : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory;
	
	@:overload override public function getURLOperation() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload override public function setINSDelegate(sdel : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher) : Void;
	
	@:overload override public function getTaggedComponentFactoryFinder() : com.sun.corba.se.spi.ior.TaggedComponentFactoryFinder;
	
	@:overload override public function getTaggedProfileFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload override public function getTaggedProfileTemplateFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload override public function getObjectKeyFactory() : com.sun.corba.se.spi.ior.ObjectKeyFactory;
	
	@:overload override public function setObjectKeyFactory(factory : com.sun.corba.se.spi.ior.ObjectKeyFactory) : Void;
	
	@:overload override public function handleBadServerId(okey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	@:overload override public function peekInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload override public function pushInvocationInfo(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload override public function popInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload override public function createOrIncrementInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload override public function releaseOrDecrementInvocationInfo() : Void;
	
	@:overload override public function getInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload public function getConnectionCache(contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : com.sun.corba.se.pept.transport.ConnectionCache;
	
	@:overload override public function setResolver(resolver : com.sun.corba.se.spi.resolver.Resolver) : Void;
	
	@:overload override public function getResolver() : com.sun.corba.se.spi.resolver.Resolver;
	
	@:overload override public function setLocalResolver(resolver : com.sun.corba.se.spi.resolver.LocalResolver) : Void;
	
	@:overload override public function getLocalResolver() : com.sun.corba.se.spi.resolver.LocalResolver;
	
	@:overload override public function setURLOperation(stringToObject : com.sun.corba.se.spi.orb.Operation) : Void;
	
	@:overload override public function setBadServerIdHandler(handler : com.sun.corba.se.impl.oa.poa.BadServerIdHandler) : Void;
	
	@:overload override public function initBadServerIdHandler() : Void;
	
	@:overload public function getSelector(x : Int) : com.sun.corba.se.pept.transport.Selector;
	
	@:overload override public function setThreadPoolManager(mgr : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager) : Void;
	
	@:overload override public function getThreadPoolManager() : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager;
	
	@:overload override public function getCopierManager() : com.sun.corba.se.spi.copyobject.CopierManager;
	
	
}
