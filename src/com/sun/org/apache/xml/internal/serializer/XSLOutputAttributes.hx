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
* $Id: XSLOutputAttributes.java,v 1.2.4.1 2005/09/15 08:15:32 suresh_emailid Exp $
*/
@:internal extern interface XSLOutputAttributes
{
	/**
	* Returns the previously set value of the value to be used as the public
	* identifier in the document type declaration (DTD).
	*
	*@return the public identifier to be used in the DOCTYPE declaration in the
	* output document.
	*/
	@:overload @:public public function getDoctypePublic() : String;
	
	/**
	* Returns the previously set value of the value to be used
	* as the system identifier in the document type declaration (DTD).
	* @return the system identifier to be used in the DOCTYPE declaration in
	* the output document.
	*
	*/
	@:overload @:public public function getDoctypeSystem() : String;
	
	/**
	* @return the character encoding to be used in the output document.
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* @return true if the output document should be indented to visually
	* indicate its structure.
	*/
	@:overload @:public public function getIndent() : Bool;
	
	/**
	* @return the number of spaces to indent for each indentation level.
	*/
	@:overload @:public public function getIndentAmount() : Int;
	
	/**
	* @return the mediatype the media-type or MIME type associated with the
	* output document.
	*/
	@:overload @:public public function getMediaType() : String;
	
	/**
	* @return true if the XML declaration is to be omitted from the output
	* document.
	*/
	@:overload @:public public function getOmitXMLDeclaration() : Bool;
	
	/**
	* @return a value of "yes" if the <code>standalone</code> delaration is to
	* be included in the output document.
	*/
	@:overload @:public public function getStandalone() : String;
	
	/**
	* @return the version of the output format.
	*/
	@:overload @:public public function getVersion() : String;
	
	/**
	* Sets the value coming from the xsl:output cdata-section-elements
	* stylesheet property.
	*
	* This sets the elements whose text elements are to be output as CDATA
	* sections.
	* @param URI_and_localNames pairs of namespace URI and local names that
	* identify elements whose text elements are to be output as CDATA sections.
	* The namespace of the local element must be the given URI to match. The
	* qName is not given because the prefix does not matter, only the namespace
	* URI to which that prefix would map matters, so the prefix itself is not
	* relevant in specifying which elements have their text to be output as
	* CDATA sections.
	*/
	@:overload @:public @:public public function setCdataSectionElements(URI_and_localNames : java.util.Vector<Dynamic>) : Void;
	
	/** Set the value coming from the xsl:output doctype-public and doctype-system stylesheet properties
	* @param system the system identifier to be used in the DOCTYPE declaration
	* in the output document.
	* @param pub the public identifier to be used in the DOCTYPE declaration in
	* the output document.
	*/
	@:overload @:public public function setDoctype(system : String, pub : String) : Void;
	
	/** Set the value coming from the xsl:output doctype-public stylesheet attribute.
	* @param doctype the public identifier to be used in the DOCTYPE
	* declaration in the output document.
	*/
	@:overload @:public public function setDoctypePublic(doctype : String) : Void;
	
	/** Set the value coming from the xsl:output doctype-system stylesheet attribute.
	* @param doctype the system identifier to be used in the DOCTYPE
	* declaration in the output document.
	*/
	@:overload @:public public function setDoctypeSystem(doctype : String) : Void;
	
	/**
	* Sets the character encoding coming from the xsl:output encoding stylesheet attribute.
	* @param encoding the character encoding
	*/
	@:overload @:public public function setEncoding(encoding : String) : Void;
	
	/**
	* Sets the value coming from the xsl:output indent stylesheet
	* attribute.
	* @param indent true if the output document should be indented to visually
	* indicate its structure.
	*/
	@:overload @:public public function setIndent(indent : Bool) : Void;
	
	/**
	* Sets the value coming from the xsl:output media-type stylesheet attribute.
	* @param mediatype the media-type or MIME type associated with the output
	* document.
	*/
	@:overload @:public public function setMediaType(mediatype : String) : Void;
	
	/**
	* Sets the value coming from the xsl:output omit-xml-declaration stylesheet attribute
	* @param b true if the XML declaration is to be omitted from the output
	* document.
	*/
	@:overload @:public public function setOmitXMLDeclaration(b : Bool) : Void;
	
	/**
	* Sets the value coming from the xsl:output standalone stylesheet attribute.
	* @param standalone a value of "yes" indicates that the
	* <code>standalone</code> delaration is to be included in the output
	* document.
	*/
	@:overload @:public public function setStandalone(standalone : String) : Void;
	
	/**
	* Sets the value coming from the xsl:output version attribute.
	* @param version the version of the output format.
	*/
	@:overload @:public public function setVersion(version : String) : Void;
	
	
}
