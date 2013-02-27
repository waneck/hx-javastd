package com.sun.org.apache.xerces.internal.jaxp;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class UnparsedEntityHandler implements com.sun.org.apache.xerces.internal.xni.parser.XMLDTDFilter implements com.sun.org.apache.xerces.internal.impl.validation.EntityState
{
	/*
	* XMLDTDHandler methods
	*/
	@:overload public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function textDecl(version : String, encoding : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endParameterEntity(name : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endExternalSubset(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function elementDecl(name : String, contentModel : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startAttlist(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endAttlist(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startConditional(type : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endConditional(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endDTD(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource) : Void;
	
	@:overload public function getDTDSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	/*
	* XMLDTDSource methods
	*/
	@:overload public function setDTDHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	@:overload public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/*
	* EntityState methods
	*/
	@:overload public function isEntityDeclared(name : String) : Bool;
	
	@:overload public function isEntityUnparsed(name : String) : Bool;
	
	/*
	* Other methods
	*/
	@:overload public function reset() : Void;
	
	
}
