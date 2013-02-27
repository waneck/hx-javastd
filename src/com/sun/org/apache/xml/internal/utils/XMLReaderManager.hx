package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XMLReaderManager.java,v 1.2.4.1 2005/09/15 08:16:02 suresh_emailid Exp $
*/
extern class XMLReaderManager
{
	/**
	* Retrieves the singleton reader manager
	*/
	@:overload public static function getInstance(useServicesMechanism : Bool) : XMLReaderManager;
	
	/**
	* Retrieves a cached XMLReader for this thread, or creates a new
	* XMLReader, if the existing reader is in use.  When the caller no
	* longer needs the reader, it must release it with a call to
	* {@link #releaseXMLReader}.
	*/
	@:overload @:synchronized public function getXMLReader() : org.xml.sax.XMLReader;
	
	/**
	* Mark the cached XMLReader as available.  If the reader was not
	* actually in the cache, do nothing.
	*
	* @param reader The XMLReader that's being released.
	*/
	@:overload @:synchronized public function releaseXMLReader(reader : org.xml.sax.XMLReader) : Void;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload public function setServicesMechnism(flag : Bool) : Void;
	
	
}
