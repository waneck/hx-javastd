package com.sun.xml.internal.ws.model;
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
extern class ParameterImpl implements com.sun.xml.internal.ws.api.model.Parameter
{
	@:overload public function new(parent : com.sun.xml.internal.ws.model.JavaMethodImpl, type : com.sun.xml.internal.bind.api.TypeReference, mode : Mode, index : Int) : Void;
	
	@:overload public function getOwner() : com.sun.xml.internal.ws.model.AbstractSEIModelImpl;
	
	@:overload public function getParent() : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* @return Returns the name.
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getBridge() : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	@:overload private function getBridge(typeRef : com.sun.xml.internal.bind.api.TypeReference) : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	/**
	* TODO: once the model gets JAXBContext, shouldn't {@link Bridge}s
	* be made available from model objects?
	*
	* @return Returns the TypeReference associated with this Parameter
	*/
	@:overload public function getTypeReference() : com.sun.xml.internal.bind.api.TypeReference;
	
	@:overload public function getMode() : Mode;
	
	@:overload public function getIndex() : Int;
	
	/**
	* @return true if <tt>this instanceof {@link WrapperParameter}</tt>.
	*/
	@:overload public function isWrapperStyle() : Bool;
	
	@:overload public function isReturnValue() : Bool;
	
	/**
	* @return the Binding for this Parameter
	*/
	@:overload public function getBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* @param binding
	*/
	@:overload public function setBinding(binding : com.sun.xml.internal.ws.api.model.ParameterBinding) : Void;
	
	@:overload public function setInBinding(binding : com.sun.xml.internal.ws.api.model.ParameterBinding) : Void;
	
	@:overload public function setOutBinding(binding : com.sun.xml.internal.ws.api.model.ParameterBinding) : Void;
	
	@:overload public function getInBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	@:overload public function getOutBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	@:overload public function isIN() : Bool;
	
	@:overload public function isOUT() : Bool;
	
	@:overload public function isINOUT() : Bool;
	
	/**
	* If true, this parameter maps to the return value of a method invocation.
	*
	* <p>
	* {@link JavaMethodImpl#getResponseParameters()} is guaranteed to have
	* at most one such {@link ParameterImpl}. Note that there coule be none,
	* in which case the method returns <tt>void</tt>.
	*/
	@:overload public function isResponse() : Bool;
	
	/**
	* Gets the holder value if applicable. To be called for inbound client side
	* message.
	*
	* @param obj
	* @return the holder value if applicable.
	*/
	@:overload public function getHolderValue(obj : Dynamic) : Dynamic;
	
	@:overload public function getPartName() : String;
	
	@:overload public function setPartName(partName : String) : Void;
	
	
}
