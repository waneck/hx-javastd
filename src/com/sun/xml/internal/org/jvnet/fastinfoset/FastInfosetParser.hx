package com.sun.xml.internal.org.jvnet.fastinfoset;
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern interface FastInfosetParser
{
	/**
	* Set the string interning property.
	*
	* <p>If the string interning property is set to true then
	* <code>String</code> objects instantiated for [namespace name], [prefix]
	* and [local name] infoset properties will be interned using the method
	* {@link String#intern()}.
	*
	* @param stringInterning The string interning property.
	*/
	@:overload public function setStringInterning(stringInterning : Bool) : Void;
	
	/**
	* Return the string interning property.
	*
	* @return The string interning property.
	*/
	@:overload public function getStringInterning() : Bool;
	
	/**
	* Set the buffer size.
	*
	* <p>The size of the buffer for parsing is set using this
	* method. Requests for sizes smaller then the current size will be ignored.
	* Otherwise the buffer will be resized when the next parse is performed.<p>
	*
	* @param bufferSize The requested buffer size.
	*/
	@:overload public function setBufferSize(bufferSize : Int) : Void;
	
	/**
	* Get the buffer size.
	*
	* @return The buffer size.
	*/
	@:overload public function getBufferSize() : Int;
	
	/**
	* Sets the set of registered encoding algorithms.
	*
	* @param algorithms The set of registered algorithms.
	*/
	@:overload public function setRegisteredEncodingAlgorithms(algorithms : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Gets the set of registered encoding algorithms.
	*
	* @return The set of registered algorithms.
	*/
	@:overload public function getRegisteredEncodingAlgorithms() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Set the map of referenced external vocabularies.
	* <p>
	* The map (but not the keys and values) be cloned.
	*
	* @param referencedVocabualries the map of URI to vocabulary.
	*/
	@:overload public function setExternalVocabularies(referencedVocabualries : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Get the map of referenced external vocabularies.
	*
	* @return the map of URI to vocabulary.
	* @deprecated
	*     The map returned will not be the same instance and contain
	*     the same entries as the map set by {@link #setExternalVocabularies}
	*     method.
	*/
	@:overload public function getExternalVocabularies() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Set the parse fragments property.
	*
	* <p>If the parse fragments property is set to true then
	* fragments of an XML infoset may be parsed.
	*
	* @param parseFragments The parse fragments property.
	*/
	@:overload public function setParseFragments(parseFragments : Bool) : Void;
	
	/**
	* Return the parse fragments property.
	*
	* @return The parse fragments property.
	*/
	@:overload public function getParseFragments() : Bool;
	
	/**
	* Set the force stream close property.
	*
	* <p>If the force stream property is set to true then
	* Parser's underlying InputStream will be closed.
	*
	* @param needForceStreamClose The force stream close property.
	*/
	@:overload public function setForceStreamClose(needForceStreamClose : Bool) : Void;
	
	/**
	* Return the force stream close property.
	*
	* @return The force stream close property.
	*/
	@:overload public function getForceStreamClose() : Bool;
	
	
}
