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
extern class PolicyMapUtil
{
	/**
	* Throw an exception if the policy map contains any policy with at least two
	* policy alternatives.
	*
	* Optional assertions are not considered (unless they have been normalized into
	* two policy alternatives).
	*
	* @param map policy map to be processed
	* @throws PolicyException Thrown if the policy map contains at least one policy
	* with more than one policy alternative
	*/
	@:overload public static function rejectAlternatives(map : com.sun.xml.internal.ws.policy.PolicyMap) : Void;
	
	/**
	* Inserts all PolicySubjects of type WsdlBindingSubject into the given policy map.
	*
	* @param policyMap The policy map
	* @param policySubjects The policy subjects. The actual subject must have the
	*   type WsdlBindingSubject, otherwise it will not be processed.
	* @param serviceName The name of the current WSDL service
	* @param portName The name of the current WSDL port
	* @throws PolicyException Thrown if the effective policy of a policy subject
	*   could not be computed
	*/
	@:overload public static function insertPolicies(policyMap : com.sun.xml.internal.ws.policy.PolicyMap, policySubjects : java.util.Collection<com.sun.xml.internal.ws.policy.PolicySubject>, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName) : Void;
	
	
}
