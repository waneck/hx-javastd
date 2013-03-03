package sun.net.www;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*-
*      news stream opener
*/
extern class MessageHeader
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(is : java.io.InputStream) : Void;
	
	/**
	* Reset a message header (all key/values removed)
	*/
	@:overload @:public @:synchronized public function reset() : Void;
	
	/**
	* Find the value that corresponds to this key.
	* It finds only the first occurrence of the key.
	* @param k the key to find.
	* @return null if not found.
	*/
	@:overload @:public @:synchronized public function findValue(k : String) : String;
	
	@:overload @:public @:synchronized public function getKey(k : String) : Int;
	
	@:overload @:public @:synchronized public function getKey(n : Int) : String;
	
	@:overload @:public @:synchronized public function getValue(n : Int) : String;
	
	/** Deprecated: Use multiValueIterator() instead.
	*
	*  Find the next value that corresponds to this key.
	*  It finds the first value that follows v. To iterate
	*  over all the values of a key use:
	*  <pre>
	*          for(String v=h.findValue(k); v!=null; v=h.findNextValue(k, v)) {
	*              ...
	*          }
	*  </pre>
	*/
	@:overload @:public @:synchronized public function findNextValue(k : String, v : String) : String;
	
	/**
	* Removes bare Negotiate and Kerberos headers when an "NTLM ..."
	* appears. All Performed on headers with key being k.
	* @return true if there is a change
	*/
	@:overload @:public public function filterNTLMResponses(k : String) : Bool;
	
	/**
	* return an Iterator that returns all values of a particular
	* key in sequence
	*/
	@:overload @:public public function multiValueIterator(k : String) : java.util.Iterator<String>;
	
	@:overload @:public @:synchronized public function getHeaders() : java.util.Map<String, java.util.List<String>>;
	
	@:overload @:public @:synchronized public function getHeaders(excludeList : java.NativeArray<String>) : java.util.Map<String, java.util.List<String>>;
	
	@:overload @:public @:synchronized public function filterAndAddHeaders(excludeList : java.NativeArray<String>, include : java.util.Map<String, java.util.List<String>>) : java.util.Map<String, java.util.List<String>>;
	
	/** Prints the key-value pairs represented by this
	header.  Also prints the RFC required blank line
	at the end. Omits pairs with a null key. */
	@:overload @:public @:synchronized public function print(p : java.io.PrintStream) : Void;
	
	/** Adds a key value pair to the end of the
	header.  Duplicates are allowed */
	@:overload @:public @:synchronized public function add(k : String, v : String) : Void;
	
	/** Prepends a key value pair to the beginning of the
	header.  Duplicates are allowed */
	@:overload @:public @:synchronized public function prepend(k : String, v : String) : Void;
	
	/** Overwrite the previous key/val pair at location 'i'
	* with the new k/v.  If the index didn't exist before
	* the key/val is simply tacked onto the end.
	*/
	@:overload @:public @:synchronized public function set(i : Int, k : String, v : String) : Void;
	
	/**
	* Remove the key from the header. If there are multiple values under
	* the same key, they are all removed.
	* Nothing is done if the key doesn't exist.
	* After a remove, the other pairs' order are not changed.
	* @param k the key to remove
	*/
	@:overload @:public @:synchronized public function remove(k : String) : Void;
	
	/** Sets the value of a key.  If the key already
	exists in the header, it's value will be
	changed.  Otherwise a new key/value pair will
	be added to the end of the header. */
	@:overload @:public @:synchronized public function set(k : String, v : String) : Void;
	
	/** Set's the value of a key only if there is no
	*  key with that value already.
	*/
	@:overload @:public @:synchronized public function setIfNotSet(k : String, v : String) : Void;
	
	/** Convert a message-id string to canonical form (strips off
	leading and trailing <>s) */
	@:overload @:public @:static public static function canonicalID(id : String) : String;
	
	/** Parse a MIME header from an input stream. */
	@:overload @:public public function parseHeader(is : java.io.InputStream) : Void;
	
	/** Parse and merge a MIME header from an input stream. */
	@:overload @:public public function mergeHeader(is : java.io.InputStream) : Void;
	
	@:overload @:public @:synchronized public function toString() : String;
	
	
}
@:native('sun$net$www$MessageHeader$HeaderIterator') @:internal extern class MessageHeader_HeaderIterator implements java.util.Iterator<String>
{
	@:overload @:public public function new(k : String, lock : Dynamic) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : String;
	
	@:overload @:public public function remove() : Void;
	
	
}
