package com.sun.org.apache.xpath.internal.objects;
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
* $Id: XBooleanStatic.java,v 1.2.4.2 2005/09/14 20:34:46 jeffsuttor Exp $
*/
/**
* This class doesn't have any XPathContext, so override
* whatever to ensure it works OK.
* @xsl.usage internal
*/
extern class XBooleanStatic extends com.sun.org.apache.xpath.internal.objects.XBoolean
{
	/**
	* Construct a XBooleanStatic object.
	*
	* @param b The value of the object
	*/
	@:overload public function new(b : Bool) : Void;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare to this
	*
	* @return True if the two objects are equal
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	
}
