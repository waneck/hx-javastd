package com.sun.org.apache.xerces.internal.xni;
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
/**
* This exception is the base exception of all XNI exceptions. It
* can be constructed with an error message or used to wrap another
* exception object.
* <p>
* <strong>Note:</strong> By extending the Java
* <code>RuntimeException</code>, XNI handlers and components are
* not required to catch XNI exceptions but may explicitly catch
* them, if so desired.
*
* @author Andy Clark, IBM
*
* @version $Id: XNIException.java,v 1.6 2010-11-01 04:40:19 joehw Exp $
*/
extern class XNIException extends java.lang.RuntimeException
{
	/**
	* Constructs an XNI exception with a message.
	*
	* @param message The exception message.
	*/
	@:overload public function new(message : String) : Void;
	
	/**
	* Constructs an XNI exception with a wrapped exception.
	*
	* @param exception The wrapped exception.
	*/
	@:overload public function new(exception : java.lang.Exception) : Void;
	
	/**
	* Constructs an XNI exception with a message and wrapped exception.
	*
	* @param message The exception message.
	* @param exception The wrapped exception.
	*/
	@:overload public function new(message : String, exception : java.lang.Exception) : Void;
	
	/** Returns the wrapped exception. */
	@:overload public function getException() : java.lang.Exception;
	
	@:overload public function getCause() : java.lang.Throwable;
	
	
}
