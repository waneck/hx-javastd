package com.sun.org.apache.xml.internal.dtm;
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
* $Id: DTMConfigurationException.java,v 1.2.4.1 2005/09/15 08:14:52 suresh_emailid Exp $
*/
extern class DTMConfigurationException extends com.sun.org.apache.xml.internal.dtm.DTMException
{
	/**
	* Create a new <code>DTMConfigurationException</code> with no
	* detail mesage.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new <code>DTMConfigurationException</code> with
	* the <code>String </code> specified as an error message.
	*
	* @param msg The error message for the exception.
	*/
	@:overload public function new(msg : String) : Void;
	
	/**
	* Create a new <code>DTMConfigurationException</code> with a
	* given <code>Exception</code> base cause of the error.
	*
	* @param e The exception to be encapsulated in a
	* DTMConfigurationException.
	*/
	@:overload public function new(e : java.lang.Throwable) : Void;
	
	/**
	* Create a new <code>DTMConfigurationException</code> with the
	* given <code>Exception</code> base cause and detail message.
	*
	* @param msg The detail message.
	* @param e The exception to be wrapped in a DTMConfigurationException
	*/
	@:overload public function new(msg : String, e : java.lang.Throwable) : Void;
	
	/**
	* Create a new DTMConfigurationException from a message and a Locator.
	*
	* <p>This constructor is especially useful when an application is
	* creating its own exception from within a DocumentHandler
	* callback.</p>
	*
	* @param message The error or warning message.
	* @param locator The locator object for the error or warning.
	*/
	@:overload public function new(message : String, locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Wrap an existing exception in a DTMConfigurationException.
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param locator The locator object for the error or warning.
	* @param e Any exception.
	*/
	@:overload public function new(message : String, locator : javax.xml.transform.SourceLocator, e : java.lang.Throwable) : Void;
	
	
}
