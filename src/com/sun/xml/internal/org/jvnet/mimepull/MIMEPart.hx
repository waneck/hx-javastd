package com.sun.xml.internal.org.jvnet.mimepull;
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
extern class MIMEPart
{
	/**
	* Can get the attachment part's content multiple times. That means
	* the full content needs to be there in memory or on the file system.
	* Calling this method would trigger parsing for the part's data. So
	* do not call this unless it is required(otherwise, just wrap MIMEPart
	* into a object that returns InputStream for e.g DataHandler)
	*
	* @return data for the part's content
	*/
	@:overload @:public public function read() : java.io.InputStream;
	
	/**
	* Cleans up any resources that are held by this part (for e.g. deletes
	* the temp file that is used to serve this part's content). After
	* calling this, one shouldn't call {@link #read()} or {@link #readOnce()}
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Can get the attachment part's content only once. The content
	* will be lost after the method. Content data is not be stored
	* on the file system or is not kept in the memory for the
	* following case:
	*   - Attachement parts contents are accessed sequentially
	*
	* In general, take advantage of this when the data is used only
	* once.
	*
	* @return data for the part's content
	*/
	@:overload @:public public function readOnce() : java.io.InputStream;
	
	@:overload @:public public function moveTo(f : java.io.File) : Void;
	
	/**
	* Returns Content-ID MIME header for this attachment part
	*
	* @return Content-ID of the part
	*/
	@:overload @:public public function getContentId() : String;
	
	/**
	* Returns Content-Type MIME header for this attachment part
	*
	* @return Content-Type of the part
	*/
	@:overload @:public public function getContentType() : String;
	
	/**
	* Return all the values for the specified header.
	* Returns <code>null</code> if no headers with the
	* specified name exist.
	*
	* @param   name header name
	* @return  list of header values, or null if none
	*/
	@:overload @:public public function getHeader(name : String) : java.util.List<String>;
	
	/**
	* Return all the headers
	*
	* @return list of Header objects
	*/
	@:overload @:public public function getAllHeaders() : java.util.List<com.sun.xml.internal.org.jvnet.mimepull.Header>;
	
	@:overload @:public public function toString() : String;
	
	
}
