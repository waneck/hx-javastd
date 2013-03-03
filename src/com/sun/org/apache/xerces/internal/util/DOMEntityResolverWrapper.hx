package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
extern class DOMEntityResolverWrapper implements com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver
{
	/** The DOM entity resolver. */
	@:protected private var fEntityResolver : org.w3c.dom.ls.LSResourceResolver;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/** Wraps the specified DOM entity resolver. */
	@:overload @:public public function new(entityResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	/** Sets the DOM entity resolver. */
	@:overload @:public public function setEntityResolver(entityResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	/** Returns the DOM entity resolver. */
	@:overload @:public public function getEntityResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	/**
	* Resolves an external parsed entity. If the entity cannot be
	* resolved, this method should return null.
	*
	* @param resourceIdentifier        description of the resource to be revsoved
	* @throws XNIException Thrown on general error.
	* @throws IOException  Thrown if resolved entity stream cannot be
	*                      opened or some other i/o error occurs.
	*/
	@:overload @:public public function resolveEntity(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	
}
