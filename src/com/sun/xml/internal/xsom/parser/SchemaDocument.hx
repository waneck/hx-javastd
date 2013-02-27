package com.sun.xml.internal.xsom.parser;
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
extern interface SchemaDocument
{
	/**
	* Gets the system ID of the schema document.
	*
	* @return
	*      null if {@link XSOMParser} was not given the system Id.
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* The namespace that this schema defines.
	*
	* <p>
	* More precisely, this method simply returns the <tt>targetNamespace</tt> attribute
	* of the schema document. When schemas are referenced in certain ways
	* (AKA chameleon schema), schema components in this schema document
	* may end up defining components in other namespaces.
	*
	* @return
	*      can be "" but never null.
	*/
	@:overload public function getTargetNamespace() : String;
	
	/**
	* Gets {@link XSSchema} component that contains all the schema
	* components defined in this namespace.
	*
	* <p>
	* The returned {@link XSSchema} contains not just components
	* defined in this {@link SchemaDocument} but all the other components
	* defined in all the schemas that collectively define this namespace.
	*
	* @return
	*      never null.
	*/
	@:overload public function getSchema() : com.sun.xml.internal.xsom.XSSchema;
	
	/**
	* Set of {@link SchemaDocument}s that are included/imported from this document.
	*
	* @return
	*      can be empty but never null. read-only.
	*/
	@:overload public function getReferencedDocuments() : java.util.Set<SchemaDocument>;
	
	/**
	* Gets the {@link SchemaDocument}s that are included from this document.
	*
	* @return
	*      can be empty but never null. read-only.
	*      this set is always a subset of {@link #getReferencedDocuments()}.
	*/
	@:overload public function getIncludedDocuments() : java.util.Set<SchemaDocument>;
	
	/**
	* Gets the {@link SchemaDocument}s that are imported from this document.
	*
	* @param targetNamespace
	*      The namespace URI of the import that you want to
	*      get {@link SchemaDocument}s for.
	* @return
	*      can be empty but never null. read-only.
	*      this set is always a subset of {@link #getReferencedDocuments()}.
	*/
	@:overload public function getImportedDocuments(targetNamespace : String) : java.util.Set<SchemaDocument>;
	
	/**
	* Returns true if this document includes the given document.
	*
	* <p>
	* Note that this method returns false if this document
	* imports the given document.
	*/
	@:overload public function includes(doc : SchemaDocument) : Bool;
	
	/**
	* Returns true if this document imports the given document.
	*
	* <p>
	* Note that this method returns false if this document
	* includes the given document.
	*/
	@:overload public function imports(doc : SchemaDocument) : Bool;
	
	/**
	* Set of {@link SchemaDocument}s that include/import this document.
	*
	* <p>
	* This works as the opposite of {@link #getReferencedDocuments()}.
	*
	* @return
	*      can be empty but never null. read-only.
	*/
	@:overload public function getReferers() : java.util.Set<SchemaDocument>;
	
	
}
