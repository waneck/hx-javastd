package com.sun.nio.sctp;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class MessageInfo
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Creates a {@code MessageInfo} instance suitable for use when
	* sending a message.
	*
	* <P> The returned instance will have its {@link #isUnordered() unordered}
	* value set to {@code false}, its {@link #timeToLive() timeToLive} value
	* set to {@code 0}, its {@link #isComplete() complete} value set
	* to {@code true}, and its {@link #payloadProtocolID() payloadProtocolID}
	* value set to {@code 0}. These values, if required, can be set through
	* the appropriate setter method before sending the message.
	*
	* @param  address
	*         For a connected {@code SctpChannel} the address is the
	*         preferred peer address of the association to send the message
	*         to, or {@code null} to use the peer primary address. For an
	*         {@code SctpMultiChannel} the address is used to determine
	*         the association, or if no association exists with a peer of that
	*         address then one is setup.
	*
	* @param  streamNumber
	*         The stream number that the message will be sent on
	*
	* @return  The outgoing message info
	*
	* @throws  IllegalArgumentException
	*          If the streamNumber is negative or greater than {@code 65536}
	*/
	@:overload @:public @:static public static function createOutgoing(address : java.net.SocketAddress, streamNumber : Int) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* Creates a {@code MessageInfo} instance suitable for use when
	* sending a message to a given association. Typically used for
	* {@code SctpMultiChannel} when an association has already been setup.
	*
	* <P> The returned instance will have its {@link #isUnordered() unordered}
	* value set to {@code false}, its {@link #timeToLive() timeToLive} value
	* set to {@code 0}, its {@link #isComplete() complete} value set
	* to {@code true}, and its {@link #payloadProtocolID() payloadProtocolID}
	* value set to {@code 0}. These values, if required, can be set through
	* the appropriate setter method before sending the message.
	*
	* @param  association
	*         The association to send the message on
	*
	* @param  address
	*         The preferred peer address of the association to send the message
	*         to, or {@code null} to use the peer primary address
	*
	* @param  streamNumber
	*         The stream number that the message will be sent on.
	*
	* @return  The outgoing message info
	*
	* @throws  IllegalArgumentException
	*          If {@code association} is {@code null}, or the streamNumber is
	*          negative or greater than {@code 65536}
	*/
	@:overload @:public @:static public static function createOutgoing(association : com.sun.nio.sctp.Association, address : java.net.SocketAddress, streamNumber : Int) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* Returns the source socket address if the message has been received,
	* otherwise the preferred destination of the message to be sent.
	*
	* @return  The socket address, or {@code null} if this instance is to be
	*          used for sending a message and has been construced without
	*          specifying a preferred destination address
	*
	*/
	@:overload @:public @:abstract public function address() : java.net.SocketAddress;
	
	/**
	* Returns the association that the message was received on, if the message
	* has been received, otherwise the association that the message is to be
	* sent on.
	*
	* @return The association, or {@code null} if this instance is to be
	*         used for sending a message and has been construced using the
	*         the {@link #createOutgoing(SocketAddress,int)
	*         createOutgoing(SocketAddress,int)} static factory method
	*/
	@:overload @:public @:abstract public function association() : com.sun.nio.sctp.Association;
	
	/**
	* Returns the number of bytes read for the received message.
	*
	* <P> This method is only appicable for received messages, it has no
	* meaning for messages being sent.
	*
	* @return  The number of bytes read, {@code -1} if the channel is an {@link
	*          SctpChannel} that has reached end-of-stream, otherwise
	*          {@code 0}
	*/
	@:overload @:public @:abstract public function bytes() : Int;
	
	/**
	* Tells whether or not the message is complete.
	*
	* <P> For received messages {@code true} indicates that the message was
	* completely received. For messages being sent {@code true} indicates that
	* the message is complete, {@code false} indicates that the message is not
	* complete. How the send channel interprets this value depends on the value
	* of its {@link SctpStandardSocketOptions#SCTP_EXPLICIT_COMPLETE
	* SCTP_EXPLICIT_COMPLETE} socket option.
	*
	* @return  {@code true} if, and only if, the message is complete
	*/
	@:overload @:public @:abstract public function isComplete() : Bool;
	
	/**
	* Sets whether or not the message is complete.
	*
	* <P> For messages being sent {@code true} indicates that
	* the message is complete, {@code false} indicates that the message is not
	* complete. How the send channel interprets this value depends on the value
	* of its {@link SctpStandardSocketOptions#SCTP_EXPLICIT_COMPLETE
	* SCTP_EXPLICIT_COMPLETE} socket option.
	*
	* @param  complete
	*         {@code true} if, and only if, the message is complete
	*
	* @return  This MessageInfo
	*
	* @see  MessageInfo#isComplete()
	*/
	@:overload @:public @:abstract public function complete(complete : Bool) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* Tells whether or not the message is unordered. For received messages
	* {@code true} indicates that the message was sent non-ordered. For
	* messages being sent {@code true} requests the un-ordered delivery of the
	* message, {@code false} indicates that the message is ordered.
	*
	* @return  {@code true} if the message is unordered, otherwise
	*          {@code false}
	*/
	@:overload @:public @:abstract public function isUnordered() : Bool;
	
	/**
	* Sets whether or not the message is unordered.
	*
	* @param  unordered
	*         {@code true} requests the un-ordered delivery of the message,
	*         {@code false} indicates that the message is ordered.
	*
	* @return  This MessageInfo
	*
	* @see  MessageInfo#isUnordered()
	*/
	@:overload @:public @:abstract public function unordered(unordered : Bool) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* Returns the payload protocol Identifier.
	*
	* <P> A value indicating the type of payload protocol data being
	* transmitted/received. This value is passed as opaque data by SCTP.
	* {@code 0} indicates an unspecified payload protocol identifier.
	*
	* @return  The Payload Protocol Identifier
	*/
	@:overload @:public @:abstract public function payloadProtocolID() : Int;
	
	/**
	* Sets the payload protocol Identifier.
	*
	* <P> A value indicating the type of payload protocol data being
	* transmitted. This value is passed as opaque data by SCTP.
	*
	* @param  ppid
	*         The Payload Protocol Identifier, or {@code 0} indicate an
	*         unspecified payload protocol identifier.
	*
	* @return  This MessageInfo
	*
	* @see  MessageInfo#payloadProtocolID()
	*/
	@:overload @:public @:abstract public function payloadProtocolID(ppid : Int) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* Returns the stream number that the message was received on, if the
	* message has been received, otherwise the stream number that the message
	* is to be sent on.
	*
	* @return  The stream number
	*/
	@:overload @:public @:abstract public function streamNumber() : Int;
	
	/**
	* Sets the stream number that the message is to be sent on.
	*
	* @param  streamNumber
	*         The stream number
	*
	* @throws  IllegalArgumentException
	*          If the streamNumber is negative or greater than {@code 65536}
	*
	* @return  This MessageInfo
	*/
	@:overload @:public @:abstract public function streamNumber(streamNumber : Int) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* The time period that the sending side may expire the message if it has
	* not been sent, or {@code 0} to indicate that no timeout should occur. This
	* value is only applicable for messages being sent, it has no meaning for
	* received messages.
	*
	* @return  The time period in milliseconds, or {@code 0}
	*/
	@:overload @:public @:abstract public function timeToLive() : haxe.Int64;
	
	/**
	* Sets the time period that the sending side may expire the message if it
	* has not been sent.
	*
	* @param  millis
	*         The time period in milliseconds, or {@code 0} to indicate that no
	*         timeout should occur
	*
	* @return  This MessageInfo
	*
	* @see MessageInfo#timeToLive()
	*/
	@:overload @:public @:abstract public function timeToLive(millis : haxe.Int64) : com.sun.nio.sctp.MessageInfo;
	
	
}
