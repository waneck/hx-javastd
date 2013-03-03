package java.nio.channels;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Selector implements java.io.Closeable
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Opens a selector.
	*
	* <p> The new selector is created by invoking the {@link
	* java.nio.channels.spi.SelectorProvider#openSelector openSelector} method
	* of the system-wide default {@link
	* java.nio.channels.spi.SelectorProvider} object.  </p>
	*
	* @return  A new selector
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function open() : java.nio.channels.Selector;
	
	/**
	* Tells whether or not this selector is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this selector is open
	*/
	@:overload @:public @:abstract public function isOpen() : Bool;
	
	/**
	* Returns the provider that created this channel.  </p>
	*
	* @return  The provider that created this channel
	*/
	@:overload @:public @:abstract public function provider() : java.nio.channels.spi.SelectorProvider;
	
	/**
	* Returns this selector's key set.
	*
	* <p> The key set is not directly modifiable.  A key is removed only after
	* it has been cancelled and its channel has been deregistered.  Any
	* attempt to modify the key set will cause an {@link
	* UnsupportedOperationException} to be thrown.
	*
	* <p> The key set is <a href="#ksc">not thread-safe</a>. </p>
	*
	* @return  This selector's key set
	*
	* @throws  ClosedSelectorException
	*          If this selector is closed
	*/
	@:overload @:public @:abstract public function keys() : java.util.Set<java.nio.channels.SelectionKey>;
	
	/**
	* Returns this selector's selected-key set.
	*
	* <p> Keys may be removed from, but not directly added to, the
	* selected-key set.  Any attempt to add an object to the key set will
	* cause an {@link UnsupportedOperationException} to be thrown.
	*
	* <p> The selected-key set is <a href="#ksc">not thread-safe</a>. </p>
	*
	* @return  This selector's selected-key set
	*
	* @throws  ClosedSelectorException
	*          If this selector is closed
	*/
	@:overload @:public @:abstract public function selectedKeys() : java.util.Set<java.nio.channels.SelectionKey>;
	
	/**
	* Selects a set of keys whose corresponding channels are ready for I/O
	* operations.
	*
	* <p> This method performs a non-blocking <a href="#selop">selection
	* operation</a>.  If no channels have become selectable since the previous
	* selection operation then this method immediately returns zero.
	*
	* <p> Invoking this method clears the effect of any previous invocations
	* of the {@link #wakeup wakeup} method.  </p>
	*
	* @return  The number of keys, possibly zero, whose ready-operation sets
	*          were updated by the selection operation
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @throws  ClosedSelectorException
	*          If this selector is closed
	*/
	@:overload @:public @:abstract public function selectNow() : Int;
	
	/**
	* Selects a set of keys whose corresponding channels are ready for I/O
	* operations.
	*
	* <p> This method performs a blocking <a href="#selop">selection
	* operation</a>.  It returns only after at least one channel is selected,
	* this selector's {@link #wakeup wakeup} method is invoked, the current
	* thread is interrupted, or the given timeout period expires, whichever
	* comes first.
	*
	* <p> This method does not offer real-time guarantees: It schedules the
	* timeout as if by invoking the {@link Object#wait(long)} method. </p>
	*
	* @param  timeout  If positive, block for up to <tt>timeout</tt>
	*                  milliseconds, more or less, while waiting for a
	*                  channel to become ready; if zero, block indefinitely;
	*                  must not be negative
	*
	* @return  The number of keys, possibly zero,
	*          whose ready-operation sets were updated
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @throws  ClosedSelectorException
	*          If this selector is closed
	*
	* @throws  IllegalArgumentException
	*          If the value of the timeout argument is negative
	*/
	@:overload @:public @:abstract public function select(timeout : haxe.Int64) : Int;
	
	/**
	* Selects a set of keys whose corresponding channels are ready for I/O
	* operations.
	*
	* <p> This method performs a blocking <a href="#selop">selection
	* operation</a>.  It returns only after at least one channel is selected,
	* this selector's {@link #wakeup wakeup} method is invoked, or the current
	* thread is interrupted, whichever comes first.  </p>
	*
	* @return  The number of keys, possibly zero,
	*          whose ready-operation sets were updated
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @throws  ClosedSelectorException
	*          If this selector is closed
	*/
	@:overload @:public @:abstract public function select() : Int;
	
	/**
	* Causes the first selection operation that has not yet returned to return
	* immediately.
	*
	* <p> If another thread is currently blocked in an invocation of the
	* {@link #select()} or {@link #select(long)} methods then that invocation
	* will return immediately.  If no selection operation is currently in
	* progress then the next invocation of one of these methods will return
	* immediately unless the {@link #selectNow()} method is invoked in the
	* meantime.  In any case the value returned by that invocation may be
	* non-zero.  Subsequent invocations of the {@link #select()} or {@link
	* #select(long)} methods will block as usual unless this method is invoked
	* again in the meantime.
	*
	* <p> Invoking this method more than once between two successive selection
	* operations has the same effect as invoking it just once.  </p>
	*
	* @return  This selector
	*/
	@:overload @:public @:abstract public function wakeup() : java.nio.channels.Selector;
	
	/**
	* Closes this selector.
	*
	* <p> If a thread is currently blocked in one of this selector's selection
	* methods then it is interrupted as if by invoking the selector's {@link
	* #wakeup wakeup} method.
	*
	* <p> Any uncancelled keys still associated with this selector are
	* invalidated, their channels are deregistered, and any other resources
	* associated with this selector are released.
	*
	* <p> If this selector is already closed then invoking this method has no
	* effect.
	*
	* <p> After a selector is closed, any further attempt to use it, except by
	* invoking this method or the {@link #wakeup wakeup} method, will cause a
	* {@link ClosedSelectorException} to be thrown. </p>
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:abstract public function close() : Void;
	
	
}
