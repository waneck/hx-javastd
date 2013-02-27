package sun.security.krb5.internal.ccache;
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
/**
* This class implements a buffered output stream. It provides functions to write FCC-format data to a disk file.
*
* @author Yanni Zhang
*
*/
extern class CCacheOutputStream extends sun.security.krb5.internal.util.KrbDataOutputStream implements sun.security.krb5.internal.ccache.FileCCacheConstants
{
	@:overload public function new(os : java.io.OutputStream) : Void;
	
	@:overload public function writeHeader(p : sun.security.krb5.PrincipalName, version : Int) : Void;
	
	/*For object data fields which themselves have multiple data fields, such as PrincipalName, EncryptionKey
	HostAddresses, AuthorizationData, I created corresponding write methods (writePrincipal,
	writeKey,...) in each class, since converting the object into FCC format data stream
	should be encapsulated in object itself.
	*/
	@:overload public function addCreds(creds : sun.security.krb5.Credentials) : Void;
	
	
}
