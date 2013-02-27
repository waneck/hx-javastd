package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SelectorImpl extends java.lang.Thread implements com.sun.corba.se.pept.transport.Selector
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function setTimeout(timeout : haxe.Int64) : Void;
	
	@:overload public function getTimeout() : haxe.Int64;
	
	@:overload public function registerInterestOps(eventHandler : com.sun.corba.se.pept.transport.EventHandler) : Void;
	
	@:overload public function registerForEvent(eventHandler : com.sun.corba.se.pept.transport.EventHandler) : Void;
	
	@:overload public function unregisterForEvent(eventHandler : com.sun.corba.se.pept.transport.EventHandler) : Void;
	
	@:overload public function close() : Void;
	
	@:overload override public function run() : Void;
	
	@:overload private function dprint(msg : String, t : java.lang.Throwable) : Void;
	
	
}
@:native('com$sun$corba$se$impl$transport$SelectorImpl$SelectionKeyAndOp') @:internal extern class SelectorImpl_SelectionKeyAndOp
{
	public var keyOp : Int;
	
	public var selectionKey : java.nio.channels.SelectionKey;
	
	@:overload public function new(selectionKey : java.nio.channels.SelectionKey, keyOp : Int) : Void;
	
	
}