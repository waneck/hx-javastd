package java.net;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* CookiePolicy implementations decide which cookies should be accepted
* and which should be rejected. Three pre-defined policy implementations
* are provided, namely ACCEPT_ALL, ACCEPT_NONE and ACCEPT_ORIGINAL_SERVER.
*
* <p>See RFC 2965 sec. 3.3 & 7 for more detail.
*
* @author Edward Wang
* @since 1.6
*/
@:require(java6) extern interface CookiePolicy
{
	/**
	* Will be called to see whether or not this cookie should be accepted.
	*
	* @param uri       the URI to consult accept policy with
	* @param cookie    the HttpCookie object in question
	* @return          <tt>true</tt> if this cookie should be accepted;
	*                  otherwise, <tt>false</tt>
	*/
	@:overload public function shouldAccept(uri : java.net.URI, cookie : java.net.HttpCookie) : Bool;
	
	
}
