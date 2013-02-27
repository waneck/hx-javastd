package com.sun.org.apache.xerces.internal.impl.xs;
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
extern class XSDeclarationPool
{
	@:overload public function setDVFactory(dvFactory : com.sun.org.apache.xerces.internal.impl.dv.xs.SchemaDVFactoryImpl) : Void;
	
	@:overload @:final public function getElementDecl() : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
	
	@:overload @:final public function getAttributeDecl() : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl;
	
	@:overload @:final public function getAttributeUse() : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeUseImpl;
	
	@:overload @:final public function getComplexTypeDecl() : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl;
	
	@:overload @:final public function getSimpleTypeDecl() : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl;
	
	@:overload @:final public function getParticleDecl() : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl;
	
	@:overload @:final public function getModelGroup() : com.sun.org.apache.xerces.internal.impl.xs.XSModelGroupImpl;
	
	@:overload public function reset() : Void;
	
	
}
