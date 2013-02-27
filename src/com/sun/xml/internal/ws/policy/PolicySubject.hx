package com.sun.xml.internal.ws.policy;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicySubject
{
	/**
	* Constructs a policy subject instance.
	*
	* @param subject object to which the policies are attached. Must not be {@code null}.
	* @param policy first policy attached to the subject. Must not be {@code null}.
	*
	* @throws IllegalArgumentException in case any of the arguments is {@code null}.
	*/
	@:overload public function new(subject : Dynamic, policy : com.sun.xml.internal.ws.policy.Policy) : Void;
	
	/**
	* Constructs a policy subject instance.
	*
	* @param subject object to which the policies are attached. Must not be {@code null}.
	* @param policies first policy attached to the subject. Must not be {@code null}.
	*
	* @throws IllegalArgumentException in case any of the arguments is {@code null} or
	*         in case {@code policies} argument represents empty collection.
	*/
	@:overload public function new(subject : Dynamic, policies : java.util.Collection<com.sun.xml.internal.ws.policy.Policy>) : Void;
	
	/**
	* Attaches another Policy instance to the policy subject.
	*
	* @param policy new policy instance to be attached to this subject
	*
	* @throws IllegalArgumentException in case {@code policy} argument is {@code null}.
	*/
	@:overload public function attach(policy : com.sun.xml.internal.ws.policy.Policy) : Void;
	
	/**
	* Returns the effective policy of the subject, i.e. all policies of the subject
	* merged together.
	*
	* @return effective policy of the subject
	*/
	@:overload public function getEffectivePolicy(merger : com.sun.xml.internal.ws.policy.PolicyMerger) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* A unique identifier of the subject
	*
	* Subjects may not always be uniquely identifiable. Also, once the subject is
	* assigned to a scope, its identity may not matter anymore. Therefore this
	* may be null.
	*/
	@:overload public function getSubject() : Dynamic;
	
	/**
	* An {@code Object.toString()} method override.
	*/
	@:overload public function toString() : String;
	
	
}
