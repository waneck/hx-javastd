package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Writes property documentation in HTML format.
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Jamie Ho (rewrite)
* @author Bhavesh Patel (Modified)
*/
extern class PropertyWriterImpl extends com.sun.tools.doclets.formats.html.AbstractMemberWriter implements com.sun.tools.doclets.internal.toolkit.PropertyWriter implements com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter
{
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMemberSummaryHeader(classDoc : com.sun.javadoc.ClassDoc, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getFieldDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getFieldDocTreeHeader(field : com.sun.javadoc.MethodDoc, fieldDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSignature(field : com.sun.javadoc.MethodDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addDeprecated(field : com.sun.javadoc.MethodDoc, fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addComments(field : com.sun.javadoc.MethodDoc, fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addTags(field : com.sun.javadoc.MethodDoc, fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getFieldDetails(fieldDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getFieldDoc(fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Close the writer.
	*/
	@:overload public function close() : Void;
	
	@:overload public function getMemberKind() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addSummaryLabel(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getTableSummary() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getCaption() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSummaryTableHeader(member : com.sun.javadoc.ProgramElementDoc) : java.NativeArray<String>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addSummaryAnchor(cd : com.sun.javadoc.ClassDoc, memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addInheritedSummaryAnchor(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addInheritedSummaryLabel(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addSummaryLink(context : Int, cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addInheritedSummaryLink(cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, linksTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addSummaryType(member : com.sun.javadoc.ProgramElementDoc, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function getDeprecatedLink(member : com.sun.javadoc.ProgramElementDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function getNavSummaryLink(cd : com.sun.javadoc.ClassDoc, link : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addNavDetailLink(link : Bool, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
