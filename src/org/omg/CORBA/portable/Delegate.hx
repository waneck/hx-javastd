package org.omg.CORBA.portable;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class Delegate
{
	/**
	* Return an InterfaceDef for the object reference provided.
	* @param self The object reference whose InterfaceDef needs to be returned
	* @return the InterfaceDef
	*/
	@:overload @:public @:abstract public function get_interface_def(self : org.omg.CORBA.Object) : org.omg.CORBA.Object;
	
	/**
	* Returns a duplicate of the object reference provided.
	* @param obj The object reference whose duplicate needs to be returned
	* @return the duplicate object reference
	*/
	@:overload @:public @:abstract public function duplicate(obj : org.omg.CORBA.Object) : org.omg.CORBA.Object;
	
	/**
	* Releases resources associated with the object reference provided.
	* @param obj The object reference whose resources need to be released
	*/
	@:overload @:public @:abstract public function release(obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Checks if the object reference is an instance of the given interface.
	* @param obj The object reference to be checked.
	* @param repository_id The repository identifier of the interface
	* to check against.
	* @return true if the object reference supports the interface
	*/
	@:overload @:public @:abstract public function is_a(obj : org.omg.CORBA.Object, repository_id : String) : Bool;
	
	/**
	* Determines whether the server object for the object reference has been
	* destroyed.
	* @param obj The object reference which delegated to this delegate.
	* @return true if the ORB knows authoritatively that the server object does
	* not exist, false otherwise
	*/
	@:overload @:public @:abstract public function non_existent(obj : org.omg.CORBA.Object) : Bool;
	
	/**
	* Determines if the two object references are equivalent.
	* @param obj The object reference which delegated to this delegate.
	* @param other The object reference to check equivalence against.
	* @return true if the objects are CORBA-equivalent.
	*/
	@:overload @:public @:abstract public function is_equivalent(obj : org.omg.CORBA.Object, other : org.omg.CORBA.Object) : Bool;
	
	/**
	* Returns an ORB-internal identifier (hashcode) for this object reference.
	* @param obj The object reference which delegated to this delegate.
	* @param max specifies an upper bound on the hash value returned by
	*            the ORB.
	* @return ORB-internal hash identifier for object reference
	*/
	@:overload @:public @:abstract public function hash(obj : org.omg.CORBA.Object, max : Int) : Int;
	
	/**
	* Creates a Request instance for use in the Dynamic Invocation Interface.
	* @param obj The object reference which delegated to this delegate.
	* @param operation The name of the operation to be invoked using the
	*                  Request instance.
	* @return the created Request instance
	*/
	@:overload @:public @:abstract public function request(obj : org.omg.CORBA.Object, operation : String) : org.omg.CORBA.Request;
	
	/**
	* Creates a Request instance for use in the Dynamic Invocation Interface.
	*
	* @param obj The object reference which delegated to this delegate.
	* @param ctx                      The context to be used.
	* @param operation                The name of the operation to be
	*                                 invoked.
	* @param arg_list         The arguments to the operation in the
	*                                 form of an NVList.
	* @param result           A container for the result as a NamedValue.
	* @return                 The created Request object.
	*
	*/
	@:overload @:public @:abstract public function create_request(obj : org.omg.CORBA.Object, ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	/**
	* Creates a Request instance for use in the Dynamic Invocation Interface.
	*
	* @param obj The object reference which delegated to this delegate.
	* @param ctx                      The context to be used.
	* @param operation                The name of the operation to be
	*                                 invoked.
	* @param arg_list         The arguments to the operation in the
	*                                 form of an NVList.
	* @param result           A container for the result as a NamedValue.
	* @param exclist          A list of possible exceptions the
	*                                 operation can throw.
	* @param ctxlist          A list of context strings that need
	*                                 to be resolved and sent with the
	*                                 Request.
	* @return                 The created Request object.
	*/
	@:overload @:public @:abstract public function create_request(obj : org.omg.CORBA.Object, ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exclist : org.omg.CORBA.ExceptionList, ctxlist : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	/**
	* Provides a reference to the orb associated with its parameter.
	*
	* @param obj  the object reference which delegated to this delegate.
	* @return the associated orb.
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function orb(obj : org.omg.CORBA.Object) : org.omg.CORBA.ORB;
	
	/**
	* Returns the <code>Policy</code> object of the specified type
	* which applies to this object.
	*
	* @param self The object reference which delegated to this delegate.
	* @param policy_type The type of policy to be obtained.
	* @return A <code>Policy</code> object of the type specified by
	*         the policy_type parameter.
	* @exception org.omg.CORBA.BAD_PARAM raised when the value of policy type
	* is not valid either because the specified type is not supported by this
	* ORB or because a policy object of that type is not associated with this
	* Object.
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function get_policy(self : org.omg.CORBA.Object, policy_type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Retrieves the <code>DomainManagers</code> of this object.
	* This allows administration services (and applications) to retrieve the
	* domain managers, and hence the security and other policies applicable
	* to individual objects that are members of the domain.
	*
	* @param self The object reference which delegated to this delegate.
	* @return The list of immediately enclosing domain managers of this object.
	*  At least one domain manager is always returned in the list since by
	* default each object is associated with at least one domain manager at
	* creation.
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function get_domain_managers(self : org.omg.CORBA.Object) : java.NativeArray<org.omg.CORBA.DomainManager>;
	
	/**
	* Associates the policies passed in
	* with a newly created object reference that it returns. Only certain
	* policies that pertain to the invocation of an operation at the client
	* end can be overridden using this operation. Attempts to override any
	* other policy will result in the raising of the CORBA::NO_PERMISSION
	* exception.
	*
	* @param self The object reference which delegated to this delegate.
	* @param policies A sequence of references to Policy objects.
	* @param set_add Indicates whether these policies should be added
	* onto any otheroverrides that already exist (ADD_OVERRIDE) in
	* the object reference, or they should be added to a clean
	* override free object reference (SET_OVERRIDE).
	* @return  A new object reference with the new policies associated with it.
	*
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function set_policy_override(self : org.omg.CORBA.Object, policies : java.NativeArray<org.omg.CORBA.Policy>, set_add : org.omg.CORBA.SetOverrideType) : org.omg.CORBA.Object;
	
	/**
	* Returns true if this object is implemented by a local servant.
	*
	* @param self The object reference which delegated to this delegate.
	* @return true only if the servant incarnating this object is located in
	* this Java VM. Return false if the servant is not local or the ORB
	* does not support local stubs for this particular servant. The default
	* behavior of is_local() is to return false.
	*/
	@:overload @:public public function is_local(self : org.omg.CORBA.Object) : Bool;
	
	/**
	* Returns a Java reference to the servant which should be used for this
	* request. servant_preinvoke() is invoked by a local stub.
	* If a ServantObject object is returned, then its servant field
	* has been set to an object of the expected type (Note: the object may
	* or may not be the actual servant instance). The local stub may cast
	* the servant field to the expected type, and then invoke the operation
	* directly. The ServantRequest object is valid for only one invocation,
	* and cannot be used for more than one invocation.
	*
	* @param self The object reference which delegated to this delegate.
	*
	* @param operation a string containing the operation name.
	* The operation name corresponds to the operation name as it would be
	* encoded in a GIOP request.
	*
	* @param expectedType a Class object representing the expected type of the servant.
	* The expected type is the Class object associated with the operations
	* class of the stub's interface (e.g. A stub for an interface Foo,
	* would pass the Class object for the FooOperations interface).
	*
	* @return a ServantObject object.
	* The method may return a null value if it does not wish to support
	* this optimization (e.g. due to security, transactions, etc).
	* The method must return null if the servant is not of the expected type.
	*/
	@:overload @:public public function servant_preinvoke(self : org.omg.CORBA.Object, operation : String, expectedType : Class<Dynamic>) : org.omg.CORBA.portable.ServantObject;
	
	/**
	* servant_postinvoke() is invoked by the local stub after the operation
	* has been invoked on the local servant.
	* This method must be called if servant_preinvoke() returned a non-null
	* value, even if an exception was thrown by the servant's method.
	* For this reason, the call to servant_postinvoke() should be placed
	* in a Java finally clause.
	*
	* @param self The object reference which delegated to this delegate.
	*
	* @param servant the instance of the ServantObject returned from
	*  the servant_preinvoke() method.
	*/
	@:overload @:public public function servant_postinvoke(self : org.omg.CORBA.Object, servant : org.omg.CORBA.portable.ServantObject) : Void;
	
	/**
	* request is called by a stub to obtain an OutputStream for
	* marshaling arguments. The stub must supply the operation name,
	* and indicate if a response is expected (i.e is this a oneway
	* call).
	*
	* @param self The object reference which delegated to this delegate.
	* @param operation a string containing the operation name.
	* The operation name corresponds to the operation name as it would be
	* encoded in a GIOP request.
	* @param responseExpected false if the operation is a one way operation,
	* and true otherwise.
	* @return OutputStream the OutputStream into which request arguments
	* can be marshaled.
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function request(self : org.omg.CORBA.Object, operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	/**
	* invoke is called by a stub to invoke an operation. The stub provides an
	* OutputStream that was previously returned by a request()
	* call. invoke returns an InputStream which contains the
	* marshaled reply. If an exception occurs, invoke may throw an
	* ApplicationException object which contains an InputStream from
	* which the user exception state may be unmarshaled.
	*
	* @param self The object reference which delegated to this delegate.
	* @param output the OutputStream which contains marshaled arguments
	* @return input the InputStream from which reply parameters can be
	* unmarshaled.
	* @throws ApplicationException thrown when implementation throws
	* (upon invocation) an exception defined as part of its remote method
	* definition.
	* @throws RemarshalException thrown when remarshalling fails.
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function invoke(self : org.omg.CORBA.Object, output : org.omg.CORBA.portable.OutputStream) : org.omg.CORBA.portable.InputStream;
	
	/**
	* releaseReply may optionally be called by a stub to release a
	* reply stream back to the ORB when the unmarshaling has
	* completed. The stub passes the InputStream returned by
	* invoke() or ApplicationException.getInputStream(). A null
	* value may also be passed to releaseReply, in which case the
	* method is a noop.
	*
	* @param self The object reference which delegated to this delegate.
	* @param input the InputStream returned from invoke().
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function releaseReply(self : org.omg.CORBA.Object, input : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Provides the implementation to override the toString() method
	* of the delegating CORBA object.
	*
	* @param self the object reference that delegated to this delegate
	* @return a <code>String</code> object that represents the object
	*         reference that delegated to this <code>Delegate</code>
	*         object
	*/
	@:overload @:public public function toString(self : org.omg.CORBA.Object) : String;
	
	/**
	* Provides the implementation to override the hashCode() method
	* of the delegating CORBA object.
	*
	* @param self the object reference that delegated to this delegate
	* @return an <code>int</code> that represents the hashcode for the
	*         object reference that delegated to this <code>Delegate</code>
	*         object
	*/
	@:overload @:public public function hashCode(self : org.omg.CORBA.Object) : Int;
	
	/**
	* Provides the implementation to override the equals(java.lang.Object obj)
	* method of the delegating CORBA object.
	*
	* @param self the object reference that delegated to this delegate
	* @param obj the <code>Object</code> with which to compare
	* @return <code>true</code> if <code>obj</code> equals <code>self</code>;
	*         <code>false</code> otherwise
	*/
	@:overload @:public public function equals(self : org.omg.CORBA.Object, obj : Dynamic) : Bool;
	
	
}
