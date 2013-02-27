package sun.nio.ch;
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
@:internal extern class InheritedChannel
{
	/*
	* Returns a Channel representing the inherited channel if the
	* inherited channel is a stream connected to a network socket.
	*/
	@:overload @:synchronized public static function getChannel() : java.nio.channels.Channel;
	
	
}
/*
* Override the implCloseSelectableChannel for each channel type - this
* allows us to "detach" the standard streams after closing and ensures
* that the underlying socket really closes.
*/
@:native('sun$nio$ch$InheritedChannel$InheritedSocketChannelImpl') extern class InheritedChannel_InheritedSocketChannelImpl extends sun.nio.ch.SocketChannelImpl
{
	@:overload override private function implCloseSelectableChannel() : Void;
	
	
}
@:native('sun$nio$ch$InheritedChannel$InheritedServerSocketChannelImpl') extern class InheritedChannel_InheritedServerSocketChannelImpl extends sun.nio.ch.ServerSocketChannelImpl
{
	@:overload override private function implCloseSelectableChannel() : Void;
	
	
}
@:native('sun$nio$ch$InheritedChannel$InheritedDatagramChannelImpl') extern class InheritedChannel_InheritedDatagramChannelImpl extends sun.nio.ch.DatagramChannelImpl
{
	@:overload override private function implCloseSelectableChannel() : Void;
	
	
}
