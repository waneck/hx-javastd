package com.sun.tools.jdi;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* An AttachingConnector that connects to a debuggee by specifying the process
* id (pid) as the connector argument. If the process is a debuggee listening
* on a transport address then this connector reads the transport address
* and attempts to attach to it using the appropriate transport.
*/
extern class ProcessAttachingConnector extends com.sun.tools.jdi.ConnectorImpl implements com.sun.jdi.connect.AttachingConnector
{
	@:overload public function new() : Void;
	
	/**
	* Attach to a target VM using the specified address and Connector arguments.
	*/
	@:overload public function attach(args : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : com.sun.jdi.VirtualMachine;
	
	@:overload override public function name() : String;
	
	@:overload override public function description() : String;
	
	@:overload override public function transport() : com.sun.jdi.connect.Transport;
	
	
}
