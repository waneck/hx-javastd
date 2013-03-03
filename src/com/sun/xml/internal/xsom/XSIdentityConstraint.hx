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
extern interface XSIdentityConstraint extends com.sun.xml.internal.xsom.XSComponent
{
	/**
	* Gets the {@link XSElementDecl} that owns this identity constraint.
	*
	* @return
	*      never null.
	*/
	@:overload public function getParent() : com.sun.xml.internal.xsom.XSElementDecl;
	
	/**
	* Name of the identity constraint.
	*
	* A name uniquely identifies this {@link XSIdentityConstraint} within
	* the namespace.
	*
	* @return
	*      never null.
	*/
	@:overload public function getName() : String;
	
	/**
	* Target namespace of the identity constraint.
	*
	* Just short for <code>getParent().getTargetNamespace()</code>.
	*/
	@:overload public function getTargetNamespace() : String;
	
	/**
	* Returns the type of the identity constraint.
	*
	* @return
	*      either {@link #KEY},{@link #KEYREF}, or {@link #UNIQUE}.
	*/
	@:overload public function getCategory() : java.StdTypes.Int16;
	
	@:final public var KEY(default, null) : java.StdTypes.Int16;
	
	@:final public var KEYREF(default, null) : java.StdTypes.Int16;
	
	@:final public var UNIQUE(default, null) : java.StdTypes.Int16;
	
	/**
	* Returns the selector XPath expression as string.
	*
	* @return
	*      never null.
	*/
	@:overload public function getSelector() : com.sun.xml.internal.xsom.XSXPath;
	
	/**
	* Returns the list of field XPaths.
	*
	* @return
	*      a non-empty read-only list of {@link String}s,
	*      each representing the XPath.
	*/
	@:overload public function getFields() : java.util.List<com.sun.xml.internal.xsom.XSXPath>;
	
	/**
	* If this is {@link #KEYREF}, returns the key {@link XSIdentityConstraint}
	* being referenced.
	*
	* @return
	*      always non-null (when {@link #getCategory()}=={@link #KEYREF}).
	* @throws IllegalStateException
	*      if {@link #getCategory()}!={@link #KEYREF}
	*/
	@:overload public function getReferencedKey() : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	
}
