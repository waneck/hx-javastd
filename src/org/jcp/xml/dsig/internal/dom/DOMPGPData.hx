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
* $Id: DOMPGPData.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMPGPData extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.keyinfo.PGPData
{
	/**
	* Creates a <code>DOMPGPData</code> containing the specified key packet.
	* and optional list of external elements.
	*
	* @param keyPacket a PGP Key Material Packet as defined in section 5.5 of
	*    <a href="http://www.ietf.org/rfc/rfc2440.txt"/>RFC 2440</a>. The
	*    array is cloned to prevent subsequent modification.
	* @param other a list of {@link XMLStructure}s representing elements from
	*    an external namespace. The list is defensively copied to prevent
	*    subsequent modification. May be <code>null</code> or empty.
	* @throws NullPointerException if <code>keyPacket</code> is
	*    <code>null</code>
	* @throws IllegalArgumentException if the key packet is not in the
	*    correct format
	* @throws ClassCastException if <code>other</code> contains any
	*    entries that are not of type {@link XMLStructure}
	*/
	@:overload public function new(keyPacket : java.NativeArray<java.StdTypes.Int8>, other : java.util.List<Dynamic>) : Void;
	
	/**
	* Creates a <code>DOMPGPData</code> containing the specified key id and
	* optional key packet and list of external elements.
	*
	* @param keyId a PGP public key id as defined in section 11.2 of
	*    <a href="http://www.ietf.org/rfc/rfc2440.txt"/>RFC 2440</a>. The
	*    array is cloned to prevent subsequent modification.
	* @param keyPacket a PGP Key Material Packet as defined in section 5.5 of
	*    <a href="http://www.ietf.org/rfc/rfc2440.txt"/>RFC 2440</a> (may
	*    be <code>null</code>). The array is cloned to prevent subsequent
	*    modification.
	* @param other a list of {@link XMLStructure}s representing elements from
	*    an external namespace. The list is defensively copied to prevent
	*    subsequent modification. May be <code>null</code> or empty.
	* @throws NullPointerException if <code>keyId</code> is <code>null</code>
	* @throws IllegalArgumentException if the key id or packet is not in the
	*    correct format
	* @throws ClassCastException if <code>other</code> contains any
	*    entries that are not of type {@link XMLStructure}
	*/
	@:overload public function new(keyId : java.NativeArray<java.StdTypes.Int8>, keyPacket : java.NativeArray<java.StdTypes.Int8>, other : java.util.List<Dynamic>) : Void;
	
	/**
	* Creates a <code>DOMPGPData</code> from an element.
	*
	* @param pdElem a PGPData element
	*/
	@:overload public function new(pdElem : org.w3c.dom.Element) : Void;
	
	@:overload public function getKeyId() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getKeyPacket() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getExternalElements() : java.util.List<Dynamic>;
	
	@:overload override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	
}
