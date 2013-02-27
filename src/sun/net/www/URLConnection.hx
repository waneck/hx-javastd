package sun.net.www;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class URLConnection extends java.net.URLConnection
{
	private var properties : sun.net.www.MessageHeader;
	
	/** Create a URLConnection object.  These should not be created directly:
	instead they should be created by protocol handers in response to
	URL.openConnection.
	@param  u       The URL that this connects to.
	*/
	@:overload override public function new(u : java.net.URL) : Void;
	
	/** Call this routine to get the property list for this object.
	* Properties (like content-type) that have explicit getXX() methods
	* associated with them should be accessed using those methods.  */
	@:overload public function getProperties() : sun.net.www.MessageHeader;
	
	/** Call this routine to set the property list for this object. */
	@:overload public function setProperties(properties : sun.net.www.MessageHeader) : Void;
	
	@:overload override public function setRequestProperty(key : String, value : String) : Void;
	
	/**
	* The following three methods addRequestProperty, getRequestProperty,
	* and getRequestProperties were copied from the superclass implementation
	* before it was changed by CR:6230836, to maintain backward compatibility.
	*/
	@:overload override public function addRequestProperty(key : String, value : String) : Void;
	
	@:overload override public function getRequestProperty(key : String) : String;
	
	@:overload override public function getRequestProperties() : java.util.Map<String, java.util.List<String>>;
	
	@:overload override public function getHeaderField(name : String) : String;
	
	/**
	* Return the key for the nth header field. Returns null if
	* there are fewer than n fields.  This can be used to iterate
	* through all the headers in the message.
	*/
	@:overload override public function getHeaderFieldKey(n : Int) : String;
	
	/**
	* Return the value for the nth header field. Returns null if
	* there are fewer than n fields.  This can be used in conjunction
	* with getHeaderFieldKey to iterate through all the headers in the message.
	*/
	@:overload override public function getHeaderField(n : Int) : String;
	
	/** Call this routine to get the content-type associated with this
	* object.
	*/
	@:overload override public function getContentType() : String;
	
	/**
	* Set the content type of this URL to a specific value.
	* @param   type    The content type to use.  One of the
	*                  content_* static variables in this
	*                  class should be used.
	*                  eg. setType(URL.content_html);
	*/
	@:overload public function setContentType(type : String) : Void;
	
	/** Call this routine to get the content-length associated with this
	* object.
	*/
	@:overload override public function getContentLength() : Int;
	
	/** Call this routine to set the content-length associated with this
	* object.
	*/
	@:overload private function setContentLength(length : Int) : Void;
	
	/**
	* Returns true if the data associated with this URL can be cached.
	*/
	@:overload public function canCache() : Bool;
	
	/**
	* Call this to close the connection and flush any remaining data.
	* Overriders must remember to call super.close()
	*/
	@:overload public function close() : Void;
	
	@:overload @:synchronized public static function setProxiedHost(host : String) : Void;
	
	@:overload @:synchronized public static function isProxiedHost(host : String) : Bool;
	
	
}
