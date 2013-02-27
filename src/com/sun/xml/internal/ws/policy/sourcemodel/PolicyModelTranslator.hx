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
extern class PolicyModelTranslator
{
	@:overload private function new(creators : java.util.Collection<com.sun.xml.internal.ws.policy.spi.PolicyAssertionCreator>) : Void;
	
	/**
	* Method returns thread-safe policy model translator instance.
	*
	* This method is only intended to be used by code that has no dependencies on
	* JAX-WS. Otherwise use com.sun.xml.internal.ws.policy.api.ModelTranslator.
	*
	* @return A policy model translator instance.
	* @throws PolicyException If instantiating a PolicyAssertionCreator failed.
	*/
	@:overload public static function getTranslator() : PolicyModelTranslator;
	
	/**
	* The method translates {@link PolicySourceModel} structure into normalized {@link Policy} expression. The resulting Policy
	* is disconnected from its model, thus any additional changes in model will have no effect on the Policy expression.
	*
	* @param model the model to be translated into normalized policy expression. Must not be {@code null}.
	* @return translated policy expression in it's normalized form.
	* @throws PolicyException in case of translation failure
	*/
	@:overload public function translate(model : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel) : com.sun.xml.internal.ws.policy.Policy;
	
	
}
/**
* This class provides a method for translating a {@link PolicySourceModel} structure to a normalized {@link Policy} expression.
* The resulting Policy is disconnected from its model, thus any additional changes in the model will have no effect on the Policy
* expression.
*
* @author Marek Potociar
* @author Fabian Ritzmann
*/
@:native('com$sun$xml$internal$ws$policy$sourcemodel$PolicyModelTranslator$ContentDecomposition') @:internal extern class PolicyModelTranslator_ContentDecomposition
{
	
}
@:native('com$sun$xml$internal$ws$policy$sourcemodel$PolicyModelTranslator$RawAssertion') @:internal extern class PolicyModelTranslator_RawAssertion
{
	
}
@:native('com$sun$xml$internal$ws$policy$sourcemodel$PolicyModelTranslator$RawAlternative') @:internal extern class PolicyModelTranslator_RawAlternative
{
	
}
@:native('com$sun$xml$internal$ws$policy$sourcemodel$PolicyModelTranslator$RawPolicy') @:internal extern class PolicyModelTranslator_RawPolicy
{
	
}
