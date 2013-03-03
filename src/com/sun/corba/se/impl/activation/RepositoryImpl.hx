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
extern class RepositoryImpl extends _RepositoryImplBase implements java.io.Serializable
{
	@:overload @:public public function registerServer(serverDef : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef, theServerId : Int) : Int;
	
	@:overload @:public public function registerServer(serverDef : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef) : Int;
	
	@:overload @:public public function unregisterServer(serverId : Int) : Void;
	
	@:overload @:public public function getServer(serverId : Int) : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef;
	
	@:overload @:public public function isInstalled(serverId : Int) : Bool;
	
	@:overload @:public public function install(serverId : Int) : Void;
	
	@:overload @:public public function uninstall(serverId : Int) : Void;
	
	@:overload @:public public function listRegisteredServers() : java.NativeArray<Int>;
	
	@:overload @:public public function getServerID(applicationName : String) : Int;
	
	@:overload @:public public function getApplicationNames() : java.NativeArray<String>;
	
	/**
	* Typically the Repositoy is created within the ORBd VM but it can
	* be independently started as well.
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:native('com$sun$corba$se$impl$activation$RepositoryImpl$RepositoryDB') @:internal extern class RepositoryImpl_RepositoryDB implements java.io.Serializable
{
	
}
@:native('com$sun$corba$se$impl$activation$RepositoryImpl$DBServerDef') @:internal extern class RepositoryImpl_DBServerDef implements java.io.Serializable
{
	@:overload @:public public function toString() : String;
	
	
}
