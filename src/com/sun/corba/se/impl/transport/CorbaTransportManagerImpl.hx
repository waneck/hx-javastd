package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaTransportManagerImpl implements com.sun.corba.se.spi.transport.CorbaTransportManager
{
	/**
	* @author Harold Carr
	*/
	private var orb : com.sun.corba.se.spi.orb.ORB;
	
	private var acceptors : java.util.List<Dynamic>;
	
	private var outboundConnectionCaches : java.util.Map<Dynamic, Dynamic>;
	
	private var inboundConnectionCaches : java.util.Map<Dynamic, Dynamic>;
	
	private var selector : com.sun.corba.se.pept.transport.Selector;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function getByteBufferPool(id : Int) : com.sun.corba.se.pept.transport.ByteBufferPool;
	
	@:overload public function getOutboundConnectionCache(contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : com.sun.corba.se.pept.transport.OutboundConnectionCache;
	
	@:overload public function getOutboundConnectionCaches() : java.util.Collection<Dynamic>;
	
	@:overload public function getInboundConnectionCache(acceptor : com.sun.corba.se.pept.transport.Acceptor) : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	@:overload public function getInboundConnectionCaches() : java.util.Collection<Dynamic>;
	
	@:overload public function getSelector(id : Int) : com.sun.corba.se.pept.transport.Selector;
	
	@:overload @:synchronized public function registerAcceptor(acceptor : com.sun.corba.se.pept.transport.Acceptor) : Void;
	
	@:overload public function getAcceptors() : java.util.Collection<Dynamic>;
	
	@:overload @:synchronized public function unregisterAcceptor(acceptor : com.sun.corba.se.pept.transport.Acceptor) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getAcceptors(objectAdapterManagerId : String, objectAdapterId : com.sun.corba.se.spi.ior.ObjectAdapterId) : java.util.Collection<Dynamic>;
	
	@:overload public function addToIORTemplate(iorTemplate : com.sun.corba.se.spi.ior.IORTemplate, policies : com.sun.corba.se.impl.oa.poa.Policies, codebase : String, objectAdapterManagerId : String, objectAdapterId : com.sun.corba.se.spi.ior.ObjectAdapterId) : Void;
	
	@:overload private function dprint(msg : String) : Void;
	
	
}
