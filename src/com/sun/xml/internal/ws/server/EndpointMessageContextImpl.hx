package com.sun.xml.internal.ws.server;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class EndpointMessageContextImpl extends java.util.AbstractMap<String, Dynamic> implements javax.xml.ws.handler.MessageContext
{
	/**
	* @param packet
	*      The {@link Packet} to wrap.
	*/
	@:overload @:public public function new(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:public override public function get(key : Dynamic) : Dynamic;
	
	@:overload @:public public function put(key : String, value : Dynamic) : Dynamic;
	
	@:overload @:public override public function remove(key : Dynamic) : Dynamic;
	
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, Dynamic>>;
	
	@:overload @:public public function setScope(name : String, scope : javax.xml.ws.handler.MessageContext.MessageContext_Scope) : Void;
	
	@:overload @:public public function getScope(name : String) : javax.xml.ws.handler.MessageContext.MessageContext_Scope;
	
	
}
@:native('com$sun$xml$internal$ws$server$EndpointMessageContextImpl$EntrySet') @:internal extern class EndpointMessageContextImpl_EntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<String, Dynamic>>
{
	@:overload @:public override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<String, Dynamic>>;
	
	@:overload @:public override public function size() : Int;
	
	
}
