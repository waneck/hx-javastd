package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
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
extern class ErrorHandlerProxy implements org.xml.sax.ErrorHandler
{
	/**
	* Wraps {@link XMLErrorHandler} and make it look like a SAX {@link ErrorHandler}.
	*
	* <p>
	* The derived class should override the {@link #getErrorHandler()} method
	* so that it will return the correct {@link XMLErrorHandler} instance.
	* This method will be called whenever an error/warning is found.
	*
	* <p>
	* Experience shows that it is better to store the actual
	* {@link XMLErrorHandler} in one place and looks up that variable,
	* rather than copying it into every component that needs an error handler
	* and update all of them whenever it is changed, IMO.
	*
	* @author Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*
	*/
	@:overload @:public public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:protected @:abstract private function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	
}
