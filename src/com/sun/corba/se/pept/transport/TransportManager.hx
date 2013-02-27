package com.sun.corba.se.pept.transport;
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
extern interface TransportManager
{
	/**
	* @author Harold Carr
	*/
	@:overload public function getByteBufferPool(id : Int) : com.sun.corba.se.pept.transport.ByteBufferPool;
	
	@:overload public function getOutboundConnectionCache(contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : com.sun.corba.se.pept.transport.OutboundConnectionCache;
	
	@:overload public function getOutboundConnectionCaches() : java.util.Collection<Dynamic>;
	
	@:overload public function getInboundConnectionCache(acceptor : com.sun.corba.se.pept.transport.Acceptor) : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	@:overload public function getInboundConnectionCaches() : java.util.Collection<Dynamic>;
	
	@:overload public function getSelector(id : Int) : com.sun.corba.se.pept.transport.Selector;
	
	@:overload public function registerAcceptor(acceptor : com.sun.corba.se.pept.transport.Acceptor) : Void;
	
	@:overload public function getAcceptors() : java.util.Collection<Dynamic>;
	
	@:overload public function unregisterAcceptor(acceptor : com.sun.corba.se.pept.transport.Acceptor) : Void;
	
	@:overload public function close() : Void;
	
	
}
