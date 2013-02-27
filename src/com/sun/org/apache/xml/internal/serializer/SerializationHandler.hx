package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SerializationHandler.java,v 1.2.4.1 2005/09/15 08:15:22 suresh_emailid Exp $
*/
extern interface SerializationHandler extends com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler extends com.sun.org.apache.xml.internal.serializer.ExtendedLexicalHandler extends com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes extends org.xml.sax.ext.DeclHandler extends org.xml.sax.DTDHandler extends org.xml.sax.ErrorHandler extends com.sun.org.apache.xml.internal.serializer.DOMSerializer extends com.sun.org.apache.xml.internal.serializer.Serializer
{
	/**
	* Set the SAX Content handler that the serializer sends its output to. This
	* method only applies to a ToSAXHandler, not to a ToStream serializer.
	*
	* @see Serializer#asContentHandler()
	* @see ToSAXHandler
	*/
	@:overload public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	@:overload public function close() : Void;
	
	/**
	* Notify that the serializer should take this DOM node as input to be
	* serialized.
	*
	* @param node the DOM node to be serialized.
	* @throws IOException
	*/
	@:overload public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* Turns special character escaping on/off.
	*
	* Note that characters will
	* never, even if this option is set to 'true', be escaped within
	* CDATA sections in output XML documents.
	*
	* @param escape true if escaping is to be set on.
	*/
	@:overload public function setEscaping(escape : Bool) : Bool;
	
	/**
	* Set the number of spaces to indent for each indentation level.
	* @param spaces the number of spaces to indent for each indentation level.
	*/
	@:overload public function setIndentAmount(spaces : Int) : Void;
	
	/**
	* Set the transformer associated with the serializer.
	* @param transformer the transformer associated with the serializer.
	*/
	@:overload public function setTransformer(transformer : javax.xml.transform.Transformer) : Void;
	
	/**
	* Get the transformer associated with the serializer.
	* @return Transformer the transformer associated with the serializer.
	*/
	@:overload public function getTransformer() : javax.xml.transform.Transformer;
	
	/**
	* Used only by TransformerSnapshotImpl to restore the serialization
	* to a previous state.
	*
	* @param mappings NamespaceMappings
	*/
	@:overload public function setNamespaceMappings(mappings : com.sun.org.apache.xml.internal.serializer.NamespaceMappings) : Void;
	
	/**
	* Flush any pending events currently queued up in the serializer. This will
	* flush any input that the serializer has which it has not yet sent as
	* output.
	*/
	@:overload public function flushPending() : Void;
	
	/**
	* Default behavior is to expand DTD entities,
	* that is the initall default value is true.
	* @param expand true if DTD entities are to be expanded,
	* false if they are to be left as DTD entity references.
	*/
	@:overload public function setDTDEntityExpansion(expand : Bool) : Void;
	
	/**
	* Specify if the output will be treated as a standalone  property
	* @param isStandalone true if the http://www.oracle.com/xml/is-standalone is set to yes
	* @see OutputPropertiesFactory ORACLE_IS_STANDALONE
	*/
	@:overload public function setIsStandalone(b : Bool) : Void;
	
	
}
