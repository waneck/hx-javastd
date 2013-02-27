package com.sun.xml.internal.ws.api.config.management.policy;
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
extern class ManagedClientAssertion extends com.sun.xml.internal.ws.api.config.management.policy.ManagementAssertion
{
	/**
	* The client-side ManagedClient policy assertion.
	*
	* @author Fabian Ritzmann
	*/
	public static var MANAGED_CLIENT_QNAME(default, null) : javax.xml.namespace.QName;
	
	/**
	* Return ManagedClient assertion if there is one associated with the client.
	*
	* @param portInfo The client PortInfo. Must not be null.
	* @return The policy assertion if found. Null otherwise.
	* @throws WebServiceException If computing the effective policy of the port failed.
	*/
	@:native('getAssertion') @:overload public static function _getAssertion(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo) : ManagedClientAssertion;
	
	@:overload public function new(data : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData, assertionParameters : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>) : Void;
	
	/**
	* Clients cannot be managed.
	*
	* @return False.
	*/
	@:overload override public function isManagementEnabled() : Bool;
	
	
}
