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
extern class PolicyIntersector
{
	/**
	* Returns a strict policy intersector that can be used to intersect group of policies.
	*
	* @return policy intersector instance.
	*/
	@:overload public static function createStrictPolicyIntersector() : com.sun.xml.internal.ws.policy.PolicyIntersector;
	
	/**
	* Returns a strict policy intersector that can be used to intersect group of policies.
	*
	* @return policy intersector instance.
	*/
	@:overload public static function createLaxPolicyIntersector() : com.sun.xml.internal.ws.policy.PolicyIntersector;
	
	/**
	* Performs intersection on the input collection of policies and returns the resulting (intersected) policy. If input policy
	* collection contains only a single policy instance, no intersection is performed and the instance is directly returned
	* as a method call result.
	*
	* @param policies collection of policies to be intersected. Must not be {@code null} nor empty, otherwise exception is thrown.
	* @return intersected policy as a result of perfromed policy intersection. A {@code null} value is never returned.
	*
	* @throws IllegalArgumentException in case {@code policies} argument is either {@code null} or empty collection.
	*/
	@:overload public function intersect(policies : java.NativeArray<com.sun.xml.internal.ws.policy.Policy>) : com.sun.xml.internal.ws.policy.Policy;
	
	
}
/**
* The instance of this class is intended to provide policy intersection mechanism.
*
* @author Marek Potociar (marek.potociar@sun.com)
*/
@:native('com$sun$xml$internal$ws$policy$PolicyIntersector$CompatibilityMode') extern enum PolicyIntersector_CompatibilityMode
{
	STRICT;
	LAX;
	
}

