package com.sun.jmx.remote.internal;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ClientCommunicatorAdmin
{
	@:overload public function new(period : haxe.Int64) : Void;
	
	/**
	* Called by a client to inform of getting an IOException.
	*/
	@:overload public function gotIOException(ioe : java.io.IOException) : Void;
	
	/**
	* Called by this class to check a client connection.
	*/
	@:overload @:abstract private function checkConnection() : Void;
	
	/**
	* Tells a client to re-start again.
	*/
	@:overload @:abstract private function doStart() : Void;
	
	/**
	* Tells a client to stop because failing to call checkConnection.
	*/
	@:overload @:abstract private function doStop() : Void;
	
	/**
	* Terminates this object.
	*/
	@:overload public function terminate() : Void;
	
	
}
@:native('com$sun$jmx$remote$internal$ClientCommunicatorAdmin$Checker') @:internal extern class ClientCommunicatorAdmin_Checker implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
