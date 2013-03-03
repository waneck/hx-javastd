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
@:internal extern class AbstractXMLSchema extends javax.xml.validation.Schema implements com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer
{
	@:overload @:public public function new() : Void;
	
	/*
	* @see javax.xml.validation.Schema#newValidator()
	*/
	@:overload @:public @:final override public function newValidator() : javax.xml.validation.Validator;
	
	/*
	* @see javax.xml.validation.Schema#newValidatorHandler()
	*/
	@:overload @:public @:final override public function newValidatorHandler() : javax.xml.validation.ValidatorHandler;
	
	/**
	* Returns the initial value of a feature for validators created
	* using this grammar pool container or null if the validators
	* should use the default value.
	*/
	@:overload @:public @:final public function getFeature(featureId : String) : Null<Bool>;
	
	/**
	* <p>Returns whether the schema components contained in this object
	* can be considered to be a fully composed schema and should be
	* used to the exclusion of other schema components which may be
	* present elsewhere.</p>
	*
	* @return whether the schema components contained in this object
	* can be considered to be a fully composed schema
	*/
	@:overload @:public public function isFullyComposed() : Bool;
	
	/**
	* <p>Returns the grammar pool contained inside the container.</p>
	*
	* @return the grammar pool contained inside the container
	*/
	@:overload @:public public function getGrammarPool() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	
}
