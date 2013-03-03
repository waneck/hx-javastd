package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Write the Constants Summary Page in HTML format.
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.4
*/
@:require(java4) extern class ConstantsSummaryWriterImpl extends com.sun.tools.doclets.formats.html.HtmlDocletWriter implements com.sun.tools.doclets.internal.toolkit.ConstantsSummaryWriter
{
	/**
	* Construct a ConstantsSummaryWriter.
	* @param configuration the configuration used in this run
	*        of the standard doclet.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getContentsHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addLinkToPackageContent(pkg : com.sun.javadoc.PackageDoc, parsedPackageName : String, printedPackageHeaders : java.util.Set<String>, contentListTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getContentsList(contentListTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getConstantSummaries() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addPackageName(pkg : com.sun.javadoc.PackageDoc, parsedPackageName : String, summariesTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getClassConstantHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the table caption and header for the constant summary table
	*
	* @param cd classdoc to be documented
	* @return constant members header content
	*/
	@:overload @:public public function getConstantMembersHeader(cd : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the class name in the table caption and the table header.
	*
	* @param classStr the class name to print.
	* @return the table caption and header
	*/
	@:overload @:protected private function getClassName(classStr : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addConstantMembers(cd : com.sun.javadoc.ClassDoc, fields : java.util.List<com.sun.javadoc.FieldDoc>, classConstantTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
