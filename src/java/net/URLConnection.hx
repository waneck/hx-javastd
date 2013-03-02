package java.net;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class URLConnection
{
	/**
	* The URL represents the remote object on the World Wide Web to
	* which this connection is opened.
	* <p>
	* The value of this field can be accessed by the
	* <code>getURL</code> method.
	* <p>
	* The default value of this variable is the value of the URL
	* argument in the <code>URLConnection</code> constructor.
	*
	* @see     java.net.URLConnection#getURL()
	* @see     java.net.URLConnection#url
	*/
	private var url : java.net.URL;
	
	/**
	* This variable is set by the <code>setDoInput</code> method. Its
	* value is returned by the <code>getDoInput</code> method.
	* <p>
	* A URL connection can be used for input and/or output. Setting the
	* <code>doInput</code> flag to <code>true</code> indicates that
	* the application intends to read data from the URL connection.
	* <p>
	* The default value of this field is <code>true</code>.
	*
	* @see     java.net.URLConnection#getDoInput()
	* @see     java.net.URLConnection#setDoInput(boolean)
	*/
	private var doInput : Bool;
	
	/**
	* This variable is set by the <code>setDoOutput</code> method. Its
	* value is returned by the <code>getDoOutput</code> method.
	* <p>
	* A URL connection can be used for input and/or output. Setting the
	* <code>doOutput</code> flag to <code>true</code> indicates
	* that the application intends to write data to the URL connection.
	* <p>
	* The default value of this field is <code>false</code>.
	*
	* @see     java.net.URLConnection#getDoOutput()
	* @see     java.net.URLConnection#setDoOutput(boolean)
	*/
	private var doOutput : Bool;
	
	/**
	* If <code>true</code>, this <code>URL</code> is being examined in
	* a context in which it makes sense to allow user interactions such
	* as popping up an authentication dialog. If <code>false</code>,
	* then no user interaction is allowed.
	* <p>
	* The value of this field can be set by the
	* <code>setAllowUserInteraction</code> method.
	* Its value is returned by the
	* <code>getAllowUserInteraction</code> method.
	* Its default value is the value of the argument in the last invocation
	* of the <code>setDefaultAllowUserInteraction</code> method.
	*
	* @see     java.net.URLConnection#getAllowUserInteraction()
	* @see     java.net.URLConnection#setAllowUserInteraction(boolean)
	* @see     java.net.URLConnection#setDefaultAllowUserInteraction(boolean)
	*/
	private var allowUserInteraction : Bool;
	
	/**
	* If <code>true</code>, the protocol is allowed to use caching
	* whenever it can. If <code>false</code>, the protocol must always
	* try to get a fresh copy of the object.
	* <p>
	* This field is set by the <code>setUseCaches</code> method. Its
	* value is returned by the <code>getUseCaches</code> method.
	* <p>
	* Its default value is the value given in the last invocation of the
	* <code>setDefaultUseCaches</code> method.
	*
	* @see     java.net.URLConnection#setUseCaches(boolean)
	* @see     java.net.URLConnection#getUseCaches()
	* @see     java.net.URLConnection#setDefaultUseCaches(boolean)
	*/
	private var useCaches : Bool;
	
	/**
	* Some protocols support skipping the fetching of the object unless
	* the object has been modified more recently than a certain time.
	* <p>
	* A nonzero value gives a time as the number of milliseconds since
	* January 1, 1970, GMT. The object is fetched only if it has been
	* modified more recently than that time.
	* <p>
	* This variable is set by the <code>setIfModifiedSince</code>
	* method. Its value is returned by the
	* <code>getIfModifiedSince</code> method.
	* <p>
	* The default value of this field is <code>0</code>, indicating
	* that the fetching must always occur.
	*
	* @see     java.net.URLConnection#getIfModifiedSince()
	* @see     java.net.URLConnection#setIfModifiedSince(long)
	*/
	private var ifModifiedSince : haxe.Int64;
	
	/**
	* If <code>false</code>, this connection object has not created a
	* communications link to the specified URL. If <code>true</code>,
	* the communications link has been established.
	*/
	private var connected : Bool;
	
	/**
	* Loads filename map (a mimetable) from a data file. It will
	* first try to load the user-specific table, defined
	* by &quot;content.types.user.table&quot; property. If that fails,
	* it tries to load the default built-in table at
	* lib/content-types.properties under java home.
	*
	* @return the FileNameMap
	* @since 1.2
	* @see #setFileNameMap(java.net.FileNameMap)
	*/
	@:require(java2) @:overload @:synchronized public static function getFileNameMap() : java.net.FileNameMap;
	
	/**
	* Sets the FileNameMap.
	* <p>
	* If there is a security manager, this method first calls
	* the security manager's <code>checkSetFactory</code> method
	* to ensure the operation is allowed.
	* This could result in a SecurityException.
	*
	* @param map the FileNameMap to be set
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkSetFactory</code> method doesn't allow the operation.
	* @see        SecurityManager#checkSetFactory
	* @see #getFileNameMap()
	* @since 1.2
	*/
	@:require(java2) @:overload public static function setFileNameMap(map : java.net.FileNameMap) : Void;
	
	/**
	* Opens a communications link to the resource referenced by this
	* URL, if such a connection has not already been established.
	* <p>
	* If the <code>connect</code> method is called when the connection
	* has already been opened (indicated by the <code>connected</code>
	* field having the value <code>true</code>), the call is ignored.
	* <p>
	* URLConnection objects go through two phases: first they are
	* created, then they are connected.  After being created, and
	* before being connected, various options can be specified
	* (e.g., doInput and UseCaches).  After connecting, it is an
	* error to try to set them.  Operations that depend on being
	* connected, like getContentLength, will implicitly perform the
	* connection, if necessary.
	*
	* @throws SocketTimeoutException if the timeout expires before
	*               the connection can be established
	* @exception  IOException  if an I/O error occurs while opening the
	*               connection.
	* @see java.net.URLConnection#connected
	* @see #getConnectTimeout()
	* @see #setConnectTimeout(int)
	*/
	@:overload @:abstract public function connect() : Void;
	
	/**
	* Sets a specified timeout value, in milliseconds, to be used
	* when opening a communications link to the resource referenced
	* by this URLConnection.  If the timeout expires before the
	* connection can be established, a
	* java.net.SocketTimeoutException is raised. A timeout of zero is
	* interpreted as an infinite timeout.

	* <p> Some non-standard implmentation of this method may ignore
	* the specified timeout. To see the connect timeout set, please
	* call getConnectTimeout().
	*
	* @param timeout an <code>int</code> that specifies the connect
	*               timeout value in milliseconds
	* @throws IllegalArgumentException if the timeout parameter is negative
	*
	* @see #getConnectTimeout()
	* @see #connect()
	* @since 1.5
	*/
	@:require(java5) @:overload public function setConnectTimeout(timeout : Int) : Void;
	
	/**
	* Returns setting for connect timeout.
	* <p>
	* 0 return implies that the option is disabled
	* (i.e., timeout of infinity).
	*
	* @return an <code>int</code> that indicates the connect timeout
	*         value in milliseconds
	* @see #setConnectTimeout(int)
	* @see #connect()
	* @since 1.5
	*/
	@:require(java5) @:overload public function getConnectTimeout() : Int;
	
	/**
	* Sets the read timeout to a specified timeout, in
	* milliseconds. A non-zero value specifies the timeout when
	* reading from Input stream when a connection is established to a
	* resource. If the timeout expires before there is data available
	* for read, a java.net.SocketTimeoutException is raised. A
	* timeout of zero is interpreted as an infinite timeout.
	*
	*<p> Some non-standard implementation of this method ignores the
	* specified timeout. To see the read timeout set, please call
	* getReadTimeout().
	*
	* @param timeout an <code>int</code> that specifies the timeout
	* value to be used in milliseconds
	* @throws IllegalArgumentException if the timeout parameter is negative
	*
	* @see #getReadTimeout()
	* @see InputStream#read()
	* @since 1.5
	*/
	@:require(java5) @:overload public function setReadTimeout(timeout : Int) : Void;
	
	/**
	* Returns setting for read timeout. 0 return implies that the
	* option is disabled (i.e., timeout of infinity).
	*
	* @return an <code>int</code> that indicates the read timeout
	*         value in milliseconds
	*
	* @see #setReadTimeout(int)
	* @see InputStream#read()
	* @since 1.5
	*/
	@:require(java5) @:overload public function getReadTimeout() : Int;
	
	/**
	* Constructs a URL connection to the specified URL. A connection to
	* the object referenced by the URL is not created.
	*
	* @param   url   the specified URL.
	*/
	@:overload private function new(url : java.net.URL) : Void;
	
	/**
	* Returns the value of this <code>URLConnection</code>'s <code>URL</code>
	* field.
	*
	* @return  the value of this <code>URLConnection</code>'s <code>URL</code>
	*          field.
	* @see     java.net.URLConnection#url
	*/
	@:overload public function getURL() : java.net.URL;
	
	/**
	* Returns the value of the <code>content-length</code> header field.
	* <P>
	* <B>Note</B>: {@link #getContentLengthLong() getContentLengthLong()}
	* should be preferred over this method, since it returns a {@code long}
	* instead and is therefore more portable.</P>
	*
	* @return  the content length of the resource that this connection's URL
	*          references, {@code -1} if the content length is not known,
	*          or if the content length is greater than Integer.MAX_VALUE.
	*/
	@:overload public function getContentLength() : Int;
	
	/**
	* Returns the value of the <code>content-length</code> header field as a
	* long.
	*
	* @return  the content length of the resource that this connection's URL
	*          references, or <code>-1</code> if the content length is
	*          not known.
	* @since 7.0
	*/
	@:require(java0) @:overload public function getContentLengthLong() : haxe.Int64;
	
	/**
	* Returns the value of the <code>content-type</code> header field.
	*
	* @return  the content type of the resource that the URL references,
	*          or <code>null</code> if not known.
	* @see     java.net.URLConnection#getHeaderField(java.lang.String)
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Returns the value of the <code>content-encoding</code> header field.
	*
	* @return  the content encoding of the resource that the URL references,
	*          or <code>null</code> if not known.
	* @see     java.net.URLConnection#getHeaderField(java.lang.String)
	*/
	@:overload public function getContentEncoding() : String;
	
	/**
	* Returns the value of the <code>expires</code> header field.
	*
	* @return  the expiration date of the resource that this URL references,
	*          or 0 if not known. The value is the number of milliseconds since
	*          January 1, 1970 GMT.
	* @see     java.net.URLConnection#getHeaderField(java.lang.String)
	*/
	@:overload public function getExpiration() : haxe.Int64;
	
	/**
	* Returns the value of the <code>date</code> header field.
	*
	* @return  the sending date of the resource that the URL references,
	*          or <code>0</code> if not known. The value returned is the
	*          number of milliseconds since January 1, 1970 GMT.
	* @see     java.net.URLConnection#getHeaderField(java.lang.String)
	*/
	@:overload public function getDate() : haxe.Int64;
	
	/**
	* Returns the value of the <code>last-modified</code> header field.
	* The result is the number of milliseconds since January 1, 1970 GMT.
	*
	* @return  the date the resource referenced by this
	*          <code>URLConnection</code> was last modified, or 0 if not known.
	* @see     java.net.URLConnection#getHeaderField(java.lang.String)
	*/
	@:overload public function getLastModified() : haxe.Int64;
	
	/**
	* Returns the value of the named header field.
	* <p>
	* If called on a connection that sets the same header multiple times
	* with possibly different values, only the last value is returned.
	*
	*
	* @param   name   the name of a header field.
	* @return  the value of the named header field, or <code>null</code>
	*          if there is no such field in the header.
	*/
	@:overload public function getHeaderField(name : String) : String;
	
	/**
	* Returns an unmodifiable Map of the header fields.
	* The Map keys are Strings that represent the
	* response-header field names. Each Map value is an
	* unmodifiable List of Strings that represents
	* the corresponding field values.
	*
	* @return a Map of header fields
	* @since 1.4
	*/
	@:require(java4) @:overload public function getHeaderFields() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Returns the value of the named field parsed as a number.
	* <p>
	* This form of <code>getHeaderField</code> exists because some
	* connection types (e.g., <code>http-ng</code>) have pre-parsed
	* headers. Classes for that connection type can override this method
	* and short-circuit the parsing.
	*
	* @param   name      the name of the header field.
	* @param   Default   the default value.
	* @return  the value of the named field, parsed as an integer. The
	*          <code>Default</code> value is returned if the field is
	*          missing or malformed.
	*/
	@:overload public function getHeaderFieldInt(name : String, Default : Int) : Int;
	
	/**
	* Returns the value of the named field parsed as a number.
	* <p>
	* This form of <code>getHeaderField</code> exists because some
	* connection types (e.g., <code>http-ng</code>) have pre-parsed
	* headers. Classes for that connection type can override this method
	* and short-circuit the parsing.
	*
	* @param   name      the name of the header field.
	* @param   Default   the default value.
	* @return  the value of the named field, parsed as a long. The
	*          <code>Default</code> value is returned if the field is
	*          missing or malformed.
	* @since 7.0
	*/
	@:require(java0) @:overload public function getHeaderFieldLong(name : String, Default : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the value of the named field parsed as date.
	* The result is the number of milliseconds since January 1, 1970 GMT
	* represented by the named field.
	* <p>
	* This form of <code>getHeaderField</code> exists because some
	* connection types (e.g., <code>http-ng</code>) have pre-parsed
	* headers. Classes for that connection type can override this method
	* and short-circuit the parsing.
	*
	* @param   name     the name of the header field.
	* @param   Default   a default value.
	* @return  the value of the field, parsed as a date. The value of the
	*          <code>Default</code> argument is returned if the field is
	*          missing or malformed.
	*/
	@:overload public function getHeaderFieldDate(name : String, Default : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the key for the <code>n</code><sup>th</sup> header field.
	* It returns <code>null</code> if there are fewer than <code>n+1</code> fields.
	*
	* @param   n   an index, where n>=0
	* @return  the key for the <code>n</code><sup>th</sup> header field,
	*          or <code>null</code> if there are fewer than <code>n+1</code>
	*          fields.
	*/
	@:overload public function getHeaderFieldKey(n : Int) : String;
	
	/**
	* Returns the value for the <code>n</code><sup>th</sup> header field.
	* It returns <code>null</code> if there are fewer than
	* <code>n+1</code>fields.
	* <p>
	* This method can be used in conjunction with the
	* {@link #getHeaderFieldKey(int) getHeaderFieldKey} method to iterate through all
	* the headers in the message.
	*
	* @param   n   an index, where n>=0
	* @return  the value of the <code>n</code><sup>th</sup> header field
	*          or <code>null</code> if there are fewer than <code>n+1</code> fields
	* @see     java.net.URLConnection#getHeaderFieldKey(int)
	*/
	@:overload public function getHeaderField(n : Int) : String;
	
	/**
	* Retrieves the contents of this URL connection.
	* <p>
	* This method first determines the content type of the object by
	* calling the <code>getContentType</code> method. If this is
	* the first time that the application has seen that specific content
	* type, a content handler for that content type is created:
	* <ol>
	* <li>If the application has set up a content handler factory instance
	*     using the <code>setContentHandlerFactory</code> method, the
	*     <code>createContentHandler</code> method of that instance is called
	*     with the content type as an argument; the result is a content
	*     handler for that content type.
	* <li>If no content handler factory has yet been set up, or if the
	*     factory's <code>createContentHandler</code> method returns
	*     <code>null</code>, then the application loads the class named:
	*     <blockquote><pre>
	*         sun.net.www.content.&lt;<i>contentType</i>&gt;
	*     </pre></blockquote>
	*     where &lt;<i>contentType</i>&gt; is formed by taking the
	*     content-type string, replacing all slash characters with a
	*     <code>period</code> ('.'), and all other non-alphanumeric characters
	*     with the underscore character '<code>_</code>'. The alphanumeric
	*     characters are specifically the 26 uppercase ASCII letters
	*     '<code>A</code>' through '<code>Z</code>', the 26 lowercase ASCII
	*     letters '<code>a</code>' through '<code>z</code>', and the 10 ASCII
	*     digits '<code>0</code>' through '<code>9</code>'. If the specified
	*     class does not exist, or is not a subclass of
	*     <code>ContentHandler</code>, then an
	*     <code>UnknownServiceException</code> is thrown.
	* </ol>
	*
	* @return     the object fetched. The <code>instanceof</code> operator
	*               should be used to determine the specific kind of object
	*               returned.
	* @exception  IOException              if an I/O error occurs while
	*               getting the content.
	* @exception  UnknownServiceException  if the protocol does not support
	*               the content type.
	* @see        java.net.ContentHandlerFactory#createContentHandler(java.lang.String)
	* @see        java.net.URLConnection#getContentType()
	* @see        java.net.URLConnection#setContentHandlerFactory(java.net.ContentHandlerFactory)
	*/
	@:overload public function getContent() : Dynamic;
	
	/**
	* Retrieves the contents of this URL connection.
	*
	* @param classes the <code>Class</code> array
	* indicating the requested types
	* @return     the object fetched that is the first match of the type
	*               specified in the classes array. null if none of
	*               the requested types are supported.
	*               The <code>instanceof</code> operator should be used to
	*               determine the specific kind of object returned.
	* @exception  IOException              if an I/O error occurs while
	*               getting the content.
	* @exception  UnknownServiceException  if the protocol does not support
	*               the content type.
	* @see        java.net.URLConnection#getContent()
	* @see        java.net.ContentHandlerFactory#createContentHandler(java.lang.String)
	* @see        java.net.URLConnection#getContent(java.lang.Class[])
	* @see        java.net.URLConnection#setContentHandlerFactory(java.net.ContentHandlerFactory)
	* @since 1.3
	*/
	@:require(java3) @:overload public function getContent(classes : java.NativeArray<Class<Dynamic>>) : Dynamic;
	
	/**
	* Returns a permission object representing the permission
	* necessary to make the connection represented by this
	* object. This method returns null if no permission is
	* required to make the connection. By default, this method
	* returns <code>java.security.AllPermission</code>. Subclasses
	* should override this method and return the permission
	* that best represents the permission required to make a
	* a connection to the URL. For example, a <code>URLConnection</code>
	* representing a <code>file:</code> URL would return a
	* <code>java.io.FilePermission</code> object.
	*
	* <p>The permission returned may dependent upon the state of the
	* connection. For example, the permission before connecting may be
	* different from that after connecting. For example, an HTTP
	* sever, say foo.com, may redirect the connection to a different
	* host, say bar.com. Before connecting the permission returned by
	* the connection will represent the permission needed to connect
	* to foo.com, while the permission returned after connecting will
	* be to bar.com.
	*
	* <p>Permissions are generally used for two purposes: to protect
	* caches of objects obtained through URLConnections, and to check
	* the right of a recipient to learn about a particular URL. In
	* the first case, the permission should be obtained
	* <em>after</em> the object has been obtained. For example, in an
	* HTTP connection, this will represent the permission to connect
	* to the host from which the data was ultimately fetched. In the
	* second case, the permission should be obtained and tested
	* <em>before</em> connecting.
	*
	* @return the permission object representing the permission
	* necessary to make the connection represented by this
	* URLConnection.
	*
	* @exception IOException if the computation of the permission
	* requires network or file I/O and an exception occurs while
	* computing it.
	*/
	@:overload public function getPermission() : java.security.Permission;
	
	/**
	* Returns an input stream that reads from this open connection.
	*
	* A SocketTimeoutException can be thrown when reading from the
	* returned input stream if the read timeout expires before data
	* is available for read.
	*
	* @return     an input stream that reads from this open connection.
	* @exception  IOException              if an I/O error occurs while
	*               creating the input stream.
	* @exception  UnknownServiceException  if the protocol does not support
	*               input.
	* @see #setReadTimeout(int)
	* @see #getReadTimeout()
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	/**
	* Returns an output stream that writes to this connection.
	*
	* @return     an output stream that writes to this connection.
	* @exception  IOException              if an I/O error occurs while
	*               creating the output stream.
	* @exception  UnknownServiceException  if the protocol does not support
	*               output.
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns a <code>String</code> representation of this URL connection.
	*
	* @return  a string representation of this <code>URLConnection</code>.
	*/
	@:overload public function toString() : String;
	
	/**
	* Sets the value of the <code>doInput</code> field for this
	* <code>URLConnection</code> to the specified value.
	* <p>
	* A URL connection can be used for input and/or output.  Set the DoInput
	* flag to true if you intend to use the URL connection for input,
	* false if not.  The default is true.
	*
	* @param   doinput   the new value.
	* @throws IllegalStateException if already connected
	* @see     java.net.URLConnection#doInput
	* @see #getDoInput()
	*/
	@:overload public function setDoInput(doinput : Bool) : Void;
	
	/**
	* Returns the value of this <code>URLConnection</code>'s
	* <code>doInput</code> flag.
	*
	* @return  the value of this <code>URLConnection</code>'s
	*          <code>doInput</code> flag.
	* @see     #setDoInput(boolean)
	*/
	@:overload public function getDoInput() : Bool;
	
	/**
	* Sets the value of the <code>doOutput</code> field for this
	* <code>URLConnection</code> to the specified value.
	* <p>
	* A URL connection can be used for input and/or output.  Set the DoOutput
	* flag to true if you intend to use the URL connection for output,
	* false if not.  The default is false.
	*
	* @param   dooutput   the new value.
	* @throws IllegalStateException if already connected
	* @see #getDoOutput()
	*/
	@:overload public function setDoOutput(dooutput : Bool) : Void;
	
	/**
	* Returns the value of this <code>URLConnection</code>'s
	* <code>doOutput</code> flag.
	*
	* @return  the value of this <code>URLConnection</code>'s
	*          <code>doOutput</code> flag.
	* @see     #setDoOutput(boolean)
	*/
	@:overload public function getDoOutput() : Bool;
	
	/**
	* Set the value of the <code>allowUserInteraction</code> field of
	* this <code>URLConnection</code>.
	*
	* @param   allowuserinteraction   the new value.
	* @throws IllegalStateException if already connected
	* @see     #getAllowUserInteraction()
	*/
	@:overload public function setAllowUserInteraction(allowuserinteraction : Bool) : Void;
	
	/**
	* Returns the value of the <code>allowUserInteraction</code> field for
	* this object.
	*
	* @return  the value of the <code>allowUserInteraction</code> field for
	*          this object.
	* @see     #setAllowUserInteraction(boolean)
	*/
	@:overload public function getAllowUserInteraction() : Bool;
	
	/**
	* Sets the default value of the
	* <code>allowUserInteraction</code> field for all future
	* <code>URLConnection</code> objects to the specified value.
	*
	* @param   defaultallowuserinteraction   the new value.
	* @see     #getDefaultAllowUserInteraction()
	*/
	@:overload public static function setDefaultAllowUserInteraction(defaultallowuserinteraction : Bool) : Void;
	
	/**
	* Returns the default value of the <code>allowUserInteraction</code>
	* field.
	* <p>
	* Ths default is "sticky", being a part of the static state of all
	* URLConnections.  This flag applies to the next, and all following
	* URLConnections that are created.
	*
	* @return  the default value of the <code>allowUserInteraction</code>
	*          field.
	* @see     #setDefaultAllowUserInteraction(boolean)
	*/
	@:overload public static function getDefaultAllowUserInteraction() : Bool;
	
	/**
	* Sets the value of the <code>useCaches</code> field of this
	* <code>URLConnection</code> to the specified value.
	* <p>
	* Some protocols do caching of documents.  Occasionally, it is important
	* to be able to "tunnel through" and ignore the caches (e.g., the
	* "reload" button in a browser).  If the UseCaches flag on a connection
	* is true, the connection is allowed to use whatever caches it can.
	*  If false, caches are to be ignored.
	*  The default value comes from DefaultUseCaches, which defaults to
	* true.
	*
	* @param usecaches a <code>boolean</code> indicating whether
	* or not to allow caching
	* @throws IllegalStateException if already connected
	* @see #getUseCaches()
	*/
	@:overload public function setUseCaches(usecaches : Bool) : Void;
	
	/**
	* Returns the value of this <code>URLConnection</code>'s
	* <code>useCaches</code> field.
	*
	* @return  the value of this <code>URLConnection</code>'s
	*          <code>useCaches</code> field.
	* @see #setUseCaches(boolean)
	*/
	@:overload public function getUseCaches() : Bool;
	
	/**
	* Sets the value of the <code>ifModifiedSince</code> field of
	* this <code>URLConnection</code> to the specified value.
	*
	* @param   ifmodifiedsince   the new value.
	* @throws IllegalStateException if already connected
	* @see     #getIfModifiedSince()
	*/
	@:overload public function setIfModifiedSince(ifmodifiedsince : haxe.Int64) : Void;
	
	/**
	* Returns the value of this object's <code>ifModifiedSince</code> field.
	*
	* @return  the value of this object's <code>ifModifiedSince</code> field.
	* @see #setIfModifiedSince(long)
	*/
	@:overload public function getIfModifiedSince() : haxe.Int64;
	
	/**
	* Returns the default value of a <code>URLConnection</code>'s
	* <code>useCaches</code> flag.
	* <p>
	* Ths default is "sticky", being a part of the static state of all
	* URLConnections.  This flag applies to the next, and all following
	* URLConnections that are created.
	*
	* @return  the default value of a <code>URLConnection</code>'s
	*          <code>useCaches</code> flag.
	* @see     #setDefaultUseCaches(boolean)
	*/
	@:overload public function getDefaultUseCaches() : Bool;
	
	/**
	* Sets the default value of the <code>useCaches</code> field to the
	* specified value.
	*
	* @param   defaultusecaches   the new value.
	* @see     #getDefaultUseCaches()
	*/
	@:overload public function setDefaultUseCaches(defaultusecaches : Bool) : Void;
	
	/**
	* Sets the general request property. If a property with the key already
	* exists, overwrite its value with the new value.
	*
	* <p> NOTE: HTTP requires all request properties which can
	* legally have multiple instances with the same key
	* to use a comma-seperated list syntax which enables multiple
	* properties to be appended into a single property.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>Accept</code>").
	* @param   value   the value associated with it.
	* @throws IllegalStateException if already connected
	* @throws NullPointerException if key is <CODE>null</CODE>
	* @see #getRequestProperty(java.lang.String)
	*/
	@:overload public function setRequestProperty(key : String, value : String) : Void;
	
	/**
	* Adds a general request property specified by a
	* key-value pair.  This method will not overwrite
	* existing values associated with the same key.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>Accept</code>").
	* @param   value  the value associated with it.
	* @throws IllegalStateException if already connected
	* @throws NullPointerException if key is null
	* @see #getRequestProperties()
	* @since 1.4
	*/
	@:require(java4) @:overload public function addRequestProperty(key : String, value : String) : Void;
	
	/**
	* Returns the value of the named general request property for this
	* connection.
	*
	* @param key the keyword by which the request is known (e.g., "Accept").
	* @return  the value of the named general request property for this
	*           connection. If key is null, then null is returned.
	* @throws IllegalStateException if already connected
	* @see #setRequestProperty(java.lang.String, java.lang.String)
	*/
	@:overload public function getRequestProperty(key : String) : String;
	
	/**
	* Returns an unmodifiable Map of general request
	* properties for this connection. The Map keys
	* are Strings that represent the request-header
	* field names. Each Map value is a unmodifiable List
	* of Strings that represents the corresponding
	* field values.
	*
	* @return  a Map of the general request properties for this connection.
	* @throws IllegalStateException if already connected
	* @since 1.4
	*/
	@:require(java4) @:overload public function getRequestProperties() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Sets the default value of a general request property. When a
	* <code>URLConnection</code> is created, it is initialized with
	* these properties.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>Accept</code>").
	* @param   value   the value associated with the key.
	*
	* @see java.net.URLConnection#setRequestProperty(java.lang.String,java.lang.String)
	*
	* @deprecated The instance specific setRequestProperty method
	* should be used after an appropriate instance of URLConnection
	* is obtained. Invoking this method will have no effect.
	*
	* @see #getDefaultRequestProperty(java.lang.String)
	*/
	@:overload public static function setDefaultRequestProperty(key : String, value : String) : Void;
	
	/**
	* Returns the value of the default request property. Default request
	* properties are set for every connection.
	*
	* @param key the keyword by which the request is known (e.g., "Accept").
	* @return  the value of the default request property
	* for the specified key.
	*
	* @see java.net.URLConnection#getRequestProperty(java.lang.String)
	*
	* @deprecated The instance specific getRequestProperty method
	* should be used after an appropriate instance of URLConnection
	* is obtained.
	*
	* @see #setDefaultRequestProperty(java.lang.String, java.lang.String)
	*/
	@:overload public static function getDefaultRequestProperty(key : String) : String;
	
	/**
	* Sets the <code>ContentHandlerFactory</code> of an
	* application. It can be called at most once by an application.
	* <p>
	* The <code>ContentHandlerFactory</code> instance is used to
	* construct a content handler from a content type
	* <p>
	* If there is a security manager, this method first calls
	* the security manager's <code>checkSetFactory</code> method
	* to ensure the operation is allowed.
	* This could result in a SecurityException.
	*
	* @param      fac   the desired factory.
	* @exception  Error  if the factory has already been defined.
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkSetFactory</code> method doesn't allow the operation.
	* @see        java.net.ContentHandlerFactory
	* @see        java.net.URLConnection#getContent()
	* @see        SecurityManager#checkSetFactory
	*/
	@:overload @:synchronized public static function setContentHandlerFactory(fac : java.net.ContentHandlerFactory) : Void;
	
	/**
	* Tries to determine the content type of an object, based
	* on the specified "file" component of a URL.
	* This is a convenience method that can be used by
	* subclasses that override the <code>getContentType</code> method.
	*
	* @param   fname   a filename.
	* @return  a guess as to what the content type of the object is,
	*          based upon its file name.
	* @see     java.net.URLConnection#getContentType()
	*/
	@:overload public static function guessContentTypeFromName(fname : String) : String;
	
	/**
	* Tries to determine the type of an input stream based on the
	* characters at the beginning of the input stream. This method can
	* be used by subclasses that override the
	* <code>getContentType</code> method.
	* <p>
	* Ideally, this routine would not be needed. But many
	* <code>http</code> servers return the incorrect content type; in
	* addition, there are many nonstandard extensions. Direct inspection
	* of the bytes to determine the content type is often more accurate
	* than believing the content type claimed by the <code>http</code> server.
	*
	* @param      is   an input stream that supports marks.
	* @return     a guess at the content type, or <code>null</code> if none
	*             can be determined.
	* @exception  IOException  if an I/O error occurs while reading the
	*               input stream.
	* @see        java.io.InputStream#mark(int)
	* @see        java.io.InputStream#markSupported()
	* @see        java.net.URLConnection#getContentType()
	*/
	@:overload public static function guessContentTypeFromStream(is : java.io.InputStream) : String;
	
	
}
@:internal extern class UnknownContentHandler extends java.net.ContentHandler
{
	@:overload override public function getContent(uc : java.net.URLConnection) : Dynamic;
	
	
}
