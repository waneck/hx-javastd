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
@:internal extern class ValidatorImpl extends javax.xml.validation.Validator implements com.sun.org.apache.xerces.internal.xs.PSVIProvider
{
	@:overload @:public public function new(grammarContainer : com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer) : Void;
	
	@:overload @:public override public function validate(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	@:overload @:public override public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload @:public override public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload @:public override public function setResourceResolver(resourceResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	@:overload @:public override public function getResourceResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	@:overload @:public override public function getFeature(name : String) : Bool;
	
	@:overload @:public override public function setFeature(name : String, value : Bool) : Void;
	
	@:overload @:public override public function getProperty(name : String) : Dynamic;
	
	@:overload @:public override public function setProperty(name : String, object : Dynamic) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	/*
	* PSVIProvider methods
	*/
	@:overload @:public public function getElementPSVI() : com.sun.org.apache.xerces.internal.xs.ElementPSVI;
	
	@:overload @:public public function getAttributePSVI(index : Int) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	@:overload @:public public function getAttributePSVIByName(uri : String, localname : String) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	
}
