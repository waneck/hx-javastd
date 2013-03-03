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
extern class ORBSingleton extends org.omg.CORBA.ORB
{
	@:overload @:public public function set_parameters(props : java.util.Properties) : Void;
	
	@:overload @:protected override private function set_parameters(app : java.applet.Applet, props : java.util.Properties) : Void;
	
	@:overload @:protected override private function set_parameters(params : java.NativeArray<String>, props : java.util.Properties) : Void;
	
	@:overload @:public override public function create_output_stream() : org.omg.CORBA.portable.OutputStream;
	
	@:overload @:public override public function create_struct_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_union_tc(id : String, name : String, discriminator_type : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.UnionMember>) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_enum_tc(id : String, name : String, members : java.NativeArray<String>) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_alias_tc(id : String, name : String, original_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_exception_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_string_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_wstring_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_sequence_tc(bound : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_recursive_sequence_tc(bound : Int, offset : Int) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_array_tc(length : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_native_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_abstract_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_fixed_tc(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_value_tc(id : String, name : String, type_modifier : java.StdTypes.Int16, concrete_base : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.ValueMember>) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_recursive_tc(id : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_value_box_tc(id : String, name : String, boxed_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function get_primitive_tc(tckind : org.omg.CORBA.TCKind) : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function create_any() : org.omg.CORBA.Any;
	
	/*
	* Not strictly needed for TypeCode factory duty but these seem
	* harmless enough.
	*/
	@:overload @:public override public function create_list(count : Int) : org.omg.CORBA.NVList;
	
	@:overload @:public override public function create_operation_list(oper : org.omg.CORBA.Object) : org.omg.CORBA.NVList;
	
	@:overload @:public override public function create_named_value(s : String, any : org.omg.CORBA.Any, flags : Int) : org.omg.CORBA.NamedValue;
	
	@:overload @:public override public function create_exception_list() : org.omg.CORBA.ExceptionList;
	
	@:overload @:public override public function create_context_list() : org.omg.CORBA.ContextList;
	
	@:overload @:public override public function get_default_context() : org.omg.CORBA.Context;
	
	@:overload @:public override public function create_environment() : org.omg.CORBA.Environment;
	
	@:overload @:public override public function get_current() : org.omg.CORBA.Current;
	
	/*
	* Things that aren't allowed.
	*/
	@:overload @:public override public function list_initial_services() : java.NativeArray<String>;
	
	@:overload @:public override public function resolve_initial_references(identifier : String) : org.omg.CORBA.Object;
	
	@:overload @:public public function register_initial_reference(id : String, obj : org.omg.CORBA.Object) : Void;
	
	@:overload @:public override public function send_multiple_requests_oneway(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	@:overload @:public override public function send_multiple_requests_deferred(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	@:overload @:public override public function poll_next_response() : Bool;
	
	@:overload @:public override public function get_next_response() : org.omg.CORBA.Request;
	
	@:overload @:public override public function object_to_string(obj : org.omg.CORBA.Object) : String;
	
	@:overload @:public override public function string_to_object(s : String) : org.omg.CORBA.Object;
	
	@:overload @:public public function string_to_remote(s : String) : java.rmi.Remote;
	
	@:overload @:public override public function connect(servant : org.omg.CORBA.Object) : Void;
	
	@:overload @:public override public function disconnect(obj : org.omg.CORBA.Object) : Void;
	
	@:overload @:public override public function run() : Void;
	
	@:overload @:public override public function shutdown(wait_for_completion : Bool) : Void;
	
	@:overload @:protected private function shutdownServants(wait_for_completion : Bool) : Void;
	
	@:overload @:protected private function destroyConnections() : Void;
	
	@:overload @:public override public function destroy() : Void;
	
	@:overload @:public override public function work_pending() : Bool;
	
	@:overload @:public override public function perform_work() : Void;
	
	@:overload @:public public function register_value_factory(repositoryID : String, factory : org.omg.CORBA.portable.ValueFactory) : org.omg.CORBA.portable.ValueFactory;
	
	@:overload @:public public function unregister_value_factory(repositoryID : String) : Void;
	
	@:overload @:public public function lookup_value_factory(repositoryID : String) : org.omg.CORBA.portable.ValueFactory;
	
	@:overload @:public public function getTransportManager() : com.sun.corba.se.pept.transport.TransportManager;
	
	@:overload @:public public function getCorbaTransportManager() : com.sun.corba.se.spi.transport.CorbaTransportManager;
	
	@:overload @:public public function getLegacyServerSocketManager() : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketManager;
	
	@:overload @:public public function getRequestDispatcherRegistry() : com.sun.corba.se.spi.protocol.RequestDispatcherRegistry;
	
	/**
	* Return the service context registry
	*/
	@:overload @:public public function getServiceContextRegistry() : com.sun.corba.se.spi.servicecontext.ServiceContextRegistry;
	
	/**
	* Get the transient server ID
	*/
	@:overload @:public public function getTransientServerId() : Int;
	
	/**
	* Return the bootstrap naming port specified in the ORBInitialPort param.
	*/
	@:overload @:public public function getORBInitialPort() : Int;
	
	/**
	* Return the bootstrap naming host specified in the ORBInitialHost param.
	*/
	@:overload @:public public function getORBInitialHost() : String;
	
	@:overload @:public public function getORBServerHost() : String;
	
	@:overload @:public public function getORBServerPort() : Int;
	
	@:overload @:public public function getCodeSetComponentInfo() : com.sun.corba.se.impl.encoding.CodeSetComponentInfo;
	
	@:overload @:public public function isLocalHost(host : String) : Bool;
	
	@:overload @:public public function isLocalServerId(subcontractId : Int, serverId : Int) : Bool;
	
	/*
	* Things from corba.ORB.
	*/
	@:overload @:public public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload @:public public function setORBVersion(verObj : com.sun.corba.se.spi.orb.ORBVersion) : Void;
	
	@:overload @:public public function getAppletHost() : String;
	
	@:overload @:public public function getAppletCodeBase() : java.net.URL;
	
	@:overload @:public public function getHighWaterMark() : Int;
	
	@:overload @:public public function getLowWaterMark() : Int;
	
	@:overload @:public public function getNumberToReclaim() : Int;
	
	@:overload @:public public function getGIOPFragmentSize() : Int;
	
	@:overload @:public public function getGIOPBuffMgrStrategy(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Int;
	
	@:overload @:public public function getFVDCodeBaseIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:public override public function create_policy(type : Int, val : org.omg.CORBA.Any) : org.omg.CORBA.Policy;
	
	@:overload @:public public function getServerEndpoint() : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketEndPointInfo;
	
	@:overload @:public public function setPersistentServerId(id : Int) : Void;
	
	@:overload @:public public function getTypeCodeForClass(c : Class<Dynamic>) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload @:public public function setTypeCodeForClass(c : Class<Dynamic>, tcimpl : com.sun.corba.se.impl.corba.TypeCodeImpl) : Void;
	
	@:overload @:public public function alwaysSendCodeSetServiceContext() : Bool;
	
	@:overload @:public public function isDuringDispatch() : Bool;
	
	@:overload @:public public function notifyORB() : Void;
	
	@:overload @:public public function getPIHandler() : com.sun.corba.se.spi.protocol.PIHandler;
	
	@:overload @:public public function checkShutdownState() : Void;
	
	@:overload @:public public function startingDispatch() : Void;
	
	@:overload @:public public function finishedDispatch() : Void;
	
	@:overload @:public public function registerInitialReference(id : String, closure : com.sun.corba.se.spi.orbutil.closure.Closure) : Void;
	
	@:overload @:public public function getORBData() : com.sun.corba.se.spi.orb.ORBData;
	
	@:overload @:public public function setClientDelegateFactory(factory : com.sun.corba.se.spi.protocol.ClientDelegateFactory) : Void;
	
	@:overload @:public public function getClientDelegateFactory() : com.sun.corba.se.spi.protocol.ClientDelegateFactory;
	
	@:overload @:public public function setCorbaContactInfoListFactory(factory : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory) : Void;
	
	@:overload @:public public function getCorbaContactInfoListFactory() : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory;
	
	@:overload @:public public function getURLOperation() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload @:public public function setINSDelegate(sdel : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher) : Void;
	
	@:overload @:public public function getTaggedComponentFactoryFinder() : com.sun.corba.se.spi.ior.TaggedComponentFactoryFinder;
	
	@:overload @:public public function getTaggedProfileFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload @:public public function getTaggedProfileTemplateFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload @:public public function getObjectKeyFactory() : com.sun.corba.se.spi.ior.ObjectKeyFactory;
	
	@:overload @:public public function setObjectKeyFactory(factory : com.sun.corba.se.spi.ior.ObjectKeyFactory) : Void;
	
	@:overload @:public public function handleBadServerId(okey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	@:overload @:public public function peekInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:public public function pushInvocationInfo(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload @:public public function popInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:public public function createOrIncrementInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload @:public public function releaseOrDecrementInvocationInfo() : Void;
	
	@:overload @:public public function getInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload @:public public function getConnectionCache(contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : com.sun.corba.se.pept.transport.ConnectionCache;
	
	@:overload @:public public function setResolver(resolver : com.sun.corba.se.spi.resolver.Resolver) : Void;
	
	@:overload @:public public function getResolver() : com.sun.corba.se.spi.resolver.Resolver;
	
	@:overload @:public public function setLocalResolver(resolver : com.sun.corba.se.spi.resolver.LocalResolver) : Void;
	
	@:overload @:public public function getLocalResolver() : com.sun.corba.se.spi.resolver.LocalResolver;
	
	@:overload @:public public function setURLOperation(stringToObject : com.sun.corba.se.spi.orb.Operation) : Void;
	
	@:overload @:public public function setBadServerIdHandler(handler : com.sun.corba.se.impl.oa.poa.BadServerIdHandler) : Void;
	
	@:overload @:public public function initBadServerIdHandler() : Void;
	
	@:overload @:public public function getSelector(x : Int) : com.sun.corba.se.pept.transport.Selector;
	
	@:overload @:public public function setThreadPoolManager(mgr : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager) : Void;
	
	@:overload @:public public function getThreadPoolManager() : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager;
	
	@:overload @:public public function getCopierManager() : com.sun.corba.se.spi.copyobject.CopierManager;
	
	
}
