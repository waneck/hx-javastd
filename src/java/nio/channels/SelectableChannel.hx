package java.nio.channels;
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
extern class SelectableChannel extends java.nio.channels.spi.AbstractInterruptibleChannel implements java.nio.channels.Channel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the provider that created this channel.
	*
	* @return  The provider that created this channel
	*/
	@:overload @:abstract public function provider() : java.nio.channels.spi.SelectorProvider;
	
	/**
	* Returns an <a href="SelectionKey.html#opsets">operation set</a>
	* identifying this channel's supported operations.  The bits that are set
	* in this integer value denote exactly the operations that are valid for
	* this channel.  This method always returns the same value for a given
	* concrete channel class. </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:abstract public function validOps() : Int;
	
	/**
	* Tells whether or not this channel is currently registered with any
	* selectors.  A newly-created channel is not registered.
	*
	* <p> Due to the inherent delay between key cancellation and channel
	* deregistration, a channel may remain registered for some time after all
	* of its keys have been cancelled.  A channel may also remain registered
	* for some time after it is closed.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is registered
	*/
	@:overload @:abstract public function isRegistered() : Bool;
	
	/**
	* Retrieves the key representing the channel's registration with the given
	* selector.  </p>
	*
	* @return  The key returned when this channel was last registered with the
	*          given selector, or <tt>null</tt> if this channel is not
	*          currently registered with that selector
	*/
	@:overload @:abstract public function keyFor(sel : java.nio.channels.Selector) : java.nio.channels.SelectionKey;
	
	/**
	* Registers this channel with the given selector, returning a selection
	* key.
	*
	* <p> If this channel is currently registered with the given selector then
	* the selection key representing that registration is returned.  The key's
	* interest set will have been changed to <tt>ops</tt>, as if by invoking
	* the {@link SelectionKey#interestOps(int) interestOps(int)} method.  If
	* the <tt>att</tt> argument is not <tt>null</tt> then the key's attachment
	* will have been set to that value.  A {@link CancelledKeyException} will
	* be thrown if the key has already been cancelled.
	*
	* <p> Otherwise this channel has not yet been registered with the given
	* selector, so it is registered and the resulting new key is returned.
	* The key's initial interest set will be <tt>ops</tt> and its attachment
	* will be <tt>att</tt>.
	*
	* <p> This method may be invoked at any time.  If this method is invoked
	* while another invocation of this method or of the {@link
	* #configureBlocking(boolean) configureBlocking} method is in progress
	* then it will first block until the other operation is complete.  This
	* method will then synchronize on the selector's key set and therefore may
	* block if invoked concurrently with another registration or selection
	* operation involving the same selector. </p>
	*
	* <p> If this channel is closed while this operation is in progress then
	* the key returned by this method will have been cancelled and will
	* therefore be invalid. </p>
	*
	* @param  sel
	*         The selector with which this channel is to be registered
	*
	* @param  ops
	*         The interest set for the resulting key
	*
	* @param  att
	*         The attachment for the resulting key; may be <tt>null</tt>
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  ClosedSelectorException
	*          If the selector is closed
	*
	* @throws  IllegalBlockingModeException
	*          If this channel is in blocking mode
	*
	* @throws  IllegalSelectorException
	*          If this channel was not created by the same provider
	*          as the given selector
	*
	* @throws  CancelledKeyException
	*          If this channel is currently registered with the given selector
	*          but the corresponding key has already been cancelled
	*
	* @throws  IllegalArgumentException
	*          If a bit in the <tt>ops</tt> set does not correspond to an
	*          operation that is supported by this channel, that is, if
	*          <tt>set & ~validOps() != 0</tt>
	*
	* @return  A key representing the registration of this channel with
	*          the given selector
	*/
	@:overload @:abstract public function register(sel : java.nio.channels.Selector, ops : Int, att : Dynamic) : java.nio.channels.SelectionKey;
	
	/**
	* Registers this channel with the given selector, returning a selection
	* key.
	*
	* <p> An invocation of this convenience method of the form
	*
	* <blockquote><tt>sc.register(sel, ops)</tt></blockquote>
	*
	* behaves in exactly the same way as the invocation
	*
	* <blockquote><tt>sc.{@link
	* #register(java.nio.channels.Selector,int,java.lang.Object)
	* register}(sel, ops, null)</tt></blockquote>
	*
	* @param  sel
	*         The selector with which this channel is to be registered
	*
	* @param  ops
	*         The interest set for the resulting key
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  ClosedSelectorException
	*          If the selector is closed
	*
	* @throws  IllegalBlockingModeException
	*          If this channel is in blocking mode
	*
	* @throws  IllegalSelectorException
	*          If this channel was not created by the same provider
	*          as the given selector
	*
	* @throws  CancelledKeyException
	*          If this channel is currently registered with the given selector
	*          but the corresponding key has already been cancelled
	*
	* @throws  IllegalArgumentException
	*          If a bit in <tt>ops</tt> does not correspond to an operation
	*          that is supported by this channel, that is, if <tt>set &
	*          ~validOps() != 0</tt>
	*
	* @return  A key representing the registration of this channel with
	*          the given selector
	*/
	@:overload @:final public function register(sel : java.nio.channels.Selector, ops : Int) : java.nio.channels.SelectionKey;
	
	/**
	* Adjusts this channel's blocking mode.
	*
	* <p> If this channel is registered with one or more selectors then an
	* attempt to place it into blocking mode will cause an {@link
	* IllegalBlockingModeException} to be thrown.
	*
	* <p> This method may be invoked at any time.  The new blocking mode will
	* only affect I/O operations that are initiated after this method returns.
	* For some implementations this may require blocking until all pending I/O
	* operations are complete.
	*
	* <p> If this method is invoked while another invocation of this method or
	* of the {@link #register(Selector, int) register} method is in progress
	* then it will first block until the other operation is complete. </p>
	*
	* @param  block  If <tt>true</tt> then this channel will be placed in
	*                blocking mode; if <tt>false</tt> then it will be placed
	*                non-blocking mode
	*
	* @return  This selectable channel
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IllegalBlockingModeException
	*          If <tt>block</tt> is <tt>true</tt> and this channel is
	*          registered with one or more selectors
	*
	* @throws IOException
	*         If an I/O error occurs
	*/
	@:overload @:abstract public function configureBlocking(block : Bool) : java.nio.channels.SelectableChannel;
	
	/**
	* Tells whether or not every I/O operation on this channel will block
	* until it completes.  A newly-created channel is always in blocking mode.
	*
	* <p> If this channel is closed then the value returned by this method is
	* not specified. </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is in blocking mode
	*/
	@:overload @:abstract public function isBlocking() : Bool;
	
	/**
	* Retrieves the object upon which the {@link #configureBlocking
	* configureBlocking} and {@link #register register} methods synchronize.
	* This is often useful in the implementation of adaptors that require a
	* specific blocking mode to be maintained for a short period of time.
	* </p>
	*
	* @return  The blocking-mode lock object
	*/
	@:overload @:abstract public function blockingLock() : Dynamic;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public override public function isOpen() : Bool;
	
	/**
	* Closes this channel.
	*
	* <p> After a channel is closed, any further attempt to invoke I/O
	* operations upon it will cause a {@link ClosedChannelException} to be
	* thrown.
	*
	* <p> If this channel is already closed then invoking this method has no
	* effect.
	*
	* <p> This method may be invoked at any time.  If some other thread has
	* already invoked it, however, then another invocation will block until
	* the first invocation is complete, after which it will return without
	* effect. </p>
	*
	* @throws  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function close() : Void;
	
	
}
