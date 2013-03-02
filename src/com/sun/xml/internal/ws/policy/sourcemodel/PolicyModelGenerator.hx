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
extern class PolicyModelGenerator
{
	/**
	* This protected constructor avoids direct instantiation from outside of the class
	*/
	@:overload private function new() : Void;
	
	/**
	* Factory method that returns a {@link PolicyModelGenerator} instance.
	*
	* @return {@link PolicyModelGenerator} instance
	*/
	@:overload public static function getGenerator() : com.sun.xml.internal.ws.policy.sourcemodel.PolicyModelGenerator;
	
	/**
	* Allows derived classes to create instances of the package private
	* CompactModelGenerator.
	*
	* @param creator An implementation of the PolicySourceModelCreator.
	* @return An instance of CompactModelGenerator.
	*/
	@:overload private static function getCompactGenerator(creator : com.sun.xml.internal.ws.policy.sourcemodel.PolicyModelGenerator.PolicyModelGenerator_PolicySourceModelCreator) : com.sun.xml.internal.ws.policy.sourcemodel.PolicyModelGenerator;
	
	/**
	* Allows derived classes to create instances of the package private
	* NormalizedModelGenerator.
	*
	* @param creator An implementation of the PolicySourceModelCreator.
	* @return An instance of NormalizedModelGenerator.
	*/
	@:overload private static function getNormalizedGenerator(creator : com.sun.xml.internal.ws.policy.sourcemodel.PolicyModelGenerator.PolicyModelGenerator_PolicySourceModelCreator) : com.sun.xml.internal.ws.policy.sourcemodel.PolicyModelGenerator;
	
	/**
	* This method translates a {@link Policy} into a
	* {@link com.sun.xml.internal.ws.policy.sourcemodel policy infoset}. The resulting
	* PolicySourceModel is disconnected from the input policy, thus any
	* additional changes in the policy will have no effect on the PolicySourceModel.
	*
	* @param policy The policy to be translated into an infoset. May be null.
	* @return translated The policy infoset. May be null if the input policy was
	* null.
	* @throws PolicyException in case Policy translation fails.
	*/
	@:overload @:abstract public function translate(policy : com.sun.xml.internal.ws.policy.Policy) : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	/**
	* Iterates through a nested policy and returns the corresponding policy info model.
	*
	* @param parentAssertion The parent node.
	* @param policy The nested policy.
	* @return The nested policy translated to the policy info model.
	*/
	@:overload @:abstract private function translate(parentAssertion : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode, policy : com.sun.xml.internal.ws.policy.NestedPolicy) : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode;
	
	/**
	* Add the contents of the assertion set as child node to the given model node.
	*
	* @param node The content of this assertion set are added as child nodes to this node.
	*     May not be null.
	* @param assertions The assertions that are to be added to the node. May not be null.
	*/
	@:overload private function translate(node : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode, assertions : com.sun.xml.internal.ws.policy.AssertionSet) : Void;
	
	/**
	* Iterates through all contained assertions and adds them to the info model.
	*
	* @param assertionParametersIterator The contained assertions.
	* @param assertionNode The node to which the assertions are added as child nodes
	*/
	@:overload private function translate(assertionNode : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode, assertionParametersIterator : java.util.Iterator<com.sun.xml.internal.ws.policy.PolicyAssertion>) : Void;
	
	
}
/**
* Allows derived classes to pass their own implementation of PolicySourceModelCreator
* into the PolicyModelGenerator instance.
*/
@:native('com$sun$xml$internal$ws$policy$sourcemodel$PolicyModelGenerator$PolicySourceModelCreator') extern class PolicyModelGenerator_PolicySourceModelCreator
{
	/**
	* Create an instance of the PolicySourceModel.
	*
	* @param policy The policy that underlies the created PolicySourceModel.
	* @return An instance of the PolicySourceModel.
	*/
	@:overload private function create(policy : com.sun.xml.internal.ws.policy.Policy) : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	
}
