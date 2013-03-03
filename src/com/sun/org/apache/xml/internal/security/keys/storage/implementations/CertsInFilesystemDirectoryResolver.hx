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
extern class CertsInFilesystemDirectoryResolver extends com.sun.org.apache.xml.internal.security.keys.storage.StorageResolverSpi
{
	/**
	*
	*
	* @param directoryName
	* @throws StorageResolverException
	*/
	@:overload @:public public function new(directoryName : String) : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function getIterator() : java.util.Iterator<Dynamic>;
	
	/**
	* Method main
	*
	* @param unused
	* @throws Exception
	*/
	@:overload @:public @:static public static function main(unused : java.NativeArray<String>) : Void;
	
	
}
/**
* Class FilesystemIterator
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$keys$storage$implementations$CertsInFilesystemDirectoryResolver$FilesystemIterator') @:internal extern class CertsInFilesystemDirectoryResolver_FilesystemIterator implements java.util.Iterator<Dynamic>
{
	/**
	* Constructor FilesystemIterator
	*
	* @param certs
	*/
	@:overload @:public public function new(certs : java.util.List<Dynamic>) : Void;
	
	/** @inheritDoc */
	@:overload @:public public function hasNext() : Bool;
	
	/** @inheritDoc */
	@:overload @:public public function next() : Dynamic;
	
	/**
	* Method remove
	*
	*/
	@:overload @:public public function remove() : Void;
	
	
}
