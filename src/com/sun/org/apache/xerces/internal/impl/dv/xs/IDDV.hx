package com.sun.org.apache.xerces.internal.impl.dv.xs;
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
extern class IDDV extends com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator
{
	/**
	* Represent the schema type "ID"
	*
	* @xerces.internal
	*
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @author Sandy Gao, IBM
	*
	*/
	@:overload override public function getAllowedFacets() : java.StdTypes.Int16;
	
	@:overload override public function getActualValue(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Dynamic;
	
	@:overload override public function checkExtraRules(value : Dynamic, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	
}
