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
extern class XmlOutputAbstractImpl implements com.sun.xml.internal.bind.v2.runtime.output.XmlOutput
{
	/**
	* Called at the very beginning.
	*
	* @param serializer
	*      the {@link XMLSerializer} that coordinates this whole marshalling episode.
	* @param fragment
	*      true if we are marshalling a fragment.
	*/
	@:overload @:public public function startDocument(serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, fragment : Bool, nsUriIndex2prefixIndex : java.NativeArray<Int>, nsContext : com.sun.xml.internal.bind.v2.runtime.output.NamespaceContextImpl) : Void;
	
	/**
	* Called at the very end.
	*
	* @param fragment
	*      false if we are writing the whole document.
	*/
	@:overload @:public public function endDocument(fragment : Bool) : Void;
	
	/**
	* Writes a start tag.
	*
	* <p>
	* At this point {@link #nsContext} holds namespace declarations needed for this
	* new element.
	*
	* <p>
	* This method is used for writing tags that are indexed.
	*/
	@:overload @:public public function beginStartTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload @:public @:abstract public function beginStartTag(prefix : Int, localName : String) : Void;
	
	@:overload @:public public function attribute(name : com.sun.xml.internal.bind.v2.runtime.Name, value : String) : Void;
	
	/**
	* @param prefix
	*      -1 if this attribute does not have a prefix
	*      (this handling differs from that of elements.)
	*/
	@:overload @:public @:abstract public function attribute(prefix : Int, localName : String, value : String) : Void;
	
	@:overload @:public @:abstract public function endStartTag() : Void;
	
	@:overload @:public public function endTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload @:public @:abstract public function endTag(prefix : Int, localName : String) : Void;
	
	/**
	* The conversion table from the namespace URI index to prefix index.
	*
	* This array is shared with {@link XMLSerializer} and
	* is updated by it automatically.
	*
	* This allows {@link Name#nsUriIndex} to be converted to prefix index
	* (for {@link NamespaceContextImpl}) quickly.
	*/
	@:protected private var nsUriIndex2prefixIndex : java.NativeArray<Int>;
	
	/**
	* Set by the marshaller before the start tag is written for the root element.
	*/
	@:protected private var nsContext : com.sun.xml.internal.bind.v2.runtime.output.NamespaceContextImpl;
	
	@:protected private var serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer;
	
	/**
	* Writes XML text with character escaping, if necessary.
	*
	* @param value
	*      this string can contain characters that might need escaping
	*      (such as '&amp;' or '>')
	* @param needsSeparatingWhitespace
	*/
	@:overload @:public public function text(value : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, needsSeparatingWhitespace : Bool) : Void;
	
	/**
	* Writes XML text with character escaping, if necessary.
	*
	* @param value
	*      this string can contain characters that might need escaping
	*      (such as '&amp;' or '>')
	* @param needsSeparatingWhitespace
	*/
	@:overload @:public public function text(value : String, needsSeparatingWhitespace : Bool) : Void;
	
	
}
