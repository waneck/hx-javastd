package com.sun.org.apache.xerces.internal.impl.xs.traversers;
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
@:internal extern class XSDAttributeTraverser extends com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDAbstractTraverser
{
	/**
	* The attribute declaration schema component traverser.
	*
	* <attribute
	*   default = string
	*   fixed = string
	*   form = (qualified | unqualified)
	*   id = ID
	*   name = NCName
	*   ref = QName
	*   type = QName
	*   use = (optional | prohibited | required) : optional
	*   {any attributes with non-schema namespace . . .}>
	*   Content: (annotation?, (simpleType?))
	* </attribute>
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	* @version $Id: XSDAttributeTraverser.java,v 1.7 2010-11-01 04:40:02 joehw Exp $
	*/
	@:overload public function new(handler : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDHandler, gAttrCheck : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker) : Void;
	
	@:overload private function traverseLocal(attrDecl : org.w3c.dom.Element, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, enclosingCT : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeUseImpl;
	
	@:overload private function traverseGlobal(attrDecl : org.w3c.dom.Element, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar) : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl;
	
	
}
