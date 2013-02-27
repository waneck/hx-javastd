package com.sun.tools.doclets.formats.html;
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
* Writes enum constant documentation in HTML format.
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
*/
extern class EnumConstantWriterImpl extends com.sun.tools.doclets.formats.html.AbstractMemberWriter implements com.sun.tools.doclets.internal.toolkit.EnumConstantWriter implements com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter
{
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMemberSummaryHeader(classDoc : com.sun.javadoc.ClassDoc, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getEnumConstantsDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getEnumConstantsTreeHeader(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSignature(enumConstant : com.sun.javadoc.FieldDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addDeprecated(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addComments(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addTags(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getEnumConstantsDetails(enumConstantsDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getEnumConstants(enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function close() : Void;
	
	@:overload public function getMemberKind() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function addSummaryLabel(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getTableSummary() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getCaption() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getSummaryTableHeader(member : com.sun.javadoc.ProgramElementDoc) : java.NativeArray<String>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function addSummaryAnchor(cd : com.sun.javadoc.ClassDoc, memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function addInheritedSummaryAnchor(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function addInheritedSummaryLabel(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function addSummaryLink(context : Int, cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function setSummaryColumnStyle(tdTree : com.sun.tools.doclets.formats.html.markup.HtmlTree) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function addInheritedSummaryLink(cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, linksTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function addSummaryType(member : com.sun.javadoc.ProgramElementDoc, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function getDeprecatedLink(member : com.sun.javadoc.ProgramElementDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function getNavSummaryLink(cd : com.sun.javadoc.ClassDoc, link : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function addNavDetailLink(link : Bool, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
