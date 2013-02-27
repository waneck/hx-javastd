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
* $Id: WrappedRuntimeException.java,v 1.2.4.1 2005/09/15 08:16:00 suresh_emailid Exp $
*/
/**
* This class is for throwing important checked exceptions
* over non-checked methods.  It should be used with care,
* and in limited circumstances.
*/
extern class WrappedRuntimeException extends java.lang.RuntimeException
{
	/**
	* Construct a WrappedRuntimeException from a
	* checked exception.
	*
	* @param e Primary checked exception
	*/
	@:overload public function new(e : java.lang.Exception) : Void;
	
	/**
	* Constructor WrappedRuntimeException
	*
	*
	* @param msg Exception information.
	* @param e Primary checked exception
	*/
	@:overload public function new(msg : String, e : java.lang.Exception) : Void;
	
	/**
	* Get the checked exception that this runtime exception wraps.
	*
	* @return The primary checked exception
	*/
	@:overload public function getException() : java.lang.Exception;
	
	
}
