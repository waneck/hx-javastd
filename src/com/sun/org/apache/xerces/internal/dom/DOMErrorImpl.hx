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
extern class DOMErrorImpl implements org.w3c.dom.DOMError
{
	/**
	* <code>DOMErrorImpl</code> is an implementation that describes an error.
	* <strong>Note:</strong> The error object that describes the error
	* might be reused by Xerces implementation, across multiple calls to the
	* handleEvent method on DOMErrorHandler interface.
	*
	*
	* <p>See also the <a href='http://www.w3.org/TR/2001/WD-DOM-Level-3-Core-20010913'>Document Object Model (DOM) Level 3 Core Specification</a>.
	*
	* @xerces.internal
	*
	* @author Gopal Sharma, SUN Microsystems Inc.
	* @author Elena Litani, IBM
	*
	*/
	@:public public var fSeverity : java.StdTypes.Int16;
	
	@:public public var fMessage : String;
	
	@:public public var fLocator : com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl;
	
	@:public public var fException : java.lang.Exception;
	
	@:public public var fType : String;
	
	@:public public var fRelatedData : Dynamic;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/** Exctracts information from XMLParserException) */
	@:overload @:public public function new(severity : java.StdTypes.Int16, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	/**
	* The severity of the error, either <code>SEVERITY_WARNING</code>,
	* <code>SEVERITY_ERROR</code>, or <code>SEVERITY_FATAL_ERROR</code>.
	*/
	@:overload @:public public function getSeverity() : java.StdTypes.Int16;
	
	/**
	* An implementation specific string describing the error that occured.
	*/
	@:overload @:public public function getMessage() : String;
	
	/**
	* The location of the error.
	*/
	@:overload @:public public function getLocation() : org.w3c.dom.DOMLocator;
	
	/**
	* The related platform dependent exception if any.exception is a reserved
	* word, we need to rename it.Change to "relatedException". (F2F 26 Sep
	* 2001)
	*/
	@:overload @:public public function getRelatedException() : Dynamic;
	
	@:overload @:public public function reset() : Void;
	
	@:overload @:public public function getType() : String;
	
	@:overload @:public public function getRelatedData() : Dynamic;
	
	
}
