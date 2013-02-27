package sun.net.www.protocol.jar;
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
extern class JarURLConnection extends java.net.JarURLConnection
{
	@:overload public function new(url : java.net.URL, handler : sun.net.www.protocol.jar.Handler) : Void;
	
	@:overload override public function getJarFile() : java.util.jar.JarFile;
	
	@:overload override public function getJarEntry() : java.util.jar.JarEntry;
	
	@:overload override public function getPermission() : java.security.Permission;
	
	@:overload override public function connect() : Void;
	
	@:overload override public function getInputStream() : java.io.InputStream;
	
	@:overload override public function getContentLength() : Int;
	
	@:overload override public function getContentLengthLong() : haxe.Int64;
	
	@:overload override public function getContent() : Dynamic;
	
	@:overload override public function getContentType() : String;
	
	@:overload override public function getHeaderField(name : String) : String;
	
	/**
	* Sets the general request property.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>accept</code>").
	* @param   value   the value associated with it.
	*/
	@:overload override public function setRequestProperty(key : String, value : String) : Void;
	
	/**
	* Returns the value of the named general request property for this
	* connection.
	*
	* @return  the value of the named general request property for this
	*           connection.
	*/
	@:overload override public function getRequestProperty(key : String) : String;
	
	/**
	* Adds a general request property specified by a
	* key-value pair.  This method will not overwrite
	* existing values associated with the same key.
	*
	* @param   key     the keyword by which the request is known
	*                  (e.g., "<code>accept</code>").
	* @param   value   the value associated with it.
	*/
	@:overload override public function addRequestProperty(key : String, value : String) : Void;
	
	/**
	* Returns an unmodifiable Map of general request
	* properties for this connection. The Map keys
	* are Strings that represent the request-header
	* field names. Each Map value is a unmodifiable List
	* of Strings that represents the corresponding
	* field values.
	*
	* @return  a Map of the general request properties for this connection.
	*/
	@:overload override public function getRequestProperties() : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Set the value of the <code>allowUserInteraction</code> field of
	* this <code>URLConnection</code>.
	*
	* @param   allowuserinteraction   the new value.
	* @see     java.net.URLConnection#allowUserInteraction
	*/
	@:overload override public function setAllowUserInteraction(allowuserinteraction : Bool) : Void;
	
	/**
	* Returns the value of the <code>allowUserInteraction</code> field for
	* this object.
	*
	* @return  the value of the <code>allowUserInteraction</code> field for
	*          this object.
	* @see     java.net.URLConnection#allowUserInteraction
	*/
	@:overload override public function getAllowUserInteraction() : Bool;
	
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
	* @see     java.net.URLConnection#useCaches
	*/
	@:overload override public function setUseCaches(usecaches : Bool) : Void;
	
	/**
	* Returns the value of this <code>URLConnection</code>'s
	* <code>useCaches</code> field.
	*
	* @return  the value of this <code>URLConnection</code>'s
	*          <code>useCaches</code> field.
	* @see     java.net.URLConnection#useCaches
	*/
	@:overload override public function getUseCaches() : Bool;
	
	/**
	* Sets the value of the <code>ifModifiedSince</code> field of
	* this <code>URLConnection</code> to the specified value.
	*
	* @param   value   the new value.
	* @see     java.net.URLConnection#ifModifiedSince
	*/
	@:overload override public function setIfModifiedSince(ifmodifiedsince : haxe.Int64) : Void;
	
	/**
	* Sets the default value of the <code>useCaches</code> field to the
	* specified value.
	*
	* @param   defaultusecaches   the new value.
	* @see     java.net.URLConnection#useCaches
	*/
	@:overload override public function setDefaultUseCaches(defaultusecaches : Bool) : Void;
	
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
	* @see     java.net.URLConnection#useCaches
	*/
	@:overload override public function getDefaultUseCaches() : Bool;
	
	
}
@:native('sun$net$www$protocol$jar$JarURLConnection$JarURLInputStream') @:internal extern class JarURLConnection_JarURLInputStream extends java.io.FilterInputStream
{
	@:overload override public function close() : Void;
	
	
}
