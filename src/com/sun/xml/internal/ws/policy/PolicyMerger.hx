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
extern class PolicyMerger
{
	/**
	* Factory method for obtaining thread-safe policy merger instance.
	*
	* @return policy merger instance.
	*/
	@:overload public static function getMerger() : PolicyMerger;
	
	/**
	* Takes collection of policies and merges them into a single policy using algorithm described in
	* WS-PolicyAttachment specification. None of the original policies in the collection are modified in
	* any way.
	*
	* The newly created policy has an ID that is a concatentation of all merged policy IDs.
	*
	* @param policies collection of policies to be merged. The collection must not contain '{@code null}' elements!
	* @return merged policy containing combination of policy alternatives stored in all input policies.
	*         If provided collection of policies is {@code null} or empty, returns {@code null}. If provided
	*         collection of policies contains only single policy, the policy is returned.
	*/
	@:overload public function merge(policies : java.util.Collection<com.sun.xml.internal.ws.policy.Policy>) : com.sun.xml.internal.ws.policy.Policy;
	
	
}
