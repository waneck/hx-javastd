package com.sun.org.apache.xml.internal.security.signature;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2008 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class XMLSignatureInput implements java.lang.Cloneable
{
	/**
	* Check if the structured is needed to be circumbented.
	* @return true if so.
	*/
	@:overload @:public public function isNeedsToBeExpanded() : Bool;
	
	/**
	* Set if the structured is needed to be circumbented.
	* @param needsToBeExpanded true if so.
	*/
	@:overload @:public public function setNeedsToBeExpanded(needsToBeExpanded : Bool) : Void;
	
	/**
	* Construct a XMLSignatureInput from an octet array.
	* <p>
	* This is a comfort method, which internally converts the byte[] array into
	* an InputStream
	* <p>NOTE: no defensive copy</p>
	* @param inputOctets an octet array which including XML document or node
	*/
	@:overload @:public public function new(inputOctets : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a <code>XMLSignatureInput</code> from an octet stream. The
	* stream is directly read.
	*
	* @param inputOctetStream
	*/
	@:overload @:public public function new(inputOctetStream : java.io.InputStream) : Void;
	
	/**
	* Construct a XMLSignatureInput from a String.
	* <p>
	* This is a comfort method, which internally converts the String into a byte
	* [] array using the {@link java.lang.String#getBytes()} method.
	* @deprecated
	* @param inputStr the input String which including XML document or node
	*/
	@:overload @:public public function new(inputStr : String) : Void;
	
	/**
	* Construct a XMLSignatureInput from a String with a given encoding.
	* <p>
	* This is a comfort method, which internally converts the String into a byte
	* [] array using the {@link java.lang.String#getBytes()} method.
	*
	* @deprecated
	* @param inputStr the input String with encoding <code>encoding</code>
	* @param encoding the encoding of <code>inputStr</code>
	* @throws UnsupportedEncodingException
	*/
	@:overload @:public public function new(inputStr : String, encoding : String) : Void;
	
	/**
	* Construct a XMLSignatureInput from a subtree rooted by rootNode. This
	* method included the node and <I>all</I> his descendants in the output.
	*
	* @param rootNode
	*/
	@:overload @:public public function new(rootNode : org.w3c.dom.Node) : Void;
	
	/**
	* Constructor XMLSignatureInput
	*
	* @param inputNodeSet
	* @param usedXPathAPI
	*/
	@:overload @:public public function new(inputNodeSet : java.util.Set<Dynamic>) : Void;
	
	/**
	* Returns the node set from input which was specified as the parameter of
	* {@link XMLSignatureInput} constructor
	*
	* @return the node set
	* @throws SAXException
	* @throws IOException
	* @throws ParserConfigurationException
	* @throws CanonicalizationException
	*/
	@:overload @:public public function getNodeSet() : java.util.Set<Dynamic>;
	
	/**
	* Returns the node set from input which was specified as the parameter of
	* {@link XMLSignatureInput} constructor
	* @param circumvent
	*
	* @return the node set
	* @throws SAXException
	* @throws IOException
	* @throws ParserConfigurationException
	* @throws CanonicalizationException
	*/
	@:overload @:public public function getNodeSet(circumvent : Bool) : java.util.Set<Dynamic>;
	
	/**
	* Returns the Octect stream(byte Stream) from input which was specified as
	* the parameter of {@link XMLSignatureInput} constructor
	*
	* @return the Octect stream(byte Stream) from input which was specified as
	* the parameter of {@link XMLSignatureInput} constructor
	* @throws IOException
	*/
	@:overload @:public public function getOctetStream() : java.io.InputStream;
	
	/**
	* @return real octect stream
	*/
	@:overload @:public public function getOctetStreamReal() : java.io.InputStream;
	
	/**
	* Returns the byte array from input which was specified as the parameter of
	* {@link XMLSignatureInput} constructor
	*
	* @return the byte[] from input which was specified as the parameter of
	* {@link XMLSignatureInput} constructor
	*
	* @throws CanonicalizationException
	* @throws IOException
	*/
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Determines if the object has been set up with a Node set
	*
	* @return true if the object has been set up with a Node set
	*/
	@:overload @:public public function isNodeSet() : Bool;
	
	/**
	* Determines if the object has been set up with an Element
	*
	* @return true if the object has been set up with a Node set
	*/
	@:overload @:public public function isElement() : Bool;
	
	/**
	* Determines if the object has been set up with an octet stream
	*
	* @return true if the object has been set up with an octet stream
	*/
	@:overload @:public public function isOctetStream() : Bool;
	
	/**
	* Determines if {@link #setOutputStream} has been called with a
	* non-null OutputStream.
	*
	* @return true if {@link #setOutputStream} has been called with a
	* non-null OutputStream
	*/
	@:overload @:public public function isOutputStreamSet() : Bool;
	
	/**
	* Determines if the object has been set up with a ByteArray
	*
	* @return true is the object has been set up with an octet stream
	*/
	@:overload @:public public function isByteArray() : Bool;
	
	/**
	* Is the object correctly set up?
	*
	* @return true if the object has been set up correctly
	*/
	@:overload @:public public function isInitialized() : Bool;
	
	/**
	* Returns MIMEType
	*
	* @return MIMEType
	*/
	@:overload @:public public function getMIMEType() : String;
	
	/**
	* Sets MIMEType
	*
	* @param MIMEType
	*/
	@:overload @:public public function setMIMEType(MIMEType : String) : Void;
	
	/**
	* Return SourceURI
	*
	* @return SourceURI
	*/
	@:overload @:public public function getSourceURI() : String;
	
	/**
	* Sets SourceURI
	*
	* @param SourceURI
	*/
	@:overload @:public public function setSourceURI(SourceURI : String) : Void;
	
	/**
	* Method toString
	* @inheritDoc
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Method getHTMLRepresentation
	*
	* @throws XMLSignatureException
	* @return The HTML representation for this XMLSignature
	*/
	@:overload @:public public function getHTMLRepresentation() : String;
	
	/**
	* Method getHTMLRepresentation
	*
	* @param inclusiveNamespaces
	* @throws XMLSignatureException
	* @return The HTML representation for this XMLSignature
	*/
	@:overload @:public public function getHTMLRepresentation(inclusiveNamespaces : java.util.Set<Dynamic>) : String;
	
	/**
	* Gets the exclude node of this XMLSignatureInput
	* @return Returns the excludeNode.
	*/
	@:overload @:public public function getExcludeNode() : org.w3c.dom.Node;
	
	/**
	* Sets the exclude node of this XMLSignatureInput
	* @param excludeNode The excludeNode to set.
	*/
	@:overload @:public public function setExcludeNode(excludeNode : org.w3c.dom.Node) : Void;
	
	/**
	* Gets the node of this XMLSignatureInput
	* @return The excludeNode set.
	*/
	@:overload @:public public function getSubNode() : org.w3c.dom.Node;
	
	/**
	* @return Returns the excludeComments.
	*/
	@:overload @:public public function isExcludeComments() : Bool;
	
	/**
	* @param excludeComments The excludeComments to set.
	*/
	@:overload @:public public function setExcludeComments(excludeComments : Bool) : Void;
	
	/**
	* @param diOs
	* @throws IOException
	* @throws CanonicalizationException
	*/
	@:overload @:public public function updateOutputStream(diOs : java.io.OutputStream) : Void;
	
	@:overload @:public public function updateOutputStream(diOs : java.io.OutputStream, c14n11 : Bool) : Void;
	
	/**
	* @param os
	*/
	@:overload @:public public function setOutputStream(os : java.io.OutputStream) : Void;
	
	@:overload @:protected private function getResetableInputStream() : java.io.InputStream;
	
	/**
	* @param filter
	*/
	@:overload @:public public function addNodeFilter(filter : com.sun.org.apache.xml.internal.security.signature.NodeFilter) : Void;
	
	/**
	* @return the node filters
	*/
	@:overload @:public public function getNodeFilters() : java.util.List<Dynamic>;
	
	/**
	* @param b
	*/
	@:overload @:public public function setNodeSet(b : Bool) : Void;
	
	
}
