package com.sun.org.apache.xerces.internal.impl.dv.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class XML11NMTOKENDatatypeValidator extends com.sun.org.apache.xerces.internal.impl.dv.dtd.NMTOKENDatatypeValidator
{
	/**
	* NMTOKEN datatype validator for NMTokens from XML 1.1.
	*
	* @xerces.internal
	*
	* @author Jeffrey Rodriguez, IBM
	* @author Sandy Gao, IBM
	* @author Neil Graham, IBM
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Checks that "content" string is valid NMTOKEN value.
	* If invalid a Datatype validation exception is thrown.
	*
	* @param content       the string value that needs to be validated
	* @param context       the validation context
	* @throws InvalidDatatypeException if the content is
	*         invalid according to the rules for the validators
	* @see InvalidDatatypeValueException
	*/
	@:overload @:public override public function validate(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	
}
