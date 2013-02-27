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
extern interface XSSchema extends com.sun.xml.internal.xsom.XSComponent
{
	/**
	* Gets the target namespace of the schema.
	*
	* @return
	*      can be empty, but never be null.
	*/
	@:overload public function getTargetNamespace() : String;
	
	/**
	* Gets all the {@link XSAttributeDecl}s in this schema
	* keyed by their local names.
	*/
	@:overload public function getAttributeDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	@:overload public function iterateAttributeDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	@:overload public function getAttributeDecl(localName : String) : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	/**
	* Gets all the {@link XSElementDecl}s in this schema.
	*/
	@:overload public function getElementDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload public function iterateElementDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload public function getElementDecl(localName : String) : com.sun.xml.internal.xsom.XSElementDecl;
	
	/**
	* Gets all the {@link XSAttGroupDecl}s in this schema.
	*/
	@:overload public function getAttGroupDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function iterateAttGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function getAttGroupDecl(localName : String) : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	/**
	* Gets all the {@link XSModelGroupDecl}s in this schema.
	*/
	@:overload public function getModelGroupDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	@:overload public function iterateModelGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	@:overload public function getModelGroupDecl(localName : String) : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	/**
	* Gets all the {@link XSType}s in this schema (union of
	* {@link #getSimpleTypes()} and {@link #getComplexTypes()}
	*/
	@:overload public function getTypes() : java.util.Map<String, com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function iterateTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function getType(localName : String) : com.sun.xml.internal.xsom.XSType;
	
	/**
	* Gets all the {@link XSSimpleType}s in this schema.
	*/
	@:overload public function getSimpleTypes() : java.util.Map<String, com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload public function iterateSimpleTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload public function getSimpleType(localName : String) : com.sun.xml.internal.xsom.XSSimpleType;
	
	/**
	* Gets all the {@link XSComplexType}s in this schema.
	*/
	@:overload public function getComplexTypes() : java.util.Map<String, com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function iterateComplexTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function getComplexType(localName : String) : com.sun.xml.internal.xsom.XSComplexType;
	
	/**
	* Gets all the {@link XSNotation}s in this schema.
	*/
	@:overload public function getNotations() : java.util.Map<String, com.sun.xml.internal.xsom.XSNotation>;
	
	@:overload public function iterateNotations() : java.util.Iterator<com.sun.xml.internal.xsom.XSNotation>;
	
	@:overload public function getNotation(localName : String) : com.sun.xml.internal.xsom.XSNotation;
	
	/**
	* Gets all the {@link XSIdentityConstraint}s in this schema,
	* keyed by their names.
	*/
	@:overload public function getIdentityConstraints() : java.util.Map<String, com.sun.xml.internal.xsom.XSIdentityConstraint>;
	
	/**
	* Gets the identity constraint of the given name, or null if not found.
	*/
	@:overload public function getIdentityConstraint(localName : String) : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	/**
	* Sine an {@link XSSchema} is not necessarily defined in
	* one schema document (for example one schema can span across
	* many documents through &lt;xs:include>s.),
	* so this method always returns null.
	*
	* @deprecated
	*      Since this method always returns null, if you are calling
	*      this method from {@link XSSchema} and not from {@link XSComponent},
	*      there's something wrong with your code.
	*/
	@:overload public function getSourceDocument() : com.sun.xml.internal.xsom.parser.SchemaDocument;
	
	/**
	* Gets the root schema set that includes this schema.
	*
	* @return never null.
	*/
	@:overload public function getRoot() : com.sun.xml.internal.xsom.XSSchemaSet;
	
	
}
