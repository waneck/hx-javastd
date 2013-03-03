package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004,2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class EntityResolver2Wrapper implements com.sun.org.apache.xerces.internal.impl.ExternalSubsetResolver
{
	/** An instance of SAX2 Extensions 1.1's EntityResolver2. */
	@:protected private var fEntityResolver : org.xml.sax.ext.EntityResolver2;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* <p>Creates a new instance wrapping the given SAX entity resolver.</p>
	*
	* @param entityResolver the SAX entity resolver to wrap
	*/
	@:overload @:public public function new(entityResolver : org.xml.sax.ext.EntityResolver2) : Void;
	
	/**
	* <p>Sets the SAX entity resolver wrapped by this object.</p>
	*
	* @param entityResolver the SAX entity resolver to wrap
	*/
	@:overload @:public public function setEntityResolver(entityResolver : org.xml.sax.ext.EntityResolver2) : Void;
	
	/**
	* <p>Returns the SAX entity resolver wrapped by this object.</p>
	*
	* @return the SAX entity resolver wrapped by this object
	*/
	@:overload @:public public function getEntityResolver() : org.xml.sax.ext.EntityResolver2;
	
	/**
	* <p>Locates an external subset for documents which do not explicitly
	* provide one. If no external subset is provided, this method should
	* return <code>null</code>.</p>
	*
	* @param grammarDescription a description of the DTD
	*
	* @throws XNIException Thrown on general error.
	* @throws IOException  Thrown if resolved entity stream cannot be
	*                      opened or some other i/o error occurs.
	*/
	@:overload @:public public function getExternalSubset(grammarDescription : com.sun.org.apache.xerces.internal.xni.grammars.XMLDTDDescription) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	/**
	* Resolves an external parsed entity. If the entity cannot be
	* resolved, this method should return null.
	*
	* @param resourceIdentifier contains the physical co-ordinates of the resource to be resolved
	*
	* @throws XNIException Thrown on general error.
	* @throws IOException  Thrown if resolved entity stream cannot be
	*                      opened or some other i/o error occurs.
	*/
	@:overload @:public public function resolveEntity(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	
}
