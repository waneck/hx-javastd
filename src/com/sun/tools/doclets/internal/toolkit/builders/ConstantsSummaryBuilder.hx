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
* Builds the Constants Summary Page.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern class ConstantsSummaryBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder
{
	/**
	* The root element of the constant summary XML is {@value}.
	*/
	public static var ROOT(default, null) : String;
	
	/**
	* The maximum number of package directories shown in the constant
	* value index.
	*/
	public static var MAX_CONSTANT_VALUE_INDEX_LENGTH(default, null) : Int;
	
	/**
	* The writer used to write the results.
	*/
	private var writer : com.sun.tools.doclets.internal.toolkit.ConstantsSummaryWriter;
	
	/**
	* The set of ClassDocs that have constant fields.
	*/
	private var classDocsWithConstFields : java.util.Set<com.sun.javadoc.ClassDoc>;
	
	/**
	* The set of printed package headers.
	*/
	private var printedPackageHeaders : java.util.Set<String>;
	
	/**
	* Construct a ConstantsSummaryBuilder.
	*
	* @param configuration the configuration used in this run
	*                      of the doclet.
	* @param writer        the writer for the summary.
	*/
	@:overload public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, writer : com.sun.tools.doclets.internal.toolkit.ConstantsSummaryWriter) : ConstantsSummaryBuilder;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function build() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getName() : String;
	
	/**
	* Build the constant summary.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the content tree to which the documentation will be added
	*/
	@:overload public function buildConstantSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the list of packages.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the content tree to which the content list will be added
	*/
	@:overload public function buildContents(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for each documented package.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the tree to which the summaries will be added
	*/
	@:overload public function buildConstantSummaries(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the header for the given package.
	*
	* @param node the XML element that specifies which components to document
	* @param summariesTree the tree to which the package header will be added
	*/
	@:overload public function buildPackageHeader(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summariesTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the current class.
	*
	* @param node the XML element that specifies which components to document
	* @param summariesTree the tree to which the class constant summary will be added
	*/
	@:overload public function buildClassConstantSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summariesTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary of constant members in the class.
	*
	* @param node the XML element that specifies which components to document
	* @param classConstantTree the tree to which the constant members table
	*                          will be added
	*/
	@:overload public function buildConstantMembers(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classConstantTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
/**
* Print the table of constants.
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) @:native('com$sun$tools$doclets$internal$toolkit$builders$ConstantsSummaryBuilder$ConstantFieldBuilder') @:internal extern class ConstantsSummaryBuilder_ConstantFieldBuilder
{
	/**
	* The map used to get the visible variables.
	*/
	private var visibleMemberMapFields : com.sun.tools.doclets.internal.toolkit.util.VisibleMemberMap;
	
	/**
	* The map used to get the visible variables.
	*/
	private var visibleMemberMapEnumConst : com.sun.tools.doclets.internal.toolkit.util.VisibleMemberMap;
	
	/**
	* The classdoc that we are examining constants for.
	*/
	private var classdoc : com.sun.javadoc.ClassDoc;
	
	/**
	* Construct a ConstantFieldSubWriter.
	* @param classdoc the classdoc that we are examining constants for.
	*/
	@:overload public function new(classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Builds the table of constants for a given class.
	*
	* @param node the XML element that specifies which components to document
	* @param classConstantTree the tree to which the class constants table
	*                          will be added
	*/
	@:overload private function buildMembersSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classConstantTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return the list of visible constant fields for the given classdoc.
	* @param cd the classdoc to examine.
	* @return the list of visible constant fields for the given classdoc.
	*/
	@:overload private function members() : java.util.List<com.sun.javadoc.FieldDoc>;
	
	
}
