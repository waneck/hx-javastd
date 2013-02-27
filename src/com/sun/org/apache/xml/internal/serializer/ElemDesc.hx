package com.sun.org.apache.xml.internal.serializer;
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
* $Id: ElemDesc.java,v 1.2.4.1 2005/09/15 08:15:15 suresh_emailid Exp $
*/
extern class ElemDesc
{
	/** Bit position if this attribute type is a URL. */
	public static var ATTRURL(default, null) : Int;
	
	/** Bit position if this attribute type is an empty type. */
	public static var ATTREMPTY(default, null) : Int;
	
	/**
	* Tell if any of the bits of interest are set for a named attribute type.
	*
	* @param name non-null reference to attribute name, in any case.
	* @param flags flag mask.
	*
	* @return true if any of the flags are set for the named attribute.
	*/
	@:overload public function isAttrFlagSet(name : String, flags : Int) : Bool;
	
	
}
