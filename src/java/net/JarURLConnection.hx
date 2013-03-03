package java.net;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class JarURLConnection extends java.net.URLConnection
{
	/**
	* The connection to the JAR file URL, if the connection has been
	* initiated. This should be set by connect.
	*/
	@:protected private var jarFileURLConnection : java.net.URLConnection;
	
	/**
	* Creates the new JarURLConnection to the specified URL.
	* @param url the URL
	* @throws MalformedURLException if no legal protocol
	* could be found in a specification string or the
	* string could not be parsed.
	*/
	@:overload @:protected private function new(url : java.net.URL) : Void;
	
	/**
	* Returns the URL for the Jar file for this connection.
	*
	* @return the URL for the Jar file for this connection.
	*/
	@:overload @:public public function getJarFileURL() : java.net.URL;
	
	/**
	* Return the entry name for this connection. This method
	* returns null if the JAR file URL corresponding to this
	* connection points to a JAR file and not a JAR file entry.
	*
	* @return the entry name for this connection, if any.
	*/
	@:overload @:public public function getEntryName() : String;
	
	/**
	* Return the JAR file for this connection.
	*
	* @return the JAR file for this connection. If the connection is
	* a connection to an entry of a JAR file, the JAR file object is
	* returned
	*
	* @exception IOException if an IOException occurs while trying to
	* connect to the JAR file for this connection.
	*
	* @see #connect
	*/
	@:overload @:public @:abstract public function getJarFile() : java.util.jar.JarFile;
	
	/**
	* Returns the Manifest for this connection, or null if none.
	*
	* @return the manifest object corresponding to the JAR file object
	* for this connection.
	*
	* @exception IOException if getting the JAR file for this
	* connection causes an IOException to be trown.
	*
	* @see #getJarFile
	*/
	@:overload @:public public function getManifest() : java.util.jar.Manifest;
	
	/**
	* Return the JAR entry object for this connection, if any. This
	* method returns null if the JAR file URL corresponding to this
	* connection points to a JAR file and not a JAR file entry.
	*
	* @return the JAR entry object for this connection, or null if
	* the JAR URL for this connection points to a JAR file.
	*
	* @exception IOException if getting the JAR file for this
	* connection causes an IOException to be trown.
	*
	* @see #getJarFile
	* @see #getJarEntry
	*/
	@:overload @:public public function getJarEntry() : java.util.jar.JarEntry;
	
	/**
	* Return the Attributes object for this connection if the URL
	* for it points to a JAR file entry, null otherwise.
	*
	* @return the Attributes object for this connection if the URL
	* for it points to a JAR file entry, null otherwise.
	*
	* @exception IOException if getting the JAR entry causes an
	* IOException to be thrown.
	*
	* @see #getJarEntry
	*/
	@:overload @:public public function getAttributes() : java.util.jar.Attributes;
	
	/**
	* Returns the main Attributes for the JAR file for this
	* connection.
	*
	* @return the main Attributes for the JAR file for this
	* connection.
	*
	* @exception IOException if getting the manifest causes an
	* IOException to be thrown.
	*
	* @see #getJarFile
	* @see #getManifest
	*/
	@:overload @:public public function getMainAttributes() : java.util.jar.Attributes;
	
	/**
	* Return the Certificate object for this connection if the URL
	* for it points to a JAR file entry, null otherwise. This method
	* can only be called once
	* the connection has been completely verified by reading
	* from the input stream until the end of the stream has been
	* reached. Otherwise, this method will return <code>null</code>
	*
	* @return the Certificate object for this connection if the URL
	* for it points to a JAR file entry, null otherwise.
	*
	* @exception IOException if getting the JAR entry causes an
	* IOException to be thrown.
	*
	* @see #getJarEntry
	*/
	@:overload @:public public function getCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	
}
