package sun.security.krb5.internal;
/*
* Copyright (c) 2001, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class CredentialsUtil
{
	/**
	* Acquires credentials for a specified service using initial credential. Wh
en the service has a different realm
	* from the initial credential, we do cross-realm authentication - first, we
	use the current credential to get
	* a cross-realm credential from the local KDC, then use that cross-realm cr
edential to request service credential
	* from the foreigh KDC.
	*
	* @param service the name of service principal using format components@real
m
	* @param ccreds client's initial credential.
	* @exception Exception general exception will be thrown when any error occu
rs.
	* @return a <code>Credentials</code> object.
	*/
	@:overload public static function acquireServiceCreds(service : String, ccreds : sun.security.krb5.Credentials) : sun.security.krb5.Credentials;
	
	
}
