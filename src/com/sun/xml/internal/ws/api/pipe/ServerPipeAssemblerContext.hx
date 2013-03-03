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
extern class ServerPipeAssemblerContext extends com.sun.xml.internal.ws.api.pipe.ServerTubeAssemblerContext
{
	/**
	* Factory for well-known server {@link Pipe} implementations
	* that the {@link PipelineAssembler} needs to use
	* to satisfy JAX-WS requirements.
	*
	* @author Jitendra Kotamraju
	* @deprecated Use {@link ServerTubeAssemblerContext}.
	*/
	@:overload @:public public function new(seiModel : com.sun.xml.internal.ws.api.model.SEIModel, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, terminal : com.sun.xml.internal.ws.api.pipe.Tube, isSynchronous : Bool) : Void;
	
	/**
	* Creates a {@link Pipe} that performs SOAP mustUnderstand processing.
	* This pipe should be before HandlerPipes.
	*/
	@:overload @:public public function createServerMUPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* creates a {@link Pipe} that dumps messages that pass through.
	*/
	@:overload @:public public function createDumpPipe(name : String, out : java.io.PrintStream, next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Pipe} that does the monitoring of the invocation for a
	* container
	*/
	@:overload @:public public function createMonitoringPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Pipe} that adds container specific security
	*/
	@:overload @:public public function createSecurityPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* creates a {@link Pipe} that validates messages against schema
	*/
	@:overload @:public public function createValidationPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates a {@link Pipe} that invokes protocol and logical handlers.
	*/
	@:overload @:public public function createHandlerPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* The last {@link Pipe} in the pipeline. The assembler is expected to put
	* additional {@link Pipe}s in front of it.
	*
	* <p>
	* (Just to give you the idea how this is used, normally the terminal pipe
	* is the one that invokes the user application or {@link javax.xml.ws.Provider}.)
	*
	* @return always non-null terminal pipe
	*/
	@:overload @:public public function getTerminalPipe() : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Creates WS-Addressing pipe
	*/
	@:overload @:public public function createWsaPipe(next : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	
}
