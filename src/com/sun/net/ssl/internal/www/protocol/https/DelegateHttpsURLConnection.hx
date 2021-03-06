package com.sun.net.ssl.internal.www.protocol.https;
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
extern class DelegateHttpsURLConnection extends sun.net.www.protocol.https.AbstractDelegateHttpsURLConnection
{
	/**
	* This class was introduced to provide an additional level of
	* abstraction between javax.net.ssl.HttpURLConnection and
	* com.sun.net.ssl.HttpURLConnection objects. <p>
	*
	* javax.net.ssl.HttpURLConnection is used in the new sun.net version
	* of protocol implementation (this one)
	* com.sun.net.ssl.HttpURLConnection is used in the com.sun version.
	*
	*/
	@:public public var httpsURLConnection : com.sun.net.ssl.HttpsURLConnection;
	
	@:overload @:protected override private function getSSLSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	@:overload @:protected override private function getHostnameVerifier() : javax.net.ssl.HostnameVerifier;
	
	/*
	* Called by layered delegator's finalize() method to handle closing
	* the underlying object.
	*/
	@:overload @:protected private function dispose() : Void;
	
	
}
@:internal extern class VerifierWrapper implements javax.net.ssl.HostnameVerifier
{
	/*
	* In com.sun.net.ssl.HostnameVerifier the method is defined
	* as verify(String urlHostname, String certHostname).
	* This means we need to extract the hostname from the X.509 certificate
	* or from the Kerberos principal name, in this wrapper.
	*/
	@:overload @:public public function verify(hostname : String, session : javax.net.ssl.SSLSession) : Bool;
	
	
}
