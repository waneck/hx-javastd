package sun.security.jgss.krb5;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AcceptSecContextToken extends sun.security.jgss.krb5.InitialToken
{
	/**
	* Creates an AcceptSecContextToken for the context acceptor to send to
	* the context initiator.
	*/
	@:overload @:public public function new(context : sun.security.jgss.krb5.Krb5Context, apReq : sun.security.krb5.KrbApReq) : Void;
	
	/**
	* Creates an AcceptSecContextToken at the context initiator's side
	* using the bytes received from  the acceptor.
	*/
	@:overload @:public public function new(context : sun.security.jgss.krb5.Krb5Context, serviceCreds : sun.security.krb5.Credentials, apReq : sun.security.krb5.KrbApReq, is : java.io.InputStream) : Void;
	
	@:overload @:public @:final override public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
