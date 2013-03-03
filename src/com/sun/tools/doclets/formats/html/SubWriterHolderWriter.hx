package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This abstract class exists to provide functionality needed in the
* the formatting of member information.  Since AbstractSubWriter and its
* subclasses control this, they would be the logical place to put this.
* However, because each member type has its own subclass, subclassing
* can not be used effectively to change formatting.  The concrete
* class subclass of this class can be subclassed to change formatting.
*
* @see AbstractMemberWriter
* @see ClassWriterImpl
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class SubWriterHolderWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, path : String, filename : String, relpath : String) : Void;
	
	@:overload @:public public function printTypeSummaryHeader() : Void;
	
	@:overload @:public public function printTypeSummaryFooter() : Void;
	
	/**
	* Add the summary header.
	*
	* @param mw the writer for the member being documented
	* @param cd the classdoc to be documented
	* @param memberTree the content tree to which the summary header will be added
	*/
	@:overload @:public public function addSummaryHeader(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, cd : com.sun.javadoc.ClassDoc, memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the summary table.
	*
	* @param mw the writer for the member being documented
	* @param cd the classdoc to be documented
	* @return the content tree for the summary table
	*/
	@:overload @:public public function getSummaryTableTree(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, cd : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	@:overload @:public public function printTableHeadingBackground(str : String) : Void;
	
	/**
	* Add the inherited summary header.
	*
	* @param mw the writer for the member being documented
	* @param cd the classdoc to be documented
	* @param inheritedTree the content tree to which the inherited summary header will be added
	*/
	@:overload @:public public function addInheritedSummaryHeader(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload @:public public function printSummaryFooter(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, cd : com.sun.javadoc.ClassDoc) : Void;
	
	@:overload @:public public function printInheritedSummaryFooter(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, cd : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Add the index comment.
	*
	* @param member the member being documented
	* @param contentTree the content tree to which the comment will be added
	*/
	@:overload @:protected private function addIndexComment(member : com.sun.javadoc.Doc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload @:protected private function printIndexComment(member : com.sun.javadoc.Doc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>) : Void;
	
	/**
	* Add the index comment.
	*
	* @param member the member being documented
	* @param firstSentenceTags the first sentence tags for the member to be documented
	* @param tdSummary the content tree to which the comment will be added
	*/
	@:overload @:protected private function addIndexComment(member : com.sun.javadoc.Doc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the summary type for the member.
	*
	* @param mw the writer for the member being documented
	* @param member the member to be documented
	* @param tdSummaryType the content tree to which the type will be added
	*/
	@:overload @:public public function addSummaryType(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, member : com.sun.javadoc.ProgramElementDoc, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the summary link for the member.
	*
	* @param mw the writer for the member being documented
	* @param member the member to be documented
	* @param contentTree the content tree to which the link will be added
	*/
	@:overload @:public public function addSummaryLinkComment(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, member : com.sun.javadoc.ProgramElementDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload @:public public function printSummaryLinkComment(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, member : com.sun.javadoc.ProgramElementDoc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>) : Void;
	
	/**
	* Add the summary link comment.
	*
	* @param mw the writer for the member being documented
	* @param member the member being documented
	* @param firstSentenceTags the first sentence tags for the member to be documented
	* @param tdSummary the content tree to which the comment will be added
	*/
	@:overload @:public public function addSummaryLinkComment(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, member : com.sun.javadoc.ProgramElementDoc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the inherited member summary.
	*
	* @param mw the writer for the member being documented
	* @param cd the class being documented
	* @param member the member being documented
	* @param isFirst true if its the first link being documented
	* @param linksTree the content tree to which the summary will be added
	*/
	@:overload @:public public function addInheritedMemberSummary(mw : com.sun.tools.doclets.formats.html.AbstractMemberWriter, cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, isFirst : Bool, linksTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload @:public public function printMemberHeader() : Void;
	
	@:overload @:public public function printMemberFooter() : Void;
	
	/**
	* Get the document content header tree
	*
	* @return a content tree the document content header
	*/
	@:overload @:public public function getContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member header tree
	*
	* @return a content tree the member header
	*/
	@:overload @:public public function getMemberTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member tree
	*
	* @param contentTree the tree used to generate the complete member tree
	* @return a content tree for the member
	*/
	@:overload @:public public function getMemberTree(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member summary tree
	*
	* @param contentTree the tree used to generate the member summary tree
	* @return a content tree for the member summary
	*/
	@:overload @:public public function getMemberSummaryTree(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member details tree
	*
	* @param contentTree the tree used to generate the member details tree
	* @return a content tree for the member details
	*/
	@:overload @:public public function getMemberDetailsTree(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member tree
	*
	* @param style the style class to be added to the content tree
	* @param contentTree the tree used to generate the complete member tree
	*/
	@:overload @:public public function getMemberTree(style : com.sun.tools.doclets.formats.html.markup.HtmlStyle, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}
