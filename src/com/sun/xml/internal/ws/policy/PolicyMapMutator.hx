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
extern class PolicyMapMutator
{
	/**
	* The method is used to connect the policy map mutator instance to the map it should mutate.
	*
	* @param map the policy map instance that will be mutable by this mutator.
	* @throws IllegalStateException in case this mutator object is already connected to a policy map.
	*/
	@:overload public function connect(map : com.sun.xml.internal.ws.policy.PolicyMap) : Void;
	
	/**
	* Can be used to retrieve the policy map currently connected to this mutator. Will return {@code null} if not connected.
	*
	* @return policy map currently connected to this mutator. May return {@code null} if the mutator is not connected.
	*
	* @see #isConnected()
	* @see #disconnect()
	*/
	@:overload public function getMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	/**
	* Disconnects the mutator from the policy map object it is connected to. Method must be called prior to connecting this
	* mutator instance to another policy map.
	* <p/>
	* This operation is irreversible: you cannot connect the mutator to the same policy map instance once you disconnect from it.
	* Multiple consequent calls of this method will have no effect.
	*/
	@:overload public function disconnect() : Void;
	
	/**
	* This method provides connection status information of the policy map mutator instance.
	*
	* @return {@code true} if the mutator instance is connected to a policy map, otherwise returns {@code false}.
	*/
	@:overload public function isConnected() : Bool;
	
	
}
