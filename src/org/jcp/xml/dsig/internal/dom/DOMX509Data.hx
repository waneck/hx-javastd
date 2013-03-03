package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMX509Data.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMX509Data extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.keyinfo.X509Data
{
	/**
	* Creates a DOMX509Data.
	*
	* @param content a list of one or more X.509 data types. Valid types are
	*    {@link String} (subject names), <code>byte[]</code> (subject key ids),
	*    {@link java.security.cert.X509Certificate}, {@link X509CRL},
	*    or {@link javax.xml.dsig.XMLStructure} ({@link X509IssuerSerial}
	*    objects or elements from an external namespace). The list is
	*    defensively copied to protect against subsequent modification.
	* @return a <code>X509Data</code>
	* @throws NullPointerException if <code>content</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>content</code> is empty
	* @throws ClassCastException if <code>content</code> contains any entries
	*    that are not of one of the valid types mentioned above
	*/
	@:overload @:public public function new(content : java.util.List<Dynamic>) : Void;
	
	/**
	* Creates a <code>DOMX509Data</code> from an element.
	*
	* @param xdElem an X509Data element
	* @throws MarshalException if there is an error while unmarshalling
	*/
	@:overload @:public public function new(xdElem : org.w3c.dom.Element) : Void;
	
	@:overload @:public public function getContent() : java.util.List<Dynamic>;
	
	@:overload @:public override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}
