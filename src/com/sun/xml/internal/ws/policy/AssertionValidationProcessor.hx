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
extern class AssertionValidationProcessor
{
	/**
	* This constructor adds the given set of policy validators to the dynamically
	* discovered PolicyAssertionValidators.
	*
	* This constructor is intended to be used by the JAX-WS com.sun.xml.internal.ws.policy.api.ValidationProcessor.
	*
	* @param policyValidators A set of PolicyAssertionValidators. May be null
	* @throws PolicyException Thrown if the set of given PolicyAssertionValidators
	*   and dynamically discovered PolicyAssertionValidators is empty.
	*/
	@:overload private function new(policyValidators : java.util.Collection<com.sun.xml.internal.ws.policy.spi.PolicyAssertionValidator>) : Void;
	
	/**
	* Factory method that returns singleton instance of the class.
	*
	* This method is only intended to be used by code that has no dependencies on
	* JAX-WS. Otherwise use com.sun.xml.internal.ws.api.policy.ValidationProcessor.
	*
	* @return singleton An instance of the class.
	* @throws PolicyException If instantiation failed.
	*/
	@:overload public static function getInstance() : com.sun.xml.internal.ws.policy.AssertionValidationProcessor;
	
	/**
	* Validates fitness of the {@code assertion} on the client side.
	*
	* return client side {@code assertion} fitness
	* @param assertion The assertion to be validated.
	* @return The fitness of the assertion on the client side.
	* @throws PolicyException If validation failed.
	*/
	@:overload public function validateClientSide(assertion : com.sun.xml.internal.ws.policy.PolicyAssertion) : com.sun.xml.internal.ws.policy.spi.PolicyAssertionValidator.PolicyAssertionValidator_Fitness;
	
	/**
	* Validates fitness of the {@code assertion} on the server side.
	*
	* return server side {@code assertion} fitness
	* @param assertion The assertion to be validated.
	* @return The fitness of the assertion on the server side.
	* @throws PolicyException If validation failed.
	*/
	@:overload public function validateServerSide(assertion : com.sun.xml.internal.ws.policy.PolicyAssertion) : com.sun.xml.internal.ws.policy.spi.PolicyAssertionValidator.PolicyAssertionValidator_Fitness;
	
	
}
