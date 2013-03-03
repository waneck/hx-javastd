package javax.naming.ldap;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface ExtendedRequest extends java.io.Serializable
{
	/**
	* Retrieves the object identifier of the request.
	*
	* @return The non-null object identifier string representing the LDAP
	*         <tt>ExtendedRequest.requestName</tt> component.
	*/
	@:overload @:public public function getID() : String;
	
	/**
	* Retrieves the ASN.1 BER encoded value of the LDAP extended operation
	* request. Null is returned if the value is absent.
	*
	* The result is the raw BER bytes including the tag and length of
	* the request value. It does not include the request OID.
	* This method is called by the service provider to get the bits to
	* put into the extended operation to be sent to the LDAP server.
	*
	* @return A possibly null byte array representing the ASN.1 BER encoded
	*         contents of the LDAP <tt>ExtendedRequest.requestValue</tt>
	*         component.
	* @exception IllegalStateException If the encoded value cannot be retrieved
	* because the request contains insufficient or invalid data/state.
	*/
	@:overload @:public public function getEncodedValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates the response object that corresponds to this request.
	*<p>
	* After the service provider has sent the extended operation request
	* to the LDAP server, it will receive a response from the server.
	* If the operation failed, the provider will throw a NamingException.
	* If the operation succeeded, the provider will invoke this method
	* using the data that it got back in the response.
	* It is the job of this method to return a class that implements
	* the ExtendedResponse interface that is appropriate for the
	* extended operation request.
	*<p>
	* For example, a Start TLS extended request class would need to know
	* how to process a Start TLS extended response. It does this by creating
	* a class that implements ExtendedResponse.
	*
	* @param id       The possibly null object identifier of the response
	*                 control.
	* @param berValue The possibly null ASN.1 BER encoded value of the
	*                 response control.
	* This is the raw BER bytes including the tag and length of
	* the response value. It does not include the response OID.
	* @param offset   The starting position in berValue of the bytes to use.
	* @param length   The number of bytes in berValue to use.
	*
	* @return A non-null object.
	* @exception NamingException if cannot create extended response
	*     due to an error.
	* @see ExtendedResponse
	*/
	@:overload @:public public function createExtendedResponse(id : String, berValue : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : javax.naming.ldap.ExtendedResponse;
	
	
}
