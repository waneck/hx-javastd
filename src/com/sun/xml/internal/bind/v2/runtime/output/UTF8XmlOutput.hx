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
extern class UTF8XmlOutput extends com.sun.xml.internal.bind.v2.runtime.output.XmlOutputAbstractImpl
{
	/**
	* {@link XmlOutput} implementation specialized for UTF-8.
	*
	* @author Kohsuke Kawaguchi
	* @author Paul Sandoz
	*/
	private var out(default, null) : java.io.OutputStream;
	
	/** Buffer of octets for writing. */
	private var octetBuffer(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Index in buffer to write to. */
	private var octetBufferIndex : Int;
	
	/**
	* Set to true to indicate that we need to write '>'
	* to close a start tag. Deferring the write of this char
	* allows us to write "/>" for empty elements.
	*/
	private var closeStartTagPending : Bool;
	
	/**
	*
	* @param localNames
	*      local names encoded in UTF-8.
	*/
	@:overload public function new(out : java.io.OutputStream, localNames : java.NativeArray<com.sun.xml.internal.bind.v2.runtime.output.Encoded>, escapeHandler : com.sun.xml.internal.bind.marshaller.CharacterEscapeHandler) : Void;
	
	@:overload public function setHeader(header : String) : Void;
	
	@:overload public function startDocument(serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, fragment : Bool, nsUriIndex2prefixIndex : java.NativeArray<Int>, nsContext : com.sun.xml.internal.bind.v2.runtime.output.NamespaceContextImpl) : Void;
	
	@:overload public function endDocument(fragment : Bool) : Void;
	
	/**
	* Writes '>' to close the start tag, if necessary.
	*/
	@:overload @:final private function closeStartTag() : Void;
	
	@:overload public function beginStartTag(prefix : Int, localName : String) : Void;
	
	@:overload public function beginStartTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload private function writeNsDecls(base : Int) : Void;
	
	/**
	* Writes a single namespace declaration for the specified prefix.
	*/
	@:overload @:final private function writeNsDecl(prefixIndex : Int) : Void;
	
	@:overload public function attribute(name : com.sun.xml.internal.bind.v2.runtime.Name, value : String) : Void;
	
	@:overload public function attribute(prefix : Int, localName : String, value : String) : Void;
	
	@:overload public function endStartTag() : Void;
	
	@:overload public function endTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload public function endTag(prefix : Int, localName : String) : Void;
	
	@:overload override public function text(value : String, needSP : Bool) : Void;
	
	@:overload override public function text(value : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, needSP : Bool) : Void;
	
	@:overload @:final public function text(value : Int) : Void;
	
	/**
	* Writes the given byte[] as base64 encoded binary to the output.
	*
	* <p>
	* Being defined on this class allows this method to access the buffer directly,
	* which translates to a better performance.
	*/
	@:overload public function text(data : java.NativeArray<java.StdTypes.Int8>, dataLen : Int) : Void;
	
	/**
	* Writes one byte directly into the buffer.
	*
	* <p>
	* This method can be used somewhat like the {@code text} method,
	* but it doesn't perform character escaping.
	*/
	@:overload @:final public function write(i : Int) : Void;
	
	@:overload @:final private function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:final private function write(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:final private function flushBuffer() : Void;
	
	
}
