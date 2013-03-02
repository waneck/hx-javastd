package com.sun.tools.jdi;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
* A ListeningConnector to listen for connections from target VM
* using the configured transport service
*/
extern class GenericListeningConnector extends com.sun.tools.jdi.ConnectorImpl implements com.sun.jdi.connect.ListeningConnector
{
	/**
	* Initialize a new instance of this connector. This constructor is used
	* when sub-classing - the resulting connector will a "timeout" connector
	* argument.
	*/
	@:overload private function new(ts : com.sun.jdi.connect.spi.TransportService) : Void;
	
	/**
	* Create an instance of this Connector. The resulting ListeningConnector will
	* have "address" and "timeout" connector arguments.
	*/
	@:overload public static function create(ts : com.sun.jdi.connect.spi.TransportService) : com.sun.tools.jdi.GenericListeningConnector;
	
	@:overload public function startListening(address : String, args : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : String;
	
	@:overload public function startListening(args : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : String;
	
	@:overload public function stopListening(args : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : Void;
	
	@:overload public function accept(args : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : com.sun.jdi.VirtualMachine;
	
	@:overload public function supportsMultipleConnections() : Bool;
	
	@:overload public function name() : String;
	
	@:overload public function description() : String;
	
	@:overload public function transport() : com.sun.jdi.connect.Transport;
	
	
}
