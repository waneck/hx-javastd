package com.sun.org.apache.xerces.internal.impl.xs.models;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
extern class CMNodeFactory
{
	/** default constructor */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload @:public public function getCMLeafNode(type : Int, leaf : Dynamic, id : Int, position : Int) : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
	
	@:overload @:public public function getCMRepeatingLeafNode(type : Int, leaf : Dynamic, minOccurs : Int, maxOccurs : Int, id : Int, position : Int) : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
	
	@:overload @:public public function getCMUniOpNode(type : Int, childNode : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode) : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
	
	@:overload @:public public function getCMBinOpNode(type : Int, leftNode : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode, rightNode : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode) : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
	
	@:overload @:public public function nodeCountCheck() : Void;
	
	@:overload @:public public function resetNodeCount() : Void;
	
	/**
	* Sets the value of a property. This method is called by the component
	* manager any time after reset when a property changes value.
	* <p>
	* <strong>Note:</strong> Components should silently ignore properties
	* that do not affect the operation of the component.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	
}
