package com.sun.tools.doclets.internal.toolkit.util.links;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* A factory that constructs links from given link information.
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern class LinkFactory
{
	/**
	* Return an empty instance of the link output object.
	*
	* @return an empty instance of the link output object.
	*/
	@:overload @:protected @:abstract private function getOutputInstance() : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* Constructs a link from the given link information.
	*
	* @param linkInfo the information about the link.
	* @return the output of the link.
	*/
	@:overload @:public public function getLinkOutput(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* Return the link to the given class.
	*
	* @param linkInfo the information about the link to construct.
	*
	* @return the link for the given class.
	*/
	@:overload @:protected @:abstract private function getClassLink(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* Return the link to the given type parameter.
	*
	* @param linkInfo     the information about the link to construct.
	* @param typeParam the type parameter to link to.
	*/
	@:overload @:protected @:abstract private function getTypeParameterLink(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo, typeParam : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* Return the links to the type parameters.
	*
	* @param linkInfo     the information about the link to construct.
	* @return the links to the type parameters.
	*/
	@:overload @:public public function getTypeParameterLinks(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* Return the links to the type parameters.
	*
	* @param linkInfo     the information about the link to construct.
	* @param isClassLabel true if this is a class label.  False if it is
	*                     the type parameters portion of the link.
	* @return the links to the type parameters.
	*/
	@:overload @:public public function getTypeParameterLinks(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo, isClassLabel : Bool) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* Return &amp;lt;, which is used in type parameters.  Override this
	* if your doclet uses something different.
	*
	* @return return &amp;lt;, which is used in type parameters.
	*/
	@:overload @:protected private function getLessThanString() : String;
	
	/**
	* Return &amp;gt;, which is used in type parameters.  Override this
	* if your doclet uses something different.
	*
	* @return return &amp;gt;, which is used in type parameters.
	*/
	@:overload @:protected private function getGreaterThanString() : String;
	
	
}
