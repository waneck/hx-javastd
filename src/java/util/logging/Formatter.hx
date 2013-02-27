package java.util.logging;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A Formatter provides support for formatting LogRecords.
* <p>
* Typically each logging Handler will have a Formatter associated
* with it.  The Formatter takes a LogRecord and converts it to
* a string.
* <p>
* Some formatters (such as the XMLFormatter) need to wrap head
* and tail strings around a set of formatted records. The getHeader
* and getTail methods can be used to obtain these strings.
*
* @since 1.4
*/
@:require(java4) extern class Formatter
{
	/**
	* Construct a new formatter.
	*/
	@:overload private function new() : Void;
	
	/**
	* Format the given log record and return the formatted string.
	* <p>
	* The resulting formatted String will normally include a
	* localized and formatted version of the LogRecord's message field.
	* It is recommended to use the {@link Formatter#formatMessage}
	* convenience method to localize and format the message field.
	*
	* @param record the log record to be formatted.
	* @return the formatted log record
	*/
	@:overload @:abstract public function format(record : java.util.logging.LogRecord) : String;
	
	/**
	* Return the header string for a set of formatted records.
	* <p>
	* This base class returns an empty string, but this may be
	* overridden by subclasses.
	*
	* @param   h  The target handler (can be null)
	* @return  header string
	*/
	@:overload public function getHead(h : java.util.logging.Handler) : String;
	
	/**
	* Return the tail string for a set of formatted records.
	* <p>
	* This base class returns an empty string, but this may be
	* overridden by subclasses.
	*
	* @param   h  The target handler (can be null)
	* @return  tail string
	*/
	@:overload public function getTail(h : java.util.logging.Handler) : String;
	
	/**
	* Localize and format the message string from a log record.  This
	* method is provided as a convenience for Formatter subclasses to
	* use when they are performing formatting.
	* <p>
	* The message string is first localized to a format string using
	* the record's ResourceBundle.  (If there is no ResourceBundle,
	* or if the message key is not found, then the key is used as the
	* format string.)  The format String uses java.text style
	* formatting.
	* <ul>
	* <li>If there are no parameters, no formatter is used.
	* <li>Otherwise, if the string contains "{0" then
	*     java.text.MessageFormat  is used to format the string.
	* <li>Otherwise no formatting is performed.
	* </ul>
	* <p>
	*
	* @param  record  the log record containing the raw message
	* @return   a localized and formatted message
	*/
	@:overload @:synchronized public function formatMessage(record : java.util.logging.LogRecord) : String;
	
	
}
