package java.net;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class represents a datagram packet.
* <p>
* Datagram packets are used to implement a connectionless packet
* delivery service. Each message is routed from one machine to
* another based solely on information contained within that packet.
* Multiple packets sent from one machine to another might be routed
* differently, and might arrive in any order. Packet delivery is
* not guaranteed.
*
* @author  Pavani Diwanji
* @author  Benjamin Renaud
* @since   JDK1.0
*/
@:require(java0) extern class DatagramPacket
{
	/**
	* Constructs a <code>DatagramPacket</code> for receiving packets of
	* length <code>length</code>, specifying an offset into the buffer.
	* <p>
	* The <code>length</code> argument must be less than or equal to
	* <code>buf.length</code>.
	*
	* @param   buf      buffer for holding the incoming datagram.
	* @param   offset   the offset for the buffer
	* @param   length   the number of bytes to read.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Constructs a <code>DatagramPacket</code> for receiving packets of
	* length <code>length</code>.
	* <p>
	* The <code>length</code> argument must be less than or equal to
	* <code>buf.length</code>.
	*
	* @param   buf      buffer for holding the incoming datagram.
	* @param   length   the number of bytes to read.
	*/
	@:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Constructs a datagram packet for sending packets of length
	* <code>length</code> with offset <code>ioffset</code>to the
	* specified port number on the specified host. The
	* <code>length</code> argument must be less than or equal to
	* <code>buf.length</code>.
	*
	* @param   buf      the packet data.
	* @param   offset   the packet data offset.
	* @param   length   the packet data length.
	* @param   address  the destination address.
	* @param   port     the destination port number.
	* @see java.net.InetAddress
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int, address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Constructs a datagram packet for sending packets of length
	* <code>length</code> with offset <code>ioffset</code>to the
	* specified port number on the specified host. The
	* <code>length</code> argument must be less than or equal to
	* <code>buf.length</code>.
	*
	* @param   buf      the packet data.
	* @param   offset   the packet data offset.
	* @param   length   the packet data length.
	* @param   address  the destination socket address.
	* @throws  IllegalArgumentException if address type is not supported
	* @see java.net.InetAddress
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int, address : java.net.SocketAddress) : Void;
	
	/**
	* Constructs a datagram packet for sending packets of length
	* <code>length</code> to the specified port number on the specified
	* host. The <code>length</code> argument must be less than or equal
	* to <code>buf.length</code>.
	*
	* @param   buf      the packet data.
	* @param   length   the packet length.
	* @param   address  the destination address.
	* @param   port     the destination port number.
	* @see     java.net.InetAddress
	*/
	@:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, length : Int, address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Constructs a datagram packet for sending packets of length
	* <code>length</code> to the specified port number on the specified
	* host. The <code>length</code> argument must be less than or equal
	* to <code>buf.length</code>.
	*
	* @param   buf      the packet data.
	* @param   length   the packet length.
	* @param   address  the destination address.
	* @throws  IllegalArgumentException if address type is not supported
	* @since 1.4
	* @see     java.net.InetAddress
	*/
	@:require(java4) @:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, length : Int, address : java.net.SocketAddress) : Void;
	
	/**
	* Returns the IP address of the machine to which this datagram is being
	* sent or from which the datagram was received.
	*
	* @return  the IP address of the machine to which this datagram is being
	*          sent or from which the datagram was received.
	* @see     java.net.InetAddress
	* @see #setAddress(java.net.InetAddress)
	*/
	@:overload @:synchronized public function getAddress() : java.net.InetAddress;
	
	/**
	* Returns the port number on the remote host to which this datagram is
	* being sent or from which the datagram was received.
	*
	* @return  the port number on the remote host to which this datagram is
	*          being sent or from which the datagram was received.
	* @see #setPort(int)
	*/
	@:overload @:synchronized public function getPort() : Int;
	
	/**
	* Returns the data buffer. The data received or the data to be sent
	* starts from the <code>offset</code> in the buffer,
	* and runs for <code>length</code> long.
	*
	* @return  the buffer used to receive or  send data
	* @see #setData(byte[], int, int)
	*/
	@:overload @:synchronized public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the offset of the data to be sent or the offset of the
	* data received.
	*
	* @return  the offset of the data to be sent or the offset of the
	*          data received.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized public function getOffset() : Int;
	
	/**
	* Returns the length of the data to be sent or the length of the
	* data received.
	*
	* @return  the length of the data to be sent or the length of the
	*          data received.
	* @see #setLength(int)
	*/
	@:overload @:synchronized public function getLength() : Int;
	
	/**
	* Set the data buffer for this packet. This sets the
	* data, length and offset of the packet.
	*
	* @param buf the buffer to set for this packet
	*
	* @param offset the offset into the data
	*
	* @param length the length of the data
	*       and/or the length of the buffer used to receive data
	*
	* @exception NullPointerException if the argument is null
	*
	* @see #getData
	* @see #getOffset
	* @see #getLength
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized public function setData(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Sets the IP address of the machine to which this datagram
	* is being sent.
	* @param iaddr the <code>InetAddress</code>
	* @since   JDK1.1
	* @see #getAddress()
	*/
	@:require(java1) @:overload @:synchronized public function setAddress(iaddr : java.net.InetAddress) : Void;
	
	/**
	* Sets the port number on the remote host to which this datagram
	* is being sent.
	* @param iport the port number
	* @since   JDK1.1
	* @see #getPort()
	*/
	@:require(java1) @:overload @:synchronized public function setPort(iport : Int) : Void;
	
	/**
	* Sets the SocketAddress (usually IP address + port number) of the remote
	* host to which this datagram is being sent.
	*
	* @param address the <code>SocketAddress</code>
	* @throws  IllegalArgumentException if address is null or is a
	*          SocketAddress subclass not supported by this socket
	*
	* @since 1.4
	* @see #getSocketAddress
	*/
	@:require(java4) @:overload @:synchronized public function setSocketAddress(address : java.net.SocketAddress) : Void;
	
	/**
	* Gets the SocketAddress (usually IP address + port number) of the remote
	* host that this packet is being sent to or is coming from.
	*
	* @return the <code>SocketAddress</code>
	* @since 1.4
	* @see #setSocketAddress
	*/
	@:require(java4) @:overload @:synchronized public function getSocketAddress() : java.net.SocketAddress;
	
	/**
	* Set the data buffer for this packet. With the offset of
	* this DatagramPacket set to 0, and the length set to
	* the length of <code>buf</code>.
	*
	* @param buf the buffer to set for this packet.
	*
	* @exception NullPointerException if the argument is null.
	*
	* @see #getLength
	* @see #getData
	*
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function setData(buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Set the length for this packet. The length of the packet is
	* the number of bytes from the packet's data buffer that will be
	* sent, or the number of bytes of the packet's data buffer that
	* will be used for receiving data. The length must be lesser or
	* equal to the offset plus the length of the packet's buffer.
	*
	* @param length the length to set for this packet.
	*
	* @exception IllegalArgumentException if the length is negative
	* of if the length is greater than the packet's data buffer
	* length.
	*
	* @see #getLength
	* @see #setData
	*
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function setLength(length : Int) : Void;
	
	
}
