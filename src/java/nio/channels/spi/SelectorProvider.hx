package java.nio.channels.spi;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SelectorProvider
{
	/**
	* Initializes a new instance of this class.  </p>
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	*          {@link RuntimePermission}<tt>("selectorProvider")</tt>
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the system-wide default selector provider for this invocation of
	* the Java virtual machine.
	*
	* <p> The first invocation of this method locates the default provider
	* object as follows: </p>
	*
	* <ol>
	*
	*   <li><p> If the system property
	*   <tt>java.nio.channels.spi.SelectorProvider</tt> is defined then it is
	*   taken to be the fully-qualified name of a concrete provider class.
	*   The class is loaded and instantiated; if this process fails then an
	*   unspecified error is thrown.  </p></li>
	*
	*   <li><p> If a provider class has been installed in a jar file that is
	*   visible to the system class loader, and that jar file contains a
	*   provider-configuration file named
	*   <tt>java.nio.channels.spi.SelectorProvider</tt> in the resource
	*   directory <tt>META-INF/services</tt>, then the first class name
	*   specified in that file is taken.  The class is loaded and
	*   instantiated; if this process fails then an unspecified error is
	*   thrown.  </p></li>
	*
	*   <li><p> Finally, if no provider has been specified by any of the above
	*   means then the system-default provider class is instantiated and the
	*   result is returned.  </p></li>
	*
	* </ol>
	*
	* <p> Subsequent invocations of this method return the provider that was
	* returned by the first invocation.  </p>
	*
	* @return  The system-wide default selector provider
	*/
	@:overload public static function provider() : SelectorProvider;
	
	/**
	* Opens a datagram channel.  </p>
	*
	* @return  The new channel
	*/
	@:overload @:abstract public function openDatagramChannel() : java.nio.channels.DatagramChannel;
	
	/**
	* Opens a datagram channel.
	*
	* @param   family
	*          The protocol family
	*
	* @return  A new datagram channel
	*
	* @throws  UnsupportedOperationException
	*          If the specified protocol family is not supported
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:abstract public function openDatagramChannel(family : java.net.ProtocolFamily) : java.nio.channels.DatagramChannel;
	
	/**
	* Opens a pipe. </p>
	*
	* @return  The new pipe
	*/
	@:overload @:abstract public function openPipe() : java.nio.channels.Pipe;
	
	/**
	* Opens a selector.  </p>
	*
	* @return  The new selector
	*/
	@:overload @:abstract public function openSelector() : java.nio.channels.spi.AbstractSelector;
	
	/**
	* Opens a server-socket channel.  </p>
	*
	* @return  The new channel
	*/
	@:overload @:abstract public function openServerSocketChannel() : java.nio.channels.ServerSocketChannel;
	
	/**
	* Opens a socket channel. </p>
	*
	* @return  The new channel
	*/
	@:overload @:abstract public function openSocketChannel() : java.nio.channels.SocketChannel;
	
	/**
	* Returns the channel inherited from the entity that created this
	* Java virtual machine.
	*
	* <p> On many operating systems a process, such as a Java virtual
	* machine, can be started in a manner that allows the process to
	* inherit a channel from the entity that created the process. The
	* manner in which this is done is system dependent, as are the
	* possible entities to which the channel may be connected. For example,
	* on UNIX systems, the Internet services daemon (<i>inetd</i>) is used to
	* start programs to service requests when a request arrives on an
	* associated network port. In this example, the process that is started,
	* inherits a channel representing a network socket.
	*
	* <p> In cases where the inherited channel represents a network socket
	* then the {@link java.nio.channels.Channel Channel} type returned
	* by this method is determined as follows:
	*
	* <ul>
	*
	*  <li><p> If the inherited channel represents a stream-oriented connected
	*  socket then a {@link java.nio.channels.SocketChannel SocketChannel} is
	*  returned. The socket channel is, at least initially, in blocking
	*  mode, bound to a socket address, and connected to a peer.
	*  </p></li>
	*
	*  <li><p> If the inherited channel represents a stream-oriented listening
	*  socket then a {@link java.nio.channels.ServerSocketChannel
	*  ServerSocketChannel} is returned. The server-socket channel is, at
	*  least initially, in blocking mode, and bound to a socket address.
	*  </p></li>
	*
	*  <li><p> If the inherited channel is a datagram-oriented socket
	*  then a {@link java.nio.channels.DatagramChannel DatagramChannel} is
	*  returned. The datagram channel is, at least initially, in blocking
	*  mode, and bound to a socket address.
	*  </p></li>
	*
	* </ul>
	*
	* <p> In addition to the network-oriented channels described, this method
	* may return other kinds of channels in the future.
	*
	* <p> The first invocation of this method creates the channel that is
	* returned. Subsequent invocations of this method return the same
	* channel. </p>
	*
	* @return  The inherited channel, if any, otherwise <tt>null</tt>.
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	*          {@link RuntimePermission}<tt>("inheritedChannel")</tt>
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function inheritedChannel() : java.nio.channels.Channel;
	
	
}
