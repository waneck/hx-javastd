package com.sun.org.apache.xpath.internal.compiler;
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
* $Id: FuncLoader.java,v 1.1.2.1 2005/08/01 01:30:35 jeffsuttor Exp $
*/
extern class FuncLoader
{
	/**
	* Get the local class name of the function class.  If function name does
	* not have a '.' in it, it is assumed to be relative to
	* 'com.sun.org.apache.xpath.internal.functions'.
	*
	* @return The class name of the {com.sun.org.apache.xpath.internal.functions.Function} class.
	*/
	@:overload public function getName() : String;
	
	/**
	* Construct a function loader
	*
	* @param funcName The class name of the {com.sun.org.apache.xpath.internal.functions.Function}
	*             class, which, if it does not have a '.' in it, is assumed to
	*             be relative to 'com.sun.org.apache.xpath.internal.functions'.
	* @param funcID  The function ID, which may correspond to one of the FUNC_XXX
	*    values found in {@link com.sun.org.apache.xpath.internal.compiler.FunctionTable}, but may
	*    be a value installed by an external module.
	*/
	@:overload public function new(funcName : String, funcID : Int) : Void;
	
	
}
