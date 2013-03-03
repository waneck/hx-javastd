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
* Base implementation of background poller thread used in watch service
* implementations. A poller thread waits on events from the file system and
* also services "requests" from clients to register for new events or cancel
* existing registrations.
*/
@:internal extern class AbstractPoller implements java.lang.Runnable
{
	@:overload @:protected private function new() : Void;
	
	/**
	* Starts the poller thread
	*/
	@:overload @:public public function start() : Void;
	
	/**
	* When an object implementing interface <code>Runnable</code> is used
	* to create a thread, starting the thread causes the object's
	* <code>run</code> method to be called in that separately executing
	* thread.
	* <p>
	* The general contract of the method <code>run</code> is that it may
	* take any action whatsoever.
	*
	* @see     java.lang.Thread#run()
	*/
	@:overload @:public @:abstract public function run() : Void;
	
	
}
/**
* Types of request that the poller thread must handle
*/
@:native('sun$nio$fs$AbstractPoller$RequestType') privateextern enum AbstractPoller_RequestType
{
	REGISTER;
	CANCEL;
	CLOSE;
	
}

/**
* Encapsulates a request (command) to the poller thread.
*/
@:native('sun$nio$fs$AbstractPoller$Request') @:internal extern class AbstractPoller_Request
{
	
}
