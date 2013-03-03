package java.util.logging;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Simple network logging <tt>Handler</tt>.
* <p>
* <tt>LogRecords</tt> are published to a network stream connection.  By default
* the <tt>XMLFormatter</tt> class is used for formatting.
* <p>
* <b>Configuration:</b>
* By default each <tt>SocketHandler</tt> is initialized using the following
* <tt>LogManager</tt> configuration properties.  If properties are not defined
* (or have invalid values) then the specified default values are used.
* <ul>
* <li>   java.util.logging.SocketHandler.level
*        specifies the default level for the <tt>Handler</tt>
*        (defaults to <tt>Level.ALL</tt>).
* <li>   java.util.logging.SocketHandler.filter
*        specifies the name of a <tt>Filter</tt> class to use
*        (defaults to no <tt>Filter</tt>).
* <li>   java.util.logging.SocketHandler.formatter
*        specifies the name of a <tt>Formatter</tt> class to use
*        (defaults to <tt>java.util.logging.XMLFormatter</tt>).
* <li>   java.util.logging.SocketHandler.encoding
*        the name of the character set encoding to use (defaults to
*        the default platform encoding).
* <li>   java.util.logging.SocketHandler.host
*        specifies the target host name to connect to (no default).
* <li>   java.util.logging.SocketHandler.port
*        specifies the target TCP port to use (no default).
* </ul>
* <p>
* The output IO stream is buffered, but is flushed after each
* <tt>LogRecord</tt> is written.
*
* @since 1.4
*/
@:require(java4) extern class SocketHandler extends java.util.logging.StreamHandler
{
	/**
	* Create a <tt>SocketHandler</tt>, using only <tt>LogManager</tt> properties
	* (or their defaults).
	* @throws IllegalArgumentException if the host or port are invalid or
	*          are not specified as LogManager properties.
	* @throws IOException if we are unable to connect to the target
	*         host and port.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a <tt>SocketHandler</tt> using a specified host and port.
	*
	* The <tt>SocketHandler</tt> is configured based on <tt>LogManager</tt>
	* properties (or their default values) except that the given target host
	* and port arguments are used. If the host argument is empty, but not
	* null String then the localhost is used.
	*
	* @param host target host.
	* @param port target port.
	*
	* @throws IllegalArgumentException if the host or port are invalid.
	* @throws IOException if we are unable to connect to the target
	*         host and port.
	*/
	@:overload @:public public function new(host : String, port : Int) : Void;
	
	/**
	* Close this output stream.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload @:public @:synchronized override public function close() : Void;
	
	/**
	* Format and publish a <tt>LogRecord</tt>.
	*
	* @param  record  description of the log event. A null record is
	*                 silently ignored and is not published
	*/
	@:overload @:public @:synchronized override public function publish(record : java.util.logging.LogRecord) : Void;
	
	
}
