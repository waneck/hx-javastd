package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
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
extern interface BIDeclaration
{
	/**
	* Sets the parent BindInfo object of this declaration.
	* A declaration object can use this pointer to access
	* context information, such as other customizations.
	*
	* <p>
	* This method can be only called from {@link BindInfo},
	* and only once. This is a good opportunity to do some
	* follow-up initialization after JAXB unmarshalling
	* populated {@link BIDeclaration}.
	*/
	@:overload public function setParent(parent : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	/**
	* Gets the name of this binding declaration,
	* which is the same as the tag name of the binding element.
	*/
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	/**
	* Gets the source location where this declaration was written.
	* For declarations that are generated by XJC itself,
	* this method returns null.
	*/
	@:overload public function getLocation() : org.xml.sax.Locator;
	
	/**
	* Marks this declaration to be acknowledged -- either actually
	* used or the existence is admitted (for example when
	* a property customization is given at the point of definition.)
	*
	* <p>
	* Declarations that are not acknowledged will be considered
	* as an error.
	*/
	@:overload public function markAsAcknowledged() : Void;
	
	/**
	* Checks if this declaration was acknowledged.
	*/
	@:overload public function isAcknowledged() : Bool;
	
	/**
	* Called when the parent {@link BindInfo} got its owner set.
	*
	* This is when declarations are connected to {@link BGMBuilder} and
	* its sibling components.
	*/
	@:overload public function onSetOwner() : Void;
	
	/**
	* Gets child {@link BIDeclaration}s if any.
	*
	* @return
	*      can be empty but always non-null. read-only.
	*/
	@:overload public function getChildren() : java.util.Collection<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>;
	
	
}
