package com.sun.tools.jdi;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractLauncher extends com.sun.tools.jdi.ConnectorImpl implements com.sun.jdi.connect.LaunchingConnector
{
	@:overload @:abstract @:public public function launch(arguments : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : com.sun.jdi.VirtualMachine;
	
	@:overload @:abstract @:public override public function name() : String;
	
	@:overload @:abstract @:public override public function description() : String;
	
	@:overload @:protected private function launch(commandArray : java.NativeArray<String>, address : String, listenKey : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey, ts : com.sun.jdi.connect.spi.TransportService) : com.sun.jdi.VirtualMachine;
	
	/**
	* Returns the transport mechanism used by this connector to establish
	* connections with a target VM.
	*
	* @return the {@link Transport} used by this connector.
	*/
	@:overload @:public @:public override public function transport() : com.sun.jdi.connect.Transport;
	
	/**
	* Returns the arguments accepted by this Connector and their
	* default values. The keys of the returned map are string argument
	* names. The values are {@link Connector.Argument} containing
	* information about the argument and its default value.
	*
	* @return the map associating argument names with argument
	* information and default value.
	*/
	@:overload @:public override public function defaultArguments() : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>;
	
	
}
/**
* This class simply provides a context for a single launch and
* accept. It provides instance fields that can be used by
* all threads involved. This stuff can't be in the Connector proper
* because the connector is is a singleton and not specific to any
* one launch.
*/
@:native('com$sun$tools$jdi$AbstractLauncher$Helper') @:internal extern class AbstractLauncher_Helper
{
	
}
