package com.sun.tools.internal.ws.api.wsdl;
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
extern class TWSDLExtensionHandler
{
	/**
	* Gives the namespace of an extensibility element.
	* <p/>
	* For example a soap 1.1 XXExtensionHandler would return <code>""http://schemas.xmlsoap.org/wsdl/soap/"</code>
	*/
	@:overload @:public public function getNamespaceURI() : String;
	
	/**
	* This interface is called during WSDL parsing on detecting any wsdl extension.
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function doHandleExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:portType</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handlePortTypeExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:definitions</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleDefinitionsExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:type</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleTypesExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:binding</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleBindingExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:portType/wsdl:operation</code>.
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleOperationExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:input</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleInputExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:output</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleOutputExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:fault</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleFaultExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:service</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handleServiceExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	/**
	* Callback for <code>wsdl:port</code>
	*
	* @param context Parser context that will be passed on by the wsdl parser
	* @param parent  The Parent element within which the extensibility element is defined
	* @param e       The extensibility elemenet
	* @return false if there was some error during the extension handling otherwise returns true. If returned false
	*         then the WSDL parser can abort if the wsdl extensibility element had <code>required</code> attribute set to true
	*/
	@:overload @:public public function handlePortExtension(context : com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext, parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, e : org.w3c.dom.Element) : Bool;
	
	
}
