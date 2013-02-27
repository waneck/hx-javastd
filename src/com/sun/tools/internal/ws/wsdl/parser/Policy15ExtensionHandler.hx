package com.sun.tools.internal.ws.wsdl.parser;
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
extern class Policy15ExtensionHandler extends com.sun.tools.internal.ws.api.wsdl.TWSDLExtensionHandler
{
	/**
	* Policies are evaluated at runtime. This class makes sure that wscompile/wsimport
	* ignores all policy elements at tooltime.
	*
	* @author Jakub Podlesak (jakub.podlesak at sun.com)
	* @author Fabian Ritzmann
	*/
	@:overload override public function getNamespaceURI() : String;
	
	@:overload override public function handlePortTypeExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleDefinitionsExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleBindingExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleOperationExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleInputExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleOutputExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleFaultExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handleServiceExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	@:overload override public function handlePortExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	
}
