package com.sun.xml.internal.bind.v2.runtime.output;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Encoded
{
	/**
	* Buffer for UTF-8 encoded string.
	*
	* See http://www.cl.cam.ac.uk/~mgk25/unicode.html#utf-8 for the UTF-8 encoding.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public public var buf : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var len : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(text : String) : Void;
	
	@:overload @:public public function ensureSize(size : Int) : Void;
	
	@:overload @:public @:final public function set(text : String) : Void;
	
	/**
	* Fill in the buffer by encoding the specified characters
	* while escaping characters like &lt;
	*
	* @param isAttribute
	*      if true, characters like \t, \r, and \n are also escaped.
	*/
	@:overload @:public @:final public function setEscape(text : String, isAttribute : Bool) : Void;
	
	/**
	* Writes the encoded bytes to the given output stream.
	*/
	@:overload @:public @:final public function write(out : com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput) : Void;
	
	/**
	* Appends a new character to the end of the buffer.
	* This assumes that you have enough space in the buffer.
	*/
	@:overload @:public public function append(b : java.StdTypes.Char16) : Void;
	
	/**
	* Reallocate the buffer to the exact size of the data
	* to reduce the memory footprint.
	*/
	@:overload @:public public function compact() : Void;
	
	
}
