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
* Format a LogRecord into a standard XML format.
* <p>
* The DTD specification is provided as Appendix A to the
* Java Logging APIs specification.
* <p>
* The XMLFormatter can be used with arbitrary character encodings,
* but it is recommended that it normally be used with UTF-8.  The
* character encoding can be set on the output Handler.
*
* @since 1.4
*/
@:require(java4) extern class XMLFormatter extends java.util.Formatter
{
	/**
	* Format the given message to XML.
	* <p>
	* This method can be overridden in a subclass.
	* It is recommended to use the {@link Formatter#formatMessage}
	* convenience method to localize and format the message field.
	*
	* @param record the log record to be formatted.
	* @return a formatted log record
	*/
	@:overload public function format(record : java.util.logging.LogRecord) : String;
	
	/**
	* Return the header string for a set of XML formatted records.
	*
	* @param   h  The target handler (can be null)
	* @return  a valid XML string
	*/
	@:overload public function getHead(h : java.util.logging.Handler) : String;
	
	/**
	* Return the tail string for a set of XML formatted records.
	*
	* @param   h  The target handler (can be null)
	* @return  a valid XML string
	*/
	@:overload public function getTail(h : java.util.logging.Handler) : String;
	
	
}
