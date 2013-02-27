package sun.security.krb5.internal;
/*
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class AuthContext
{
	public var remoteAddress : sun.security.krb5.internal.HostAddress;
	
	public var remotePort : Int;
	
	public var localAddress : sun.security.krb5.internal.HostAddress;
	
	public var localPort : Int;
	
	public var keyBlock : sun.security.krb5.EncryptionKey;
	
	public var localSubkey : sun.security.krb5.EncryptionKey;
	
	public var remoteSubkey : sun.security.krb5.EncryptionKey;
	
	public var authContextFlags : java.util.BitSet;
	
	public var remoteSeqNumber : Int;
	
	public var localSeqNumber : Int;
	
	public var authenticator : sun.security.krb5.internal.Authenticator;
	
	public var reqCksumType : Int;
	
	public var safeCksumType : Int;
	
	public var initializationVector : java.NativeArray<java.StdTypes.Int8>;
	
	
}
