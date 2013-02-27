package com.sun.xml.internal.ws.policy.jaxws;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SafePolicyReader
{
	/**
	* Reads a policy expression from the XML stream.
	*
	* The XMLStreamReader should be in START_ELEMENT state and point to the policy element.
	* The content of the stream is copied and then the copy is unmarshalled. The result
	* is returned as a PolicyRecord.
	*
	* @param reader The XMLStreamReader should be in START_ELEMENT state and point to the policy element.
	* @param baseUrl The system id of the document read by the reader.
	* @return The policy that was read from the XML stream.
	*/
	@:overload public function readPolicyElement(reader : javax.xml.stream.XMLStreamReader, baseUrl : String) : SafePolicyReader_PolicyRecord;
	
	@:overload public function getUrlsRead() : java.util.Set<String>;
	
	/**
	* Reads policy reference element <wsp:PolicyReference/> and returns referenced policy URI as String
	*
	* @param reader The XMLStreamReader should be in START_ELEMENT state and point to the PolicyReference element.
	* @return The URI contained in the PolicyReference
	*/
	@:overload public function readPolicyReferenceElement(reader : javax.xml.stream.XMLStreamReader) : String;
	
	/**
	* Utility method to construct an absolute URL from a relative URI and a base URL.
	*
	* If the relativeUri already is an absolute URL, the method returns the relativeUri.
	*
	* @param relativeUri The relative URI
	* @param baseUri The base URL
	* @return The relative URI appended to the base URL. If relativeUri already is
	*   an absolute URL, the method returns the relativeUri.
	*/
	@:overload public static function relativeToAbsoluteUrl(relativeUri : String, baseUri : String) : String;
	
	
}
@:native('com$sun$xml$internal$ws$policy$jaxws$SafePolicyReader$PolicyRecord') extern class SafePolicyReader_PolicyRecord
{
	/**
	* Set the URI that identifies the policy.
	*
	* @param uri The fully qualified URI of the policy. May be a relative URI
	*   if JAX-WS did not pass on any system id.
	* @param id The short ID of the policy. Used for error reporting.
	* @throws PolicyException If there already is a policy recorded with the
	*   same id.
	*/
	@:overload public function setUri(uri : String, id : String) : Void;
	
	@:overload public function getUri() : String;
	
	@:overload public function toString() : String;
	
	
}
