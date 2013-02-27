package com.sun.tools.doclets.internal.toolkit.builders;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Builds documentation for a method.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern class MethodBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractMemberBuilder
{
	/**
	* Construct a new MethodBuilder.
	*
	* @param configuration the current configuration of the doclet.
	* @param classDoc the class whoses members are being documented.
	* @param writer the doclet specific writer.
	*
	* @return an instance of a MethodBuilder.
	*/
	@:overload public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, classDoc : com.sun.javadoc.ClassDoc, writer : com.sun.tools.doclets.internal.toolkit.MethodWriter) : MethodBuilder;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getName() : String;
	
	/**
	* Returns a list of methods that will be documented for the given class.
	* This information can be used for doclet specific documentation
	* generation.
	*
	* @param classDoc the {@link ClassDoc} we want to check.
	* @return a list of methods that will be documented.
	*/
	@:overload public function members(classDoc : com.sun.javadoc.ClassDoc) : java.util.List<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Returns the visible member map for the methods of this class.
	*
	* @return the visible member map for the methods of this class.
	*/
	@:overload public function getVisibleMemberMap() : com.sun.tools.doclets.internal.toolkit.util.VisibleMemberMap;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function hasMembersToDocument() : Bool;
	
	/**
	* Build the method documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload public function buildMethodDoc(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the signature.
	*
	* @param node the XML element that specifies which components to document
	* @param methodDocTree the content tree to which the documentation will be added
	*/
	@:overload public function buildSignature(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the deprecation information.
	*
	* @param node the XML element that specifies which components to document
	* @param methodDocTree the content tree to which the documentation will be added
	*/
	@:overload public function buildDeprecationInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the comments for the method.  Do nothing if
	* {@link Configuration#nocomment} is set to true.
	*
	* @param node the XML element that specifies which components to document
	* @param methodDocTree the content tree to which the documentation will be added
	*/
	@:overload public function buildMethodComments(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the tag information.
	*
	* @param node the XML element that specifies which components to document
	* @param methodDocTree the content tree to which the documentation will be added
	*/
	@:overload public function buildTagInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return the method writer for this builder.
	*
	* @return the method writer for this builder.
	*/
	@:overload public function getWriter() : com.sun.tools.doclets.internal.toolkit.MethodWriter;
	
	
}
