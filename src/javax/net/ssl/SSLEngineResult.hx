package javax.net.ssl;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
* An encapsulation of the result state produced by
* <code>SSLEngine</code> I/O calls.
*
* <p> A <code>SSLEngine</code> provides a means for establishing
* secure communication sessions between two peers.  <code>SSLEngine</code>
* operations typically consume bytes from an input buffer and produce
* bytes in an output buffer.  This class provides operational result
* values describing the state of the <code>SSLEngine</code>, including
* indications of what operations are needed to finish an
* ongoing handshake.  Lastly, it reports the number of bytes consumed
* and produced as a result of this operation.
*
* @see SSLEngine
* @see SSLEngine#wrap(ByteBuffer, ByteBuffer)
* @see SSLEngine#unwrap(ByteBuffer, ByteBuffer)
*
* @author Brad R. Wetmore
* @since 1.5
*/
@:require(java5) extern class SSLEngineResult
{
	/**
	* Initializes a new instance of this class.
	*
	* @param   status
	*          the return value of the operation.
	*
	* @param   handshakeStatus
	*          the current handshaking status.
	*
	* @param   bytesConsumed
	*          the number of bytes consumed from the source ByteBuffer
	*
	* @param   bytesProduced
	*          the number of bytes placed into the destination ByteBuffer
	*
	* @throws  IllegalArgumentException
	*          if the <code>status</code> or <code>handshakeStatus</code>
	*          arguments are null, or if <<code>bytesConsumed</code> or
	*          <code>bytesProduced</code> is negative.
	*/
	@:overload public function new(status : SSLEngineResult_Status, handshakeStatus : SSLEngineResult_HandshakeStatus, bytesConsumed : Int, bytesProduced : Int) : Void;
	
	/**
	* Gets the return value of this <code>SSLEngine</code> operation.
	*
	* @return  the return value
	*/
	@:overload @:final public function getStatus() : SSLEngineResult_Status;
	
	/**
	* Gets the handshake status of this <code>SSLEngine</code>
	* operation.
	*
	* @return  the handshake status
	*/
	@:overload @:final public function getHandshakeStatus() : SSLEngineResult_HandshakeStatus;
	
	/**
	* Returns the number of bytes consumed from the input buffer.
	*
	* @return  the number of bytes consumed.
	*/
	@:overload @:final public function bytesConsumed() : Int;
	
	/**
	* Returns the number of bytes written to the output buffer.
	*
	* @return  the number of bytes produced
	*/
	@:overload @:final public function bytesProduced() : Int;
	
	/**
	* Returns a String representation of this object.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* An <code>SSLEngineResult</code> enum describing the overall result
* of the <code>SSLEngine</code> operation.
*
* The <code>Status</code> value does not reflect the
* state of a <code>SSLEngine</code> handshake currently
* in progress.  The <code>SSLEngineResult's HandshakeStatus</code>
* should be consulted for that information.
*
* @author Brad R. Wetmore
* @since 1.5
*/
@:require(java5) @:native('javax$net$ssl$SSLEngineResult$Status') extern enum SSLEngineResult_Status
{
	/**
	* The <code>SSLEngine</code> was not able to unwrap the
	* incoming data because there were not enough source bytes
	* available to make a complete packet.
	*
	* <P>
	* Repeat the call once more bytes are available.
	*/
	BUFFER_UNDERFLOW;
	/**
	* The <code>SSLEngine</code> was not able to process the
	* operation because there are not enough bytes available in the
	* destination buffer to hold the result.
	* <P>
	* Repeat the call once more bytes are available.
	*
	* @see SSLSession#getPacketBufferSize()
	* @see SSLSession#getApplicationBufferSize()
	*/
	BUFFER_OVERFLOW;
	/**
	* The <code>SSLEngine</code> completed the operation, and
	* is available to process similar calls.
	*/
	OK;
	/**
	* The operation just closed this side of the
	* <code>SSLEngine</code>, or the operation
	* could not be completed because it was already closed.
	*/
	CLOSED;
	
}

/**
* An <code>SSLEngineResult</code> enum describing the current
* handshaking state of this <code>SSLEngine</code>.
*
* @author Brad R. Wetmore
* @since 1.5
*/
@:require(java5) @:native('javax$net$ssl$SSLEngineResult$HandshakeStatus') extern enum SSLEngineResult_HandshakeStatus
{
	/**
	* The <code>SSLEngine</code> is not currently handshaking.
	*/
	NOT_HANDSHAKING;
	/**
	* The <code>SSLEngine</code> has just finished handshaking.
	* <P>
	* This value is only generated by a call to
	* <code>SSLEngine.wrap()/unwrap()</code> when that call
	* finishes a handshake.  It is never generated by
	* <code>SSLEngine.getHandshakeStatus()</code>.
	*
	* @see SSLEngine#wrap(ByteBuffer, ByteBuffer)
	* @see SSLEngine#unwrap(ByteBuffer, ByteBuffer)
	* @see SSLEngine#getHandshakeStatus()
	*/
	FINISHED;
	/**
	* The <code>SSLEngine</code> needs the results of one (or more)
	* delegated tasks before handshaking can continue.
	*
	* @see SSLEngine#getDelegatedTask()
	*/
	NEED_TASK;
	/**
	* The <code>SSLEngine</code> must send data to the remote side
	* before handshaking can continue, so <code>SSLEngine.wrap()</code>
	* should be called.
	*
	* @see SSLEngine#wrap(ByteBuffer, ByteBuffer)
	*/
	NEED_WRAP;
	/**
	* The <code>SSLEngine</code> needs to receive data from the
	* remote side before handshaking can continue.
	*/
	NEED_UNWRAP;
	
}

