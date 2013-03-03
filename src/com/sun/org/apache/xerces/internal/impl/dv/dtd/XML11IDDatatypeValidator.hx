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
extern class XML11IDDatatypeValidator extends com.sun.org.apache.xerces.internal.impl.dv.dtd.IDDatatypeValidator
{
	/**
	* <P>IDDatatypeValidator - ID represents the ID attribute
	* type from XML 1.1 Recommendation. The value space
	* of ID is the set of all strings that match the
	* NCName production and have been used in an XML
	* document. The lexical space of ID is the set of all
	* strings that match the NCName production.</P>
	* <P>The value space of ID is scoped to a specific
	* instance document.</P>
	* <P>The following constraint applies:
	* An ID must not appear more than once in an XML
	* document as a value of this type; i.e., ID values
	* must uniquely identify the elements which bear
	* them.</P>
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
	* Checks that "content" string is valid ID value.
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
