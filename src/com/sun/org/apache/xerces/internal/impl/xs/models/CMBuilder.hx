package com.sun.org.apache.xerces.internal.impl.xs.models;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
extern class CMBuilder
{
	@:overload @:public public function new(nodeFactory : com.sun.org.apache.xerces.internal.impl.xs.models.CMNodeFactory) : Void;
	
	@:overload @:public public function setDeclPool(declPool : com.sun.org.apache.xerces.internal.impl.xs.XSDeclarationPool) : Void;
	
	/**
	* Get content model for the a given type
	*
	* @param typeDecl  get content model for which complex type
	* @return          a content model validator
	*/
	@:overload @:public public function getContentModel(typeDecl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : com.sun.org.apache.xerces.internal.impl.xs.models.XSCMValidator;
	
	
}
