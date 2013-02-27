package com.sun.org.apache.xerces.internal.impl.xs.traversers;
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
@:internal extern class XSDElementTraverser extends com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDAbstractTraverser
{
	/**
	* The element declaration schema component traverser.
	* <element
	*   abstract = boolean : false
	*   block = (#all | List of (extension | restriction | substitution))
	*   default = string
	*   final = (#all | List of (extension | restriction))
	*   fixed = string
	*   form = (qualified | unqualified)
	*   id = ID
	*   maxOccurs = (nonNegativeInteger | unbounded)  : 1
	*   minOccurs = nonNegativeInteger : 1
	*   name = NCName
	*   nillable = boolean : false
	*   ref = QName
	*   substitutionGroup = QName
	*   type = QName
	*   {any attributes with non-schema namespace . . .}>
	*   Content: (annotation?, ((simpleType | complexType)?, (unique | key | keyref)*))
	* </element>
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	*
	* @version $Id: XSDElementTraverser.java,v 1.9 2010-11-01 04:40:02 joehw Exp $
	*/
	private var fTempElementDecl(default, null) : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
	
	/**
	* Traverse a locally declared element (or an element reference).
	*
	* This is the real traversal method. It's called after we've done with
	* all the global declarations.
	*
	* @param  index
	*/
	@:overload private function traverseLocal(particle : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl, elmDecl : org.w3c.dom.Element, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, allContextFlags : Int, parent : com.sun.org.apache.xerces.internal.xs.XSObject, localNSDecls : java.NativeArray<String>) : Void;
	
	
}
