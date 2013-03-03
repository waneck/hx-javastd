package com.sun.corba.se.impl.activation;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
*
* @author      Rohit Garg
* @author      Ken Cavanaugh
* @author      Hemanth Puttaswamy
* @since       JDK1.2
*/
@:require(java2) extern class ServerManagerImpl extends _ServerManagerImplBase implements com.sun.corba.se.impl.oa.poa.BadServerIdHandler
{
	@:overload @:public public function activate(serverId : Int) : Void;
	
	@:overload @:public public function active(serverId : Int, server : com.sun.corba.se.spi.activation.Server) : Void;
	
	@:overload @:public public function registerEndpoints(serverId : Int, orbId : String, endpointList : java.NativeArray<com.sun.corba.se.spi.activation.EndPointInfo>) : Void;
	
	@:overload @:public public function getActiveServers() : java.NativeArray<Int>;
	
	@:overload @:public public function shutdown(serverId : Int) : Void;
	
	@:overload @:public public function getORBNames(serverId : Int) : java.NativeArray<String>;
	
	@:overload @:public public function install(serverId : Int) : Void;
	
	@:overload @:public public function uninstall(serverId : Int) : Void;
	
	@:overload @:public public function locateServer(serverId : Int, endpointType : String) : com.sun.corba.se.spi.activation.LocatorPackage.ServerLocation;
	
	/** This method is used to obtain the registered ports for an ORB.
	* This is useful for custom Bad server ID handlers in ORBD.
	*/
	@:overload @:public public function locateServerForORB(serverId : Int, orbId : String) : com.sun.corba.se.spi.activation.LocatorPackage.ServerLocationPerORB;
	
	@:overload @:public public function handle(okey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	@:overload @:public public function getEndpoint(endpointType : String) : Int;
	
	@:overload @:public public function getServerPortForType(location : com.sun.corba.se.spi.activation.LocatorPackage.ServerLocationPerORB, endPointType : String) : Int;
	
	
}
