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
/*
*/
extern class AbstractInterruptibleChannel implements java.nio.channels.Channel implements java.nio.channels.InterruptibleChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Closes this channel.
	*
	* <p> If the channel has already been closed then this method returns
	* immediately.  Otherwise it marks the channel as closed and then invokes
	* the {@link #implCloseChannel implCloseChannel} method in order to
	* complete the close operation.  </p>
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:final public function close() : Void;
	
	/**
	* Closes this channel.
	*
	* <p> This method is invoked by the {@link #close close} method in order
	* to perform the actual work of closing the channel.  This method is only
	* invoked if the channel has not yet been closed, and it is never invoked
	* more than once.
	*
	* <p> An implementation of this method must arrange for any other thread
	* that is blocked in an I/O operation upon this channel to return
	* immediately, either by throwing an exception or by returning normally.
	* </p>
	*
	* @throws  IOException
	*          If an I/O error occurs while closing the channel
	*/
	@:overload @:protected @:abstract private function implCloseChannel() : Void;
	
	@:overload @:public @:final public function isOpen() : Bool;
	
	/**
	* Marks the beginning of an I/O operation that might block indefinitely.
	*
	* <p> This method should be invoked in tandem with the {@link #end end}
	* method, using a <tt>try</tt>&nbsp;...&nbsp;<tt>finally</tt> block as
	* shown <a href="#be">above</a>, in order to implement asynchronous
	* closing and interruption for this channel.  </p>
	*/
	@:overload @:protected @:final private function begin() : Void;
	
	/**
	* Marks the end of an I/O operation that might block indefinitely.
	*
	* <p> This method should be invoked in tandem with the {@link #begin
	* begin} method, using a <tt>try</tt>&nbsp;...&nbsp;<tt>finally</tt> block
	* as shown <a href="#be">above</a>, in order to implement asynchronous
	* closing and interruption for this channel.  </p>
	*
	* @param  completed
	*         <tt>true</tt> if, and only if, the I/O operation completed
	*         successfully, that is, had some effect that would be visible to
	*         the operation's invoker
	*
	* @throws  AsynchronousCloseException
	*          If the channel was asynchronously closed
	*
	* @throws  ClosedByInterruptException
	*          If the thread blocked in the I/O operation was interrupted
	*/
	@:overload @:protected @:final private function end(completed : Bool) : Void;
	
	
}
