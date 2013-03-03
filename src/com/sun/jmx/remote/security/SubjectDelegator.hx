package com.sun.jmx.remote.security;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SubjectDelegator
{
	/* Return the AccessControlContext appropriate to execute an
	operation on behalf of the delegatedSubject.  If the
	authenticatedAccessControlContext does not have permission to
	delegate to that subject, throw SecurityException.  */
	@:overload @:public @:synchronized public function delegatedContext(authenticatedACC : java.security.AccessControlContext, delegatedSubject : javax.security.auth.Subject, removeCallerContext : Bool) : java.security.AccessControlContext;
	
	/**
	* Check if the connector server creator can assume the identity of each
	* principal in the authenticated subject, i.e. check if the connector
	* server creator codebase contains a subject delegation permission for
	* each principal present in the authenticated subject.
	*
	* @return {@code true} if the connector server creator can delegate to all
	* the authenticated principals in the subject. Otherwise, {@code false}.
	*/
	@:overload @:public @:static @:synchronized public static function checkRemoveCallerContext(subject : javax.security.auth.Subject) : Bool;
	
	
}
