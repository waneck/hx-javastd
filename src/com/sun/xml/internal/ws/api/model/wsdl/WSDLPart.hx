package com.sun.xml.internal.ws.api.model.wsdl;
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
extern interface WSDLPart extends com.sun.xml.internal.ws.api.model.wsdl.WSDLObject
{
	/**
	* Gets wsdl:part@name attribute value.
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets the wsdl:part binding as seen thru wsdl:binding
	*/
	@:overload public function getBinding() : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Index value is as the order in which the wsdl:part appears inside the input or output wsdl:message.
	* @return n where n >= 0
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* Gives the XML Schema descriptor referenced using either wsdl:part@element or wsdl:part@type.
	*/
	@:overload public function getDescriptor() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPartDescriptor;
	
	
}
