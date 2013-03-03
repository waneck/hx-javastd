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
extern class ClientPipeAssemblerContext extends com.sun.xml.internal.ws.api.pipe.ClientTubeAssemblerContext
{
	/**
	* Factory for well-known {@link Pipe} implementations
	* that the {@link PipelineAssembler} needs to use
	* to satisfy JAX-WS requirements.
	*
	* @author Kohsuke Kawaguchi
	* @deprecated Use {@link ClientTubeAssemblerContext}.
	*/
	@:overload @:public public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, rootOwner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	@:overload @:public public function new(address : com.sun.xml.internal.ws.api.EndpointAddress, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, rootOwner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	/**
	* creates a {@link Pipe} that dumps messages that pass through.
	*/
	@:overload @:public public function createDumpPipe(name : String, out : java.io.PrintStream, next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Pipe} that performs WS-Addressig processing.
	* This pipe should be before {@link com.sun.xml.internal.ws.protocol.soap.ClientMUTube}.
	*/
	@:overload @:public public function createWsaPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Pipe} that performs SOAP mustUnderstand processing.
	* This pipe should be before HandlerPipes.
	*/
	@:overload @:public public function createClientMUPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* creates a {@link Pipe} that validates messages against schema
	*/
	@:overload @:public public function createValidationPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Pipe} that invokes protocol and logical handlers.
	*/
	@:overload @:public public function createHandlerPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Tube} that adds container specific security
	*/
	@:overload @:public public function createSecurityPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a transport pipe (for client), which becomes the terminal pipe.
	*/
	@:overload @:public public function createTransportPipe() : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	
}
