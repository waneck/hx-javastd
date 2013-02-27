package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class EventHandlerBase implements com.sun.corba.se.pept.transport.EventHandler
{
	private var orb : com.sun.corba.se.spi.orb.ORB;
	
	private var work : com.sun.corba.se.spi.orbutil.threadpool.Work;
	
	private var useWorkerThreadForEvent : Bool;
	
	private var useSelectThreadToWait : Bool;
	
	private var selectionKey : java.nio.channels.SelectionKey;
	
	@:overload public function setUseSelectThreadToWait(x : Bool) : Void;
	
	@:overload public function shouldUseSelectThreadToWait() : Bool;
	
	@:overload public function setSelectionKey(selectionKey : java.nio.channels.SelectionKey) : Void;
	
	@:overload public function getSelectionKey() : java.nio.channels.SelectionKey;
	
	/*
	* NOTE:
	* This is not thread-safe by design.
	* Only one thread should call it - a reader/listener/select thread.
	* Not stateless: interest ops, registration.
	*/
	@:overload public function handleEvent() : Void;
	
	@:overload public function shouldUseWorkerThreadForEvent() : Bool;
	
	@:overload public function setUseWorkerThreadForEvent(x : Bool) : Void;
	
	@:overload public function setWork(work : com.sun.corba.se.spi.orbutil.threadpool.Work) : Void;
	
	@:overload public function getWork() : com.sun.corba.se.spi.orbutil.threadpool.Work;
	
	@:overload public function getChannel() : java.nio.channels.SelectableChannel;
	
	@:overload public function getInterestOps() : Int;
	
	@:overload public function getAcceptor() : com.sun.corba.se.pept.transport.Acceptor;
	
	@:overload public function getConnection() : com.sun.corba.se.pept.transport.Connection;
	
	
}
