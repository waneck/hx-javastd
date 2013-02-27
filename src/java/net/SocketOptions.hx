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
/**
* Interface of methods to get/set socket options.  This interface is
* implemented by: <B>SocketImpl</B> and  <B>DatagramSocketImpl</B>.
* Subclasses of these should override the methods
* of this interface in order to support their own options.
* <P>
* The methods and constants which specify options in this interface are
* for implementation only.  If you're not subclassing SocketImpl or
* DatagramSocketImpl, <B>you won't use these directly.</B> There are
* type-safe methods to get/set each of these options in Socket, ServerSocket,
* DatagramSocket and MulticastSocket.
* <P>
* @author David Brown
*/
extern interface SocketOptions
{
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
