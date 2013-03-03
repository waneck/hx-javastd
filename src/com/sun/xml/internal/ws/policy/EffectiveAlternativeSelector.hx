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
extern class EffectiveAlternativeSelector
{
	/**
	* Does the selection for policy map bound to given modifier.
	*
	* If you are using JAX-WS, use the com.sun.xml.internal.ws.api.policy.AlternativeSelector
	* instead of this class.
	*
	* @param modifier Holds the policy map
	* @throws PolicyException Most likely an internal error if a policy could not be read or set on the policy map
	* @see EffectivePolicyModifier which the map is bound to
	*/
	@:overload @:public @:static public static function doSelection(modifier : com.sun.xml.internal.ws.policy.EffectivePolicyModifier) : Void;
	
	/**
	* This method is intended to be called by extension classes that need to
	* override the behavior of {@link #doSelection}.
	*
	* @param modifier
	* @param validationProcessor
	* @throws PolicyException
	*/
	@:overload @:protected @:static private static function selectAlternatives(modifier : com.sun.xml.internal.ws.policy.EffectivePolicyModifier, validationProcessor : com.sun.xml.internal.ws.policy.AssertionValidationProcessor) : Void;
	
	
}
/**
* Contains static methods for policy alternative selection. Given policy map is changed so that
* each effective policy contains at most one policy alternative. Uses domain
* specific @see com.sun.xml.internal.ws.policy.spi.PolicySelector
* to find out whether particular policy assertion is actually supported.
*
* If you are using JAX-WS, use the com.sun.xml.internal.ws.api.policy.AlternativeSelector
* instead of this class.
*
* @author Jakub Podlesak (jakub.podlesak at sun.com)
* @author Fabian Ritzmann
*/
@:native('com$sun$xml$internal$ws$policy$EffectiveAlternativeSelector$AlternativeFitness') privateextern enum EffectiveAlternativeSelector_AlternativeFitness
{
	UNEVALUATED;
	INVALID;
	UNKNOWN;
	UNSUPPORTED;
	PARTIALLY_SUPPORTED;
	SUPPORTED_EMPTY;
	SUPPORTED;
	
}

