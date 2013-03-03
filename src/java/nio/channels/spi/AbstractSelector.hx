package java.nio.channels.spi;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractSelector extends java.nio.channels.Selector
{
	/**
	* Initializes a new instance of this class.  </p>
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Closes this selector.
	*
	* <p> If the selector has already been closed then this method returns
	* immediately.  Otherwise it marks the selector as closed and then invokes
	* the {@link #implCloseSelector implCloseSelector} method in order to
	* complete the close operation.  </p>
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:final override public function close() : Void;
	
	/**
	* Closes this selector.
	*
	* <p> This method is invoked by the {@link #close close} method in order
	* to perform the actual work of closing the selector.  This method is only
	* invoked if the selector has not yet been closed, and it is never invoked
	* more than once.
	*
	* <p> An implementation of this method must arrange for any other thread
	* that is blocked in a selection operation upon this selector to return
	* immediately as if by invoking the {@link
	* java.nio.channels.Selector#wakeup wakeup} method. </p>
	*
	* @throws  IOException
	*          If an I/O error occurs while closing the selector
	*/
	@:overload @:protected @:abstract private function implCloseSelector() : Void;
	
	@:overload @:public @:final override public function isOpen() : Bool;
	
	/**
	* Returns the provider that created this channel.
	*
	* @return  The provider that created this channel
	*/
	@:overload @:public @:final override public function provider() : java.nio.channels.spi.SelectorProvider;
	
	/**
	* Retrieves this selector's cancelled-key set.
	*
	* <p> This set should only be used while synchronized upon it.  </p>
	*
	* @return  The cancelled-key set
	*/
	@:overload @:protected @:final private function cancelledKeys() : java.util.Set<java.nio.channels.SelectionKey>;
	
	/**
	* Registers the given channel with this selector.
	*
	* <p> This method is invoked by a channel's {@link
	* AbstractSelectableChannel#register register} method in order to perform
	* the actual work of registering the channel with this selector.  </p>
	*
	* @param  ch
	*         The channel to be registered
	*
	* @param  ops
	*         The initial interest set, which must be valid
	*
	* @param  att
	*         The initial attachment for the resulting key
	*
	* @return  A new key representing the registration of the given channel
	*          with this selector
	*/
	@:overload @:protected @:abstract private function register(ch : java.nio.channels.spi.AbstractSelectableChannel, ops : Int, att : Dynamic) : java.nio.channels.SelectionKey;
	
	/**
	* Removes the given key from its channel's key set.
	*
	* <p> This method must be invoked by the selector for each channel that it
	* deregisters.  </p>
	*
	* @param  key
	*         The selection key to be removed
	*/
	@:overload @:protected @:final private function deregister(key : java.nio.channels.spi.AbstractSelectionKey) : Void;
	
	/**
	* Marks the beginning of an I/O operation that might block indefinitely.
	*
	* <p> This method should be invoked in tandem with the {@link #end end}
	* method, using a <tt>try</tt>&nbsp;...&nbsp;<tt>finally</tt> block as
	* shown <a href="#be">above</a>, in order to implement interruption for
	* this selector.
	*
	* <p> Invoking this method arranges for the selector's {@link
	* Selector#wakeup wakeup} method to be invoked if a thread's {@link
	* Thread#interrupt interrupt} method is invoked while the thread is
	* blocked in an I/O operation upon the selector.  </p>
	*/
	@:overload @:protected @:final private function begin() : Void;
	
	/**
	* Marks the end of an I/O operation that might block indefinitely.
	*
	* <p> This method should be invoked in tandem with the {@link #begin begin}
	* method, using a <tt>try</tt>&nbsp;...&nbsp;<tt>finally</tt> block as
	* shown <a href="#be">above</a>, in order to implement interruption for
	* this selector.  </p>
	*/
	@:overload @:protected @:final private function end() : Void;
	
	
}
