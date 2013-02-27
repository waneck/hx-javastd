package com.sun.org.apache.xerces.internal.parsers;
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
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XMLParser
{
	/** Property identifier: entity resolver. */
	private static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: error handler. */
	private static var ERROR_HANDLER(default, null) : String;
	
	/** The parser configuration. */
	private var fConfiguration : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
	
	/**
	* Query the state of a feature.
	*/
	@:overload public function getFeature(featureId : String) : Bool;
	
	/**
	* Default Constructor.
	*/
	@:overload private function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* parse
	*
	* @param inputSource
	*
	* @exception XNIException
	* @exception java.io.IOException
	*/
	@:overload public function parse(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* reset all components before parsing
	*/
	@:overload private function reset() : Void;
	
	
}
