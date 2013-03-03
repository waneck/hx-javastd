package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class DOMImplementationSourceImpl implements org.w3c.dom.DOMImplementationSource
{
	/**
	* A method to request a DOM implementation.
	* @param features A string that specifies which features are required.
	*   This is a space separated list in which each feature is specified
	*   by its name optionally followed by a space and a version number.
	*   This is something like: "XML 1.0 Traversal Events 2.0"
	* @return An implementation that has the desired features, or
	*   <code>null</code> if this source has none.
	*/
	@:overload @:public public function getDOMImplementation(features : String) : org.w3c.dom.DOMImplementation;
	
	/**
	* A method to request a list of DOM implementations that support the
	* specified features and versions, as specified in .
	* @param features A string that specifies which features and versions
	*   are required. This is a space separated list in which each feature
	*   is specified by its name optionally followed by a space and a
	*   version number. This is something like: "XML 3.0 Traversal +Events
	*   2.0"
	* @return A list of DOM implementations that support the desired
	*   features.
	*/
	@:overload @:public public function getDOMImplementationList(features : String) : org.w3c.dom.DOMImplementationList;
	
	
}
