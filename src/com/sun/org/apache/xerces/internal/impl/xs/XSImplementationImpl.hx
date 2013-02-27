package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
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
extern class XSImplementationImpl extends com.sun.org.apache.xerces.internal.dom.CoreDOMImplementationImpl implements com.sun.org.apache.xerces.internal.xs.XSImplementation
{
	/** NON-DOM: Obtain and return the single shared object */
	@:overload public static function getDOMImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* Test if the DOM implementation supports a specific "feature" --
	* currently meaning language and level thereof.
	*
	* @param feature      The package name of the feature to test.
	* In Level 1, supported values are "HTML" and "XML" (case-insensitive).
	* At this writing, com.sun.org.apache.xerces.internal.dom supports only XML.
	*
	* @param version      The version number of the feature being tested.
	* This is interpreted as "Version of the DOM API supported for the
	* specified Feature", and in Level 1 should be "1.0"
	*
	* @return    true iff this implementation is compatable with the specified
	* feature and version.
	*/
	@:overload override public function hasFeature(feature : String, version : String) : Bool;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSImplementation#createXSLoader(com.sun.org.apache.xerces.internal.xs.StringList)
	*/
	@:overload public function createXSLoader(versions : com.sun.org.apache.xerces.internal.xs.StringList) : com.sun.org.apache.xerces.internal.xs.XSLoader;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSImplementation#getRecognizedVersions()
	*/
	@:overload public function getRecognizedVersions() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	
}
