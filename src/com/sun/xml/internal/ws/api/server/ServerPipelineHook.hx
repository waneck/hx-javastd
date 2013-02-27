package com.sun.xml.internal.ws.api.server;
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
extern class ServerPipelineHook
{
	/**
	* Called during the pipeline construction process once to allow a container
	* to register a pipe for monitoring.
	*
	* This pipe will be injected to a point very close to the transport, allowing
	* it to measure the time it takes for processing as well as detecting errors.
	*
	* @param ctxt
	*      Represents abstraction of SEI, WSDL abstraction etc. Context can be used
	*      whether add a new pipe to the head or not.
	*
	* @param tail
	*      Head of the partially constructed pipeline. If the implementation
	*      wishes to add new pipes, it should do so by extending
	*      {@link AbstractFilterPipeImpl} and making sure that this {@link Pipe}
	*      eventually processes messages.
	*
	* @return
	*      The default implementation just returns <tt>tail</tt>, which means
	*      no additional pipe is inserted. If the implementation adds
	*      new pipes, return the new head pipe.
	*/
	@:overload public function createMonitoringPipe(ctxt : com.sun.xml.internal.ws.api.pipe.ServerPipeAssemblerContext, tail : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* Called during the pipeline construction process once to allow a container
	* to register a pipe for security.
	*
	* This pipe will be injected to a point very close to the transport, allowing
	* it to do some security operations.
	*
	* @param ctxt
	*      Represents abstraction of SEI, WSDL abstraction etc. Context can be used
	*      whether add a new pipe to the head or not.
	*
	* @param tail
	*      Head of the partially constructed pipeline. If the implementation
	*      wishes to add new pipes, it should do so by extending
	*      {@link AbstractFilterPipeImpl} and making sure that this {@link Pipe}
	*      eventually processes messages.
	*
	* @return
	*      The default implementation just returns <tt>tail</tt>, which means
	*      no additional pipe is inserted. If the implementation adds
	*      new pipes, return the new head pipe.
	*/
	@:overload public function createSecurityPipe(ctxt : com.sun.xml.internal.ws.api.pipe.ServerPipeAssemblerContext, tail : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	
}
