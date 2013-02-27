package com.sun.org.apache.xml.internal.security.utils;
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
extern class RFC2253Parser
{
	/**
	* Method rfc2253toXMLdsig
	*
	* @param dn
	* @return normalized string
	*
	*/
	@:overload public static function rfc2253toXMLdsig(dn : String) : String;
	
	/**
	* Method xmldsigtoRFC2253
	*
	* @param dn
	* @return normalized string
	*/
	@:overload public static function xmldsigtoRFC2253(dn : String) : String;
	
	/**
	* Method normalize
	*
	* @param dn
	* @return normalized string
	*/
	@:overload public static function normalize(dn : String) : String;
	
	/**
	* Method main
	*
	* @param args
	* @throws Exception
	*/
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
