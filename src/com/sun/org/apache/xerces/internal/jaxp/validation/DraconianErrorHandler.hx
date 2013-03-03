package com.sun.org.apache.xerces.internal.jaxp.validation;
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
@:internal extern class DraconianErrorHandler implements org.xml.sax.ErrorHandler
{
	/** Returns the one and only instance of this error handler. */
	@:overload @:public @:static public static function getInstance() : com.sun.org.apache.xerces.internal.jaxp.validation.DraconianErrorHandler;
	
	/** Warning: Ignore. */
	@:overload @:public public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	/** Error: Throws back SAXParseException. */
	@:overload @:public public function error(e : org.xml.sax.SAXParseException) : Void;
	
	/** Fatal Error: Throws back SAXParseException. */
	@:overload @:public public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	
}
