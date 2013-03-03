package sun.security.internal.spec;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TlsKeyMaterialSpec implements java.security.spec.KeySpec implements javax.crypto.SecretKey
{
	/**
	* Constructs a new TlsKeymaterialSpec from the client and server MAC
	* keys.
	* This call is equivalent to
	* <code>new TlsKeymaterialSpec(clientMacKey, serverMacKey,
	* null, null, null, null)</code>.
	*
	* @param clientMacKey the client MAC key
	* @param serverMacKey the server MAC key
	* @throws NullPointerException if clientMacKey or serverMacKey is null
	*/
	@:overload @:public public function new(clientMacKey : javax.crypto.SecretKey, serverMacKey : javax.crypto.SecretKey) : Void;
	
	/**
	* Constructs a new TlsKeymaterialSpec from the client and server MAC
	* keys and client and server cipher keys.
	* This call is equivalent to
	* <code>new TlsKeymaterialSpec(clientMacKey, serverMacKey,
	* clientCipherKey, serverCipherKey, null, null)</code>.
	*
	* @param clientMacKey the client MAC key
	* @param serverMacKey the server MAC key
	* @param clientCipherKey the client cipher key (or null)
	* @param serverCipherKey the server cipher key (or null)
	* @throws NullPointerException if clientMacKey or serverMacKey is null
	*/
	@:overload @:public public function new(clientMacKey : javax.crypto.SecretKey, serverMacKey : javax.crypto.SecretKey, clientCipherKey : javax.crypto.SecretKey, serverCipherKey : javax.crypto.SecretKey) : Void;
	
	/**
	* Constructs a new TlsKeymaterialSpec from the client and server MAC
	* keys, client and server cipher keys, and client and server
	* initialization vectors.
	*
	* @param clientMacKey the client MAC key
	* @param serverMacKey the server MAC key
	* @param clientCipherKey the client cipher key (or null)
	* @param clientIv the client initialization vector (or null)
	* @param serverCipherKey the server cipher key (or null)
	* @param serverIv the server initialization vector (or null)
	*
	* @throws NullPointerException if clientMacKey or serverMacKey is null
	*/
	@:overload @:public public function new(clientMacKey : javax.crypto.SecretKey, serverMacKey : javax.crypto.SecretKey, clientCipherKey : javax.crypto.SecretKey, clientIv : javax.crypto.spec.IvParameterSpec, serverCipherKey : javax.crypto.SecretKey, serverIv : javax.crypto.spec.IvParameterSpec) : Void;
	
	/**
	* Returns <code>TlsKeyMaterial</code>.
	*
	* @return <code>TlsKeyMaterial</code>.
	*/
	@:overload @:public public function getAlgorithm() : String;
	
	/**
	* Returns <code>null</code> because keys of this type have no encoding.
	*
	* @return <code>null</code> because keys of this type have no encoding.
	*/
	@:overload @:public public function getFormat() : String;
	
	/**
	* Returns <code>null</code> because keys of this type have no encoding.
	*
	* @return <code>null</code> because keys of this type have no encoding.
	*/
	@:overload @:public public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the client MAC key.
	*
	* @return the client MAC key.
	*/
	@:overload @:public public function getClientMacKey() : javax.crypto.SecretKey;
	
	/**
	* Return the server MAC key.
	*
	* @return the server MAC key.
	*/
	@:overload @:public public function getServerMacKey() : javax.crypto.SecretKey;
	
	/**
	* Return the client cipher key (or null).
	*
	* @return the client cipher key (or null).
	*/
	@:overload @:public public function getClientCipherKey() : javax.crypto.SecretKey;
	
	/**
	* Return the client initialization vector (or null).
	*
	* @return the client initialization vector (or null).
	*/
	@:overload @:public public function getClientIv() : javax.crypto.spec.IvParameterSpec;
	
	/**
	* Return the server cipher key (or null).
	*
	* @return the server cipher key (or null).
	*/
	@:overload @:public public function getServerCipherKey() : javax.crypto.SecretKey;
	
	/**
	* Return the server initialization vector (or null).
	*
	* @return the server initialization vector (or null).
	*/
	@:overload @:public public function getServerIv() : javax.crypto.spec.IvParameterSpec;
	
	
}
