package com.sun.corba.se.pept.transport;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface ContactInfoListIterator extends java.util.Iterator<Dynamic>
{
	/**
	* The underlying list for this iterator.
	*
	* @return The underlying list for this iterator.
	*/
	@:overload @:public public function getContactInfoList() : com.sun.corba.se.pept.transport.ContactInfoList;
	
	/**
	* Used to report information to the iterator to be used
	* in future invocations.
	*
	* @param contactInfo The
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	* obtained from this iterator which resulted in a successful invocation.
	*/
	@:overload @:public public function reportSuccess(contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : Void;
	
	/**
	* Used to report information to the iterator to be used
	* in future invocations.
	*
	* @param contactInfo The
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	* in effect when an invocation exception occurs.
	* @param exception The
	* {@link java.lang.RuntimeException RuntimeException}.
	*
	* @return Returns true if the request should be retried.
	*/
	@:overload @:public public function reportException(contactInfo : com.sun.corba.se.pept.transport.ContactInfo, exception : java.lang.RuntimeException) : Bool;
	
	/**
	* The exception to report to the presentation block.
	*
	* @return If the iterator reaches the end before the invocation
	* is successful one returns this exception (previously reported to
	* the iterator via {@link #reportException}).

	*/
	@:overload @:public public function getFailureException() : java.lang.RuntimeException;
	
	
}
