package com.sun.xml.internal.ws.api.policy;
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
extern class SourceModel extends com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel
{
	/**
	* Factory method that creates new policy source model instance.
	*
	* @param nsVersion The policy version
	* @return Newly created policy source model instance.
	*/
	@:overload public static function createSourceModel(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion) : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	/**
	* Factory method that creates new policy source model instance and initializes it according to parameters provided.
	*
	* @param nsVersion The policy version
	* @param policyId local policy identifier - relative URI. May be {@code null}.
	* @param policyName global policy identifier - absolute policy expression URI. May be {@code null}.
	* @return Newly created policy source model instance with its name and id properly set.
	*/
	@:overload public static function createSourceModel(nsVersion : com.sun.xml.internal.ws.policy.sourcemodel.wspolicy.NamespaceVersion, policyId : String, policyName : String) : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel;
	
	
}
