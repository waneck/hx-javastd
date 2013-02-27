package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002, 2003,2004 The Apache Software Foundation.
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
extern class BaseDVFactory extends com.sun.org.apache.xerces.internal.impl.dv.SchemaDVFactory
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
	
	/**
	* Create a new simple type which is derived by restriction from another
	* simple type.
	*
	* @param name              name of the new type, could be null
	* @param targetNamespace   target namespace of the new type, could be null
	* @param finalSet          value of "final"
	* @param base              base type of the new type
	* @param annotations       set of annotations
	* @return                  the newly created simple type
	*/
	@:overload override public function createTypeRestriction(name : String, targetNamespace : String, finalSet : java.StdTypes.Int16, base : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	/**
	* Create a new simple type which is derived by list from another simple
	* type.
	*
	* @param name              name of the new type, could be null
	* @param targetNamespace   target namespace of the new type, could be null
	* @param finalSet          value of "final"
	* @param itemType          item type of the list type
	* @param annotations       set of annotations
	* @return                  the newly created simple type
	*/
	@:overload override public function createTypeList(name : String, targetNamespace : String, finalSet : java.StdTypes.Int16, itemType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	/**
	* Create a new simple type which is derived by union from a list of other
	* simple types.
	*
	* @param name              name of the new type, could be null
	* @param targetNamespace   target namespace of the new type, could be null
	* @param finalSet          value of "final"
	* @param memberTypes       member types of the union type
	* @param annotations       set of annotations
	* @return                  the newly created simple type
	*/
	@:overload override public function createTypeUnion(name : String, targetNamespace : String, finalSet : java.StdTypes.Int16, memberTypes : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType>, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	
}
