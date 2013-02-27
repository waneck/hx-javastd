package com.sun.xml.internal.ws.api.pipe;
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
extern class ClientTubeAssemblerContext
{
	/**
	* This constructor should be used only by JAX-WS Runtime and is not meant for external consumption.
	* @deprecated
	*      Use {@link #ClientTubeAssemblerContext(EndpointAddress, WSDLPort, WSBindingProvider, WSBinding, Container, Codec, SEIModel)}
	*/
	@:overload public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, rootOwner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	/**
	* This constructor should be used only by JAX-WS Runtime and is not meant for external consumption.
	* @deprecated
	*      Use {@link #ClientTubeAssemblerContext(EndpointAddress, WSDLPort, WSBindingProvider, WSBinding, Container, Codec, SEIModel)}.
	*/
	@:overload public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, rootOwner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	/**
	* This constructor should be used only by JAX-WS Runtime and is not meant for external consumption.
	* @deprecated
	*      Use {@link #ClientTubeAssemblerContext(EndpointAddress, WSDLPort, WSBindingProvider, WSBinding, Container, Codec,SEIModel)}.
	*/
	@:overload public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, rootOwner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container, codec : com.sun.xml.internal.ws.api.pipe.Codec) : Void;
	
	/**
	* This constructor should be used only by JAX-WS Runtime and is not meant for external consumption.
	* @deprecated
	*      Use {@link #ClientTubeAssemblerContext(EndpointAddress, WSDLPort, WSBindingProvider, WSBinding, Container, Codec, SEIModel)}.
	*/
	@:overload public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, rootOwner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container, codec : com.sun.xml.internal.ws.api.pipe.Codec, seiModel : com.sun.xml.internal.ws.api.model.SEIModel) : Void;
	
	/**
	* This constructor should be used only by JAX-WS Runtime and is not meant for external consumption.
	*
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, bindingProvider : com.sun.xml.internal.ws.developer.WSBindingProvider, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container, codec : com.sun.xml.internal.ws.api.pipe.Codec, seiModel : com.sun.xml.internal.ws.api.model.SEIModel) : Void;
	
	/**
	* The endpoint address. Always non-null. This parameter is taken separately
	* from {@link com.sun.xml.internal.ws.api.model.wsdl.WSDLPort} (even though there's {@link com.sun.xml.internal.ws.api.model.wsdl.WSDLPort#getAddress()})
	* because sometimes WSDL is not available.
	*/
	@:overload public function getAddress() : com.sun.xml.internal.ws.api.EndpointAddress;
	
	/**
	* The created pipeline will be used to serve this port.
	* Null if the service isn't associated with any port definition in WSDL,
	* and otherwise non-null.
	*/
	@:overload public function getWsdlModel() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	/**
	* The pipeline is created for this {@link com.sun.xml.internal.ws.api.WSService}.
	* Always non-null. (To be precise, the newly created pipeline
	* is owned by a proxy or a dispatch created from thsi {@link com.sun.xml.internal.ws.api.WSService}.)
	*/
	@:overload public function getService() : com.sun.xml.internal.ws.api.WSService;
	
	/**
	* The pipeline is created for this {@link com.sun.xml.internal.ws.api.client.WSPortInfo}.
	* Nullable incase of backwards compatible usages of this class.
	*/
	@:overload public function getPortInfo() : com.sun.xml.internal.ws.api.client.WSPortInfo;
	
	/**
	* The pipeline is created for this {@link WSBindingProvider}.
	* Nullable incase of backwards compatible usages of this class.
	*/
	@:overload public function getBindingProvider() : com.sun.xml.internal.ws.developer.WSBindingProvider;
	
	/**
	* The binding of the new pipeline to be created.
	*/
	@:overload public function getBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	/**
	* The created pipeline will use seiModel to get java concepts for the endpoint
	*
	* @return Null if the service doesn't have SEI model e.g. Dispatch,
	*         and otherwise non-null.
	*/
	@:overload public function getSEIModel() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* Returns the Container in which the client is running
	*
	* @return Container in which client is running
	*/
	@:overload public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	/**
	* creates a {@link Tube} that dumps messages that pass through.
	*/
	@:overload public function createDumpTube(name : String, out : java.io.PrintStream, next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that adds container specific security
	*/
	@:overload public function createSecurityTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that invokes protocol and logical handlers.
	*/
	@:overload public function createWsaTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that invokes protocol and logical handlers.
	*/
	@:overload public function createHandlerTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that performs SOAP mustUnderstand processing.
	* This pipe should be before HandlerPipes.
	*/
	@:overload public function createClientMUTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* creates a {@link Tube} that validates messages against schema
	*/
	@:overload public function createValidationTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a transport pipe (for client), which becomes the terminal pipe.
	*/
	@:overload public function createTransportTube() : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Gets the {@link Codec} that is set by {@link #setCodec} or the default codec
	* based on the binding.
	*
	* @return codec to be used for web service requests
	*/
	@:overload public function getCodec() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	/**
	* Interception point to change {@link Codec} during {@link Tube}line assembly. The
	* new codec will be used by jax-ws client runtime for encoding/decoding web service
	* request/response messages. The new codec should be used by the transport tubes.
	*
	* <p>
	* the codec should correctly implement {@link Codec#copy} since it is used while
	* serving requests concurrently.
	*
	* @param codec codec to be used for web service requests
	*/
	@:overload public function setCodec(codec : com.sun.xml.internal.ws.api.pipe.Codec) : Void;
	
	
}
