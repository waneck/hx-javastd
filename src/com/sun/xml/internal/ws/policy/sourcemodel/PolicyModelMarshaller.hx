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
extern class PolicyModelMarshaller
{
	/**
	* Marshalls the policy source model using provided storage reference
	*
	* @param model policy source model to be marshalled
	* @param storage reference to underlying storage that should be used for model marshalling
	* @throws PolicyException If marshalling failed
	*/
	@:overload @:public @:abstract public function marshal(model : com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel, storage : Dynamic) : Void;
	
	/**
	* Marshalls the collection of policy source models using provided storage reference
	*
	* @param models collection of policy source models to be marshalled
	* @param storage reference to underlying storage that should be used for model marshalling
	* @throws PolicyException If marshalling failed
	*/
	@:overload @:public @:abstract public function marshal(models : java.util.Collection<com.sun.xml.internal.ws.policy.sourcemodel.PolicySourceModel>, storage : Dynamic) : Void;
	
	/**
	* Factory methods that returns a marshaller instance based on input parameter.
	*
	* @param marshallInvisible boolean parameter indicating whether the marshaller
	*        returned by this method does marshall private assertions or not.
	*
	* @return policy model marshaller that either marshalls private assertions or not
	*         based on the input argument.
	*/
	@:overload @:public @:static public static function getXmlMarshaller(marshallInvisible : Bool) : com.sun.xml.internal.ws.policy.sourcemodel.PolicyModelMarshaller;
	
	
}
