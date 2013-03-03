package com.sun.xml.internal.stream.dtd.nonvalidating;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
*/
extern class XMLNotationDecl
{
	/** name */
	@:public public var name : String;
	
	/** publicId */
	@:public public var publicId : String;
	
	/** systemId */
	@:public public var systemId : String;
	
	/** base systemId */
	@:public public var baseSystemId : String;
	
	/**
	* setValues
	*
	* @param name
	* @param publicId
	* @param systemId
	*/
	@:overload @:public public function setValues(name : String, publicId : String, systemId : String, baseSystemId : String) : Void;
	
	/**
	* clear
	*/
	@:overload @:public public function clear() : Void;
	
	
}
