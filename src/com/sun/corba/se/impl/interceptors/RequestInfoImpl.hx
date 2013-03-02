package com.sun.corba.se.impl.interceptors;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class RequestInfoImpl extends org.omg.CORBA.LocalObject implements org.omg.PortableInterceptor.RequestInfo implements com.sun.corba.se.spi.legacy.interceptor.RequestInfoExt
{
	/**
	* Implementation of the RequestInfo interface as specified in
	* orbos/99-12-02 section 5.4.1.
	*/
	private var myORB : com.sun.corba.se.spi.orb.ORB;
	
	private var wrapper : com.sun.corba.se.impl.logging.InterceptorsSystemException;
	
	private var stdWrapper : com.sun.corba.se.impl.logging.OMGSystemException;
	
	private var flowStackIndex : Int;
	
	private var startingPointCall : Int;
	
	private var intermediatePointCall : Int;
	
	private var endingPointCall : Int;
	
	private var replyStatus : java.StdTypes.Int16;
	
	private static var UNINITIALIZED(default, null) : java.StdTypes.Int16;
	
	private var currentExecutionPoint : Int;
	
	private static var EXECUTION_POINT_STARTING(default, null) : Int;
	
	private static var EXECUTION_POINT_INTERMEDIATE(default, null) : Int;
	
	private static var EXECUTION_POINT_ENDING(default, null) : Int;
	
	private var alreadyExecuted : Bool;
	
	private var serviceContexts : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	private var forwardRequest : org.omg.PortableInterceptor.ForwardRequest;
	
	private var forwardRequestIOR : com.sun.corba.se.spi.ior.IOR;
	
	private var slotTable : com.sun.corba.se.impl.interceptors.SlotTable;
	
	private var exception : java.lang.Exception;
	
	/*
	**********************************************************************
	* Access protection
	**********************************************************************/
	private static var MID_REQUEST_ID(default, null) : Int;
	
	private static var MID_OPERATION(default, null) : Int;
	
	private static var MID_ARGUMENTS(default, null) : Int;
	
	private static var MID_EXCEPTIONS(default, null) : Int;
	
	private static var MID_CONTEXTS(default, null) : Int;
	
	private static var MID_OPERATION_CONTEXT(default, null) : Int;
	
	private static var MID_RESULT(default, null) : Int;
	
	private static var MID_RESPONSE_EXPECTED(default, null) : Int;
	
	private static var MID_SYNC_SCOPE(default, null) : Int;
	
	private static var MID_REPLY_STATUS(default, null) : Int;
	
	private static var MID_FORWARD_REFERENCE(default, null) : Int;
	
	private static var MID_GET_SLOT(default, null) : Int;
	
	private static var MID_GET_REQUEST_SERVICE_CONTEXT(default, null) : Int;
	
	private static var MID_GET_REPLY_SERVICE_CONTEXT(default, null) : Int;
	
	private static var MID_RI_LAST(default, null) : Int;
	
	/**
	* Creates a new RequestInfoImpl object.
	*/
	@:overload public function new(myORB : com.sun.corba.se.spi.orb.ORB) : Void;
	
	/**
	* Implementation for request_id() differs for client and server
	* implementations.
	*
	* Uniquely identifies an active request/reply sequence.  Once a
	* request/reply sequence is concluded this ID may be reused.  (this
	* is NOT necessarily the same as the GIOP request_id).
	*/
	@:overload @:abstract public function request_id() : Int;
	
	/**
	* Implementation for operation() differs for client and server
	* implementations.
	*
	* The name of the operation being invoked.
	*/
	@:overload @:abstract public function operation() : String;
	
	/**
	* This method returns the list of arguments for the operation that was
	* invoked. It raises NO_RESOURCES exception if the operation is not invoked
	* by using DII mechanism.
	*/
	@:overload @:abstract public function arguments() : java.NativeArray<org.omg.Dynamic.Parameter>;
	
	/**
	* This method returns the list of exceptios  that was raised when the
	* operation was invoked. It raises NO_RESOURCES exception if the operation
	* is not invoked by using DII mechanism.
	*/
	@:overload @:abstract public function exceptions() : java.NativeArray<org.omg.CORBA.TypeCode>;
	
	/**
	* This method returns the list of contexts for the DII operation.
	* It raises NO_RESOURCES exception if the operation is not invoked by
	* using DII mechanism.
	*/
	@:overload @:abstract public function contexts() : java.NativeArray<String>;
	
	/**
	* This method returns the list of operation_context for the DII operation.
	* It raises NO_RESOURCES exception if the operation is not invoked by
	* using DII mechanism.
	*/
	@:overload @:abstract public function operation_context() : java.NativeArray<String>;
	
	/**
	* This method returns the result from the invoked DII operation.
	* It raises NO_RESOURCES exception if the operation is not invoked by
	* using DII mechanism.
	*/
	@:overload @:abstract public function result() : org.omg.CORBA.Any;
	
	/**
	* Implementation for response_expected() differs for client and server
	* implementations.
	*
	* Indicates whether a response is expected.  On the client, a reply is
	* not returned when response_expected is false, so receive_reply cannot
	* be called.  receive_other is called unless an exception occurs, in
	* which case receive_exception is called.  On the client, within
	* send_poll, this attribute is true.
	*/
	@:overload @:abstract public function response_expected() : Bool;
	
	/**
	* Defined in the Messaging specification.  Pertinent only when
	* response_expected is false.  If response_expected is true, the value
	* of sync_scope is undefined.  It defines how far the request shall
	* progress before control is returned to the client.  This attribute may
	* have one of the follwing values:
	* <ul>
	*   <li>Messaging::SYNC_NONE</li>
	*   <li>Messaging::SYNC_WITH_TRANSPORT</li>
	*   <li>Messaging::SYNC_WITH_SERVER</li>
	*   <li>Messaging::SYNC_WITH_TARGET</li>
	* </ul>
	*/
	@:overload public function sync_scope() : java.StdTypes.Int16;
	
	/**
	* Describes the state of the result of the operation invocation.  Its
	* value can be one of the following:
	* <ul>
	*   <li>PortableInterceptor::SUCCESSFUL</li>
	*   <li>PortableInterceptor::SYSTEM_EXCEPTION</li>
	*   <li>PortableInterceptor::USER_EXCEPTION</li>
	*   <li>PortableInterceptor::LOCATION_FORWARD</li>
	*   <li>PortableInterceptor::TRANSPORT_RETRY</li>
	* </ul>
	*/
	@:overload public function reply_status() : java.StdTypes.Int16;
	
	/**
	* Implementation for forward_reference() differs for client and server
	* implementations.
	*
	* If the reply_status attribute is LOCATION_FORWARD
	* then this attribute will contain the object
	* to which the request will be forwarded.  It is indeterminate whether a
	* forwarded request will actually occur.
	*/
	@:overload @:abstract public function forward_reference() : org.omg.CORBA.Object;
	
	/**
	* Returns the data from the given slot of the PortableInterceptor::Current
	* that is in the scope of the request.
	* <p>
	* If the given slot has not been set, then an any containing a type code
	* with a TCKind value of tk_null is returned.
	* <p>
	* If the ID does not define an allocated slot, InvalidSlot is raised.
	*/
	@:overload public function get_slot(id : Int) : org.omg.CORBA.Any;
	
	/**
	* Implementation for get_request_service_context() differs for client
	* and server implementations.
	*
	* This operation returns a copy of the service context with the given ID
	* that is associated with the request.  If the request's service context
	* does not contain an etry for that ID, BAD_PARAM with a minor code of
	* TBD_BP is raised.
	*/
	@:overload @:abstract public function get_request_service_context(id : Int) : org.omg.IOP.ServiceContext;
	
	/**
	* Implementation for get_reply_service_context() differs for client
	* and server implementations.
	*
	* This operation returns a copy of the service context with the given ID
	* that is associated with the reply.  IF the request's service context
	* does not contain an entry for that ID, BAD_PARAM with a minor code of
	* TBD_BP is raised.
	*/
	@:overload @:abstract public function get_reply_service_context(id : Int) : org.omg.IOP.ServiceContext;
	
	/**
	* @return The connection on which the request is made.
	*
	* Note: we store the connection as an internal type but
	* expose it here as an external type.
	*/
	@:overload public function connection() : com.sun.corba.se.spi.legacy.connection.Connection;
	
	/**
	* Internal utility method to convert an NVList into a PI Parameter[]
	*/
	@:overload private function nvListToParameterArray(parNVList : org.omg.CORBA.NVList) : java.NativeArray<org.omg.Dynamic.Parameter>;
	
	/**
	* Utility to wrap the given Exception in an Any object and return it.
	* If the exception is a UserException which cannot be inserted into
	* an any, then this returns an Any containing the system exception
	* UNKNOWN.
	*/
	@:overload private function exceptionToAny(exception : java.lang.Exception) : org.omg.CORBA.Any;
	
	/**
	* Utility method to look up a service context with the given id and
	* convert it to an IOP.ServiceContext.  Uses the given HashMap as
	* a cache.  If not found in cache, the result is inserted in the cache.
	*/
	@:overload private function getServiceContext(cachedServiceContexts : java.util.HashMap<Dynamic, Dynamic>, serviceContexts : com.sun.corba.se.spi.servicecontext.ServiceContexts, id : Int) : org.omg.IOP.ServiceContext;
	
	/**
	* Utility method to add an IOP.ServiceContext to a core.ServiceContexts
	* object.  If replace is true, any service context with the given id
	* is replaced.
	* <p>
	* Raises BAD_INV_ORDER if replace is false and a service context with
	* the given id already exists.
	* <p>
	* Uses the given HashMap as a cache.  If a service context is placed
	* in the container, it goes in the HashMap as well.
	*/
	@:overload private function addServiceContext(cachedServiceContexts : java.util.HashMap<Dynamic, Dynamic>, serviceContexts : com.sun.corba.se.spi.servicecontext.ServiceContexts, service_context : org.omg.IOP.ServiceContext, replace : Bool) : Void;
	
	/**
	* Sets the number of interceptors whose starting interception
	* points were successfully invoked on this client call.  As specified
	* in orbos/99-12-02, section 5.2.1., not all interceptors will
	* be invoked if a ForwardRequest exception or a system exception
	* is raised.  This keeps track of how many were successfully executed
	* so we know not to execute the corresponding ending interception
	* points for the interceptors whose starting interception points
	* were not completed.  This simulates the "Flow Stack Visual Model"
	* presented in section 5.1.3.*/
	@:overload private function setFlowStackIndex(num : Int) : Void;
	
	/**
	* Returns the number of interceptors whose starting interception
	* points were actually invoked on this client request.  See
	* setFlowStackIndex for more details.
	*/
	@:overload private function getFlowStackIndex() : Int;
	
	/**
	* Sets which ending interception point should be called
	* for each interceptor in the virtual flow stack.
	*/
	@:overload private function setEndingPointCall(call : Int) : Void;
	
	/**
	* Retrieves the current ending point call type (see
	* setEndingPointCall for more details).
	*/
	@:overload private function getEndingPointCall() : Int;
	
	/**
	* Sets which intermediate interception point should be called
	* for each interceptor in the virtual flow stack.
	*/
	@:overload private function setIntermediatePointCall(call : Int) : Void;
	
	/**
	* Retrieves the current intermediate point call type (see
	* setEndingPointCall for more details).
	*/
	@:overload private function getIntermediatePointCall() : Int;
	
	/**
	* Sets which starting interception point should be called
	* for each interceptor in the virtual flow stack.
	*/
	@:overload private function setStartingPointCall(call : Int) : Void;
	
	/**
	* Retrieves the current starting point call type (see
	* setStartingPointCall for more details).
	*/
	@:overload private function getStartingPointCall() : Int;
	
	/**
	* Returns true if all interceptors' starting and ending points
	* have already executed to completion, or false if not yet.
	*/
	@:overload private function getAlreadyExecuted() : Bool;
	
	/**
	* Sets whether all interceotrs' starting and ending points
	* have already been executed to completion.
	*/
	@:overload private function setAlreadyExecuted(alreadyExecuted : Bool) : Void;
	
	/**
	* Sets the value to be returned by reply_status
	*/
	@:overload private function setReplyStatus(replyStatus : java.StdTypes.Int16) : Void;
	
	/**
	* Gets the current reply_status without doing an access check
	* (available only to package and subclasses)
	*/
	@:overload private function getReplyStatus() : java.StdTypes.Int16;
	
	/**
	* Stores the given ForwardRequest object for later analysis.
	* This version supplements setForwardRequest( IOR );
	*/
	@:overload private function setForwardRequest(forwardRequest : org.omg.PortableInterceptor.ForwardRequest) : Void;
	
	/**
	* Stores the given IOR for later forward request analysis.
	* This version supplements setForwardRequest( ForwardRequest );
	*/
	@:overload private function setForwardRequest(ior : com.sun.corba.se.spi.ior.IOR) : Void;
	
	/**
	* Retrieves the ForwardRequest object as a ForwardRequest exception.
	*/
	@:overload private function getForwardRequestException() : org.omg.PortableInterceptor.ForwardRequest;
	
	/**
	* Retrieves the IOR of the ForwardRequest exception.
	*/
	@:overload private function getForwardRequestIOR() : com.sun.corba.se.spi.ior.IOR;
	
	/**
	* Sets the exception to be returned by received_exception and
	* received_exception_id.
	*/
	@:overload private function setException(exception : java.lang.Exception) : Void;
	
	/**
	* Sets the execution point that we are currently executing
	* (starting points, intermediate points, or ending points).
	* This allows us to enforce the validity table.
	*/
	@:overload private function setCurrentExecutionPoint(executionPoint : Int) : Void;
	
	/**
	* Check whether the caller is allowed to access this method at
	* this particular time.  This is overridden in subclasses to implement
	* the validity table specified in ptc/00-04-05, table 21-1 and 21-2.
	* The currentExecutionPoint attribute is checked, and if access is
	* forbidden at this time, BAD_INV_ORDER is raised with a minor code of
	* TBD_BIO.
	*
	* @param methodID The ID of this method, one of the MID_* constants.
	*     This allows us to easily look up the method access in a table.
	*     Note that method ids may overlap between subclasses.
	*/
	@:overload @:abstract private function checkAccess(methodID : Int) : Void;
	
	@:overload private function iorToObject(ior : com.sun.corba.se.spi.ior.IOR) : org.omg.CORBA.Object;
	
	/**
	* Returns a duplicate of this CORBA object reference.
	* The server object implementation is not involved in creating
	* the duplicate, and the implementation cannot distinguish whether
	* the original object reference or a duplicate was used to make a request.
	* <P>
	* Note that this method is not very useful in the Java platform,
	* since memory management is handled by the VM.
	* It is included for compliance with the CORBA APIs.
	* <P>
	* The method <code>_duplicate</code> may return this object reference itself.
	*
	* @return a duplicate of this object reference or this object reference
	*         itself
	*/
	@:overload @:public @:public override public function _duplicate() : org.omg.CORBA.Object;
	
	/**
	* Returns a new <code>Object</code> with the given policies
	* either replacing any existing policies in this
	* <code>Object</code> or with the given policies added
	* to the existing ones, depending on the value of the
	* given <code>SetOverrideType</code> object.
	*
	* @param policies an array of <code>Policy</code> objects containing
	*                 the policies to be added or to be used as replacements
	* @param set_add either <code>SetOverrideType.SET_OVERRIDE</code>, indicating
	*                that the given policies will replace any existing ones, or
	*                <code>SetOverrideType.ADD_OVERRIDE</code>, indicating that
	*                the given policies should be added to any existing ones
	* @return a new <code>Object</code> with the given policies replacing
	*         or added to those in this <code>Object</code>
	*/
	@:overload @:public @:public override public function _set_policy_override(policies : java.NativeArray<org.omg.CORBA.Policy>, set_add : org.omg.CORBA.SetOverrideType) : org.omg.CORBA.Object;
	
	/**
	* Returns the <code>Policy</code> object of the specified type
	* which applies to this object.
	*
	* @param policy_type the type of policy to be obtained
	* @return A <code>Policy</code> object of the type specified by
	*         the policy_type parameter
	* @exception org.omg.CORBA.BAD_PARAM when the value of policy type
	* is not valid either because the specified type is not supported by this
	* ORB or because a policy object of that type is not associated with this
	* Object
	*/
	@:overload @:public @:public override public function _get_policy(policy_type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Signals that the caller is done using this object reference, so
	* internal ORB resources associated with this object reference can be
	* released. Note that the object implementation is not involved in
	* this operation, and other references to the same object are not affected.
	*/
	@:overload @:public @:public override public function _release() : Void;
	
	/**
	* Obtains an <code>InterfaceDef</code> for the object implementation
	* referenced by this object reference.
	* The <code>InterfaceDef</code> object
	* may be used to introspect on the methods, attributes, and other
	* type information for the object referred to by this object reference.
	*
	* @return the <code>InterfaceDef</code> object in the Interface Repository
	*         which provides type information about the object referred to by
	*         this object reference
	*/
	@:overload @:public @:public override public function _get_interface_def() : org.omg.CORBA.Object;
	
	/**
	* Returns an ORB-internal identifier for this object reference.
	* This is a hash identifier, which does
	* not change during the lifetime of the object reference, and so
	* neither will any hash function of that identifier change. The value returned
	* is not guaranteed to be unique; in other words, another object
	* reference may have the same hash value.
	* If two object references hash differently,
	* then they are distinct object references; however, both may still refer
	* to the same CORBA object.
	*
	* @param maximum the upper bound on the hash value returned by the ORB
	* @return the ORB-internal hash identifier for this object reference
	*/
	@:overload @:public @:public override public function _hash(maximum : Int) : Int;
	
	/**
	* Determines whether the two object references are equivalent,
	* so far as the ORB can easily determine. Two object references are equivalent
	* if they are identical. Two distinct object references which in fact refer to
	* the same object are also equivalent. However, ORBs are not required
	* to attempt determination of whether two distinct object references
	* refer to the same object, since such determination could be impractically
	* expensive.
	* @param other the other object reference with which to check for equivalence
	* @return <code>true</code> if this object reference is known to be
	*         equivalent to the given object reference.
	*         Note that <code>false</code> indicates only that the two
	*         object references are distinct, not necessarily that
	*         they reference distinct objects.
	*/
	@:overload @:public @:public override public function _is_equivalent(other : org.omg.CORBA.Object) : Bool;
	
	/**
	* Retrieves the <code>DomainManagers</code> of this object.
	* This allows administration services (and applications) to retrieve the
	* domain managers, and hence the security and other policies applicable
	* to individual objects that are members of the domain.
	*
	* @return the list of immediately enclosing domain managers of this object.
	*  At least one domain manager is always returned in the list since by
	* default each object is associated with at least one domain manager at
	* creation.
	*/
	@:overload @:public @:public override public function _get_domain_managers() : java.NativeArray<org.omg.CORBA.DomainManager>;
	
	/**
	* Creates a <code>Request</code> instance for use in the
	* Dynamic Invocation Interface.
	*
	* @param operation  the name of the method to be invoked using the
	*                        <code>Request</code> instance
	* @return the newly-created <code>Request</code> instance
	*/
	@:overload @:public @:public override public function _request(operation : String) : org.omg.CORBA.Request;
	
	/**
	* Creates a <code>Request</code> instance initialized with the
	* given context, method name, list of arguments, container
	* for the method's return value, list of possible exceptions,
	* and list of context strings needing to be resolved.
	*
	* @param ctx                       a <code>Context</code> object containing
	*                     a list of properties
	* @param operation    the name of the method to be invoked
	* @param arg_list          an <code>NVList</code> containing the actual arguments
	*                     to the method being invoked
	* @param result            a <code>NamedValue</code> object to serve as a
	*                     container for the method's return value
	* @param exclist           an <code>ExceptionList</code> object containing a
	*                     list of possible exceptions the method can throw
	* @param ctxlist           a <code>ContextList</code> object containing a list of
	*                     context strings that need to be resolved and sent with the
	*                          <code>Request</code> instance
	* @return                  the newly-created <code>Request</code> object
	*
	* @see Request
	* @see NVList
	* @see NamedValue
	* @see ExceptionList
	* @see ContextList
	*/
	@:overload @:public @:public override public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exclist : org.omg.CORBA.ExceptionList, ctxlist : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	/**
	* Checks whether this object is an instance of a class that
	* implements the given interface.
	*
	* @param repositoryIdentifier the interface to check against
	* @return <code>true</code> if this object reference is an instance
	*         of a class that implements the interface;
	*         <code>false</code> otherwise
	*/
	@:overload @:public @:public override public function _is_a(repositoryIdentifier : String) : Bool;
	
	/**
	* Determines whether the server object for this object reference has been
	* destroyed.
	* @return <code>true</code> if the ORB knows authoritatively that the
	*         server object does not exist; <code>false</code> otherwise
	*/
	@:overload @:public @:public override public function _non_existent() : Bool;
	
	/**
	* Creates a <code>Request</code> instance initialized with the
	* given context, method name, list of arguments, and container
	* for the method's return value.
	*
	* @param ctx                       a <code>Context</code> object containing
	*                     a list of properties
	* @param operation    the name of the method to be invoked
	* @param arg_list          an <code>NVList</code> containing the actual arguments
	*                     to the method being invoked
	* @param result            a <code>NamedValue</code> object to serve as a
	*                     container for the method's return value
	* @return                  the newly-created <code>Request</code> object
	*
	* @see Request
	* @see NVList
	* @see NamedValue
	*/
	@:overload @:public @:public override public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	
}
