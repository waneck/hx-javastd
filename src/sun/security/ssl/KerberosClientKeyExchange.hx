package sun.security.ssl;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class KerberosClientKeyExchange extends sun.security.ssl.HandshakeMessage
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(serverName : String, isLoopback : Bool, acc : java.security.AccessControlContext, protocolVersion : sun.security.ssl.ProtocolVersion, rand : java.security.SecureRandom) : Void;
	
	@:overload @:public public function new(protocolVersion : sun.security.ssl.ProtocolVersion, clientVersion : sun.security.ssl.ProtocolVersion, rand : java.security.SecureRandom, input : sun.security.ssl.HandshakeInStream, serverKeys : java.NativeArray<javax.crypto.SecretKey>) : Void;
	
	@:overload @:public public function messageLength() : Int;
	
	@:overload @:public public function send(s : sun.security.ssl.HandshakeOutStream) : Void;
	
	@:overload @:public public function print(p : java.io.PrintStream) : Void;
	
	@:overload @:public public function init(serverName : String, isLoopback : Bool, acc : java.security.AccessControlContext, protocolVersion : sun.security.ssl.ProtocolVersion, rand : java.security.SecureRandom) : Void;
	
	@:overload @:public public function init(protocolVersion : sun.security.ssl.ProtocolVersion, clientVersion : sun.security.ssl.ProtocolVersion, rand : java.security.SecureRandom, input : sun.security.ssl.HandshakeInStream, serverKeys : java.NativeArray<javax.crypto.SecretKey>) : Void;
	
	@:overload @:public public function getUnencryptedPreMasterSecret() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getPeerPrincipal() : java.security.Principal;
	
	@:overload @:public public function getLocalPrincipal() : java.security.Principal;
	
	
}
