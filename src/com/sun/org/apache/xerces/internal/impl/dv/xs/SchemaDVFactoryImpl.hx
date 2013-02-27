package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class SchemaDVFactoryImpl extends com.sun.org.apache.xerces.internal.impl.dv.xs.BaseSchemaDVFactory
{
	/**
	* Get a built-in simple type of the given name
	* REVISIT: its still not decided within the Schema WG how to define the
	*          ur-types and if all simple types should be derived from a
	*          complex type, so as of now we ignore the fact that anySimpleType
	*          is derived from anyType, and pass 'null' as the base of
	*          anySimpleType. It needs to be changed as per the decision taken.
	*
	* @param name  the name of the datatype
	* @return      the datatype validator of the given name
	*/
	@:overload override public function getBuiltInType(name : String) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	/**
	* get all built-in simple types, which are stored in a hashtable keyed by
	* the name
	*
	* @return      a hashtable which contains all built-in simple types
	*/
	@:overload override public function getBuiltInTypes() : com.sun.org.apache.xerces.internal.util.SymbolHash;
	
	
}
