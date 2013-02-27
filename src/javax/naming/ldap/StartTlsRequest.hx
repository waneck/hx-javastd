package javax.naming.ldap;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class StartTlsRequest implements javax.naming.ldap.ExtendedRequest
{
	/**
	* The StartTLS extended request's assigned object identifier
	* is 1.3.6.1.4.1.1466.20037.
	*/
	public static var OID(default, null) : String;
	
	/**
	* Constructs a StartTLS extended request.
	*/
	@:overload public function new() : Void;
	
	/**
	* Retrieves the StartTLS request's object identifier string.
	*
	* @return The object identifier string, "1.3.6.1.4.1.1466.20037".
	*/
	@:overload public function getID() : String;
	
	/**
	* Retrieves the StartTLS request's ASN.1 BER encoded value.
	* Since the request has no defined value, null is always
	* returned.
	*
	* @return The null value.
	*/
	@:overload public function getEncodedValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates an extended response object that corresponds to the
	* LDAP StartTLS extended request.
	* <p>
	* The result must be a concrete subclass of StartTlsResponse
	* and must have a public zero-argument constructor.
	* <p>
	* This method locates the implementation class by locating
	* configuration files that have the name:
	* <blockquote><tt>
	*     META-INF/services/javax.naming.ldap.StartTlsResponse
	* </tt></blockquote>
	* The configuration files and their corresponding implementation classes must
	* be accessible to the calling thread's context class loader.
	* <p>
	* Each configuration file should contain a list of fully-qualified class
	* names, one per line.  Space and tab characters surrounding each name, as
	* well as blank lines, are ignored.  The comment character is <tt>'#'</tt>
	* (<tt>0x23</tt>); on each line all characters following the first comment
	* character are ignored.  The file must be encoded in UTF-8.
	* <p>
	* This method will return an instance of the first implementation
	* class that it is able to load and instantiate successfully from
	* the list of class names collected from the configuration files.
	* This method uses the calling thread's context classloader to find the
	* configuration files and to load the implementation class.
	* <p>
	* If no class can be found in this way, this method will use
	* an implementation-specific way to locate an implementation.
	* If none is found, a NamingException is thrown.
	*
	* @param id         The object identifier of the extended response.
	*                   Its value must be "1.3.6.1.4.1.1466.20037" or null.
	*                   Both values are equivalent.
	* @param berValue   The possibly null ASN.1 BER encoded value of the
	*                   extended response. This is the raw BER bytes
	*                   including the tag and length of the response value.
	*                   It does not include the response OID.
	*                   Its value is ignored because a Start TLS response
	*                   is not expected to contain any response value.
	* @param offset     The starting position in berValue of the bytes to use.
	*                   Its value is ignored because a Start TLS response
	*                   is not expected to contain any response value.
	* @param length     The number of bytes in berValue to use.
	*                   Its value is ignored because a Start TLS response
	*                   is not expected to contain any response value.
	* @return           The StartTLS extended response object.
	* @exception        NamingException If a naming exception was encountered
	*                   while creating the StartTLS extended response object.
	*/
	@:overload public function createExtendedResponse(id : String, berValue : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : javax.naming.ldap.ExtendedResponse;
	
	
}
