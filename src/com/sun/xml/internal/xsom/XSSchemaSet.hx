package com.sun.xml.internal.xsom;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern interface XSSchemaSet
{
	/**
	* Set of {@link XSSchema} objects.
	*
	* @author
	*  Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload public function getSchema(targetNamespace : String) : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload public function getSchema(idx : Int) : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload public function getSchemaSize() : Int;
	
	@:overload public function iterateSchema() : java.util.Iterator<com.sun.xml.internal.xsom.XSSchema>;
	
	/**
	* Gets all {@link XSSchema}s in a single collection.
	*/
	@:overload public function getSchemas() : java.util.Collection<com.sun.xml.internal.xsom.XSSchema>;
	
	@:overload public function getType(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function getSimpleType(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getAttributeDecl(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	@:overload public function getElementDecl(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload public function getModelGroupDecl(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	@:overload public function getAttGroupDecl(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	@:overload public function getComplexType(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function getIdentityConstraint(namespaceURI : String, localName : String) : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	/** Iterates all element declarations in all the schemas. */
	@:overload public function iterateElementDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSElementDecl>;
	
	/** Iterates all type definitions in all the schemas. */
	@:overload public function iterateTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSType>;
	
	/** Iterates all atribute declarations in all the schemas. */
	@:overload public function iterateAttributeDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	/** Iterates all attribute group declarations in all the schemas. */
	@:overload public function iterateAttGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	/** Iterates all model group declarations in all the schemas. */
	@:overload public function iterateModelGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	/** Iterates all simple type definitions in all the schemas. */
	@:overload public function iterateSimpleTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSSimpleType>;
	
	/** Iterates all complex type definitions in all the schemas. */
	@:overload public function iterateComplexTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSComplexType>;
	
	/** Iterates all notation declarations in all the schemas. */
	@:overload public function iterateNotations() : java.util.Iterator<com.sun.xml.internal.xsom.XSNotation>;
	
	/**
	* Iterates all identity constraints in all the schemas.
	*/
	@:overload public function iterateIdentityConstraints() : java.util.Iterator<com.sun.xml.internal.xsom.XSIdentityConstraint>;
	
	@:overload public function getAnyType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function getAnySimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	/**
	* Evaluates a schema component designator against this schema component
	* and returns the resulting schema components.
	*
	* @throws IllegalArgumentException
	*      if SCD is syntactically incorrect.
	* @param scd
	*      Schema component designator. See {@link SCD} for more details.
	* @param nsContext
	*      The namespace context in which SCD is evaluated. Cannot be null.
	* @return
	*      Can be empty but never null.
	*/
	@:overload public function select(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Evaluates a schema component designator against this schema component
	* and returns the first resulting schema component.
	*
	* @throws IllegalArgumentException
	*      if SCD is syntactically incorrect.
	* @param scd
	*      Schema component designator. See {@link SCD} for more details.
	* @param nsContext
	*      The namespace context in which SCD is evaluated. Cannot be null.
	* @return
	*      null if the SCD didn't match anything. If the SCD matched more than one node,
	*      the first one will be returned.
	*/
	@:overload public function selectSingle(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : com.sun.xml.internal.xsom.XSComponent;
	
	
}
