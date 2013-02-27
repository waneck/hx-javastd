package java.net;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DatagramSocketImpl implements java.net.SocketOptions
{
	/**
	* The local port number.
	*/
	private var localPort : Int;
	
	/**
	* The file descriptor object.
	*/
	private var fd : java.io.FileDescriptor;
	
	/**
	* Creates a datagram socket.
	* @exception SocketException if there is an error in the
	* underlying protocol, such as a TCP error.
	*/
	@:overload @:abstract private function create() : Void;
	
	/**
	* Binds a datagram socket to a local port and address.
	* @param lport the local port
	* @param laddr the local address
	* @exception SocketException if there is an error in the
	* underlying protocol, such as a TCP error.
	*/
	@:overload @:abstract private function bind(lport : Int, laddr : java.net.InetAddress) : Void;
	
	/**
	* Sends a datagram packet. The packet contains the data and the
	* destination address to send the packet to.
	* @param p the packet to be sent.
	* @exception IOException if an I/O exception occurs while sending the
	* datagram packet.
	* @exception  PortUnreachableException may be thrown if the socket is connected
	* to a currently unreachable destination. Note, there is no guarantee that
	* the exception will be thrown.
	*/
	@:overload @:abstract private function send(p : java.net.DatagramPacket) : Void;
	
	/**
	* Connects a datagram socket to a remote destination. This associates the remote
	* address with the local socket so that datagrams may only be sent to this destination
	* and received from this destination. This may be overridden to call a native
	* system connect.
	*
	* <p>If the remote destination to which the socket is connected does not
	* exist, or is otherwise unreachable, and if an ICMP destination unreachable
	* packet has been received for that address, then a subsequent call to
	* send or receive may throw a PortUnreachableException.
	* Note, there is no guarantee that the exception will be thrown.
	* @param address the remote InetAddress to connect to
	* @param port the remote port number
	* @exception   SocketException may be thrown if the socket cannot be
	* connected to the remote destination
	* @since 1.4
	*/
	@:require(java4) @:overload private function connect(address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Disconnects a datagram socket from its remote destination.
	* @since 1.4
	*/
	@:require(java4) @:overload private function disconnect() : Void;
	
	/**
	* Peek at the packet to see who it is from. Updates the specified <code>InetAddress</code>
	* to the address which the packet came from.
	* @param i an InetAddress object
	* @return the port number which the packet came from.
	* @exception IOException if an I/O exception occurs
	* @exception  PortUnreachableException may be thrown if the socket is connected
	*       to a currently unreachable destination. Note, there is no guarantee that the
	*       exception will be thrown.
	*/
	@:overload @:abstract private function peek(i : java.net.InetAddress) : Int;
	
	/**
	* Peek at the packet to see who it is from. The data is copied into the specified
	* <code>DatagramPacket</code>. The data is returned,
	* but not consumed, so that a subsequent peekData/receive operation
	* will see the same data.
	* @param p the Packet Received.
	* @return the port number which the packet came from.
	* @exception IOException if an I/O exception occurs
	* @exception  PortUnreachableException may be thrown if the socket is connected
	*       to a currently unreachable destination. Note, there is no guarantee that the
	*       exception will be thrown.
	* @since 1.4
	*/
	@:require(java4) @:overload @:abstract private function peekData(p : java.net.DatagramPacket) : Int;
	
	/**
	* Receive the datagram packet.
	* @param p the Packet Received.
	* @exception IOException if an I/O exception occurs
	* while receiving the datagram packet.
	* @exception  PortUnreachableException may be thrown if the socket is connected
	*       to a currently unreachable destination. Note, there is no guarantee that the
	*       exception will be thrown.
	*/
	@:overload @:abstract private function receive(p : java.net.DatagramPacket) : Void;
	
	/**
	* Set the TTL (time-to-live) option.
	* @param ttl a byte specifying the TTL value
	*
	* @deprecated use setTimeToLive instead.
	* @exception IOException if an I/O exception occurs while setting
	* the time-to-live option.
	* @see #getTTL()
	*/
	@:overload @:abstract private function setTTL(ttl : java.StdTypes.Int8) : Void;
	
	/**
	* Retrieve the TTL (time-to-live) option.
	*
	* @exception IOException if an I/O exception occurs
	* while retrieving the time-to-live option
	* @deprecated use getTimeToLive instead.
	* @return a byte representing the TTL value
	* @see #setTTL(byte)
	*/
	@:overload @:abstract private function getTTL() : java.StdTypes.Int8;
	
	/**
	* Set the TTL (time-to-live) option.
	* @param ttl an <tt>int</tt> specifying the time-to-live value
	* @exception IOException if an I/O exception occurs
	* while setting the time-to-live option.
	* @see #getTimeToLive()
	*/
	@:overload @:abstract private function setTimeToLive(ttl : Int) : Void;
	
	/**
	* Retrieve the TTL (time-to-live) option.
	* @exception IOException if an I/O exception occurs
	* while retrieving the time-to-live option
	* @return an <tt>int</tt> representing the time-to-live value
	* @see #setTimeToLive(int)
	*/
	@:overload @:abstract private function getTimeToLive() : Int;
	
	/**
	* Join the multicast group.
	* @param inetaddr multicast address to join.
	* @exception IOException if an I/O exception occurs
	* while joining the multicast group.
	*/
	@:overload @:abstract private function join(inetaddr : java.net.InetAddress) : Void;
	
	/**
	* Leave the multicast group.
	* @param inetaddr multicast address to leave.
	* @exception IOException if an I/O exception occurs
	* while leaving the multicast group.
	*/
	@:overload @:abstract private function leave(inetaddr : java.net.InetAddress) : Void;
	
	/**
	* Join the multicast group.
	* @param mcastaddr address to join.
	* @param netIf specifies the local interface to receive multicast
	*        datagram packets
	* @throws IOException if an I/O exception occurs while joining
	* the multicast group
	* @since 1.4
	*/
	@:require(java4) @:overload @:abstract private function joinGroup(mcastaddr : java.net.SocketAddress, netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Leave the multicast group.
	* @param mcastaddr address to leave.
	* @param netIf specified the local interface to leave the group at
	* @throws IOException if an I/O exception occurs while leaving
	* the multicast group
	* @since 1.4
	*/
	@:require(java4) @:overload @:abstract private function leaveGroup(mcastaddr : java.net.SocketAddress, netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Close the socket.
	*/
	@:overload @:abstract private function close() : Void;
	
	/**
	* Gets the local port.
	* @return an <tt>int</tt> representing the local port value
	*/
	@:overload private function getLocalPort() : Int;
	
	/**
	* Gets the datagram socket file descriptor.
	* @return a <tt>FileDescriptor</tt> object representing the datagram socket
	* file descriptor
	*/
	@:overload private function getFileDescriptor() : java.io.FileDescriptor;
	
	/**
	* Enable/disable the option specified by <I>optID</I>.  If the option
	* is to be enabled, and it takes an option-specific "value",  this is
	* passed in <I>value</I>.  The actual type of value is option-specific,
	* and it is an error to pass something that isn't of the expected type:
	* <BR><PRE>
	* SocketImpl s;
	* ...
	* s.setOption(SO_LINGER, new Integer(10));
	*    // OK - set SO_LINGER w/ timeout of 10 sec.
	* s.setOption(SO_LINGER, new Double(10));
	*    // ERROR - expects java.lang.Integer
	*</PRE>
	* If the requested option is binary, it can be set using this method by
	* a java.lang.Boolean:
	* <BR><PRE>
	* s.setOption(TCP_NODELAY, new Boolean(true));
	*    // OK - enables TCP_NODELAY, a binary option
	* </PRE>
	* <BR>
	* Any option can be disabled using this method with a Boolean(false):
	* <BR><PRE>
	* s.setOption(TCP_NODELAY, new Boolean(false));
	*    // OK - disables TCP_NODELAY
	* s.setOption(SO_LINGER, new Boolean(false));
	*    // OK - disables SO_LINGER
	* </PRE>
	* <BR>
	* For an option that has a notion of on and off, and requires
	* a non-boolean parameter, setting its value to anything other than
	* <I>Boolean(false)</I> implicitly enables it.
	* <BR>
	* Throws SocketException if the option is unrecognized,
	* the socket is closed, or some low-level error occurred
	* <BR>
	* @param optID identifies the option
	* @param value the parameter of the socket option
	* @throws SocketException if the option is unrecognized,
	* the socket is closed, or some low-level error occurred
	* @see #getOption(int)
	*/
	@:overload @:public public function setOption(optID : Int, value : Dynamic) : Void;
	
	/**
	* Fetch the value of an option.
	* Binary options will return java.lang.Boolean(true)
	* if enabled, java.lang.Boolean(false) if disabled, e.g.:
	* <BR><PRE>
	* SocketImpl s;
	* ...
	* Boolean noDelay = (Boolean)(s.getOption(TCP_NODELAY));
	* if (noDelay.booleanValue()) {
	*     // true if TCP_NODELAY is enabled...
	* ...
	* }
	* </PRE>
	* <P>
	* For options that take a particular type as a parameter,
	* getOption(int) will return the parameter's value, else
	* it will return java.lang.Boolean(false):
	* <PRE>
	* Object o = s.getOption(SO_LINGER);
	* if (o instanceof Integer) {
	*     System.out.print("Linger time is " + ((Integer)o).intValue());
	* } else {
	*   // the true type of o is java.lang.Boolean(false);
	* }
	* </PRE>
	*
	* @param optID an <code>int</code> identifying the option to fetch
	* @return the value of the option
	* @throws SocketException if the socket is closed
	* @throws SocketException if <I>optID</I> is unknown along the
	*         protocol stack (including the SocketImpl)
	* @see #setOption(int, java.lang.Object)
	*/
	@:overload @:public public function getOption(optID : Int) : Dynamic;
	
	
}
