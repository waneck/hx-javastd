package com.sun.corba.se.impl.orb;
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
extern class ORBImpl extends com.sun.corba.se.spi.orb.ORB
{
	/**
	* The JavaIDL ORB implementation.
	*/
	@:protected private var transportManager : com.sun.corba.se.pept.transport.TransportManager;
	
	@:protected private var legacyServerSocketManager : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketManager;
	
	@:overload @:public override public function getORBData() : com.sun.corba.se.spi.orb.ORBData;
	
	@:overload @:public override public function getPIHandler() : com.sun.corba.se.spi.protocol.PIHandler;
	
	/**
	* Create a new ORB. Should be followed by the appropriate
	* set_parameters() call.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload @:public override public function setORBVersion(verObj : com.sun.corba.se.spi.orb.ORBVersion) : Void;
	
	@:overload @:protected private function setDebugFlags(args : java.NativeArray<String>) : Void;
	
	@:overload @:public override public function set_parameters(props : java.util.Properties) : Void;
	
	@:overload @:protected override private function set_parameters(app : java.applet.Applet, props : java.util.Properties) : Void;
	
	@:overload @:protected override private function set_parameters(params : java.NativeArray<String>, props : java.util.Properties) : Void;
	
	/****************************************************************************
	* The following methods are standard public CORBA ORB APIs
	****************************************************************************/
	@:overload @:public @:synchronized override public function create_output_stream() : org.omg.CORBA.portable.OutputStream;
	
	/**
	* Get a Current pseudo-object.
	* The Current interface is used to manage thread-specific
	* information for use by the transactions, security and other
	* services. This method is deprecated,
	* and replaced by ORB.resolve_initial_references("NameOfCurrentObject");
	*
	* @return          a Current pseudo-object.
	* @deprecated
	*/
	@:overload @:public @:synchronized override public function get_current() : org.omg.CORBA.Current;
	
	/**
	* Create an NVList
	*
	* @param count     size of list to create
	* @result          NVList created
	*
	* @see NVList
	*/
	@:overload @:public @:synchronized override public function create_list(count : Int) : org.omg.CORBA.NVList;
	
	/**
	* Create an NVList corresponding to an OperationDef
	*
	* @param oper      operation def to use to create list
	* @result          NVList created
	*
	* @see NVList
	*/
	@:overload @:public @:synchronized override public function create_operation_list(oper : org.omg.CORBA.Object) : org.omg.CORBA.NVList;
	
	/**
	* Create a NamedValue
	*
	* @result          NamedValue created
	*/
	@:overload @:public @:synchronized override public function create_named_value(s : String, any : org.omg.CORBA.Any, flags : Int) : org.omg.CORBA.NamedValue;
	
	/**
	* Create an ExceptionList
	*
	* @result          ExceptionList created
	*/
	@:overload @:public @:synchronized override public function create_exception_list() : org.omg.CORBA.ExceptionList;
	
	/**
	* Create a ContextList
	*
	* @result          ContextList created
	*/
	@:overload @:public @:synchronized override public function create_context_list() : org.omg.CORBA.ContextList;
	
	/**
	* Get the default Context object
	*
	* @result          the default Context object
	*/
	@:overload @:public @:synchronized override public function get_default_context() : org.omg.CORBA.Context;
	
	/**
	* Create an Environment
	*
	* @result          Environment created
	*/
	@:overload @:public @:synchronized override public function create_environment() : org.omg.CORBA.Environment;
	
	@:overload @:public @:synchronized override public function send_multiple_requests_oneway(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	/**
	* Send multiple dynamic requests asynchronously.
	*
	* @param req         an array of request objects.
	*/
	@:overload @:public @:synchronized override public function send_multiple_requests_deferred(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	/**
	* Find out if any of the deferred invocations have a response yet.
	*/
	@:overload @:public @:synchronized override public function poll_next_response() : Bool;
	
	/**
	* Get the next request that has gotten a response.
	*
	* @result            the next request ready with a response.
	*/
	@:overload @:public override public function get_next_response() : org.omg.CORBA.Request;
	
	/**
	* Notify response to ORB for get_next_response
	*/
	@:overload @:public override public function notifyORB() : Void;
	
	/**
	* Convert an object ref to a string.
	* @param obj The object to stringify.
	* @return A stringified object reference.
	*/
	@:overload @:public @:synchronized override public function object_to_string(obj : org.omg.CORBA.Object) : String;
	
	/**
	* Convert a stringified object reference to the object it represents.
	* @param str The stringified object reference.
	* @return The unstringified object reference.
	*/
	@:overload @:public override public function string_to_object(str : String) : org.omg.CORBA.Object;
	
	@:overload @:public @:synchronized override public function getFVDCodeBaseIOR() : com.sun.corba.se.spi.ior.IOR;
	
	/**
	* Get the TypeCode for a primitive type.
	*
	* @param tcKind    the integer kind for the primitive type
	* @return          the requested TypeCode
	*/
	@:overload @:public @:synchronized override public function get_primitive_tc(tcKind : org.omg.CORBA.TCKind) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for a structure.
	*
	* @param id                the logical id for the typecode.
	* @param name      the name for the typecode.
	* @param members   an array describing the members of the TypeCode.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_struct_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for a union.
	*
	* @param id                the logical id for the typecode.
	* @param name      the name for the typecode.
	* @param discriminator_type
	*                  the type of the union discriminator.
	* @param members   an array describing the members of the TypeCode.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_union_tc(id : String, name : String, discriminator_type : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.UnionMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for an enum.
	*
	* @param id                the logical id for the typecode.
	* @param name      the name for the typecode.
	* @param members   an array describing the members of the TypeCode.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_enum_tc(id : String, name : String, members : java.NativeArray<String>) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for an alias.
	*
	* @param id                the logical id for the typecode.
	* @param name      the name for the typecode.
	* @param original_type
	*                  the type this is an alias for.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_alias_tc(id : String, name : String, original_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for an exception.
	*
	* @param id                the logical id for the typecode.
	* @param name      the name for the typecode.
	* @param members   an array describing the members of the TypeCode.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_exception_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for an interface.
	*
	* @param id                the logical id for the typecode.
	* @param name      the name for the typecode.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for a string.
	*
	* @param bound     the bound for the string.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_string_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for a wide string.
	*
	* @param bound     the bound for the string.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_wstring_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for a sequence.
	*
	* @param bound     the bound for the sequence.
	* @param element_type
	*                  the type of elements of the sequence.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_sequence_tc(bound : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a recursive TypeCode in a sequence.
	*
	* @param bound     the bound for the sequence.
	* @param offset    the index to the enclosing TypeCode that is
	*                  being referenced.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_recursive_sequence_tc(bound : Int, offset : Int) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a TypeCode for an array.
	*
	* @param length    the length of the array.
	* @param element_type
	*                  the type of elements of the array.
	* @return          the requested TypeCode.
	*/
	@:overload @:public @:synchronized override public function create_array_tc(length : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:synchronized override public function create_native_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:synchronized override public function create_abstract_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:synchronized override public function create_fixed_tc(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:synchronized override public function create_value_tc(id : String, name : String, type_modifier : java.StdTypes.Int16, concrete_base : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.ValueMember>) : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:synchronized override public function create_recursive_tc(id : String) : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:synchronized override public function create_value_box_tc(id : String, name : String, boxed_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a new Any
	*
	* @return          the new Any created.
	*/
	@:overload @:public @:synchronized override public function create_any() : org.omg.CORBA.Any;
	
	@:overload @:public @:synchronized override public function setTypeCodeForClass(c : Class<Dynamic>, tci : com.sun.corba.se.impl.corba.TypeCodeImpl) : Void;
	
	@:overload @:public @:synchronized override public function getTypeCodeForClass(c : Class<Dynamic>) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	/**
	* Get a list of the initially available CORBA services.
	* This does not work unless an ORBInitialHost is specified during
	* initialization (or unless there is an ORB running on the AppletHost)
	* since the localhostname
	* is inaccessible to applets. If a service properties URL was specified,
	* then it is used, otherwise the bootstrapping protocol is used.
	* @return A list of the initial services available.
	*/
	@:overload @:public override public function list_initial_services() : java.NativeArray<String>;
	
	/**
	* Resolve the stringified reference of one of the initially
	* available CORBA services.
	* @param identifier The stringified object reference of the
	* desired service.
	* @return An object reference for the desired service.
	* @exception InvalidName The supplied identifier is not associated
	* with a known service.
	* @exception SystemException One of a fixed set of Corba system exceptions.
	*/
	@:overload @:public override public function resolve_initial_references(identifier : String) : org.omg.CORBA.Object;
	
	/**
	* If this operation is called with an id, <code>"Y"</code>, and an
	* object, <code>YY</code>, then a subsequent call to
	* <code>ORB.resolve_initial_references( "Y" )</code> will
	* return object <code>YY</code>.
	*
	* @param id The ID by which the initial reference will be known.
	* @param obj The initial reference itself.
	* @throws InvalidName if this operation is called with an empty string id
	*     or this operation is called with an id that is already registered,
	*     including the default names defined by OMG.
	* @throws BAD_PARAM if the obj parameter is null.
	*/
	@:overload @:public override public function register_initial_reference(id : String, obj : org.omg.CORBA.Object) : Void;
	
	/****************************************************************************
	* The following methods (introduced in POA / CORBA2.1) deal with
	* shutdown / single threading.
	****************************************************************************/
	@:overload @:public override public function run() : Void;
	
	@:overload @:public override public function shutdown(wait_for_completion : Bool) : Void;
	
	@:overload @:protected private function shutdownServants(wait_for_completion : Bool) : Void;
	
	@:overload @:public override public function checkShutdownState() : Void;
	
	@:overload @:public override public function isDuringDispatch() : Bool;
	
	@:overload @:public override public function startingDispatch() : Void;
	
	@:overload @:public override public function finishedDispatch() : Void;
	
	/**
	*  formal/99-10-07 p 159: "If destroy is called on an ORB that has
	*  not been shut down, it will start the shutdown process and block until
	*  the ORB has shut down before it destroys the ORB."
	*/
	@:overload @:public override public function destroy() : Void;
	
	/**
	* Registers a value factory for a particular repository ID.
	*
	* @param repositoryID the repository ID.
	* @param factory the factory.
	* @return the previously registered factory for the given repository ID,
	* or null if no such factory was previously registered.
	* @exception org.omg.CORBA.BAD_PARAM if the registration fails.
	**/
	@:overload @:public @:synchronized override public function register_value_factory(repositoryID : String, factory : org.omg.CORBA.portable.ValueFactory) : org.omg.CORBA.portable.ValueFactory;
	
	/**
	* Unregisters a value factory for a particular repository ID.
	*
	* @param repositoryID the repository ID.
	**/
	@:overload @:public @:synchronized override public function unregister_value_factory(repositoryID : String) : Void;
	
	/**
	* Finds and returns a value factory for the given repository ID.
	* The value factory returned was previously registered by a call to
	* {@link #register_value_factory} or is the default factory.
	*
	* @param repositoryID the repository ID.
	* @return the value factory.
	* @exception org.omg.CORBA.BAD_PARAM if unable to locate a factory.
	**/
	@:overload @:public @:synchronized override public function lookup_value_factory(repositoryID : String) : org.omg.CORBA.portable.ValueFactory;
	
	@:overload @:public override public function peekInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:public override public function pushInvocationInfo(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload @:public override public function popInvocationInfo() : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	@:overload @:public override public function initBadServerIdHandler() : Void;
	
	@:overload @:public override public function setBadServerIdHandler(handler : com.sun.corba.se.impl.oa.poa.BadServerIdHandler) : Void;
	
	@:overload @:public override public function handleBadServerId(okey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	@:overload @:public @:synchronized override public function create_policy(type : Int, val : org.omg.CORBA.Any) : org.omg.CORBA.Policy;
	
	/** This is the implementation of the public API used to connect
	*  a servant-skeleton to the ORB.
	*/
	@:overload @:public @:synchronized override public function connect(servant : org.omg.CORBA.Object) : Void;
	
	@:overload @:public @:synchronized override public function disconnect(obj : org.omg.CORBA.Object) : Void;
	
	@:overload @:public override public function getTransientServerId() : Int;
	
	@:overload @:public override public function getRequestDispatcherRegistry() : com.sun.corba.se.spi.protocol.RequestDispatcherRegistry;
	
	@:overload @:public override public function getServiceContextRegistry() : com.sun.corba.se.spi.servicecontext.ServiceContextRegistry;
	
	@:overload @:public override public function isLocalHost(hostName : String) : Bool;
	
	@:overload @:public override public function isLocalServerId(subcontractId : Int, serverId : Int) : Bool;
	
	/** This method always returns false because the ORB never needs the
	*  main thread to do work.
	*/
	@:overload @:public @:synchronized override public function work_pending() : Bool;
	
	/** This method does nothing. It is not required by the spec to do anything!
	*/
	@:overload @:public @:synchronized override public function perform_work() : Void;
	
	@:overload @:public @:synchronized override public function set_delegate(servant : Dynamic) : Void;
	
	@:overload @:public override public function createOrIncrementInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload @:public override public function releaseOrDecrementInvocationInfo() : Void;
	
	@:overload @:public override public function getInvocationInfo() : com.sun.corba.se.pept.protocol.ClientInvocationInfo;
	
	@:overload @:public override public function setClientDelegateFactory(factory : com.sun.corba.se.spi.protocol.ClientDelegateFactory) : Void;
	
	@:overload @:public override public function getClientDelegateFactory() : com.sun.corba.se.spi.protocol.ClientDelegateFactory;
	
	@:overload @:public override public function setCorbaContactInfoListFactory(factory : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory) : Void;
	
	@:overload @:public @:synchronized override public function getCorbaContactInfoListFactory() : com.sun.corba.se.spi.transport.CorbaContactInfoListFactory;
	
	/** Set the resolver used in this ORB.  This resolver will be used for list_initial_services
	* and resolve_initial_references.
	*/
	@:overload @:public override public function setResolver(resolver : com.sun.corba.se.spi.resolver.Resolver) : Void;
	
	/** Get the resolver used in this ORB.  This resolver will be used for list_initial_services
	* and resolve_initial_references.
	*/
	@:overload @:public override public function getResolver() : com.sun.corba.se.spi.resolver.Resolver;
	
	/** Set the LocalResolver used in this ORB.  This LocalResolver is used for
	* register_initial_reference only.
	*/
	@:overload @:public override public function setLocalResolver(resolver : com.sun.corba.se.spi.resolver.LocalResolver) : Void;
	
	/** Get the LocalResolver used in this ORB.  This LocalResolver is used for
	* register_initial_reference only.
	*/
	@:overload @:public override public function getLocalResolver() : com.sun.corba.se.spi.resolver.LocalResolver;
	
	/** Set the operation used in string_to_object calls.  The Operation must expect a
	* String and return an org.omg.CORBA.Object.
	*/
	@:overload @:public override public function setURLOperation(stringToObject : com.sun.corba.se.spi.orb.Operation) : Void;
	
	/** Get the operation used in string_to_object calls.  The Operation must expect a
	* String and return an org.omg.CORBA.Object.
	*/
	@:overload @:public override public function getURLOperation() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload @:public override public function setINSDelegate(sdel : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher) : Void;
	
	@:overload @:public override public function getTaggedComponentFactoryFinder() : com.sun.corba.se.spi.ior.TaggedComponentFactoryFinder;
	
	@:overload @:public override public function getTaggedProfileFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload @:public override public function getTaggedProfileTemplateFactoryFinder() : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder;
	
	@:overload @:public override public function getObjectKeyFactory() : com.sun.corba.se.spi.ior.ObjectKeyFactory;
	
	@:overload @:public override public function setObjectKeyFactory(factory : com.sun.corba.se.spi.ior.ObjectKeyFactory) : Void;
	
	@:overload @:public override public function getTransportManager() : com.sun.corba.se.pept.transport.TransportManager;
	
	@:overload @:public override public function getCorbaTransportManager() : com.sun.corba.se.spi.transport.CorbaTransportManager;
	
	@:overload @:public override public function getLegacyServerSocketManager() : com.sun.corba.se.spi.legacy.connection.LegacyServerSocketManager;
	
	@:overload @:public override public function setThreadPoolManager(mgr : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager) : Void;
	
	@:overload @:public override public function getThreadPoolManager() : com.sun.corba.se.spi.orbutil.threadpool.ThreadPoolManager;
	
	@:overload @:public override public function getCopierManager() : com.sun.corba.se.spi.copyobject.CopierManager;
	
	
}
@:native('com$sun$corba$se$impl$orb$ORBImpl$ConfigParser') @:internal extern class ORBImpl_ConfigParser extends com.sun.corba.se.spi.orb.ParserImplBase
{
	@:public public var configurator : Class<Dynamic>;
	
	@:overload @:public override public function makeParser() : com.sun.corba.se.spi.orb.PropertyParser;
	
	
}
@:internal extern class SynchVariable
{
	@:public public var _flag : Bool;
	
	@:overload @:public public function set() : Void;
	
	@:overload @:public public function value() : Bool;
	
	@:overload @:public public function reset() : Void;
	
	
}
