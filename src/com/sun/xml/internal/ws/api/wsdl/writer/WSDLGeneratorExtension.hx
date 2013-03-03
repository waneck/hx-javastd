package com.sun.xml.internal.ws.api.wsdl.writer;
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
extern class WSDLGeneratorExtension
{
	/**
	* Called at the very beginning of the process.
	* <p/>
	* This method is invoked so that the root element can be manipulated before
	* any tags have been written. This allows to set e.g. namespace prefixes.
	* <p/>
	* Another purpose of this method is to let extensions know what model
	* we are generating a WSDL for.
	*
	* @param root      This is the root element of the generated WSDL.
	* @param model     WSDL is being generated from this {@link SEIModel}.
	* @param binding   The binding for which we generate WSDL. the binding {@link WSBinding} represents a particular
	*                  configuration of JAXWS. This can be typically be overriden by
	* @param container The entry point to the external environment.
	*                  If this extension is used at the runtime to generate WSDL, you get a {@link Container}
	*                  that was given to {@link WSEndpoint#create}.
	*                  TODO: think about tool side
	* @deprecated
	*/
	@:overload @:public public function start(root : com.sun.xml.internal.txw2.TypedXmlWriter, model : com.sun.xml.internal.ws.api.model.SEIModel, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	/**
	* Called before writing </wsdl:defintions>.
	*
	* @param ctxt
	*/
	@:overload @:public public function end(ctxt : com.sun.xml.internal.ws.api.wsdl.writer.WSDLGenExtnContext) : Void;
	
	/**
	* Called at the very beginning of the process.
	* <p/>
	* This method is invoked so that the root element can be manipulated before
	* any tags have been written. This allows to set e.g. namespace prefixes.
	* <p/>
	* Another purpose of this method is to let extensions know what model
	* we are generating a WSDL for.
	*
	* @param ctxt Provides the context for the generator extensions
	*/
	@:overload @:public public function start(ctxt : com.sun.xml.internal.ws.api.wsdl.writer.WSDLGenExtnContext) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:definitions</code>
	* element can be generated.
	*
	* @param definitions This is the <code>wsdl:defintions</code> element that the extension can be added to.
	*/
	@:overload @:public public function addDefinitionsExtension(definitions : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:service</code>
	* element can be generated.
	*
	* @param service This is the <code>wsdl:service</code> element that the extension can be added to.
	*/
	@:overload @:public public function addServiceExtension(service : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:port</code>
	* element can be generated.
	*
	* @param port This is the wsdl:port element that the extension can be added to.
	*/
	@:overload @:public public function addPortExtension(port : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:portType</code>
	* element can be generated.
	* <p/>
	*
	* @param portType This is the wsdl:portType element that the extension can be added to.
	*/
	@:overload @:public public function addPortTypeExtension(portType : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:binding</code>
	* element can be generated.
	* <p/>
	* <p/>
	* TODO:  Some other information may need to be passed
	*
	* @param binding This is the wsdl:binding element that the extension can be added to.
	*/
	@:overload @:public public function addBindingExtension(binding : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:portType/wsdl:operation</code>
	* element can be generated.
	*
	* @param operation This is the wsdl:portType/wsdl:operation  element that the
	*                  extension can be added to.
	* @param method    {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addOperationExtension(operation : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:binding/wsdl:operation</code>
	* element can be generated.
	*
	* @param operation This is the wsdl:binding/wsdl:operation  element that the
	*                  extension can be added to.
	* @param method    {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addBindingOperationExtension(operation : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to an input <code>wsdl:message</code>
	* element can be generated.
	*
	* @param message This is the input wsdl:message element that the
	*                extension can be added to.
	* @param method  {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addInputMessageExtension(message : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to an output <code>wsdl:message</code>
	* element can be generated.
	*
	* @param message This is the output wsdl:message element that the
	*                extension can be added to.
	* @param method  {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addOutputMessageExtension(message : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to a
	* <code>wsdl:portType/wsdl:operation/wsdl:input</code>
	* element can be generated.
	*
	* @param input  This is the wsdl:portType/wsdl:operation/wsdl:input  element that the
	*               extension can be added to.
	* @param method {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addOperationInputExtension(input : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:portType/wsdl:operation/wsdl:output</code>
	* element can be generated.
	*
	* @param output This is the wsdl:portType/wsdl:operation/wsdl:output  element that the
	*               extension can be added to.
	* @param method {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addOperationOutputExtension(output : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to a
	* <code>wsdl:binding/wsdl:operation/wsdl:input</code>
	* element can be generated.
	*
	* @param input  This is the wsdl:binding/wsdl:operation/wsdl:input  element that the
	*               extension can be added to.
	* @param method {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addBindingOperationInputExtension(input : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to a  <code>wsdl:binding/wsdl:operation/wsdl:output</code>
	* element can be generated.
	*
	* @param output This is the wsdl:binding/wsdl:operation/wsdl:output  element that the
	*               extension can be added to.
	* @param method {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addBindingOperationOutputExtension(output : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:binding/wsdl:operation/wsdl:fault</code>
	* element can be generated.
	*
	* @param fault  This is the wsdl:binding/wsdl:operation/wsdl:fault or wsdl:portType/wsdl:output/wsdl:operation/wsdl:fault
	*               element that the extension can be added to.
	* @param method {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*/
	@:overload @:public public function addBindingOperationFaultExtension(fault : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, ce : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:portType/wsdl:operation/wsdl:fault</code>
	* element can be generated.
	*
	* @param message This is the fault wsdl:message element that the
	*                extension can be added to.
	* @param method  {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	*
	* @param ce      {@link CheckedException} that abstracts wsdl:fault
	*/
	@:overload @:public public function addFaultMessageExtension(message : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, ce : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	/**
	* This method is invoked so that extensions to a <code>wsdl:portType/wsdl:operation/wsdl:fault</code>
	* element can be generated.
	*
	* @param fault  This is the wsdl:portType/wsdl:operation/wsdl:fault  element that the
	*               extension can be added to.
	* @param method {@link JavaMethod} which captures all the information to generate wsdl:portType/wsdl:operation
	* @param ce     {@link CheckedException} that abstracts wsdl:fault
	*/
	@:overload @:public public function addOperationFaultExtension(fault : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, ce : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	
}
