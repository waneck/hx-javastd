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
extern class ServerTubeAssemblerContext
{
	@:overload public function new(seiModel : com.sun.xml.internal.ws.api.model.SEIModel, wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, terminal : com.sun.xml.internal.ws.api.pipe.Tube, isSynchronous : Bool) : Void;
	
	/**
	* The created pipeline will use seiModel to get java concepts for the endpoint
	*
	* @return Null if the service doesn't have SEI model e.g. Provider endpoints,
	*         and otherwise non-null.
	*/
	@:overload public function getSEIModel() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* The created pipeline will be used to serve this port.
	*
	* @return Null if the service isn't associated with any port definition in WSDL,
	*         and otherwise non-null.
	*/
	@:overload public function getWsdlModel() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	/**
	*
	* The created pipeline is used to serve this {@link com.sun.xml.internal.ws.api.server.WSEndpoint}.
	* Specifically, its {@link com.sun.xml.internal.ws.api.WSBinding} should be of interest to  many
	* {@link com.sun.xml.internal.ws.api.pipe.Pipe}s.
	*  @return Always non-null.
	*/
	@:overload public function getEndpoint() : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>;
	
	/**
	* The last {@link com.sun.xml.internal.ws.api.pipe.Pipe} in the pipeline. The assembler is expected to put
	* additional {@link com.sun.xml.internal.ws.api.pipe.Pipe}s in front of it.
	*
	* <p>
	* (Just to give you the idea how this is used, normally the terminal pipe
	* is the one that invokes the user application or {@link javax.xml.ws.Provider}.)
	*
	* @return always non-null terminal pipe
	*/
	@:overload public function getTerminalTube() : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* If this server pipeline is known to be used for serving synchronous transport,
	* then this method returns true. This can be potentially use as an optimization
	* hint, since often synchronous versions are cheaper to execute than asycnhronous
	* versions.
	*/
	@:overload public function isSynchronous() : Bool;
	
	/**
	* Creates a {@link Tube} that performs SOAP mustUnderstand processing.
	* This pipe should be before HandlerPipes.
	*/
	@:overload public function createServerMUTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that invokes protocol and logical handlers.
	*/
	@:overload public function createHandlerTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that does the monitoring of the invocation for a
	* container
	*/
	@:overload public function createMonitoringTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates a {@link Tube} that adds container specific security
	*/
	@:overload public function createSecurityTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* creates a {@link Tube} that dumps messages that pass through.
	*/
	@:overload public function createDumpTube(name : String, out : java.io.PrintStream, next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* creates a {@link Tube} that validates messages against schema
	*/
	@:overload public function createValidationTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Creates WS-Addressing pipe
	*/
	@:overload public function createWsaTube(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Gets the {@link Codec} that is set by {@link #setCodec} or the default codec
	* based on the binding. The codec is a full codec that is responsible for
	* encoding/decoding entire protocol message(for e.g: it is responsible to
	* encode/decode entire MIME messages in SOAP binding)
	*
	* @return codec to be used for web service requests
	* @see {@link Codecs}
	*/
	@:overload public function getCodec() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	/**
	* Interception point to change {@link Codec} during {@link Tube}line assembly. The
	* new codec will be used by jax-ws server runtime for encoding/decoding web service
	* request/response messages. {@link WSEndpoint#createCodec()} will return a copy
	* of this new codec and will be used in the server runtime.
	*
	* <p>
	* The codec is a full codec that is responsible for
	* encoding/decoding entire protocol message(for e.g: it is responsible to
	* encode/decode entire MIME messages in SOAP binding)
	*
	* <p>
	* the codec should correctly implement {@link Codec#copy} since it is used while
	* serving requests concurrently.
	*
	* @param codec codec to be used for web service requests
	* @see {@link Codecs}
	*/
	@:overload public function setCodec(codec : com.sun.xml.internal.ws.api.pipe.Codec) : Void;
	
	
}
