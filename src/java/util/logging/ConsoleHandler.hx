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
* This <tt>Handler</tt> publishes log records to <tt>System.err</tt>.
* By default the <tt>SimpleFormatter</tt> is used to generate brief summaries.
* <p>
* <b>Configuration:</b>
* By default each <tt>ConsoleHandler</tt> is initialized using the following
* <tt>LogManager</tt> configuration properties.  If properties are not defined
* (or have invalid values) then the specified default values are used.
* <ul>
* <li>   java.util.logging.ConsoleHandler.level
*        specifies the default level for the <tt>Handler</tt>
*        (defaults to <tt>Level.INFO</tt>).
* <li>   java.util.logging.ConsoleHandler.filter
*        specifies the name of a <tt>Filter</tt> class to use
*        (defaults to no <tt>Filter</tt>).
* <li>   java.util.logging.ConsoleHandler.formatter
*        specifies the name of a <tt>Formatter</tt> class to use
*        (defaults to <tt>java.util.logging.SimpleFormatter</tt>).
* <li>   java.util.logging.ConsoleHandler.encoding
*        the name of the character set encoding to use (defaults to
*        the default platform encoding).
* </ul>
* <p>
* @since 1.4
*/
@:require(java4) extern class ConsoleHandler extends java.util.logging.StreamHandler
{
	/**
	* Create a <tt>ConsoleHandler</tt> for <tt>System.err</tt>.
	* <p>
	* The <tt>ConsoleHandler</tt> is configured based on
	* <tt>LogManager</tt> properties (or their default values).
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Publish a <tt>LogRecord</tt>.
	* <p>
	* The logging request was made initially to a <tt>Logger</tt> object,
	* which initialized the <tt>LogRecord</tt> and forwarded it here.
	* <p>
	* @param  record  description of the log event. A null record is
	*                 silently ignored and is not published
	*/
	@:overload override public function publish(record : java.util.logging.LogRecord) : Void;
	
	/**
	* Override <tt>StreamHandler.close</tt> to do a flush but not
	* to close the output stream.  That is, we do <b>not</b>
	* close <tt>System.err</tt>.
	*/
	@:overload override public function close() : Void;
	
	
}
