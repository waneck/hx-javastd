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
extern class HTTPInputSource extends com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource
{
	/** Preference for whether HTTP redirects should be followed. **/
	@:protected private var fFollowRedirects : Bool;
	
	/** HTTP request properties. **/
	@:protected private var fHTTPRequestProperties : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Constructs an input source from just the public and system
	* identifiers, leaving resolution of the entity and opening of
	* the input stream up to the caller.
	*
	* @param publicId     The public identifier, if known.
	* @param systemId     The system identifier. This value should
	*                     always be set, if possible, and can be
	*                     relative or absolute. If the system identifier
	*                     is relative, then the base system identifier
	*                     should be set.
	* @param baseSystemId The base system identifier. This value should
	*                     always be set to the fully expanded URI of the
	*                     base system identifier, if possible.
	*/
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String) : Void;
	
	/**
	* Constructs an input source from a XMLResourceIdentifier
	* object, leaving resolution of the entity and opening of
	* the input stream up to the caller.
	*
	* @param resourceIdentifier the XMLResourceIdentifier containing the information
	*/
	@:overload @:public public function new(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : Void;
	
	/**
	* Constructs an input source from a byte stream.
	*
	* @param publicId     The public identifier, if known.
	* @param systemId     The system identifier. This value should
	*                     always be set, if possible, and can be
	*                     relative or absolute. If the system identifier
	*                     is relative, then the base system identifier
	*                     should be set.
	* @param baseSystemId The base system identifier. This value should
	*                     always be set to the fully expanded URI of the
	*                     base system identifier, if possible.
	* @param byteStream   The byte stream.
	* @param encoding     The encoding of the byte stream, if known.
	*/
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String, byteStream : java.io.InputStream, encoding : String) : Void;
	
	/**
	* Constructs an input source from a character stream.
	*
	* @param publicId     The public identifier, if known.
	* @param systemId     The system identifier. This value should
	*                     always be set, if possible, and can be
	*                     relative or absolute. If the system identifier
	*                     is relative, then the base system identifier
	*                     should be set.
	* @param baseSystemId The base system identifier. This value should
	*                     always be set to the fully expanded URI of the
	*                     base system identifier, if possible.
	* @param charStream   The character stream.
	* @param encoding     The original encoding of the byte stream
	*                     used by the reader, if known.
	*/
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String, charStream : java.io.Reader, encoding : String) : Void;
	
	/**
	* Returns the preference whether HTTP redirects should
	* be followed. By default HTTP redirects will be followed.
	*/
	@:overload @:public public function getFollowHTTPRedirects() : Bool;
	
	/**
	* Sets the preference whether HTTP redirects should
	* be followed. By default HTTP redirects will be followed.
	*/
	@:overload @:public public function setFollowHTTPRedirects(followRedirects : Bool) : Void;
	
	/**
	* Returns the value of the request property
	* associated with the given property name.
	*
	* @param key the name of the request property
	* @return the value of the request property or
	* <code>null</code> if this property has not
	* been set
	*/
	@:overload @:public public function getHTTPRequestProperty(key : String) : String;
	
	/**
	* Returns an iterator for the request properties this
	* input source contains. Each object returned by the
	* iterator is an instance of <code>java.util.Map.Entry</code>
	* where each key and value are a pair of strings corresponding
	* to the name and value of a request property.
	*
	* @return an iterator for the request properties this
	* input source contains
	*/
	@:overload @:public public function getHTTPRequestProperties() : java.util.Iterator<Dynamic>;
	
	/**
	* Sets the value of the request property
	* associated with the given property name.
	*
	* @param key the name of the request property
	* @param value the value of the request property
	*/
	@:overload @:public public function setHTTPRequestProperty(key : String, value : String) : Void;
	
	
}
