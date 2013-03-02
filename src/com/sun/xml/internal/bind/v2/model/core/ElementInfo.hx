package com.sun.xml.internal.bind.v2.model.core;
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
extern interface ElementInfo<T, C> extends com.sun.xml.internal.bind.v2.model.core.Element<T, C>
{
	/**
	* Gets the object that represents the value property.
	*
	* @return
	*      non-null.
	*/
	@:overload public function getProperty() : com.sun.xml.internal.bind.v2.model.core.ElementPropertyInfo<T, C>;
	
	/**
	* Short for <code>getProperty().ref().get(0)</code>.
	*
	* The type of the value this element holds.
	*
	* Normally, this is the T of {@code JAXBElement<T>}.
	* But if the property is adapted, this is the on-the-wire type.
	*
	* Or if the element has a list of values, then this field
	* represents the type of the individual item.
	*
	* @see #getContentInMemoryType()
	*/
	@:overload public function getContentType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* T of {@code JAXBElement<T>}.
	*
	* <p>
	* This is tied to the in-memory representation.
	*
	* @see #getContentType()
	*/
	@:overload public function getContentInMemoryType() : T;
	
	/**
	* Returns the representation for {@link JAXBElement}&lt;<i>contentInMemoryType</i>&gt;.
	*
	* <p>
	* This returns the signature in Java and thus isn't affected by the adapter.
	*/
	@:overload public function getType() : T;
	
	/**
	* @inheritDoc
	*
	* {@link ElementInfo} can only substitute {@link ElementInfo}.
	*/
	@:overload public function getSubstitutionHead() : com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>;
	
	/**
	* All the {@link ElementInfo}s whose {@link #getSubstitutionHead()} points
	* to this object.
	*
	* @return
	*      can be empty but never null.
	*/
	@:overload public function getSubstitutionMembers() : java.util.Collection<com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>>;
	
	
}
