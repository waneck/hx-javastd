package sun.misc;
/*
* Copyright (c) 1996, Oracle and/or its affiliates. All rights reserved.
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
* The request processor allows functors (Request instances) to be created
* in arbitrary threads, and to be posted for execution in a non-restricted
* thread.
*
* @author      Steven B. Byrne
*/
extern class RequestProcessor implements java.lang.Runnable
{
	/**
	* Queues a Request instance for execution by the request procesor
	* thread.
	*/
	@:overload @:public @:static public static function postRequest(req : sun.misc.Request) : Void;
	
	/**
	* Process requests as they are queued.
	*/
	@:overload @:public public function run() : Void;
	
	/**
	* This method initiates the request processor thread.  It is safe
	* to call it after the thread has been started.  It provides a way for
	* clients to deliberately control the context in which the request
	* processor thread is created
	*/
	@:overload @:public @:static @:synchronized public static function startProcessing() : Void;
	
	
}
