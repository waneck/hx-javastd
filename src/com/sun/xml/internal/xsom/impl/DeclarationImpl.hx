package com.sun.xml.internal.xsom.impl;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DeclarationImpl extends com.sun.xml.internal.xsom.impl.ComponentImpl implements com.sun.xml.internal.xsom.XSDeclaration
{
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getTargetNamespace() : String;
	
	/** @deprecated */
	@:overload @:public public function isAnonymous() : Bool;
	
	@:overload @:public @:final public function isGlobal() : Bool;
	
	@:overload @:public @:final public function isLocal() : Bool;
	
	/**
	* Gets a reference to the {@link XSSchema} object to which this component
	* belongs.
	* <p>
	* In case of <code>XSEmpty</code> component, this method
	* returns null since there is no owner component.
	*/
	@:overload @:public @:public override public function getOwnerSchema() : com.sun.xml.internal.xsom.XSSchema;
	
	/**
	* Evaluates a schema component designator against this schema component
	* and returns the first resulting schema component.
	*
	* @throws IllegalArgumentException
	*      if SCD is syntactically incorrect.
	*
	* @param scd
	*      Schema component designator. See {@link SCD} for more details.
	* @param nsContext
	*      The namespace context in which SCD is evaluated. Cannot be null.
	* @return
	*      null if the SCD didn't match anything. If the SCD matched more than one node,
	*      the first one will be returned.
	*/
	@:overload @:public @:public override public function selectSingle(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* Accepts a functor.
	*/
	@:overload @:public @:public override public function apply<T>(_function : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	/** Gets the annotation associated to this component, if any. */
	@:overload @:public @:public override public function getAnnotation() : com.sun.xml.internal.xsom.XSAnnotation;
	
	/**
	* Gets the {@link SchemaDocument} that indicates which document this component
	* was defined in.
	*
	* @return
	*      null for components that are built-in to XML Schema, such
	*      as anyType, or "empty" {@link XSContentType}. This method also
	*      returns null for {@link XSSchema}.
	*      For all other user-defined
	*      components this method returns non-null, even if they are local.
	*/
	@:overload @:public @:public override public function getSourceDocument() : com.sun.xml.internal.xsom.parser.SchemaDocument;
	
	/**
	* Accepts a visitor.
	*/
	@:overload @:public @:public override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	/**
	* Gets the foreign attributes on this schema component.
	*
	* <p>
	* In general, a schema component may match multiple elements
	* in a schema document, and those elements can individually
	* carry foreign attributes.
	*
	* <p>
	* This method returns a list of {@link ForeignAttributes}, where
	* each {@link ForeignAttributes} object represent foreign attributes
	* on one element.
	*
	* @return
	*      can be an empty list but never be null.
	*/
	@:overload @:public @:public override public function getForeignAttributes() : java.util.List<com.sun.xml.internal.xsom.ForeignAttributes>;
	
	/**
	* Gets the foreign attribute of the given name, or null if not found.
	*
	* <p>
	* If multiple occurences of the same attribute is found,
	* this method returns the first one.
	*
	* @see #getForeignAttributes()
	*/
	@:overload @:public @:public override public function getForeignAttribute(nsUri : String, localName : String) : String;
	
	/**
	* Gets the locator that indicates the source location where
	* this component is created from, or null if no information is
	* available.
	*/
	@:overload @:public @:public override public function getLocator() : org.xml.sax.Locator;
	
	/**
	* Works like {@link #getAnnotation()}, but allow a new empty {@link XSAnnotation} to be created
	* if not exist.
	*
	* @param createIfNotExist
	*      true to create a new {@link XSAnnotation} if it doesn't exist already.
	*      false to make this method behavel like {@link #getAnnotation()}.
	*
	* @return
	*      null if <tt>createIfNotExist==false</tt> and annotation didn't exist.
	*      Otherwise non-null.
	*/
	@:overload @:public @:public override public function getAnnotation(createIfNotExist : Bool) : com.sun.xml.internal.xsom.XSAnnotation;
	
	/**
	* Evaluates a schema component designator against this schema component
	* and returns the resulting schema components.
	*
	* @throws IllegalArgumentException
	*      if SCD is syntactically incorrect.
	*
	* @param scd
	*      Schema component designator. See {@link SCD} for more details.
	* @param nsContext
	*      The namespace context in which SCD is evaluated. Cannot be null.
	* @return
	*      Can be empty but never null.
	*/
	@:overload @:public @:public override public function select(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Gets the root schema set that includes this component.
	*
	* <p>
	* In case of <code>XSEmpty</code> component, this method
	* returns null since there is no owner component.
	*/
	@:overload @:public @:public override public function getRoot() : com.sun.xml.internal.xsom.XSSchemaSet;
	
	
}
