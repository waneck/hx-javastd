package javax.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class URLDataSource implements javax.activation.DataSource
{
	/**
	* URLDataSource constructor. The URLDataSource class will
	* not open a connection to the URL until a method requiring it
	* to do so is called.
	*
	* @param url The URL to be encapsulated in this object.
	*/
	@:overload @:public public function new(url : java.net.URL) : Void;
	
	/**
	* Returns the value of the URL content-type header field.
	* It calls the URL's <code>URLConnection.getContentType</code> method
	* after retrieving a URLConnection object.
	* <i>Note: this method attempts to call the <code>openConnection</code>
	* method on the URL. If this method fails, or if a content type is not
	* returned from the URLConnection, getContentType returns
	* "application/octet-stream" as the content type.</i>
	*
	* @return the content type.
	*/
	@:overload @:public public function getContentType() : String;
	
	/**
	* Calls the <code>getFile</code> method on the URL used to
	* instantiate the object.
	*
	* @return the result of calling the URL's getFile method.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* The getInputStream method from the URL. Calls the
	* <code>openStream</code> method on the URL.
	*
	* @return the InputStream.
	*/
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	/**
	* The getOutputStream method from the URL. First an attempt is
	* made to get the URLConnection object for the URL. If that
	* succeeds, the getOutputStream method on the URLConnection
	* is returned.
	*
	* @return the OutputStream.
	*/
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Return the URL used to create this DataSource.
	*
	* @return The URL.
	*/
	@:overload @:public public function getURL() : java.net.URL;
	
	
}
