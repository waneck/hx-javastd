package com.sun.xml.internal.ws.encoding.policy;
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
extern class FastInfosetFeatureConfigurator implements com.sun.xml.internal.ws.policy.jaxws.spi.PolicyFeatureConfigurator
{
	/**
	* A configurator provider for FastInfoset policy assertions.
	*
	* @author Paul.Sandoz@Sun.Com
	* @author Fabian Ritzmann
	*/
	@:public @:static @:final public static var enabled(default, null) : javax.xml.namespace.QName;
	
	/**
	* Process FastInfoset policy assertions.
	*
	* @param key Key to identify the endpoint scope.
	* @param policyMap the policy map.
	* @throws PolicyException If retrieving the policy triggered an exception.
	*/
	@:overload @:public public function getFeatures(key : com.sun.xml.internal.ws.policy.PolicyMapKey, policyMap : com.sun.xml.internal.ws.policy.PolicyMap) : java.util.Collection<javax.xml.ws.WebServiceFeature>;
	
	
}
