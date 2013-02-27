package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
@:internal extern class SchemaDOMImplementation implements org.w3c.dom.DOMImplementation
{
	/** NON-DOM: Obtain and return the single shared object */
	@:overload public static function getDOMImplementation() : org.w3c.dom.DOMImplementation;
	
	@:overload public function createDocument(namespaceURI : String, qualifiedName : String, doctype : org.w3c.dom.DocumentType) : org.w3c.dom.Document;
	
	@:overload public function createDocumentType(qualifiedName : String, publicId : String, systemId : String) : org.w3c.dom.DocumentType;
	
	@:overload public function getFeature(feature : String, version : String) : Dynamic;
	
	@:overload public function hasFeature(feature : String, version : String) : Bool;
	
	
}
