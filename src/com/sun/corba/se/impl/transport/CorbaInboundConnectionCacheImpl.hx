package com.sun.corba.se.impl.transport;
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
extern class CorbaInboundConnectionCacheImpl extends com.sun.corba.se.impl.transport.CorbaConnectionCacheBase implements com.sun.corba.se.pept.transport.InboundConnectionCache
{
	/**
	* @author Harold Carr
	*/
	@:protected private var connectionCache : java.util.Collection<Dynamic>;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, acceptor : com.sun.corba.se.pept.transport.Acceptor) : Void;
	
	@:overload @:public public function get(acceptor : com.sun.corba.se.pept.transport.Acceptor) : com.sun.corba.se.pept.transport.Connection;
	
	@:overload @:public public function put(acceptor : com.sun.corba.se.pept.transport.Acceptor, connection : com.sun.corba.se.pept.transport.Connection) : Void;
	
	@:overload @:public public function remove(connection : com.sun.corba.se.pept.transport.Connection) : Void;
	
	@:overload @:public override public function values() : java.util.Collection<Dynamic>;
	
	@:overload @:protected override private function backingStore() : Dynamic;
	
	@:overload @:protected override private function registerWithMonitoring() : Void;
	
	@:overload @:protected override private function dprint(msg : String) : Void;
	
	
}
