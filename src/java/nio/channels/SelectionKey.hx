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
extern class SelectionKey
{
	/**
	* Constructs an instance of this class.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the channel for which this key was created.  This method will
	* continue to return the channel even after the key is cancelled.  </p>
	*
	* @return  This key's channel
	*/
	@:overload @:abstract public function channel() : java.nio.channels.SelectableChannel;
	
	/**
	* Returns the selector for which this key was created.  This method will
	* continue to return the selector even after the key is cancelled.  </p>
	*
	* @return  This key's selector
	*/
	@:overload @:abstract public function selector() : java.nio.channels.Selector;
	
	/**
	* Tells whether or not this key is valid.
	*
	* <p> A key is valid upon creation and remains so until it is cancelled,
	* its channel is closed, or its selector is closed.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this key is valid
	*/
	@:overload @:abstract public function isValid() : Bool;
	
	/**
	* Requests that the registration of this key's channel with its selector
	* be cancelled.  Upon return the key will be invalid and will have been
	* added to its selector's cancelled-key set.  The key will be removed from
	* all of the selector's key sets during the next selection operation.
	*
	* <p> If this key has already been cancelled then invoking this method has
	* no effect.  Once cancelled, a key remains forever invalid. </p>
	*
	* <p> This method may be invoked at any time.  It synchronizes on the
	* selector's cancelled-key set, and therefore may block briefly if invoked
	* concurrently with a cancellation or selection operation involving the
	* same selector.  </p>
	*/
	@:overload @:abstract public function cancel() : Void;
	
	/**
	* Retrieves this key's interest set.
	*
	* <p> It is guaranteed that the returned set will only contain operation
	* bits that are valid for this key's channel.
	*
	* <p> This method may be invoked at any time.  Whether or not it blocks,
	* and for how long, is implementation-dependent.  </p>
	*
	* @return  This key's interest set
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:abstract public function interestOps() : Int;
	
	/**
	* Sets this key's interest set to the given value.
	*
	* <p> This method may be invoked at any time.  Whether or not it blocks,
	* and for how long, is implementation-dependent.  </p>
	*
	* @param  ops  The new interest set
	*
	* @return  This selection key
	*
	* @throws  IllegalArgumentException
	*          If a bit in the set does not correspond to an operation that
	*          is supported by this key's channel, that is, if
	*          <tt>(ops & ~channel().validOps()) != 0</tt>
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:abstract public function interestOps(ops : Int) : java.nio.channels.SelectionKey;
	
	/**
	* Retrieves this key's ready-operation set.
	*
	* <p> It is guaranteed that the returned set will only contain operation
	* bits that are valid for this key's channel.  </p>
	*
	* @return  This key's ready-operation set
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:abstract public function readyOps() : Int;
	
	/**
	* Operation-set bit for read operations.
	*
	* <p> Suppose that a selection key's interest set contains
	* <tt>OP_READ</tt> at the start of a <a
	* href="Selector.html#selop">selection operation</a>.  If the selector
	* detects that the corresponding channel is ready for reading, has reached
	* end-of-stream, has been remotely shut down for further reading, or has
	* an error pending, then it will add <tt>OP_READ</tt> to the key's
	* ready-operation set and add the key to its selected-key&nbsp;set.  </p>
	*/
	public static var OP_READ(default, null) : Int;
	
	/**
	* Operation-set bit for write operations.  </p>
	*
	* <p> Suppose that a selection key's interest set contains
	* <tt>OP_WRITE</tt> at the start of a <a
	* href="Selector.html#selop">selection operation</a>.  If the selector
	* detects that the corresponding channel is ready for writing, has been
	* remotely shut down for further writing, or has an error pending, then it
	* will add <tt>OP_WRITE</tt> to the key's ready set and add the key to its
	* selected-key&nbsp;set.  </p>
	*/
	public static var OP_WRITE(default, null) : Int;
	
	/**
	* Operation-set bit for socket-connect operations.  </p>
	*
	* <p> Suppose that a selection key's interest set contains
	* <tt>OP_CONNECT</tt> at the start of a <a
	* href="Selector.html#selop">selection operation</a>.  If the selector
	* detects that the corresponding socket channel is ready to complete its
	* connection sequence, or has an error pending, then it will add
	* <tt>OP_CONNECT</tt> to the key's ready set and add the key to its
	* selected-key&nbsp;set.  </p>
	*/
	public static var OP_CONNECT(default, null) : Int;
	
	/**
	* Operation-set bit for socket-accept operations.  </p>
	*
	* <p> Suppose that a selection key's interest set contains
	* <tt>OP_ACCEPT</tt> at the start of a <a
	* href="Selector.html#selop">selection operation</a>.  If the selector
	* detects that the corresponding server-socket channel is ready to accept
	* another connection, or has an error pending, then it will add
	* <tt>OP_ACCEPT</tt> to the key's ready set and add the key to its
	* selected-key&nbsp;set.  </p>
	*/
	public static var OP_ACCEPT(default, null) : Int;
	
	/**
	* Tests whether this key's channel is ready for reading.
	*
	* <p> An invocation of this method of the form <tt>k.isReadable()</tt>
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* k.readyOps()&nbsp;&amp;&nbsp;OP_READ&nbsp;!=&nbsp;0</pre></blockquote>
	*
	* <p> If this key's channel does not support read operations then this
	* method always returns <tt>false</tt>.  </p>
	*
	* @return  <tt>true</tt> if, and only if,
	*          <tt>readyOps()</tt>&nbsp;<tt>&</tt>&nbsp;<tt>OP_READ</tt> is
	*          nonzero
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:final public function isReadable() : Bool;
	
	/**
	* Tests whether this key's channel is ready for writing.
	*
	* <p> An invocation of this method of the form <tt>k.isWritable()</tt>
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* k.readyOps()&nbsp;&amp;&nbsp;OP_WRITE&nbsp;!=&nbsp;0</pre></blockquote>
	*
	* <p> If this key's channel does not support write operations then this
	* method always returns <tt>false</tt>.  </p>
	*
	* @return  <tt>true</tt> if, and only if,
	*          <tt>readyOps()</tt>&nbsp;<tt>&</tt>&nbsp;<tt>OP_WRITE</tt>
	*          is nonzero
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:final public function isWritable() : Bool;
	
	/**
	* Tests whether this key's channel has either finished, or failed to
	* finish, its socket-connection operation.
	*
	* <p> An invocation of this method of the form <tt>k.isConnectable()</tt>
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* k.readyOps()&nbsp;&amp;&nbsp;OP_CONNECT&nbsp;!=&nbsp;0</pre></blockquote>
	*
	* <p> If this key's channel does not support socket-connect operations
	* then this method always returns <tt>false</tt>.  </p>
	*
	* @return  <tt>true</tt> if, and only if,
	*          <tt>readyOps()</tt>&nbsp;<tt>&</tt>&nbsp;<tt>OP_CONNECT</tt>
	*          is nonzero
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:final public function isConnectable() : Bool;
	
	/**
	* Tests whether this key's channel is ready to accept a new socket
	* connection.
	*
	* <p> An invocation of this method of the form <tt>k.isAcceptable()</tt>
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* k.readyOps()&nbsp;&amp;&nbsp;OP_ACCEPT&nbsp;!=&nbsp;0</pre></blockquote>
	*
	* <p> If this key's channel does not support socket-accept operations then
	* this method always returns <tt>false</tt>.  </p>
	*
	* @return  <tt>true</tt> if, and only if,
	*          <tt>readyOps()</tt>&nbsp;<tt>&</tt>&nbsp;<tt>OP_ACCEPT</tt>
	*          is nonzero
	*
	* @throws  CancelledKeyException
	*          If this key has been cancelled
	*/
	@:overload @:final public function isAcceptable() : Bool;
	
	/**
	* Attaches the given object to this key.
	*
	* <p> An attached object may later be retrieved via the {@link #attachment()
	* attachment} method.  Only one object may be attached at a time; invoking
	* this method causes any previous attachment to be discarded.  The current
	* attachment may be discarded by attaching <tt>null</tt>.  </p>
	*
	* @param  ob
	*         The object to be attached; may be <tt>null</tt>
	*
	* @return  The previously-attached object, if any,
	*          otherwise <tt>null</tt>
	*/
	@:overload @:final public function attach(ob : Dynamic) : Dynamic;
	
	/**
	* Retrieves the current attachment.  </p>
	*
	* @return  The object currently attached to this key,
	*          or <tt>null</tt> if there is no attachment
	*/
	@:overload @:final public function attachment() : Dynamic;
	
	
}
