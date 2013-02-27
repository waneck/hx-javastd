package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeHeaders
{
	/**
	* Constructs a default <code>MimeHeaders</code> object initialized with
	* an empty <code>Vector</code> object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns all of the values for the specified header as an array of
	* <code>String</code> objects.
	*
	* @param   name the name of the header for which values will be returned
	* @return a <code>String</code> array with all of the values for the
	*         specified header
	* @see #setHeader
	*/
	@:overload public function getHeader(name : String) : java.NativeArray<String>;
	
	/**
	* Replaces the current value of the first header entry whose name matches
	* the given name with the given value, adding a new header if no existing header
	* name matches. This method also removes all matching headers after the first one.
	* <P>
	* Note that RFC822 headers can contain only US-ASCII characters.
	*
	* @param   name a <code>String</code> with the name of the header for
	*          which to search
	* @param   value a <code>String</code> with the value that will replace the
	*          current value of the specified header
	*
	* @exception IllegalArgumentException if there was a problem in the
	* mime header name or the value being set
	* @see #getHeader
	*/
	@:overload public function setHeader(name : String, value : String) : Void;
	
	/**
	* Adds a <code>MimeHeader</code> object with the specified name and value
	* to this <code>MimeHeaders</code> object's list of headers.
	* <P>
	* Note that RFC822 headers can contain only US-ASCII characters.
	*
	* @param   name a <code>String</code> with the name of the header to
	*          be added
	* @param   value a <code>String</code> with the value of the header to
	*          be added
	*
	* @exception IllegalArgumentException if there was a problem in the
	* mime header name or value being added
	*/
	@:overload public function addHeader(name : String, value : String) : Void;
	
	/**
	* Remove all <code>MimeHeader</code> objects whose name matches the
	* given name.
	*
	* @param   name a <code>String</code> with the name of the header for
	*          which to search
	*/
	@:overload public function removeHeader(name : String) : Void;
	
	/**
	* Removes all the header entries from this <code>MimeHeaders</code> object.
	*/
	@:overload public function removeAllHeaders() : Void;
	
	/**
	* Returns all the <code>MimeHeader</code>s in this <code>MimeHeaders</code> object.
	*
	* @return  an <code>Iterator</code> object over this <code>MimeHeaders</code>
	*          object's list of <code>MimeHeader</code> objects
	*/
	@:overload public function getAllHeaders() : java.util.Iterator<Dynamic>;
	
	/**
	* Returns all the <code>MimeHeader</code> objects whose name matches
	* a name in the given array of names.
	*
	* @param names an array of <code>String</code> objects with the names
	*         for which to search
	* @return  an <code>Iterator</code> object over the <code>MimeHeader</code>
	*          objects whose name matches one of the names in the given list
	*/
	@:overload public function getMatchingHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	/**
	* Returns all of the <code>MimeHeader</code> objects whose name does not
	* match a name in the given array of names.
	*
	* @param names an array of <code>String</code> objects with the names
	*         for which to search
	* @return  an <code>Iterator</code> object over the <code>MimeHeader</code>
	*          objects whose name does not match one of the names in the given list
	*/
	@:overload public function getNonMatchingHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	
}
@:native('javax$xml$soap$MimeHeaders$MatchingIterator') @:internal extern class MimeHeaders_MatchingIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
