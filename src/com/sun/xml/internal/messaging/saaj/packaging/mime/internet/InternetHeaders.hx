package com.sun.xml.internal.messaging.saaj.packaging.mime.internet;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* @(#)InternetHeaders.java   1.16 02/08/08
*/
extern class InternetHeaders
{
	/**
	* Create an empty InternetHeaders object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Read and parse the given RFC822 message stream till the
	* blank line separating the header from the body. The input
	* stream is left positioned at the start of the body. The
	* header lines are stored internally. <p>
	* <p/>
	* For efficiency, wrap a BufferedInputStream around the actual
	* input stream and pass it as the parameter.
	*
	* @param   is RFC822 input stream
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Read and parse the given RFC822 message stream till the
	* blank line separating the header from the body. Store the
	* header lines inside this InternetHeaders object. <p>
	* <p/>
	* Note that the header lines are added into this InternetHeaders
	* object, so any existing headers in this object will not be
	* affected.
	*
	* @param   is RFC822 input stream
	*/
	@:overload public function load(is : java.io.InputStream) : Void;
	
	/**
	* Return all the values for the specified header. The
	* values are String objects.  Returns <code>null</code>
	* if no headers with the specified name exist.
	*
	* @param   name header name
	* @return          array of header values, or null if none
	*/
	@:overload public function getHeader(name : String) : java.NativeArray<String>;
	
	/**
	* Get all the headers for this header name, returned as a single
	* String, with headers separated by the delimiter. If the
	* delimiter is <code>null</code>, only the first header is
	* returned.  Returns <code>null</code>
	* if no headers with the specified name exist.
	*
	* @param delimiter delimiter
	* @return the value fields for all headers with
	*         this name, or null if none
	* @param   name header name
	*/
	@:overload public function getHeader(name : String, delimiter : String) : String;
	
	/**
	* Change the first header line that matches name
	* to have value, adding a new header if no existing header
	* matches. Remove all matching headers but the first. <p>
	* <p/>
	* Note that RFC822 headers can only contain US-ASCII characters
	*
	* @param   name    header name
	* @param   value   header value
	*/
	@:overload public function setHeader(name : String, value : String) : Void;
	
	/**
	* Add a header with the specified name and value to the header list. <p>
	* <p/>
	* Note that RFC822 headers can only contain US-ASCII characters.
	*
	* @param   name    header name
	* @param   value   header value
	*/
	@:overload public function addHeader(name : String, value : String) : Void;
	
	/**
	* Remove all header entries that match the given name
	*
	* @param   name header name
	*/
	@:overload public function removeHeader(name : String) : Void;
	
	/**
	* Return all the headers as an Enumeration of
	* {@link Header} objects.
	*
	* @return  Header objects
	*/
	@:overload public function getAllHeaders() : com.sun.xml.internal.messaging.saaj.util.FinalArrayList;
	
	/**
	* Add an RFC822 header line to the header store.
	* If the line starts with a space or tab (a continuation line),
	* add it to the last header line in the list. <p>
	* <p/>
	* Note that RFC822 headers can only contain US-ASCII characters
	*
	* @param   line    raw RFC822 header line
	*/
	@:overload public function addHeaderLine(line : String) : Void;
	
	/**
	* Return all the header lines as a collection
	*/
	@:overload public function getAllHeaderLines() : java.util.List<Dynamic>;
	
	
}
@:internal extern class hdr implements com.sun.xml.internal.messaging.saaj.packaging.mime.Header
{
	/*
	* Return the "name" part of the header line.
	*/
	@:overload public function getName() : String;
	
	/*
	* Return the "value" part of the header line.
	*/
	@:overload public function getValue() : String;
	
	
}
