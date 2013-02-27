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
extern class PackageSummaryBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder
{
	/**
	* The root element of the package summary XML is {@value}.
	*/
	public static var ROOT(default, null) : String;
	
	/**
	* Construct a new PackageSummaryBuilder.
	* @param configuration the current configuration of the doclet.
	* @param pkg the package being documented.
	* @param packageWriter the doclet specific writer that will output the
	*        result.
	*
	* @return an instance of a PackageSummaryBuilder.
	*/
	@:overload public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, pkg : com.sun.javadoc.PackageDoc, packageWriter : com.sun.tools.doclets.internal.toolkit.PackageSummaryWriter) : PackageSummaryBuilder;
	
	/**
	* Build the package summary.
	*/
	@:overload override public function build() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getName() : String;
	
	/**
	* Build the package documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the content tree to which the documentation will be added
	*/
	@:overload public function buildPackageDoc(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the content for the package doc.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the content tree to which the package contents
	*                    will be added
	*/
	@:overload public function buildContent(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the package summary.
	*
	* @param node the XML element that specifies which components to document
	* @param packageContentTree the package content tree to which the summaries will
	*                           be added
	*/
	@:overload public function buildSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the interfaces in this package.
	*
	* @param node the XML element that specifies which components to document
	* @param summaryContentTree the summary tree to which the interface summary
	*                           will be added
	*/
	@:overload public function buildInterfaceSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the classes in this package.
	*
	* @param node the XML element that specifies which components to document
	* @param summaryContentTree the summary tree to which the class summary will
	*                           be added
	*/
	@:overload public function buildClassSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the enums in this package.
	*
	* @param node the XML element that specifies which components to document
	* @param summaryContentTree the summary tree to which the enum summary will
	*                           be added
	*/
	@:overload public function buildEnumSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the exceptions in this package.
	*
	* @param node the XML element that specifies which components to document
	* @param summaryContentTree the summary tree to which the exception summary will
	*                           be added
	*/
	@:overload public function buildExceptionSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the errors in this package.
	*
	* @param node the XML element that specifies which components to document
	* @param summaryContentTree the summary tree to which the error summary will
	*                           be added
	*/
	@:overload public function buildErrorSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summary for the annotation type in this package.
	*
	* @param node the XML element that specifies which components to document
	* @param summaryContentTree the summary tree to which the annotation type
	*                           summary will be added
	*/
	@:overload public function buildAnnotationTypeSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the description of the summary.
	*
	* @param node the XML element that specifies which components to document
	* @param packageContentTree the tree to which the package description will
	*                           be added
	*/
	@:overload public function buildPackageDescription(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the tags of the summary.
	*
	* @param node the XML element that specifies which components to document
	* @param packageContentTree the tree to which the package tags will be added
	*/
	@:overload public function buildPackageTags(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public static function filterOutPrivateClasses(classes : java.NativeArray<com.sun.javadoc.ClassDoc>) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	
}
