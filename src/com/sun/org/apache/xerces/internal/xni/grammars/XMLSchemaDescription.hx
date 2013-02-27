package com.sun.org.apache.xerces.internal.xni.grammars;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2004,2005 The Apache Software Foundation.
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
extern interface XMLSchemaDescription extends com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription
{
	/**
	* Get the context. The returned value is one of the pre-defined
	* CONTEXT_xxx constants.
	*
	* @return  the value indicating the context
	*/
	@:overload public function getContextType() : java.StdTypes.Int16;
	
	/**
	* If the context is "include" or "redefine", then return the target
	* namespace of the enclosing schema document; otherwise, the expected
	* target namespace of this document.
	*
	* @return  the expected/enclosing target namespace
	*/
	@:overload public function getTargetNamespace() : String;
	
	/**
	* For import and references from the instance document, it's possible to
	* have multiple hints for one namespace. So this method returns an array,
	* which contains all location hints.
	*
	* @return  an array of all location hints associated to the expected
	*          target namespace
	*/
	@:overload public function getLocationHints() : java.NativeArray<String>;
	
	/**
	* If a call is triggered by an element/attribute/xsi:type in the instance,
	* this call returns the name of such triggering component: the name of
	* the element/attribute, or the value of the xsi:type.
	*
	* @return  the name of the triggering component
	*/
	@:overload public function getTriggeringComponent() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* If a call is triggered by an attribute or xsi:type, then this method
	* returns the enclosing element of such element.
	*
	* @return  the name of the enclosing element
	*/
	@:overload public function getEnclosingElementName() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* If a call is triggered by an element/attribute/xsi:type in the instance,
	* this call returns all attribute of such element (or enclosing element).
	*
	* @return  all attributes of the tiggering/enclosing element
	*/
	@:overload public function getAttributes() : com.sun.org.apache.xerces.internal.xni.XMLAttributes;
	
	
}
