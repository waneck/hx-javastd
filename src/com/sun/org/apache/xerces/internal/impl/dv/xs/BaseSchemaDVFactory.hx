package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class BaseSchemaDVFactory extends com.sun.org.apache.xerces.internal.impl.dv.SchemaDVFactory
{
	@:protected private var fDeclPool : com.sun.org.apache.xerces.internal.impl.xs.XSDeclarationPool;
	
	@:overload @:protected @:static private static function createBuiltInTypes(builtInTypes : com.sun.org.apache.xerces.internal.util.SymbolHash, baseAtomicType : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl) : Void;
	
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
	@:overload @:public override public function createTypeRestriction(name : String, targetNamespace : String, finalSet : java.StdTypes.Int16, base : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
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
	@:overload @:public override public function createTypeList(name : String, targetNamespace : String, finalSet : java.StdTypes.Int16, itemType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
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
	@:overload @:public override public function createTypeUnion(name : String, targetNamespace : String, finalSet : java.StdTypes.Int16, memberTypes : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType>, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	@:overload @:public public function setDeclPool(declPool : com.sun.org.apache.xerces.internal.impl.xs.XSDeclarationPool) : Void;
	
	/** Implementation internal **/
	@:overload @:public public function newXSSimpleTypeDecl() : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl;
	
	
}
