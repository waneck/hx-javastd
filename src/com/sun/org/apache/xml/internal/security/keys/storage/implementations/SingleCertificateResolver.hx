package com.sun.org.apache.xml.internal.security.keys.storage.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
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
extern class SingleCertificateResolver extends com.sun.org.apache.xml.internal.security.keys.storage.StorageResolverSpi
{
	/**
	*
	*
	* @param x509cert the single {@link X509Certificate}
	*/
	@:overload public function new(x509cert : java.security.cert.X509Certificate) : Void;
	
	/** @inheritDoc */
	@:overload public function getIterator() : java.util.Iterator<Dynamic>;
	
	
}
/**
* Class InternalIterator
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$keys$storage$implementations$SingleCertificateResolver$InternalIterator') @:internal extern class SingleCertificateResolver_InternalIterator implements java.util.Iterator<Dynamic>
{
	/**
	* Constructor InternalIterator
	*
	* @param x509cert
	*/
	@:overload public function new(x509cert : java.security.cert.X509Certificate) : Void;
	
	/** @inheritDoc */
	@:overload public function hasNext() : Bool;
	
	/** @inheritDoc */
	@:overload public function next() : Dynamic;
	
	/**
	* Method remove
	*
	*/
	@:overload public function remove() : Void;
	
	
}
