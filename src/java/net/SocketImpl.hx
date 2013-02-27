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
extern class SocketImpl implements java.net.SocketOptions
{
	/**
	* The file descriptor object for this socket.
	*/
	private var fd : java.io.FileDescriptor;
	
	/**
	* The IP address of the remote end of this socket.
	*/
	private var address : java.net.InetAddress;
	
	/**
	* The port number on the remote host to which this socket is connected.
	*/
	private var port : Int;
	
	/**
	* The local port number to which this socket is connected.
	*/
	private var localport : Int;
	
	/**
	* Creates either a stream or a datagram socket.
	*
	* @param      stream   if <code>true</code>, create a stream socket;
	*                      otherwise, create a datagram socket.
	* @exception  IOException  if an I/O error occurs while creating the
	*               socket.
	*/
	@:overload @:abstract private function create(stream : Bool) : Void;
	
	/**
	* Connects this socket to the specified port on the named host.
	*
	* @param      host   the name of the remote host.
	* @param      port   the port number.
	* @exception  IOException  if an I/O error occurs when connecting to the
	*               remote host.
	*/
	@:overload @:abstract private function connect(host : String, port : Int) : Void;
	
	/**
	* Connects this socket to the specified port number on the specified host.
	*
	* @param      address   the IP address of the remote host.
	* @param      port      the port number.
	* @exception  IOException  if an I/O error occurs when attempting a
	*               connection.
	*/
	@:overload @:abstract private function connect(address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Connects this socket to the specified port number on the specified host.
	* A timeout of zero is interpreted as an infinite timeout. The connection
	* will then block until established or an error occurs.
	*
	* @param      address   the Socket address of the remote host.
	* @param     timeout  the timeout value, in milliseconds, or zero for no timeout.
	* @exception  IOException  if an I/O error occurs when attempting a
	*               connection.
	* @since 1.4
	*/
	@:require(java4) @:overload @:abstract private function connect(address : java.net.SocketAddress, timeout : Int) : Void;
	
	/**
	* Binds this socket to the specified local IP address and port number.
	*
	* @param      host   an IP address that belongs to a local interface.
	* @param      port   the port number.
	* @exception  IOException  if an I/O error occurs when binding this socket.
	*/
	@:overload @:abstract private function bind(host : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Sets the maximum queue length for incoming connection indications
	* (a request to connect) to the <code>count</code> argument. If a
	* connection indication arrives when the queue is full, the
	* connection is refused.
	*
	* @param      backlog   the maximum length of the queue.
	* @exception  IOException  if an I/O error occurs when creating the queue.
	*/
	@:overload @:abstract private function listen(backlog : Int) : Void;
	
	/**
	* Accepts a connection.
	*
	* @param      s   the accepted connection.
	* @exception  IOException  if an I/O error occurs when accepting the
	*               connection.
	*/
	@:overload @:abstract private function accept(s : SocketImpl) : Void;
	
	/**
	* Returns an input stream for this socket.
	*
	* @return     a stream for reading from this socket.
	* @exception  IOException  if an I/O error occurs when creating the
	*               input stream.
	*/
	@:overload @:abstract private function getInputStream() : java.io.InputStream;
	
	/**
	* Returns an output stream for this socket.
	*
	* @return     an output stream for writing to this socket.
	* @exception  IOException  if an I/O error occurs when creating the
	*               output stream.
	*/
	@:overload @:abstract private function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns the number of bytes that can be read from this socket
	* without blocking.
	*
	* @return     the number of bytes that can be read from this socket
	*             without blocking.
	* @exception  IOException  if an I/O error occurs when determining the
	*               number of bytes available.
	*/
	@:overload @:abstract private function available() : Int;
	
	/**
	* Closes this socket.
	*
	* @exception  IOException  if an I/O error occurs when closing this socket.
	*/
	@:overload @:abstract private function close() : Void;
	
	/**
	* Places the input stream for this socket at "end of stream".
	* Any data sent to this socket is acknowledged and then
	* silently discarded.
	*
	* If you read from a socket input stream after invoking
	* shutdownInput() on the socket, the stream will return EOF.
	*
	* @exception IOException if an I/O error occurs when shutting down this
	* socket.
	* @see java.net.Socket#shutdownOutput()
	* @see java.net.Socket#close()
	* @see java.net.Socket#setSoLinger(boolean, int)
	* @since 1.3
	*/
	@:require(java3) @:overload private function shutdownInput() : Void;
	
	/**
	* Disables the output stream for this socket.
	* For a TCP socket, any previously written data will be sent
	* followed by TCP's normal connection termination sequence.
	*
	* If you write to a socket output stream after invoking
	* shutdownOutput() on the socket, the stream will throw
	* an IOException.
	*
	* @exception IOException if an I/O error occurs when shutting down this
	* socket.
	* @see java.net.Socket#shutdownInput()
	* @see java.net.Socket#close()
	* @see java.net.Socket#setSoLinger(boolean, int)
	* @since 1.3
	*/
	@:require(java3) @:overload private function shutdownOutput() : Void;
	
	/**
	* Returns the value of this socket's <code>fd</code> field.
	*
	* @return  the value of this socket's <code>fd</code> field.
	* @see     java.net.SocketImpl#fd
	*/
	@:overload private function getFileDescriptor() : java.io.FileDescriptor;
	
	/**
	* Returns the value of this socket's <code>address</code> field.
	*
	* @return  the value of this socket's <code>address</code> field.
	* @see     java.net.SocketImpl#address
	*/
	@:overload private function getInetAddress() : java.net.InetAddress;
	
	/**
	* Returns the value of this socket's <code>port</code> field.
	*
	* @return  the value of this socket's <code>port</code> field.
	* @see     java.net.SocketImpl#port
	*/
	@:overload private function getPort() : Int;
	
	/**
	* Returns whether or not this SocketImpl supports sending
	* urgent data. By default, false is returned
	* unless the method is overridden in a sub-class
	*
	* @return  true if urgent data supported
	* @see     java.net.SocketImpl#address
	* @since 1.4
	*/
	@:require(java4) @:overload private function supportsUrgentData() : Bool;
	
	/**
	* Send one byte of urgent data on the socket.
	* The byte to be sent is the low eight bits of the parameter
	* @param data The byte of data to send
	* @exception IOException if there is an error
	*  sending the data.
	* @since 1.4
	*/
	@:require(java4) @:overload @:abstract private function sendUrgentData(data : Int) : Void;
	
	/**
	* Returns the value of this socket's <code>localport</code> field.
	*
	* @return  the value of this socket's <code>localport</code> field.
	* @see     java.net.SocketImpl#localport
	*/
	@:overload private function getLocalPort() : Int;
	
	/**
	* Returns the address and port of this socket as a <code>String</code>.
	*
	* @return  a string representation of this socket.
	*/
	@:overload public function toString() : String;
	
	/**
	* Sets performance preferences for this socket.
	*
	* <p> Sockets use the TCP/IP protocol by default.  Some implementations
	* may offer alternative protocols which have different performance
	* characteristics than TCP/IP.  This method allows the application to
	* express its own preferences as to how these tradeoffs should be made
	* when the implementation chooses from the available protocols.
	*
	* <p> Performance preferences are described by three integers
	* whose values indicate the relative importance of short connection time,
	* low latency, and high bandwidth.  The absolute values of the integers
	* are irrelevant; in order to choose a protocol the values are simply
	* compared, with larger values indicating stronger preferences. Negative
	* values represent a lower priority than positive values. If the
	* application prefers short connection time over both low latency and high
	* bandwidth, for example, then it could invoke this method with the values
	* <tt>(1, 0, 0)</tt>.  If the application prefers high bandwidth above low
	* latency, and low latency above short connection time, then it could
	* invoke this method with the values <tt>(0, 1, 2)</tt>.
	*
	* By default, this method does nothing, unless it is overridden in a
	* a sub-class.
	*
	* @param  connectionTime
	*         An <tt>int</tt> expressing the relative importance of a short
	*         connection time
	*
	* @param  latency
	*         An <tt>int</tt> expressing the relative importance of low
	*         latency
	*
	* @param  bandwidth
	*         An <tt>int</tt> expressing the relative importance of high
	*         bandwidth
	*
	* @since 1.5
	*/
	@:require(java5) @:overload private function setPerformancePreferences(connectionTime : Int, latency : Int, bandwidth : Int) : Void;
	
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
	@:overload public function setOption(optID : Int, value : Dynamic) : Void;
	
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
	@:overload public function getOption(optID : Int) : Dynamic;
	
	
}
