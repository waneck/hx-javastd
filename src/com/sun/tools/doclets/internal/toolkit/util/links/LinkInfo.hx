package com.sun.tools.doclets.internal.toolkit.util.links;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class LinkInfo
{
	/**
	* The ClassDoc we want to link to.  Null if we are not linking
	* to a ClassDoc.
	*/
	@:public public var classDoc : com.sun.javadoc.ClassDoc;
	
	/**
	* The executable member doc we want to link to.  Null if we are not linking
	* to an executable member.
	*/
	@:public public var executableMemberDoc : com.sun.javadoc.ExecutableMemberDoc;
	
	/**
	* The Type we want to link to.  Null if we are not linking to a type.
	*/
	@:public public var type : com.sun.javadoc.Type;
	
	/**
	* True if this is a link to a VarArg.
	*/
	@:public public var isVarArg : Bool;
	
	/**
	* Set this to true to indicate that you are linking to a type parameter.
	*/
	@:public public var isTypeBound : Bool;
	
	/**
	* The label for the link.
	*/
	@:public public var label : String;
	
	/**
	* True if the link should be strong.
	*/
	@:public public var isStrong : Bool;
	
	/**
	* True if we should include the type in the link label.  False otherwise.
	*/
	@:public public var includeTypeInClassLinkLabel : Bool;
	
	/**
	* True if we should include the type as seperate link.  False otherwise.
	*/
	@:public public var includeTypeAsSepLink : Bool;
	
	/**
	* True if we should exclude the type bounds for the type parameter.
	*/
	@:public public var excludeTypeBounds : Bool;
	
	/**
	* True if we should print the type parameters, but not link them.
	*/
	@:public public var excludeTypeParameterLinks : Bool;
	
	/**
	* True if we should print the type bounds, but not link them.
	*/
	@:public public var excludeTypeBoundsLinks : Bool;
	
	/**
	* By default, the link can be to the page it's already on.  However,
	* there are cases where we don't want this (e.g. heading of class page).
	*/
	@:public public var linkToSelf : Bool;
	
	/**
	* The display length for the link.
	*/
	@:public public var displayLength : Int;
	
	/**
	* Return the id indicating where the link appears in the documentation.
	* This is used for special processing of different types of links.
	*
	* @return the id indicating where the link appears in the documentation.
	*/
	@:overload @:public @:abstract public function getContext() : Int;
	
	/**
	* Set the context.
	*
	* @param c the context id to set.
	*/
	@:overload @:public @:abstract public function setContext(c : Int) : Void;
	
	/**
	* Return true if this link is linkable and false if we can't link to the
	* desired place.
	*
	* @return true if this link is linkable and false if we can't link to the
	* desired place.
	*/
	@:overload @:public @:abstract public function isLinkable() : Bool;
	
	/**
	* Return the label for this class link.
	*
	* @param configuration the current configuration of the doclet.
	* @return the label for this class link.
	*/
	@:overload @:public public function getClassLinkLabel(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : String;
	
	
}
