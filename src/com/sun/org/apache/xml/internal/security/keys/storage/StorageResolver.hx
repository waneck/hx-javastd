package com.sun.org.apache.xml.internal.security.keys.storage;
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
extern class StorageResolver
{
	/**
	* Constructor StorageResolver
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor StorageResolver
	*
	* @param resolver
	*/
	@:overload public function new(resolver : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolverSpi) : Void;
	
	/**
	* Method addResolver
	*
	* @param resolver
	*/
	@:overload public function add(resolver : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolverSpi) : Void;
	
	/**
	* Constructor StorageResolver
	*
	* @param keyStore
	*/
	@:overload public function new(keyStore : java.security.KeyStore) : Void;
	
	/**
	* Method addKeyStore
	*
	* @param keyStore
	*/
	@:overload public function add(keyStore : java.security.KeyStore) : Void;
	
	/**
	* Constructor StorageResolver
	*
	* @param x509certificate
	*/
	@:overload public function new(x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method addCertificate
	*
	* @param x509certificate
	*/
	@:overload public function add(x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method getIterator
	* @return the iterator for the resolvers.
	*
	*/
	@:overload public function getIterator() : java.util.Iterator<Dynamic>;
	
	/**
	* Method hasNext
	*
	* @return true if there is more elements.
	*/
	@:overload public function hasNext() : Bool;
	
	/**
	* Method next
	*
	* @return the next element
	*/
	@:overload public function next() : java.security.cert.X509Certificate;
	
	
}
/**
* Class StorageResolverIterator
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver$StorageResolverIterator') @:internal extern class StorageResolver_StorageResolverIterator implements java.util.Iterator<Dynamic>
{
	/**
	* Constructor FilesystemIterator
	*
	* @param resolvers
	*/
	@:overload public function new(resolvers : java.util.Iterator<Dynamic>) : Void;
	
	/** @inheritDoc */
	@:overload public function hasNext() : Bool;
	
	/** @inheritDoc */
	@:overload public function next() : Dynamic;
	
	/**
	* Method remove
	*/
	@:overload public function remove() : Void;
	
	
}
