package javax.naming.ldap;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern interface LdapContext extends javax.naming.directory.DirContext
{
	/**
	* Performs an extended operation.
	*
	* This method is used to support LDAPv3 extended operations.
	* @param request The non-null request to be performed.
	* @return The possibly null response of the operation. null means
	* the operation did not generate any response.
	* @throws NamingException If an error occurred while performing the
	* extended operation.
	*/
	@:overload public function extendedOperation(request : javax.naming.ldap.ExtendedRequest) : javax.naming.ldap.ExtendedResponse;
	
	/**
	* Creates a new instance of this context initialized using request controls.
	*
	* This method is a convenience method for creating a new instance
	* of this context for the purposes of multithreaded access.
	* For example, if multiple threads want to use different context
	* request controls,
	* each thread may use this method to get its own copy of this context
	* and set/get context request controls without having to synchronize with other
	* threads.
	*<p>
	* The new context has the same environment properties and connection
	* request controls as this context. See the class description for details.
	* Implementations might also allow this context and the new context
	* to share the same network connection or other resources if doing
	* so does not impede the independence of either context.
	*
	* @param requestControls The possibly null request controls
	* to use for the new context.
	* If null, the context is initialized with no request controls.
	*
	* @return A non-null <tt>LdapContext</tt> instance.
	* @exception NamingException If an error occurred while creating
	* the new instance.
	* @see InitialLdapContext
	*/
	@:overload public function newInstance(requestControls : java.NativeArray<javax.naming.ldap.Control>) : LdapContext;
	
	/**
	* Reconnects to the LDAP server using the supplied controls and
	* this context's environment.
	*<p>
	* This method is a way to explicitly initiate an LDAP "bind" operation.
	* For example, you can use this method to set request controls for
	* the LDAP "bind" operation, or to explicitly connect to the server
	* to get response controls returned by the LDAP "bind" operation.
	*<p>
	* This method sets this context's <tt>connCtls</tt>
	* to be its new connection request controls. This context's
	* context request controls are not affected.
	* After this method has been invoked, any subsequent
	* implicit reconnections will be done using <tt>connCtls</tt>.
	* <tt>connCtls</tt> are also used as
	* connection request controls for new context instances derived from this
	* context.
	* These connection request controls are not
	* affected by <tt>setRequestControls()</tt>.
	*<p>
	* Service provider implementors should read the "Service Provider" section
	* in the class description for implementation details.
	* @param connCtls The possibly null controls to use. If null, no
	* controls are used.
	* @exception NamingException If an error occurred while reconnecting.
	* @see #getConnectControls
	* @see #newInstance
	*/
	@:overload public function reconnect(connCtls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	/**
	* Retrieves the connection request controls in effect for this context.
	* The controls are owned by the JNDI implementation and are
	* immutable. Neither the array nor the controls may be modified by the
	* caller.
	*
	* @return A possibly-null array of controls. null means no connect controls
	* have been set for this context.
	* @exception NamingException If an error occurred while getting the request
	* controls.
	*/
	@:overload public function getConnectControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	/**
	* Sets the request controls for methods subsequently
	* invoked on this context.
	* The request controls are owned by the JNDI implementation and are
	* immutable. Neither the array nor the controls may be modified by the
	* caller.
	* <p>
	* This removes any previous request controls and adds
	* <tt>requestControls</tt>
	* for use by subsequent methods invoked on this context.
	* This method does not affect this context's connection request controls.
	*<p>
	* Note that <tt>requestControls</tt> will be in effect until the next
	* invocation of <tt>setRequestControls()</tt>. You need to explicitly
	* invoke <tt>setRequestControls()</tt> with <tt>null</tt> or an empty
	* array to clear the controls if you don't want them to affect the
	* context methods any more.
	* To check what request controls are in effect for this context, use
	* <tt>getRequestControls()</tt>.
	* @param requestControls The possibly null controls to use. If null, no
	* controls are used.
	* @exception NamingException If an error occurred while setting the
	* request controls.
	* @see #getRequestControls
	*/
	@:overload public function setRequestControls(requestControls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	/**
	* Retrieves the request controls in effect for this context.
	* The request controls are owned by the JNDI implementation and are
	* immutable. Neither the array nor the controls may be modified by the
	* caller.
	*
	* @return A possibly-null array of controls. null means no request controls
	* have been set for this context.
	* @exception NamingException If an error occurred while getting the request
	* controls.
	* @see #setRequestControls
	*/
	@:overload public function getRequestControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	/**
	* Retrieves the response controls produced as a result of the last
	* method invoked on this context.
	* The response controls are owned by the JNDI implementation and are
	* immutable. Neither the array nor the controls may be modified by the
	* caller.
	*<p>
	* These response controls might have been generated by a successful or
	* failed operation.
	*<p>
	* When a context method that may return response controls is invoked,
	* response controls from the previous method invocation are cleared.
	* <tt>getResponseControls()</tt> returns all of the response controls
	* generated by LDAP operations used by the context method in the order
	* received from the LDAP server.
	* Invoking <tt>getResponseControls()</tt> does not
	* clear the response controls. You can call it many times (and get
	* back the same controls) until the next context method that may return
	* controls is invoked.
	*<p>
	* @return A possibly null array of controls. If null, the previous
	* method invoked on this context did not produce any controls.
	* @exception NamingException If an error occurred while getting the response
	* controls.
	*/
	@:overload public function getResponseControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	
}
