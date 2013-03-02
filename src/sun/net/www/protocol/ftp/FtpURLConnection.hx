package sun.net.www.protocol.ftp;
/*
* Copyright (c) 1994, 2010, Oracle and/or its affiliates. All rights reserved.
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
* FTP stream opener.
*/
extern class FtpURLConnection extends java.net.URLConnection
{
	/**
	* Creates an FtpURLConnection from a URL.
	*
	* @param   url     The <code>URL</code> to retrieve or store.
	*/
	@:overload public function new(url : java.net.URL) : Void;
	
	/**
	* Connects to the FTP server and logs in.
	*
	* @throws  FtpLoginException if the login is unsuccessful
	* @throws  FtpProtocolException if an error occurs
	* @throws  UnknownHostException if trying to connect to an unknown host
	*/
	@:overload @:synchronized override public function connect() : Void;
	
	/**
	* Get the InputStream to retreive the remote file. It will issue the
	* "get" (or "dir") command to the ftp server.
	*
	* @return  the <code>InputStream</code> to the connection.
	*
	* @throws  IOException if already opened for output
	* @throws  FtpProtocolException if errors occur during the transfert.
	*/
	@:overload override public function getInputStream() : java.io.InputStream;
	
	/**
	* Get the OutputStream to store the remote file. It will issue the
	* "put" command to the ftp server.
	*
	* @return  the <code>OutputStream</code> to the connection.
	*
	* @throws  IOException if already opened for input or the URL
	*          points to a directory
	* @throws  FtpProtocolException if errors occur during the transfert.
	*/
	@:overload override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Gets the <code>Permission</code> associated with the host & port.
	*
	* @return  The <code>Permission</code> object.
	*/
	@:overload override public function getPermission() : java.security.Permission;
	
	/**
	* Sets the general request property. If a property with the key already
	* exists, overwrite its value with the new value.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>accept</code>").
	* @param   value   the value associated with it.
	* @throws IllegalStateException if already connected
	* @see #getRequestProperty(java.lang.String)
	*/
	@:overload override public function setRequestProperty(key : String, value : String) : Void;
	
	/**
	* Returns the value of the named general request property for this
	* connection.
	*
	* @param key the keyword by which the request is known (e.g., "accept").
	* @return  the value of the named general request property for this
	*           connection.
	* @throws IllegalStateException if already connected
	* @see #setRequestProperty(java.lang.String, java.lang.String)
	*/
	@:overload override public function getRequestProperty(key : String) : String;
	
	@:overload override public function setConnectTimeout(timeout : Int) : Void;
	
	@:overload override public function getConnectTimeout() : Int;
	
	@:overload override public function setReadTimeout(timeout : Int) : Void;
	
	@:overload override public function getReadTimeout() : Int;
	
	
}
/**
* For FTP URLs we need to have a special InputStream because we
* need to close 2 sockets after we're done with it :
*  - The Data socket (for the file).
*   - The command socket (FtpClient).
* Since that's the only class that needs to see that, it is an inner class.
*/
@:native('sun$net$www$protocol$ftp$FtpURLConnection$FtpInputStream') extern class FtpURLConnection_FtpInputStream extends java.io.FilterInputStream
{
	@:overload override public function close() : Void;
	
	
}
/**
* For FTP URLs we need to have a special OutputStream because we
* need to close 2 sockets after we're done with it :
*  - The Data socket (for the file).
*   - The command socket (FtpClient).
* Since that's the only class that needs to see that, it is an inner class.
*/
@:native('sun$net$www$protocol$ftp$FtpURLConnection$FtpOutputStream') extern class FtpURLConnection_FtpOutputStream extends java.io.FilterOutputStream
{
	@:overload override public function close() : Void;
	
	
}
