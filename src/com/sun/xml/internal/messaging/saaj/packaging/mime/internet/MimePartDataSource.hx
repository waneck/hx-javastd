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
* @(#)MimePartDataSource.java        1.9 02/03/27
*/
extern class MimePartDataSource implements javax.activation.DataSource
{
	/**
	* Constructor, that constructs a DataSource from a MimeBodyPart.
	*/
	@:overload public function new(part : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart) : Void;
	
	/**
	* Returns an input stream from this  MimeBodyPart. <p>
	*
	* This method applies the appropriate transfer-decoding, based
	* on the Content-Transfer-Encoding attribute of this MimeBodyPart.
	* Thus the returned input stream is a decoded stream of bytes.<p>
	*
	* This implementation obtains the raw content from the MimeBodyPart
	* using the <code>getContentStream()</code> method and decodes
	* it using the <code>MimeUtility.decode()</code> method.
	*
	* @return  decoded input stream
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	/**
	* DataSource method to return an output stream. <p>
	*
	* This implementation throws the UnknownServiceException.
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns the content-type of this DataSource. <p>
	*
	* This implementation just invokes the <code>getContentType</code>
	* method on the MimeBodyPart.
	*/
	@:overload public function getContentType() : String;
	
	/**
	* DataSource method to return a name.  <p>
	*
	* This implementation just returns an empty string.
	*/
	@:overload public function getName() : String;
	
	
}
