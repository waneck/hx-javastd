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
@:internal extern class XMLSchema extends com.sun.org.apache.xerces.internal.jaxp.validation.AbstractXMLSchema
{
	/** Constructor */
	@:overload public function new(grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* <p>Returns the grammar pool contained inside the container.</p>
	*
	* @return the grammar pool contained inside the container
	*/
	@:overload override public function getGrammarPool() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/**
	* <p>Returns whether the schema components contained in this object
	* can be considered to be a fully composed schema and should be
	* used to exclusion of other schema components which may be
	* present elsewhere.</p>
	*
	* @return whether the schema components contained in this object
	* can be considered to be a fully composed schema
	*/
	@:overload override public function isFullyComposed() : Bool;
	
	
}
