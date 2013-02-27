package javax.security.auth;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SubjectDomainCombiner implements java.security.DomainCombiner
{
	/**
	* Associate the provided <code>Subject</code> with this
	* <code>SubjectDomainCombiner</code>.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> to be associated with
	*          with this <code>SubjectDomainCombiner</code>.
	*/
	@:overload public function new(subject : javax.security.auth.Subject) : Void;
	
	/**
	* Get the <code>Subject</code> associated with this
	* <code>SubjectDomainCombiner</code>.
	*
	* <p>
	*
	* @return the <code>Subject</code> associated with this
	*          <code>SubjectDomainCombiner</code>, or <code>null</code>
	*          if no <code>Subject</code> is associated with this
	*          <code>SubjectDomainCombiner</code>.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get the <code>Subject</code> associated with this
	*          <code>SubjectDomainCombiner</code>.
	*/
	@:overload public function getSubject() : javax.security.auth.Subject;
	
	/**
	* Update the relevant ProtectionDomains with the Principals
	* from the <code>Subject</code> associated with this
	* <code>SubjectDomainCombiner</code>.
	*
	* <p> A new <code>ProtectionDomain</code> instance is created
	* for each <code>ProtectionDomain</code> in the
	* <i>currentDomains</i> array.  Each new <code>ProtectionDomain</code>
	* instance is created using the <code>CodeSource</code>,
	* <code>Permission</code>s and <code>ClassLoader</code>
	* from the corresponding <code>ProtectionDomain</code> in
	* <i>currentDomains</i>, as well as with the Principals from
	* the <code>Subject</code> associated with this
	* <code>SubjectDomainCombiner</code>.
	*
	* <p> All of the newly instantiated ProtectionDomains are
	* combined into a new array.  The ProtectionDomains from the
	* <i>assignedDomains</i> array are appended to this new array,
	* and the result is returned.
	*
	* <p> Note that optimizations such as the removal of duplicate
	* ProtectionDomains may have occurred.
	* In addition, caching of ProtectionDomains may be permitted.
	*
	* <p>
	*
	* @param currentDomains the ProtectionDomains associated with the
	*          current execution Thread, up to the most recent
	*          privileged <code>ProtectionDomain</code>.
	*          The ProtectionDomains are are listed in order of execution,
	*          with the most recently executing <code>ProtectionDomain</code>
	*          residing at the beginning of the array. This parameter may
	*          be <code>null</code> if the current execution Thread
	*          has no associated ProtectionDomains.<p>
	*
	* @param assignedDomains the ProtectionDomains inherited from the
	*          parent Thread, or the ProtectionDomains from the
	*          privileged <i>context</i>, if a call to
	*          AccessController.doPrivileged(..., <i>context</i>)
	*          had occurred  This parameter may be <code>null</code>
	*          if there were no ProtectionDomains inherited from the
	*          parent Thread, or from the privileged <i>context</i>.
	*
	* @return a new array consisting of the updated ProtectionDomains,
	*          or <code>null</code>.
	*/
	@:overload public function combine(currentDomains : java.NativeArray<java.security.ProtectionDomain>, assignedDomains : java.NativeArray<java.security.ProtectionDomain>) : java.NativeArray<java.security.ProtectionDomain>;
	
	
}
/**
* A HashMap that has weak keys and values.
*
* Key objects in this map are the "current" ProtectionDomain instances
* received via the combine method.  Each "current" PD is mapped to a
* new PD instance that holds both the contents of the "current" PD,
* as well as the principals from the Subject associated with this combiner.
*
* The newly created "principal-based" PD values must be stored as
* WeakReferences since they contain strong references to the
* corresponding key object (the "current" non-principal-based PD),
* which will prevent the key from being GC'd.  Specifically,
* a "principal-based" PD contains strong references to the CodeSource,
* signer certs, PermissionCollection and ClassLoader objects
* in the "current PD".
*/
@:native('javax$security$auth$SubjectDomainCombiner$WeakKeyValueMap') @:internal extern class SubjectDomainCombiner_WeakKeyValueMap<K, V> extends java.util.WeakHashMap<K, java.lang.ref.WeakReference<V>>
{
	@:overload public function getValue(key : K) : V;
	
	@:overload public function putValue(key : K, value : V) : V;
	
	
}
