package com.sun.xml.internal.ws.policy.spi;
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
extern interface PolicyAssertionCreator
{
	/**
	* This method returns the namespace URIs of the domains that are supported by the implementation of
	* this inteface. There can be multiple URIs supported per single implementation.
	* <p/>
	* Supporting domain namespace URI means that particular {@code PolicyAssertionCreator} implementation
	* is able to create assertion instances for the domains identified by the namespace URIs returned from this
	* method. It is required that each {@code PolicyAssertionCreator} implementation handles the policy
	* assertion creation for <b>each</b> assertion in every domain it claims to support.
	*
	* @return string array representing the namespace URIs of the supported domains. It is expected that multiple calls on this method return the
	* same value each time. <b>Returned string array must be neither {@code null} nor empty. Also each string value in the array must not be {@code null}
	* nor empty.</b>
	*
	*/
	@:overload public function getSupportedDomainNamespaceURIs() : java.NativeArray<String>;
	
	/**
	* Creates domain-specific policy assertion instance according to assertion data provided. For the provided
	* assertion data and this policy assertion creator instance, it will allways be true that assertion namespace
	* URI equals to one of supported domain namespace URIs.
	*<p/>
	* Additional method parameter (which must not be {@code null}) supplied by the policy framework specifies a default policy
	* assertion creator that might be used to handle creation of unsupported domain assertion in the default way. This is
	* to give policy assertion creator a chance to handle also creation of "unsupported" domain assertions and to encourage
	* implemetors to use class composition instad of class inheritance.
	*
	* @param data assertion creation data specifying the details of newly created assertion
	* @param assertionParameters collection of assertions parameters of this policy assertion. May be {@code null}.
	* @param nestedAlternative assertion set specifying nested policy alternative. May be {@code null}.
	* @param defaultCreator default policy assertion creator implementation that shall be used to handle creation of assertions
	* which are not explicitly supported by this policy assertion creator implementation
	* @return domain specific policy assertion implementation according to assertion data provided.
	*
	* @throws AssertionCreationException in case of assertion creation failure
	*/
	@:overload public function createAssertion(data : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData, assertionParameters : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>, nestedAlternative : com.sun.xml.internal.ws.policy.AssertionSet, defaultCreator : com.sun.xml.internal.ws.policy.spi.PolicyAssertionCreator) : com.sun.xml.internal.ws.policy.PolicyAssertion;
	
	
}
