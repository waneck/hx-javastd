package com.sun.org.apache.xml.internal.utils;
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
* $Id: NameSpace.java,v 1.2.4.1 2005/09/15 08:15:49 suresh_emailid Exp $
*/
extern class NameSpace implements java.io.Serializable
{
	/** Next NameSpace element on the stack.
	*  @serial             */
	@:public public var m_next : com.sun.org.apache.xml.internal.utils.NameSpace;
	
	/** Prefix of this NameSpace element.
	*  @serial          */
	@:public public var m_prefix : String;
	
	/** Namespace URI of this NameSpace element.
	*  @serial           */
	@:public public var m_uri : String;
	
	/**
	* Construct a namespace for placement on the
	* result tree namespace stack.
	*
	* @param prefix Prefix of this element
	* @param uri URI of  this element
	*/
	@:overload @:public public function new(prefix : String, uri : String) : Void;
	
	
}
