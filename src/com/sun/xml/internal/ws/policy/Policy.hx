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
extern class Policy implements java.lang.Iterable<com.sun.xml.internal.ws.policy.AssertionSet>
{
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a <emph>'nothing allowed'</emph>
	* policy expression. The policy is created using the latest namespace version supported.
	*
	* @return policy instance which represents a <emph>'nothing allowed'</emph> (no policy alternatives).
	*/
	@:overload public static function createNullPolicy() : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a <emph>'anything allowed'</emph>
	* policy expression. The policy is created using the latest namespace version supported.
	*
	* @return policy instance which represents a <emph>'anything allowed'</emph> (empty policy alternative with no plicy
	* assertions prescribed).
	*/
	@:overload public static function createEmptyPolicy() : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a <emph>'nothing allowed'</emph>
	* policy expression. The policy is created using the latest namespace version supported.
	*
	* @param name global URI of the policy. May be {@code null}.
	* @param policyId local URI of the policy. May be {@code null}.
	* @return policy instance which represents a <emph>'nothing allowed'</emph> (no policy alternatives).
	*/
	@:overload public static function createNullPolicy(name : String, policyId : String) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a <emph>'nothing allowed'</emph>
	* policy expression. The policy is created using the latest namespace version supported.
	*
	* @param nsVersion Policy namespace version to be used when marshalling the policy expression
	* @param name global URI of the policy. May be {@code null}.
	* @param policyId local URI of the policy. May be {@code null}.
	* @return policy instance which represents a <emph>'nothing allowed'</emph> (no policy alternatives).
	*/
	@:overload public static function createNullPolicy(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion, name : String, policyId : String) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a <emph>'anything allowed'</emph>
	* policy expression. The policy is created using the latest namespace version supported.
	*
	* @param name global URI of the policy. May be {@code null}.
	* @param policyId local URI of the policy. May be {@code null}.
	*
	* @return policy instance which represents a <emph>'anything allowed'</emph> (empty policy alternative with no plicy
	* assertions prescribed).
	*/
	@:overload public static function createEmptyPolicy(name : String, policyId : String) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a <emph>'anything allowed'</emph>
	* policy expression. The policy is created using the latest namespace version supported.
	*
	* @param nsVersion Policy namespace version to be used when marshalling the policy expression
	* @param name global URI of the policy. May be {@code null}.
	* @param policyId local URI of the policy. May be {@code null}.
	*
	* @return policy instance which represents a <emph>'anything allowed'</emph> (empty policy alternative with no plicy
	* assertions prescribed).
	*/
	@:overload public static function createEmptyPolicy(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion, name : String, policyId : String) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a policy expression with
	* alternatives specified by {@code sets} input parameter. If the collection of policy alternatives is null or empty
	* an object representing a 'NULL' policy expression is returned. However, in such case it is better to use
	* {@link #createNullPolicy()} factory method directly. The policy is created using the latest namespace version supported.
	*
	* @param sets represents the collection of policy alternatives of the policy object created. During the creation of
	* the new policy object, the content of the alternatives collection is copied into an internal policy object structure,
	* thus any subsequent operations on the collection will have no impact on the newly constructed policy object.
	*
	* @return policy instance which represents the policy with given alternatives.
	*/
	@:overload public static function createPolicy(sets : java.util.Collection<com.sun.xml.internal.ws.policy.AssertionSet>) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a policy expression with
	* alternatives specified by {@code sets} input parameter. If the collection of policy alternatives is null or empty
	* an object representing a 'NULL' policy expression is returned. However, in such case it is better to use
	* {@link #createNullPolicy(String, String)} factory method directly. The policy is created using the latest namespace version supported.
	*
	* @param name global URI of the policy. May be {@code null}.
	* @param policyId local URI of the policy. May be {@code null}.
	* @param sets represents the collection of policy alternatives of the policy object created. During the creation of
	* the new policy object, the content of the alternatives collection is copied into an internal policy object structure,
	* thus any subsequent operations on the collection will have no impact on the newly constructed policy object.
	*
	* @return policy instance which represents the policy with given alternatives.
	*/
	@:overload public static function createPolicy(name : String, policyId : String, sets : java.util.Collection<com.sun.xml.internal.ws.policy.AssertionSet>) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* The factory method creates an <b>immutable</b> policy instance which represents a policy expression with
	* alternatives specified by {@code sets} input parameter. If the collection of policy alternatives is null or empty
	* an object representing a 'NULL' policy expression is returned. However, in such case it is better to use
	* {@link #createNullPolicy(String, String)} factory method directly. The policy is created using the latest namespace version supported.
	*
	* @param nsVersion Policy namespace version to be used when marshalling the policy expression
	* @param name global URI of the policy. May be {@code null}.
	* @param policyId local URI of the policy. May be {@code null}.
	* @param sets represents the collection of policy alternatives of the policy object created. During the creation of
	* the new policy object, the content of the alternatives collection is copied into an internal policy object structure,
	* thus any subsequent operations on the collection will have no impact on the newly constructed policy object.
	*
	* @return policy instance which represents the policy with given alternatives.
	*/
	@:overload public static function createPolicy(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion, name : String, policyId : String, sets : java.util.Collection<com.sun.xml.internal.ws.policy.AssertionSet>) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* Returns the policy identifier that serves as a local relative policy URI.
	*
	* @return policy identifier - a local relative policy URI. If no policy identifier is set, returns {@code null}.
	*/
	@:overload public function getId() : String;
	
	/**
	* Returns the policy name that serves as a global policy URI.
	*
	* @return policy name - a global policy URI. If no policy name is set, returns {@code null}.
	*/
	@:overload public function getName() : String;
	
	@:overload public function getNamespaceVersion() : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion;
	
	/**
	* Returns the policy ID or if that is null the policy name. May return null
	* if both attributes are null.
	*
	* @see #getId()
	* @see #getName()
	* @return The policy ID if it was set, or the name or null if no attribute was set.
	*/
	@:overload public function getIdOrName() : String;
	
	/**
	* Method returns how many policy alternatives this policy instance contains.
	*
	* @return number of policy alternatives contained in this policy instance
	*/
	@:overload public function getNumberOfAssertionSets() : Int;
	
	/**
	* A policy usually contains one or more assertion sets. Each assertion set
	* corresponds to a policy alternative as defined by WS-Policy.
	*
	* @return An iterator to iterate through all contained assertion sets
	*/
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.AssertionSet>;
	
	/**
	* Returns {@code true} if the policy instance represents "nothing allowed" policy expression
	*
	* @return {@code true} if the policy instance represents "nothing allowed" policy expression, {@code false} otherwise.
	*/
	@:overload public function isNull() : Bool;
	
	/**
	* Returns {@code true} if the policy instance represents "anything allowed" policy expression
	*
	* @return {@code true} if the policy instance represents "anything allowed" policy expression, {@code false} otherwise.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns true if the policy contains the assertion names with specified namespace in its vocabulary
	*
	* @param namespaceUri the assertion namespace URI (identifying assertion domain)
	* @return {@code true}, if an assertion with the given name could be found in the policy vocabulary {@code false} otherwise.
	*/
	@:overload public function contains(namespaceUri : String) : Bool;
	
	/**
	* Retrieves the vocabulary of this policy expression. The vocabulary is represented by an immutable collection of
	* unique QName objects. Each of those objects represents single assertion type contained in the policy.
	*
	* @return immutable collection of assertion types contained in the policy (a policy vocabulary).
	*/
	@:overload public function getVocabulary() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Determines if the policy instance contains the assertion with the name specified in its vocabulary.
	*
	* @param assertionName the name of the assertion to be tested.
	*
	* @return {@code true} if the assertion with the specified name is part of the policy instance's vocabulary,
	* {@code false} otherwise.
	*/
	@:overload public function contains(assertionName : javax.xml.namespace.QName) : Bool;
	
	/**
	* An {@code Object.equals(Object obj)} method override.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* An {@code Object.hashCode()} method override.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* An {@code Object.toString()} method override.
	*/
	@:overload public function toString() : String;
	
	
}
