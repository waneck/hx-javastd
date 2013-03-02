package java.nio.channels.spi;
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
* Base implementation class for selectable channels.
*
* <p> This class defines methods that handle the mechanics of channel
* registration, deregistration, and closing.  It maintains the current
* blocking mode of this channel as well as its current set of selection keys.
* It performs all of the synchronization required to implement the {@link
* java.nio.channels.SelectableChannel} specification.  Implementations of the
* abstract protected methods defined in this class need not synchronize
* against other threads that might be engaged in the same operations.  </p>
*
*
* @author Mark Reinhold
* @author Mike McCloskey
* @author JSR-51 Expert Group
* @since 1.4
*/
@:require(java4) extern class AbstractSelectableChannel extends java.nio.channels.SelectableChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Returns the provider that created this channel.
	*
	* @return  The provider that created this channel
	*/
	@:overload @:final public function provider() : java.nio.channels.spi.SelectorProvider;
	
	@:overload @:final public function isRegistered() : Bool;
	
	@:overload @:final public function keyFor(sel : java.nio.channels.Selector) : java.nio.channels.SelectionKey;
	
	/**
	* Registers this channel with the given selector, returning a selection key.
	*
	* <p>  This method first verifies that this channel is open and that the
	* given initial interest set is valid.
	*
	* <p> If this channel is already registered with the given selector then
	* the selection key representing that registration is returned after
	* setting its interest set to the given value.
	*
	* <p> Otherwise this channel has not yet been registered with the given
	* selector, so the {@link AbstractSelector#register register} method of
	* the selector is invoked while holding the appropriate locks.  The
	* resulting key is added to this channel's key set before being returned.
	* </p>
	*
	* @throws  ClosedSelectorException {@inheritDoc}
	*
	* @throws  IllegalBlockingModeException {@inheritDoc}
	*
	* @throws  IllegalSelectorException {@inheritDoc}
	*
	* @throws  CancelledKeyException {@inheritDoc}
	*
	* @throws  IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:final public function register(sel : java.nio.channels.Selector, ops : Int, att : Dynamic) : java.nio.channels.SelectionKey;
	
	/**
	* Closes this channel.
	*
	* <p> This method, which is specified in the {@link
	* AbstractInterruptibleChannel} class and is invoked by the {@link
	* java.nio.channels.Channel#close close} method, in turn invokes the
	* {@link #implCloseSelectableChannel implCloseSelectableChannel} method in
	* order to perform the actual work of closing this channel.  It then
	* cancels all of this channel's keys.  </p>
	*/
	@:overload @:final override private function implCloseChannel() : Void;
	
	/**
	* Closes this selectable channel.
	*
	* <p> This method is invoked by the {@link java.nio.channels.Channel#close
	* close} method in order to perform the actual work of closing the
	* channel.  This method is only invoked if the channel has not yet been
	* closed, and it is never invoked more than once.
	*
	* <p> An implementation of this method must arrange for any other thread
	* that is blocked in an I/O operation upon this channel to return
	* immediately, either by throwing an exception or by returning normally.
	* </p>
	*/
	@:overload @:abstract private function implCloseSelectableChannel() : Void;
	
	@:overload @:final public function isBlocking() : Bool;
	
	@:overload @:final public function blockingLock() : Dynamic;
	
	/**
	* Adjusts this channel's blocking mode.
	*
	* <p> If the given blocking mode is different from the current blocking
	* mode then this method invokes the {@link #implConfigureBlocking
	* implConfigureBlocking} method, while holding the appropriate locks, in
	* order to change the mode.  </p>
	*/
	@:overload @:final public function configureBlocking(block : Bool) : java.nio.channels.SelectableChannel;
	
	/**
	* Adjusts this channel's blocking mode.
	*
	* <p> This method is invoked by the {@link #configureBlocking
	* configureBlocking} method in order to perform the actual work of
	* changing the blocking mode.  This method is only invoked if the new mode
	* is different from the current mode.  </p>
	*
	* @throws IOException
	*         If an I/O error occurs
	*/
	@:overload @:abstract private function implConfigureBlocking(block : Bool) : Void;
	
	
}
