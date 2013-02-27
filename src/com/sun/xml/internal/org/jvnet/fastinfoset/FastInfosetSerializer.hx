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
extern interface FastInfosetSerializer
{
	/**
	* Set the {@link #IGNORE_DTD_FEATURE}.
	* @param ignoreDTD true if the feature shall be ignored.
	*/
	@:overload public function setIgnoreDTD(ignoreDTD : Bool) : Void;
	
	/**
	* Get the {@link #IGNORE_DTD_FEATURE}.
	* @return true if the feature is ignored, false otherwise.
	*/
	@:overload public function getIgnoreDTD() : Bool;
	
	/**
	* Set the {@link #IGNORE_COMMENTS_FEATURE}.
	* @param ignoreComments true if the feature shall be ignored.
	*/
	@:overload public function setIgnoreComments(ignoreComments : Bool) : Void;
	
	/**
	* Get the {@link #IGNORE_COMMENTS_FEATURE}.
	* @return true if the feature is ignored, false otherwise.
	*/
	@:overload public function getIgnoreComments() : Bool;
	
	/**
	* Set the {@link #IGNORE_PROCESSING_INSTRUCTIONS_FEATURE}.
	* @param ignoreProcesingInstructions true if the feature shall be ignored.
	*/
	@:overload public function setIgnoreProcesingInstructions(ignoreProcesingInstructions : Bool) : Void;
	
	/**
	* Get the {@link #IGNORE_PROCESSING_INSTRUCTIONS_FEATURE}.
	* @return true if the feature is ignored, false otherwise.
	*/
	@:overload public function getIgnoreProcesingInstructions() : Bool;
	
	/**
	* Set the {@link #IGNORE_WHITE_SPACE_TEXT_CONTENT_FEATURE}.
	* @param ignoreWhiteSpaceTextContent true if the feature shall be ignored.
	*/
	@:overload public function setIgnoreWhiteSpaceTextContent(ignoreWhiteSpaceTextContent : Bool) : Void;
	
	/**
	* Get the {@link #IGNORE_WHITE_SPACE_TEXT_CONTENT_FEATURE}.
	* @return true if the feature is ignored, false otherwise.
	*/
	@:overload public function getIgnoreWhiteSpaceTextContent() : Bool;
	
	/**
	* Sets the character encoding scheme.
	*
	* The character encoding can be either UTF-8 or UTF-16BE for the
	* the encoding of chunks of CIIs, the [normalized value]
	* property of attribute information items, comment information
	* items and processing instruction information items.
	*
	* @param characterEncodingScheme The set of registered algorithms.
	*/
	@:overload public function setCharacterEncodingScheme(characterEncodingScheme : String) : Void;
	
	/**
	* Gets the character encoding scheme.
	*
	* @return The character encoding scheme.
	*/
	@:overload public function getCharacterEncodingScheme() : String;
	
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
	* Gets the minimum size of character content chunks
	* that will be indexed.
	*
	* @return The minimum character content chunk size.
	*/
	@:overload public function getMinCharacterContentChunkSize() : Int;
	
	/**
	* Sets the minimum size of character content chunks
	* that will be indexed.
	*
	* @param size the minimum character content chunk size.
	*/
	@:overload public function setMinCharacterContentChunkSize(size : Int) : Void;
	
	/**
	* Gets the maximum size of character content chunks
	* that might be indexed.
	*
	* @return The maximum character content chunk size.
	*/
	@:overload public function getMaxCharacterContentChunkSize() : Int;
	
	/**
	* Sets the maximum size of character content chunks
	* that might be indexed.
	*
	* @param size the maximum character content chunk size.
	*/
	@:overload public function setMaxCharacterContentChunkSize(size : Int) : Void;
	
	/**
	* Gets the limit on the memory size, allocated for indexed character
	* content chunks.
	*
	* @return the limit on the memory size, allocated for indexed character
	* content chunks.
	*/
	@:overload public function getCharacterContentChunkMapMemoryLimit() : Int;
	
	/**
	* Sets the limit on the memory size, allocated for indexed character
	* content chunks.
	*
	* @param size the limit on the memory size, allocated for indexed character
	* content chunks.
	*/
	@:overload public function setCharacterContentChunkMapMemoryLimit(size : Int) : Void;
	
	/**
	* Gets the minimum size of attribute values
	* that will be indexed.
	*
	* @return The minimum attribute values size.
	*/
	@:overload public function getMinAttributeValueSize() : Int;
	
	/**
	* Sets the minimum size of attribute values
	* that will be indexed.
	*
	* @param size the minimum attribute values size.
	*/
	@:overload public function setMinAttributeValueSize(size : Int) : Void;
	
	/**
	* Gets the maximum size of attribute values
	* that will be indexed.
	*
	* @return The maximum attribute values size.
	*/
	@:overload public function getMaxAttributeValueSize() : Int;
	
	/**
	* Sets the maximum size of attribute values
	* that will be indexed.
	*
	* @param size the maximum attribute values size.
	*/
	@:overload public function setMaxAttributeValueSize(size : Int) : Void;
	
	/**
	* Gets the limit on the memory size of Map of attribute values
	* that will be indexed.
	*
	* @return The attribute value size limit.
	*/
	@:overload public function getAttributeValueMapMemoryLimit() : Int;
	
	/**
	* Sets the limit on the memory size of Map of attribute values
	* that will be indexed.
	*
	* @param size The attribute value size limit. Any value less
	* that a length of size limit will be indexed.
	*/
	@:overload public function setAttributeValueMapMemoryLimit(size : Int) : Void;
	
	/**
	* Set the external vocabulary that shall be used when serializing.
	*
	* @param v the vocabulary.
	*/
	@:overload public function setExternalVocabulary(v : com.sun.xml.internal.org.jvnet.fastinfoset.ExternalVocabulary) : Void;
	
	/**
	* Set the application data to be associated with the serializer vocabulary.
	*
	* @param data the application data.
	*/
	@:overload public function setVocabularyApplicationData(data : com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData) : Void;
	
	/**
	* Get the application data associated with the serializer vocabulary.
	*
	* @return the application data.
	*/
	@:overload public function getVocabularyApplicationData() : com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData;
	
	/**
	* Reset the serializer for reuse serializing another XML infoset.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set the OutputStream to serialize the XML infoset to a
	* fast infoset document.
	*
	* @param s the OutputStream where the fast infoset document is written to.
	*/
	@:overload public function setOutputStream(s : java.io.OutputStream) : Void;
	
	
}
