package sun.nio.ch;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Base Selector implementation class.
*/
@:internal extern class SelectorImpl extends java.nio.channels.spi.AbstractSelector
{
	@:overload private function new(sp : java.nio.channels.spi.SelectorProvider) : Void;
	
	@:overload override public function keys() : java.util.Set<java.nio.channels.SelectionKey>;
	
	@:overload override public function selectedKeys() : java.util.Set<java.nio.channels.SelectionKey>;
	
	@:overload @:abstract private function doSelect(timeout : haxe.Int64) : Int;
	
	@:overload override public function select(timeout : haxe.Int64) : Int;
	
	@:overload override public function select() : Int;
	
	@:overload override public function selectNow() : Int;
	
	@:overload override public function implCloseSelector() : Void;
	
	@:overload @:abstract private function implClose() : Void;
	
	@:overload @:final override private function register(ch : java.nio.channels.spi.AbstractSelectableChannel, ops : Int, attachment : Dynamic) : java.nio.channels.SelectionKey;
	
	@:overload @:abstract private function implRegister(ski : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:abstract private function implDereg(ski : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:abstract override public function wakeup() : java.nio.channels.Selector;
	
	
}
