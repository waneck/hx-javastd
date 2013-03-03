package sun.nio.fs;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Solaris implementation of WatchService based on file events notification
* facility.
*/
@:internal extern class SolarisWatchService extends sun.nio.fs.AbstractWatchService
{
	
}
/**
* WatchKey implementation
*/
@:native('sun$nio$fs$SolarisWatchService$SolarisWatchKey') @:internal extern class SolarisWatchService_SolarisWatchKey extends sun.nio.fs.AbstractWatchKey implements sun.nio.fs.SolarisWatchService.SolarisWatchService_DirectoryNode
{
	@:overload @:public public function object() : haxe.Int64;
	
	@:overload @:public override public function isValid() : Bool;
	
	@:overload @:public override public function cancel() : Void;
	
	@:overload @:public public function addChild(name : java.nio.file.Path, node : sun.nio.fs.SolarisWatchService.SolarisWatchService_EntryNode) : Void;
	
	@:overload @:public public function removeChild(name : java.nio.file.Path) : Void;
	
	@:overload @:public public function getChild(name : java.nio.file.Path) : sun.nio.fs.SolarisWatchService.SolarisWatchService_EntryNode;
	
	
}
/**
* Background thread to read from port
*/
@:native('sun$nio$fs$SolarisWatchService$Poller') @:internal extern class SolarisWatchService_Poller extends sun.nio.fs.AbstractPoller
{
	/**
	* Poller main loop. Blocks on port_getn waiting for events and then
	* processes them.
	*/
	@:overload @:public override public function run() : Void;
	
	
}
/**
* A node with native (file_obj) resources
*/
@:native('sun$nio$fs$SolarisWatchService$Node') @:internal extern interface SolarisWatchService_Node
{
	@:overload public function object() : haxe.Int64;
	
	
}
/**
* A directory node with a map of the entries in the directory
*/
@:native('sun$nio$fs$SolarisWatchService$DirectoryNode') @:internal extern interface SolarisWatchService_DirectoryNode extends sun.nio.fs.SolarisWatchService.SolarisWatchService_Node
{
	@:overload public function addChild(name : java.nio.file.Path, node : sun.nio.fs.SolarisWatchService.SolarisWatchService_EntryNode) : Void;
	
	@:overload public function removeChild(name : java.nio.file.Path) : Void;
	
	@:overload public function getChild(name : java.nio.file.Path) : sun.nio.fs.SolarisWatchService.SolarisWatchService_EntryNode;
	
	
}
/**
* An implementation of a node that is an entry in a directory.
*/
@:native('sun$nio$fs$SolarisWatchService$EntryNode') @:internal extern class SolarisWatchService_EntryNode implements sun.nio.fs.SolarisWatchService.SolarisWatchService_Node
{
	@:overload @:public public function object() : haxe.Int64;
	
	
}
