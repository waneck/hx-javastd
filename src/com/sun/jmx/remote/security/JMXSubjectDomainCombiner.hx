package com.sun.jmx.remote.security;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class JMXSubjectDomainCombiner extends javax.security.auth.SubjectDomainCombiner
{
	/**
	* <p>This class represents an extension to the {@link SubjectDomainCombiner}
	* and is used to add a new {@link ProtectionDomain}, comprised of a null
	* codesource/signers and an empty permission set, to the access control
	* context with which this combiner is combined.</p>
	*
	* <p>When the {@link #combine} method is called the {@link ProtectionDomain}
	* is augmented with the permissions granted to the set of principals present
	* in the supplied {@link Subject}.</p>
	*/
	@:overload public function new(s : javax.security.auth.Subject) : Void;
	
	@:overload public function combine(current : java.NativeArray<java.security.ProtectionDomain>, assigned : java.NativeArray<java.security.ProtectionDomain>) : java.NativeArray<java.security.ProtectionDomain>;
	
	/**
	* Get the current AccessControlContext combined with the supplied subject.
	*/
	@:overload public static function getContext(subject : javax.security.auth.Subject) : java.security.AccessControlContext;
	
	/**
	* Get the AccessControlContext of the domain combiner created with
	* the supplied subject, i.e. an AccessControlContext with the domain
	* combiner created with the supplied subject and where the caller's
	* context has been removed.
	*/
	@:overload public static function getDomainCombinerContext(subject : javax.security.auth.Subject) : java.security.AccessControlContext;
	
	
}
