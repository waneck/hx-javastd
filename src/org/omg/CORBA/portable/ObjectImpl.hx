package org.omg.CORBA.portable;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectImpl implements org.omg.CORBA.Object
{
	/**
	* Retrieves the reference to the vendor-specific <code>Delegate</code>
	* object to which this <code>ObjectImpl</code> object delegates all
	* methods invoked on it.
	*
	* @return the Delegate contained in this ObjectImpl instance
	* @throws BAD_OPERATION if the delegate has not been set
	* @see #_set_delegate
	*/
	@:overload public function _get_delegate() : org.omg.CORBA.portable.Delegate;
	
	/**
	* Sets the Delegate for this <code>ObjectImpl</code> instance to the given
	* <code>Delegate</code> object.  All method invocations on this
	* <code>ObjectImpl</code> object will be forwarded to this delegate.
	*
	* @param delegate the <code>Delegate</code> instance to which
	*        all method calls on this <code>ObjectImpl</code> object
	*        will be delegated; may be implemented by a third-party ORB
	* @see #_get_delegate
	*/
	@:overload public function _set_delegate(delegate : org.omg.CORBA.portable.Delegate) : Void;
	
	/**
	* Retrieves a string array containing the repository identifiers
	* supported by this <code>ObjectImpl</code> object.  For example,
	* for a stub, this method returns information about all the
	* interfaces supported by the stub.
	*
	* @return the array of all repository identifiers supported by this
	*         <code>ObjectImpl</code> instance
	*/
	@:overload @:abstract public function _ids() : java.NativeArray<String>;
	
	/**
	* Returns a duplicate of this <code>ObjectImpl</code> object.
	*
	* @return an <code>orb.omg.CORBA.Object</code> object that is
	*         a duplicate of this object
	*/
	@:overload public function _duplicate() : org.omg.CORBA.Object;
	
	/**
	* Releases the resources associated with this <code>ObjectImpl</code> object.
	*/
	@:overload public function _release() : Void;
	
	/**
	* Checks whether the object identified by the given repository
	* identifier is an <code>ObjectImpl</code> object.
	*
	* @param repository_id a <code>String</code> object with the repository
	*        identifier to check
	* @return <code>true</code> if the object identified by the given
	*         repository id is an instance of <code>ObjectImpl</code>;
	*         <code>false</code> otherwise
	*/
	@:overload public function _is_a(repository_id : String) : Bool;
	
	/**
	* Checks whether the the given <code>ObjectImpl</code> object is
	* equivalent to this <code>ObjectImpl</code> object.
	*
	* @param that an instance of <code>ObjectImpl</code> to compare with
	*        this <code>ObjectImpl</code> object
	* @return <code>true</code> if the given object is equivalent
	*         to this <code>ObjectImpl</code> object;
	*         <code>false</code> otherwise
	*/
	@:overload public function _is_equivalent(that : org.omg.CORBA.Object) : Bool;
	
	/**
	* Checks whether the server object for this <code>ObjectImpl</code>
	* object has been destroyed.
	*
	* @return <code>true</code> if the ORB knows authoritatively that the
	*         server object does not exist; <code>false</code> otherwise
	*/
	@:overload public function _non_existent() : Bool;
	
	/**
	* Retrieves the hash code that serves as an ORB-internal identifier for
	* this <code>ObjectImpl</code> object.
	*
	* @param maximum an <code>int</code> indicating the upper bound on the hash
	*        value returned by the ORB
	* @return an <code>int</code> representing the hash code for this
	*         <code>ObjectImpl</code> object
	*/
	@:overload public function _hash(maximum : Int) : Int;
	
	/**
	* Creates a <code>Request</code> object containing the given method
	* that can be used with the Dynamic Invocation Interface.
	*
	* @param operation the method to be invoked by the new <code>Request</code>
	*        object
	* @return a new <code>Request</code> object initialized with the
	*         given method
	*/
	@:overload public function _request(operation : String) : org.omg.CORBA.Request;
	
	/**
	* Creates a <code>Request</code> object that contains the given context,
	* method, argument list, and container for the result.
	*
	* @param ctx the Context for the request
	* @param operation the method that the new <code>Request</code>
	*        object will invoke
	* @param arg_list the arguments for the method; an <code>NVList</code>
	*        in which each argument is a <code>NamedValue</code> object
	* @param result a <code>NamedValue</code> object to be used for
	*        returning the result of executing the request's method
	* @return a new <code>Request</code> object initialized with the
	*         given context, method, argument list, and container for the
	*         return value
	*/
	@:overload public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	/**
	* Creates a <code>Request</code> object that contains the given context,
	* method, argument list, container for the result, exceptions, and
	* list of property names to be used in resolving the context strings.
	* This <code>Request</code> object is for use in the Dynamic
	* Invocation Interface.
	*
	* @param ctx the <code>Context</code> object that contains the
	*        context strings that must be resolved before they are
	*        sent along with the request
	* @param operation the method that the new <code>Request</code>
	*        object will invoke
	* @param arg_list the arguments for the method; an <code>NVList</code>
	*        in which each argument is a <code>NamedValue</code> object
	* @param result a <code>NamedValue</code> object to be used for
	*        returning the result of executing the request's method
	* @param exceptions a list of the exceptions that the given method
	*        throws
	* @param contexts a list of the properties that are needed to
	*        resolve the contexts in <i>ctx</i>; the strings in
	*        <i>contexts</i> are used as arguments to the method
	*        <code>Context.get_values</code>,
	*        which returns the value associated with the given property
	* @return a new <code>Request</code> object initialized with the
	*         given context strings to resolve, method, argument list,
	*         container for the result, exceptions, and list of property
	*         names to be used in resolving the context strings
	*/
	@:overload public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exceptions : org.omg.CORBA.ExceptionList, contexts : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	/**
	* Retrieves the interface definition for this <code>ObjectImpl</code>
	* object.
	*
	* @return the <code>org.omg.CORBA.Object</code> instance that is the
	*         interface definition for this <code>ObjectImpl</code> object
	*/
	@:overload public function _get_interface_def() : org.omg.CORBA.Object;
	
	/**
	* Returns a reference to the ORB associated with this object and
	* its delegate.  This is the <code>ORB</code> object that created
	* the delegate.
	*
	* @return the <code>ORB</code> instance that created the
	*          <code>Delegate</code> object contained in this
	*          <code>ObjectImpl</code> object
	*/
	@:overload public function _orb() : org.omg.CORBA.ORB;
	
	/**
	* Retrieves the <code>Policy</code> object for this
	* <code>ObjectImpl</code> object that has the given
	* policy type.
	*
	* @param policy_type an int indicating the policy type
	* @return the <code>Policy</code> object that is the specified policy type
	*         and that applies to this <code>ObjectImpl</code> object
	* @see org.omg.CORBA.PolicyOperations#policy_type
	*/
	@:overload public function _get_policy(policy_type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Retrieves a list of the domain managers for this
	* <code>ObjectImpl</code> object.
	*
	* @return an array containing the <code>DomainManager</code>
	*         objects for this instance of <code>ObjectImpl</code>
	*/
	@:overload public function _get_domain_managers() : java.NativeArray<org.omg.CORBA.DomainManager>;
	
	/**
	* Sets this <code>ObjectImpl</code> object's override type for
	* the given policies to the given instance of
	* <code>SetOverrideType</code>.
	*
	* @param policies an array of <code>Policy</code> objects with the
	*         policies that will replace the current policies or be
	*         added to the current policies
	* @param set_add either <code>SetOverrideType.SET_OVERRIDE</code>,
	*         indicating that the given policies will replace any existing
	*         ones, or <code>SetOverrideType.ADD_OVERRIDE</code>, indicating
	*         that the given policies should be added to any existing ones
	* @return an <code>Object</code> with the given policies replacing or
	*         added to its previous policies
	*/
	@:overload public function _set_policy_override(policies : java.NativeArray<org.omg.CORBA.Policy>, set_add : org.omg.CORBA.SetOverrideType) : org.omg.CORBA.Object;
	
	/**
	* Checks whether this <code>ObjectImpl</code> object is implemented
	* by a local servant.  If so, local invocation API's may be used.
	*
	* @return <code>true</code> if this object is implemented by a local
	*         servant; <code>false</code> otherwise
	*/
	@:overload public function _is_local() : Bool;
	
	/**
	* Returns a Java reference to the local servant that should be used for sending
	* a request for the method specified. If this <code>ObjectImpl</code>
	* object is a local stub, it will invoke the <code>_servant_preinvoke</code>
	* method before sending a request in order to obtain the
	* <code>ServantObject</code> instance to use.
	* <P>
	* If a <code>ServantObject</code> object is returned, its <code>servant</code>
	* field has been set to an object of the expected type (Note: the object may
	* or may not be the actual servant instance). The local stub may cast
	* the servant field to the expected type, and then invoke the operation
	* directly. The <code>ServantRequest</code> object is valid for only one
	* invocation and cannot be used for more than one invocation.
	*
	* @param operation a <code>String</code> containing the name of the method
	*        to be invoked. This name should correspond to the method name as
	*        it would be encoded in a GIOP request.
	*
	* @param expectedType a <code>Class</code> object representing the
	*        expected type of the servant that is returned. This expected
	*        type is the <code>Class</code> object associated with the
	*        operations class for the stub's interface. For example, a
	*        stub for an interface <code>Foo</code> would pass the
	*        <code>Class</code> object for the <code>FooOperations</code>
	*        interface.
	*
	* @return (1) a <code>ServantObject</code> object, which may or may
	*         not be the actual servant instance, or (2) <code>null</code> if
	*         (a) the servant is not local or (b) the servant has ceased to
	*         be local due to a ForwardRequest from a POA ServantManager
	* @throws org.omg.CORBA.BAD_PARAM if the servant is not the expected type
	*/
	@:overload public function _servant_preinvoke(operation : String, expectedType : Class<Dynamic>) : org.omg.CORBA.portable.ServantObject;
	
	/**
	* Is called by the local stub after it has invoked an operation
	* on the local servant that was previously retrieved from a
	* call to the method <code>_servant_preinvoke</code>.
	* The <code>_servant_postinvoke</code> method must be called
	* if the <code>_servant_preinvoke</code>
	* method returned a non-null value, even if an exception was thrown
	* by the method invoked by the servant. For this reason, the call
	* to the method <code>_servant_postinvoke</code> should be placed
	* in a Java <code>finally</code> clause.
	*
	* @param servant the instance of the <code>ServantObject</code>
	*        returned by the <code>_servant_preinvoke</code> method
	*/
	@:overload public function _servant_postinvoke(servant : org.omg.CORBA.portable.ServantObject) : Void;
	
	/**
	* Returns an <code>OutputStream</code> object to use for marshalling
	* the arguments of the given method.  This method is called by a stub,
	* which must indicate if a response is expected, that is, whether or not
	* the call is oneway.
	*
	* @param operation         a String giving the name of the method.
	* @param responseExpected  a boolean -- <code>true</code> if the
	*         request is not one way, that is, a response is expected
	* @return an <code>OutputStream</code> object for dispatching the request
	*/
	@:overload public function _request(operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	/**
	* Invokes an operation and returns an <code>InputStream</code>
	* object for reading the response. The stub provides the
	* <code>OutputStream</code> object that was previously returned by a
	* call to the <code>_request</code> method. The method specified
	* as an argument to <code>_request</code> when it was
	* called previously is the method that this method invokes.
	* <P>
	* If an exception occurs, the <code>_invoke</code> method may throw an
	* <code>ApplicationException</code> object that contains an InputStream from
	* which the user exception state may be unmarshalled.
	*
	* @param output  an OutputStream object for dispatching the request
	* @return an <code>InputStream</code> object containing the marshalled
	*         response to the method invoked
	* @throws ApplicationException if the invocation
	*         meets application-defined exception
	* @throws RemarshalException if the invocation leads
	*         to a remarshalling error
	* @see #_request
	*/
	@:overload public function _invoke(output : org.omg.CORBA.portable.OutputStream) : org.omg.CORBA.portable.InputStream;
	
	/**
	* Releases the given
	* reply stream back to the ORB when unmarshalling has
	* completed after a call to the method <code>_invoke</code>.
	* Calling this method is optional for the stub.
	*
	* @param input  the <code>InputStream</code> object that was returned
	*        by the <code>_invoke</code> method or the
	*        <code>ApplicationException.getInputStream</code> method;
	*        may be <code>null</code>, in which case this method does
	*        nothing
	* @see #_invoke
	*/
	@:overload public function _releaseReply(input : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Returns a <code>String</code> object that represents this
	* <code>ObjectImpl</code> object.
	*
	* @return the <code>String</code> representation of this object
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the hash code for this <code>ObjectImpl</code> object.
	*
	* @return the hash code for this object
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this <code>ObjectImpl</code> object with the given one
	* for equality.
	*
	*@param obj the object with which to compare this object
	*@return <code>true</code> if the two objects are equal;
	*        <code>false</code> otherwise
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
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
	@:overload @:public @:public override public function _is_equivalent(other : Object) : Bool;
	
	
}
