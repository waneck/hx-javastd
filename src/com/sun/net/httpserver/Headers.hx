package com.sun.net.httpserver;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* HTTP request and response headers are represented by this class which implements
* the interface {@link java.util.Map}&lt;
* {@link java.lang.String},{@link java.util.List}&lt;{@link java.lang.String}&gt;&gt;.
* The keys are case-insensitive Strings representing the header names and
* the value associated with each key is a {@link List}&lt;{@link String}&gt; with one
* element for each occurence of the header name in the request or response.
* <p>
* For example, if a response header instance contains one key "HeaderName" with two values "value1 and value2"
* then this object is output as two header lines:
* <blockquote><pre>
* HeaderName: value1
* HeaderName: value2
* </blockquote></pre>
* <p>
* All the normal {@link java.util.Map} methods are provided, but the following
* additional convenience methods are most likely to be used:
* <ul>
* <li>{@link #getFirst(String)} returns a single valued header or the first value of
* a multi-valued header.</li>
* <li>{@link #add(String,String)} adds the given header value to the list for the given key</li>
* <li>{@link #set(String,String)} sets the given header field to the single value given
* overwriting any existing values in the value list.
* </ul><p>
* All methods in this class accept <code>null</code> values for keys and values. However, null
* keys will never will be present in HTTP request headers, and will not be output/sent in response headers.
* Null values can be represented as either a null entry for the key (i.e. the list is null) or
* where the key has a list, but one (or more) of the list's values is null. Null values are output
* as a header line containing the key but no associated value.
* @since 1.6
*/
@:require(java6) extern class Headers implements java.util.Map<String, java.util.List<String>>
{
	@:overload public function new() : Void;
	
	@:overload public function size() : Int;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function containsKey(key : Dynamic) : Bool;
	
	@:overload public function containsValue(value : Dynamic) : Bool;
	
	@:overload public function get(key : Dynamic) : java.util.List<String>;
	
	/**
	* returns the first value from the List of String values
	* for the given key (if at least one exists).
	* @param key the key to search for
	* @return the first string value associated with the key
	*/
	@:overload public function getFirst(key : String) : String;
	
	@:overload public function put(key : String, value : java.util.List<String>) : java.util.List<String>;
	
	/**
	* adds the given value to the list of headers
	* for the given key. If the mapping does not
	* already exist, then it is created
	* @param key the header name
	* @param value the header value to add to the header
	*/
	@:overload public function add(key : String, value : String) : Void;
	
	/**
	* sets the given value as the sole header value
	* for the given key. If the mapping does not
	* already exist, then it is created
	* @param key the header name
	* @param value the header value to set.
	*/
	@:overload public function set(key : String, value : String) : Void;
	
	@:overload public function remove(key : Dynamic) : java.util.List<String>;
	
	@:overload public function putAll(t : java.util.Map<String, java.util.List<String>>) : Void;
	
	@:overload public function clear() : Void;
	
	@:overload public function keySet() : java.util.Set<String>;
	
	@:overload public function values() : java.util.Collection<java.util.List<String>>;
	
	@:overload public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, java.util.List<String>>>;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
