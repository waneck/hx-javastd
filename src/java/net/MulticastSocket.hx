package java.net;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MulticastSocket extends java.net.DatagramSocket
{
	/**
	* Create a multicast socket.
	*
	* <p>If there is a security manager,
	* its <code>checkListen</code> method is first called
	* with 0 as its argument to ensure the operation is allowed.
	* This could result in a SecurityException.
	* <p>
	* When the socket is created the
	* {@link DatagramSocket#setReuseAddress(boolean)} method is
	* called to enable the SO_REUSEADDR socket option.
	*
	* @exception IOException if an I/O exception occurs
	* while creating the MulticastSocket
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkListen</code> method doesn't allow the operation.
	* @see SecurityManager#checkListen
	* @see java.net.DatagramSocket#setReuseAddress(boolean)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a multicast socket and bind it to a specific port.
	*
	* <p>If there is a security manager,
	* its <code>checkListen</code> method is first called
	* with the <code>port</code> argument
	* as its argument to ensure the operation is allowed.
	* This could result in a SecurityException.
	* <p>
	* When the socket is created the
	* {@link DatagramSocket#setReuseAddress(boolean)} method is
	* called to enable the SO_REUSEADDR socket option.
	*
	* @param port port to use
	* @exception IOException if an I/O exception occurs
	* while creating the MulticastSocket
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkListen</code> method doesn't allow the operation.
	* @see SecurityManager#checkListen
	* @see java.net.DatagramSocket#setReuseAddress(boolean)
	*/
	@:overload @:public public function new(port : Int) : Void;
	
	/**
	* Create a MulticastSocket bound to the specified socket address.
	* <p>
	* Or, if the address is <code>null</code>, create an unbound socket.
	* <p>
	* <p>If there is a security manager,
	* its <code>checkListen</code> method is first called
	* with the SocketAddress port as its argument to ensure the operation is allowed.
	* This could result in a SecurityException.
	* <p>
	* When the socket is created the
	* {@link DatagramSocket#setReuseAddress(boolean)} method is
	* called to enable the SO_REUSEADDR socket option.
	*
	* @param bindaddr Socket address to bind to, or <code>null</code> for
	*                 an unbound socket.
	* @exception IOException if an I/O exception occurs
	* while creating the MulticastSocket
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkListen</code> method doesn't allow the operation.
	* @see SecurityManager#checkListen
	* @see java.net.DatagramSocket#setReuseAddress(boolean)
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(bindaddr : java.net.SocketAddress) : Void;
	
	/**
	* Set the default time-to-live for multicast packets sent out
	* on this <code>MulticastSocket</code> in order to control the
	* scope of the multicasts.
	*
	* <p>The ttl is an <b>unsigned</b> 8-bit quantity, and so <B>must</B> be
	* in the range <code> 0 <= ttl <= 0xFF </code>.
	*
	* @param ttl the time-to-live
	* @exception IOException if an I/O exception occurs
	* while setting the default time-to-live value
	* @deprecated use the setTimeToLive method instead, which uses
	* <b>int</b> instead of <b>byte</b> as the type for ttl.
	* @see #getTTL()
	*/
	@:overload @:public public function setTTL(ttl : java.StdTypes.Int8) : Void;
	
	/**
	* Set the default time-to-live for multicast packets sent out
	* on this {@code MulticastSocket} in order to control the
	* scope of the multicasts.
	*
	* <P> The ttl <B>must</B> be in the range {@code  0 <= ttl <=
	* 255} or an {@code IllegalArgumentException} will be thrown.
	* Multicast packets sent with a TTL of {@code 0} are not transmitted
	* on the network but may be delivered locally.
	*
	* @param  ttl
	*         the time-to-live
	*
	* @throws  IOException
	*          if an I/O exception occurs while setting the
	*          default time-to-live value
	*
	* @see #getTimeToLive()
	*/
	@:overload @:public public function setTimeToLive(ttl : Int) : Void;
	
	/**
	* Get the default time-to-live for multicast packets sent out on
	* the socket.
	*
	* @exception IOException if an I/O exception occurs
	* while getting the default time-to-live value
	* @return the default time-to-live value
	* @deprecated use the getTimeToLive method instead, which returns
	* an <b>int</b> instead of a <b>byte</b>.
	* @see #setTTL(byte)
	*/
	@:overload @:public public function getTTL() : java.StdTypes.Int8;
	
	/**
	* Get the default time-to-live for multicast packets sent out on
	* the socket.
	* @exception IOException if an I/O exception occurs while
	* getting the default time-to-live value
	* @return the default time-to-live value
	* @see #setTimeToLive(int)
	*/
	@:overload @:public public function getTimeToLive() : Int;
	
	/**
	* Joins a multicast group. Its behavior may be affected by
	* <code>setInterface</code> or <code>setNetworkInterface</code>.
	*
	* <p>If there is a security manager, this method first
	* calls its <code>checkMulticast</code> method
	* with the <code>mcastaddr</code> argument
	* as its argument.
	*
	* @param mcastaddr is the multicast address to join
	*
	* @exception IOException if there is an error joining
	* or when the address is not a multicast address.
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkMulticast</code> method doesn't allow the join.
	*
	* @see SecurityManager#checkMulticast(InetAddress)
	*/
	@:overload @:public public function joinGroup(mcastaddr : java.net.InetAddress) : Void;
	
	/**
	* Leave a multicast group. Its behavior may be affected by
	* <code>setInterface</code> or <code>setNetworkInterface</code>.
	*
	* <p>If there is a security manager, this method first
	* calls its <code>checkMulticast</code> method
	* with the <code>mcastaddr</code> argument
	* as its argument.
	*
	* @param mcastaddr is the multicast address to leave
	* @exception IOException if there is an error leaving
	* or when the address is not a multicast address.
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkMulticast</code> method doesn't allow the operation.
	*
	* @see SecurityManager#checkMulticast(InetAddress)
	*/
	@:overload @:public public function leaveGroup(mcastaddr : java.net.InetAddress) : Void;
	
	/**
	* Joins the specified multicast group at the specified interface.
	*
	* <p>If there is a security manager, this method first
	* calls its <code>checkMulticast</code> method
	* with the <code>mcastaddr</code> argument
	* as its argument.
	*
	* @param mcastaddr is the multicast address to join
	* @param netIf specifies the local interface to receive multicast
	*        datagram packets, or <i>null</i> to defer to the interface set by
	*       {@link MulticastSocket#setInterface(InetAddress)} or
	*       {@link MulticastSocket#setNetworkInterface(NetworkInterface)}
	*
	* @exception IOException if there is an error joining
	* or when the address is not a multicast address.
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkMulticast</code> method doesn't allow the join.
	* @throws  IllegalArgumentException if mcastaddr is null or is a
	*          SocketAddress subclass not supported by this socket
	*
	* @see SecurityManager#checkMulticast(InetAddress)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function joinGroup(mcastaddr : java.net.SocketAddress, netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Leave a multicast group on a specified local interface.
	*
	* <p>If there is a security manager, this method first
	* calls its <code>checkMulticast</code> method
	* with the <code>mcastaddr</code> argument
	* as its argument.
	*
	* @param mcastaddr is the multicast address to leave
	* @param netIf specifies the local interface or <i>null</i> to defer
	*             to the interface set by
	*             {@link MulticastSocket#setInterface(InetAddress)} or
	*             {@link MulticastSocket#setNetworkInterface(NetworkInterface)}
	* @exception IOException if there is an error leaving
	* or when the address is not a multicast address.
	* @exception  SecurityException  if a security manager exists and its
	* <code>checkMulticast</code> method doesn't allow the operation.
	* @throws  IllegalArgumentException if mcastaddr is null or is a
	*          SocketAddress subclass not supported by this socket
	*
	* @see SecurityManager#checkMulticast(InetAddress)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function leaveGroup(mcastaddr : java.net.SocketAddress, netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Set the multicast network interface used by methods
	* whose behavior would be affected by the value of the
	* network interface. Useful for multihomed hosts.
	* @param inf the InetAddress
	* @exception SocketException if there is an error in
	* the underlying protocol, such as a TCP error.
	* @see #getInterface()
	*/
	@:overload @:public public function setInterface(inf : java.net.InetAddress) : Void;
	
	/**
	* Retrieve the address of the network interface used for
	* multicast packets.
	*
	* @return An <code>InetAddress</code> representing
	*  the address of the network interface used for
	*  multicast packets.
	*
	* @exception SocketException if there is an error in
	* the underlying protocol, such as a TCP error.
	*
	* @see #setInterface(java.net.InetAddress)
	*/
	@:overload @:public public function getInterface() : java.net.InetAddress;
	
	/**
	* Specify the network interface for outgoing multicast datagrams
	* sent on this socket.
	*
	* @param netIf the interface
	* @exception SocketException if there is an error in
	* the underlying protocol, such as a TCP error.
	* @see #getNetworkInterface()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function setNetworkInterface(netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Get the multicast network interface set.
	*
	* @exception SocketException if there is an error in
	* the underlying protocol, such as a TCP error.
	* @return the multicast <code>NetworkInterface</code> currently set
	* @see #setNetworkInterface(NetworkInterface)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getNetworkInterface() : java.net.NetworkInterface;
	
	/**
	* Disable/Enable local loopback of multicast datagrams
	* The option is used by the platform's networking code as a hint
	* for setting whether multicast data will be looped back to
	* the local socket.
	*
	* <p>Because this option is a hint, applications that want to
	* verify what loopback mode is set to should call
	* {@link #getLoopbackMode()}
	* @param disable <code>true</code> to disable the LoopbackMode
	* @throws SocketException if an error occurs while setting the value
	* @since 1.4
	* @see #getLoopbackMode
	*/
	@:require(java4) @:overload @:public public function setLoopbackMode(disable : Bool) : Void;
	
	/**
	* Get the setting for local loopback of multicast datagrams.
	*
	* @throws SocketException  if an error occurs while getting the value
	* @return true if the LoopbackMode has been disabled
	* @since 1.4
	* @see #setLoopbackMode
	*/
	@:require(java4) @:overload @:public public function getLoopbackMode() : Bool;
	
	/**
	* Sends a datagram packet to the destination, with a TTL (time-
	* to-live) other than the default for the socket.  This method
	* need only be used in instances where a particular TTL is desired;
	* otherwise it is preferable to set a TTL once on the socket, and
	* use that default TTL for all packets.  This method does <B>not
	* </B> alter the default TTL for the socket. Its behavior may be
	* affected by <code>setInterface</code>.
	*
	* <p>If there is a security manager, this method first performs some
	* security checks. First, if <code>p.getAddress().isMulticastAddress()</code>
	* is true, this method calls the
	* security manager's <code>checkMulticast</code> method
	* with <code>p.getAddress()</code> and <code>ttl</code> as its arguments.
	* If the evaluation of that expression is false,
	* this method instead calls the security manager's
	* <code>checkConnect</code> method with arguments
	* <code>p.getAddress().getHostAddress()</code> and
	* <code>p.getPort()</code>. Each call to a security manager method
	* could result in a SecurityException if the operation is not allowed.
	*
	* @param p is the packet to be sent. The packet should contain
	* the destination multicast ip address and the data to be sent.
	* One does not need to be the member of the group to send
	* packets to a destination multicast address.
	* @param ttl optional time to live for multicast packet.
	* default ttl is 1.
	*
	* @exception IOException is raised if an error occurs i.e
	* error while setting ttl.
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkMulticast</code> or <code>checkConnect</code>
	*             method doesn't allow the send.
	*
	* @deprecated Use the following code or its equivalent instead:
	*  ......
	*  int ttl = mcastSocket.getTimeToLive();
	*  mcastSocket.setTimeToLive(newttl);
	*  mcastSocket.send(p);
	*  mcastSocket.setTimeToLive(ttl);
	*  ......
	*
	* @see DatagramSocket#send
	* @see DatagramSocket#receive
	* @see SecurityManager#checkMulticast(java.net.InetAddress, byte)
	* @see SecurityManager#checkConnect
	*/
	@:overload @:public public function send(p : java.net.DatagramPacket, ttl : java.StdTypes.Int8) : Void;
	
	
}
