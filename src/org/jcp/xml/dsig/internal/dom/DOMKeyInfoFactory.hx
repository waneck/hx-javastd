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
* $Id: DOMKeyInfoFactory.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMKeyInfoFactory extends javax.xml.crypto.dsig.keyinfo.KeyInfoFactory
{
	/**
	* DOM-based implementation of KeyInfoFactory.
	*
	* @author Sean Mullan
	*/
	@:overload public function new() : Void;
	
	@:overload public function newKeyInfo(content : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	@:overload public function newKeyInfo(content : java.util.List<Dynamic>, id : String) : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	@:overload public function newKeyName(name : String) : javax.xml.crypto.dsig.keyinfo.KeyName;
	
	@:overload public function newKeyValue(key : java.security.PublicKey) : javax.xml.crypto.dsig.keyinfo.KeyValue;
	
	@:overload public function newPGPData(keyId : java.NativeArray<java.StdTypes.Int8>) : javax.xml.crypto.dsig.keyinfo.PGPData;
	
	@:overload public function newPGPData(keyId : java.NativeArray<java.StdTypes.Int8>, keyPacket : java.NativeArray<java.StdTypes.Int8>, other : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.PGPData;
	
	@:overload public function newPGPData(keyPacket : java.NativeArray<java.StdTypes.Int8>, other : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.PGPData;
	
	@:overload public function newRetrievalMethod(uri : String) : javax.xml.crypto.dsig.keyinfo.RetrievalMethod;
	
	@:overload public function newRetrievalMethod(uri : String, type : String, transforms : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.RetrievalMethod;
	
	@:overload public function newX509Data(content : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.X509Data;
	
	@:overload public function newX509IssuerSerial(issuerName : String, serialNumber : java.math.BigInteger) : javax.xml.crypto.dsig.keyinfo.X509IssuerSerial;
	
	@:overload public function isFeatureSupported(feature : String) : Bool;
	
	@:overload public function getURIDereferencer() : javax.xml.crypto.URIDereferencer;
	
	@:overload public function unmarshalKeyInfo(xmlStructure : javax.xml.crypto.XMLStructure) : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	
}
