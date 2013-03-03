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
@:internal extern interface ValidatorHelper
{
	/**
	* <p>Instances of ValidatorHelper are able to validate
	* specific source and result types.</p>
	*
	* @author Michael Glavassevich, IBM
	*/
	@:overload @:public public function validate(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	
}
