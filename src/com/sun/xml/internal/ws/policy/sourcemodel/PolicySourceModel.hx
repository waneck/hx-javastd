package com.sun.xml.internal.ws.policy.sourcemodel;
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
extern class PolicySourceModel implements java.lang.Cloneable
{
	/**
	* Factory method that creates new policy source model instance.
	*
	* This method is only intended to be used by code that has no dependencies on
	* JAX-WS. Otherwise use com.sun.xml.internal.ws.policy.api.SourceModel.
	*
	* @param nsVersion The policy version
	* @return Newly created policy source model instance.
	*/
	@:overload public static function createPolicySourceModel(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion) : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	/**
	* Factory method that creates new policy source model instance and initializes it according to parameters provided.
	*
	* This method is only intended to be used by code that has no dependencies on
	* JAX-WS. Otherwise use com.sun.xml.internal.ws.policy.api.SourceModel.
	*
	* @param nsVersion The policy version
	* @param policyId local policy identifier - relative URI. May be {@code null}.
	* @param policyName global policy identifier - absolute policy expression URI. May be {@code null}.
	* @return Newly created policy source model instance with its name and id properly set.
	*/
	@:overload public static function createPolicySourceModel(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion, policyId : String, policyName : String) : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	/**
	* Constructor that creates a new policy source model instance with given
	* id or name identifier and a set of PrefixMappers.
	*
	* This constructor is intended to be used by the JAX-WS com.sun.xml.internal.ws.policy.api.SourceModel.
	*
	* @param nsVersion The WS-Policy version.
	* @param policyId Relative policy reference within an XML document. May be {@code null}.
	* @param policyName Absolute IRI of policy expression. May be {@code null}.
	* @param prefixMappers A collection of PrefixMappers to be used with this instance. May be {@code null}.
	*/
	@:overload private function new(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion, policyId : String, policyName : String, prefixMappers : java.util.Collection<com.sun.xml.internal.ws.policy.spi.PrefixMapper>) : Void;
	
	/**
	* Returns a root node of this policy source model. It is allways of POLICY type.
	*
	* @return root policy source model node - allways of POLICY type.
	*/
	@:overload public function getRootNode() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Returns a policy name of this policy source model.
	*
	* @return policy name.
	*/
	@:overload public function getPolicyName() : String;
	
	/**
	* Returns a policy ID of this policy source model.
	*
	* @return policy ID.
	*/
	@:overload public function getPolicyId() : String;
	
	/**
	* Returns an original namespace version of this policy source model.
	*
	* @return namespace version.
	*/
	@:overload public function getNamespaceVersion() : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion;
	
	/**
	* An {@code Object.equals(Object obj)} method override.
	* <p/>
	* When child nodes are tested for equality, the parent policy source model is not considered. Thus two different
	* policy source models instances may be equal based on their node content.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* An {@code Object.hashCode()} method override.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of the object. In general, the <code>toString</code> method
	* returns a string that "textually represents" this object.
	*
	* @return  a string representation of the object.
	*/
	@:overload public function toString() : String;
	
	@:overload private function clone() : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	/**
	* Returns a boolean value indicating whether this policy source model contains references to another policy source models.
	* <p/>
	* Every source model that references other policies must be expanded before it can be translated into a Policy objects. See
	* {@link #expand(PolicySourceModelContext)} and {@link #isExpanded()} for more details.
	*
	* @return {@code true} or {code false} depending on whether this policy source model contains references to another policy source models.
	*/
	@:overload public function containsPolicyReferences() : Bool;
	
	/**
	* Expands current policy model. This means, that if this model contains any (unexpanded) policy references, then the method expands those
	* references by placing the content of the referenced policy source models under the policy reference nodes. This operation merely creates
	* a link between this and referenced policy source models. Thus any change in the referenced models will be visible wihtin this model as well.
	* <p/>
	* Please, notice that the method does not check if the referenced models are already expanded nor does the method try to expand unexpanded
	* referenced models. This must be preformed manually within client's code. Consecutive calls of this method will have no effect.
	* <p/>
	* Every source model that references other policies must be expanded before it can be translated into a Policy object. See
	* {@link #isExpanded()} and {@link #containsPolicyReferences()} for more details.
	*
	* @param context a policy source model context holding the set of unmarshalled policy source models within the same context.
	* @throws PolicyException Thrown if a referenced policy could not be resolved
	*/
	@:overload @:synchronized public function expand(context : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModelContext) : Void;
	
	
}
