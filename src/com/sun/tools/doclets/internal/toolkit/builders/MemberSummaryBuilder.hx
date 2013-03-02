package com.sun.tools.doclets.internal.toolkit.builders;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class MemberSummaryBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractMemberBuilder
{
	/**
	* The XML root for this builder.
	*/
	public static var NAME(default, null) : String;
	
	/**
	* Construct a new MemberSummaryBuilder.
	*
	* @param classWriter   the writer for the class whose members are being
	*                      summarized.
	* @param configuration the current configuration of the doclet.
	*/
	@:overload public static function getInstance(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : com.sun.tools.doclets.internal.toolkit.builders.MemberSummaryBuilder;
	
	/**
	* Construct a new MemberSummaryBuilder.
	*
	* @param annotationTypeWriter the writer for the class whose members are
	*                             being summarized.
	* @param configuration the current configuration of the doclet.
	*/
	@:overload public static function getInstance(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : com.sun.tools.doclets.internal.toolkit.builders.MemberSummaryBuilder;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getName() : String;
	
	/**
	* Return the specified visible member map.
	*
	* @param type the type of visible member map to return.
	* @return the specified visible member map.
	* @throws ArrayIndexOutOfBoundsException when the type is invalid.
	* @see VisibleMemberMap
	*/
	@:overload public function getVisibleMemberMap(type : Int) : com.sun.tools.doclets.internal.toolkit.util.VisibleMemberMap;
	
	/**
	* Return the specified member summary writer.
	*
	* @param type the type of member summary writer to return.
	* @return the specified member summary writer.
	* @throws ArrayIndexOutOfBoundsException when the type is invalid.
	* @see VisibleMemberMap
	*/
	@:overload public function getMemberSummaryWriter(type : Int) : com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter;
	
	/**
	* Returns a list of methods that will be documented for the given class.
	* This information can be used for doclet specific documentation
	* generation.
	*
	* @param classDoc the {@link ClassDoc} we want to check.
	* @param type the type of members to return.
	* @return a list of methods that will be documented.
	* @see VisibleMemberMap
	*/
	@:overload public function members(type : Int) : java.util.List<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Return true it there are any members to summarize.
	*
	* @return true if there are any members to summarize.
	*/
	@:overload override public function hasMembersToDocument() : Bool;
	
	/**
	* Build the summary for the enum constants.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildEnumConstantsSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the optional members.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildAnnotationTypeOptionalMemberSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the optional members.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildAnnotationTypeRequiredMemberSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the fields.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildFieldsSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the fields.
	*/
	@:overload public function buildPropertiesSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the nested classes.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildNestedClassesSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the method summary.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildMethodsSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the constructor summary.
	*
	* @param node the XML element that specifies which components to document
	* @param memberSummaryTree the content tree to which the documentation will be added
	*/
	@:overload public function buildConstructorsSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
