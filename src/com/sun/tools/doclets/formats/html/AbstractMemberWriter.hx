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
* The base class for member writers.
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Jamie Ho (Re-write)
* @author Bhavesh Patel (Modified)
*/
extern class AbstractMemberWriter
{
	private var printedSummaryHeader : Bool;
	
	private var writer(default, null) : com.sun.tools.doclets.formats.html.SubWriterHolderWriter;
	
	private var classdoc(default, null) : com.sun.javadoc.ClassDoc;
	
	public var nodepr(default, null) : Bool;
	
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter) : Void;
	
	/**
	* Add the summary label for the member.
	*
	* @param memberTree the content tree to which the label will be added
	*/
	@:overload @:abstract public function addSummaryLabel(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the summary for the member summary table.
	*
	* @return a string for the table summary
	*/
	@:overload @:abstract public function getTableSummary() : String;
	
	/**
	* Get the caption for the member summary table.
	*
	* @return a string for the table caption
	*/
	@:overload @:abstract public function getCaption() : String;
	
	/**
	* Get the summary table header for the member.
	*
	* @param member the member to be documented
	* @return the summary table header
	*/
	@:overload @:abstract public function getSummaryTableHeader(member : com.sun.javadoc.ProgramElementDoc) : java.NativeArray<String>;
	
	/**
	* Add inherited summary lable for the member.
	*
	* @param cd the class doc to which to link to
	* @param inheritedTree the content tree to which the inherited summary label will be added
	*/
	@:overload @:abstract public function addInheritedSummaryLabel(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the anchor for the summary section of the member.
	*
	* @param cd the class doc to be documented
	* @param memberTree the content tree to which the summary anchor will be added
	*/
	@:overload @:abstract public function addSummaryAnchor(cd : com.sun.javadoc.ClassDoc, memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the anchor for the inherited summary section of the member.
	*
	* @param cd the class doc to be documented
	* @param inheritedTree the content tree to which the inherited summary anchor will be added
	*/
	@:overload @:abstract public function addInheritedSummaryAnchor(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the summary type for the member.
	*
	* @param member the member to be documented
	* @param tdSummaryType the content tree to which the type will be added
	*/
	@:overload @:abstract private function addSummaryType(member : com.sun.javadoc.ProgramElementDoc, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the summary link for the member.
	*
	* @param cd the class doc to be documented
	* @param member the member to be documented
	* @param tdSummary the content tree to which the link will be added
	*/
	@:overload private function addSummaryLink(cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the summary link for the member.
	*
	* @param context the id of the context where the link will be printed
	* @param cd the class doc to be documented
	* @param member the member to be documented
	* @param tdSummary the content tree to which the summary link will be added
	*/
	@:overload @:abstract private function addSummaryLink(context : Int, cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the inherited summary link for the member.
	*
	* @param cd the class doc to be documented
	* @param member the member to be documented
	* @param linksTree the content tree to which the inherited summary link will be added
	*/
	@:overload @:abstract private function addInheritedSummaryLink(cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, linksTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the deprecated link.
	*
	* @param member the member being linked to
	* @return a content tree representing the link
	*/
	@:overload @:abstract private function getDeprecatedLink(member : com.sun.javadoc.ProgramElementDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the navigation summary link.
	*
	* @param cd the class doc to be documented
	* @param link true if its a link else the label to be printed
	* @return a content tree for the navigation summary link.
	*/
	@:overload @:abstract private function getNavSummaryLink(cd : com.sun.javadoc.ClassDoc, link : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the navigation detail link.
	*
	* @param link true if its a link else the label to be printed
	* @param liNav the content tree to which the navigation detail link will be added
	*/
	@:overload @:abstract private function addNavDetailLink(link : Bool, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/***  ***/
	@:overload private function print(str : String) : Void;
	
	@:overload private function print(ch : java.StdTypes.Char16) : Void;
	
	@:overload private function strong(str : String) : Void;
	
	/**
	* Add the member name to the content tree and modifies the display length.
	*
	* @param name the member name to be added to the content tree.
	* @param htmltree the content tree to which the name will be added.
	*/
	@:overload private function addName(name : String, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return a string describing the access modifier flags.
	* Don't include native or synchronized.
	*
	* The modifier names are returned in canonical order, as
	* specified by <em>The Java Language Specification</em>.
	*/
	@:overload private function modifierString(member : com.sun.javadoc.MemberDoc) : String;
	
	@:overload private function typeString(member : com.sun.javadoc.MemberDoc) : String;
	
	/**
	* Add the modifier for the member.
	*
	* @param member the member for which teh modifier will be added.
	* @param htmltree the content tree to which the modifier information will be added.
	*/
	@:overload private function addModifiers(member : com.sun.javadoc.MemberDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload private function makeSpace(len : Int) : String;
	
	/**
	* Add the modifier and type for the member in the member summary.
	*
	* @param member the member to add the type for
	* @param type the type to add
	* @param tdSummaryType the content tree to which the modified and type will be added
	*/
	@:overload private function addModifierAndType(member : com.sun.javadoc.ProgramElementDoc, type : com.sun.javadoc.Type, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the deprecated information for the given member.
	*
	* @param member the member being documented.
	* @param contentTree the content tree to which the deprecated information will be added.
	*/
	@:overload private function addDeprecatedInfo(member : com.sun.javadoc.ProgramElementDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the comment for the given member.
	*
	* @param member the member being documented.
	* @param contentTree the content tree to which the comment will be added.
	*/
	@:overload private function addComment(member : com.sun.javadoc.ProgramElementDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload private function name(member : com.sun.javadoc.ProgramElementDoc) : String;
	
	/**
	* Get the header for the section.
	*
	* @param member the member being documented.
	* @return a header content for the section.
	*/
	@:overload private function getHead(member : com.sun.javadoc.MemberDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Return true if the given <code>ProgramElement</code> is inherited
	* by the class that is being documented.
	*
	* @param ped The <code>ProgramElement</code> being checked.
	* return true if the <code>ProgramElement</code> is being inherited and
	* false otherwise.
	*/
	@:overload private function isInherited(ped : com.sun.javadoc.ProgramElementDoc) : Bool;
	
	/**
	* Add deprecated information to the documentation tree
	*
	* @param deprmembers list of deprecated members
	* @param headingKey the caption for the deprecated members table
	* @param tableSummary the summary for the deprecated members table
	* @param tableHeader table headers for the deprecated members table
	* @param contentTree the content tree to which the deprecated members table will be added
	*/
	@:overload private function addDeprecatedAPI(deprmembers : java.util.List<com.sun.javadoc.Doc>, headingKey : String, tableSummary : String, tableHeader : java.NativeArray<String>, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add use information to the documentation tree.
	*
	* @param mems list of program elements for which the use information will be added
	* @param heading the section heading
	* @param tableSummary the summary for the use table
	* @param contentTree the content tree to which the use information will be added
	*/
	@:overload private function addUseInfo(mems : java.util.List<com.sun.javadoc.ProgramElementDoc>, heading : String, tableSummary : String, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the navigation detail link.
	*
	* @param members the members to be linked
	* @param liNav the content tree to which the navigation detail link will be added
	*/
	@:overload private function addNavDetailLink(members : java.util.List<Dynamic>, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the navigation summary link.
	*
	* @param members members to be linked
	* @param visibleMemberMap the visible inherited members map
	* @param liNav the content tree to which the navigation summary link will be added
	*/
	@:overload private function addNavSummaryLink(members : java.util.List<Dynamic>, visibleMemberMap : com.sun.tools.doclets.internal.toolkit.util.VisibleMemberMap, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload private function serialWarning(pos : com.sun.javadoc.SourcePosition, key : String, a1 : String, a2 : String) : Void;
	
	@:overload public function eligibleMembers(members : java.NativeArray<com.sun.javadoc.ProgramElementDoc>) : java.NativeArray<com.sun.javadoc.ProgramElementDoc>;
	
	@:overload public function configuration() : com.sun.tools.doclets.formats.html.ConfigurationImpl;
	
	/**
	* Add the member summary for the given class.
	*
	* @param classDoc the class that is being documented
	* @param member the member being documented
	* @param firstSentenceTags the first sentence tags to be added to the summary
	* @param tableTree the content tree to which the documentation will be added
	* @param counter the counter for determing style for the table row
	*/
	@:overload public function addMemberSummary(classDoc : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>, tableTree : com.sun.tools.doclets.internal.toolkit.Content, counter : Int) : Void;
	
	/**
	* Set the style for the summary column.
	*
	* @param tdTree the column for which the style will be set
	*/
	@:overload public function setSummaryColumnStyle(tdTree : com.sun.tools.doclets.formats.html.markup.HtmlTree) : Void;
	
	/**
	* Add inherited member summary for the given class and member.
	*
	* @param classDoc the class the inherited member belongs to
	* @param nestedClass the inherited member that is summarized
	* @param isFirst true if this is the first member in the list
	* @param isLast true if this is the last member in the list
	* @param linksTree the content tree to which the summary will be added
	*/
	@:overload public function addInheritedMemberSummary(classDoc : com.sun.javadoc.ClassDoc, nestedClass : com.sun.javadoc.ProgramElementDoc, isFirst : Bool, isLast : Bool, linksTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the inherited summary header for the given class.
	*
	* @param classDoc the class the inherited member belongs to
	* @return a content tree for the inherited summary header
	*/
	@:overload public function getInheritedSummaryHeader(classDoc : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the inherited summary links tree.
	*
	* @return a content tree for the inherited summary links
	*/
	@:overload public function getInheritedSummaryLinksTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the summary table tree for the given class.
	*
	* @param classDoc the class for which the summary table is generated
	* @return a content tree for the summary table
	*/
	@:overload public function getSummaryTableTree(classDoc : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member tree to be documented.
	*
	* @param memberTree the content tree of member to be documented
	* @return a content tree that will be added to the class documentation
	*/
	@:overload public function getMemberTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member tree to be documented.
	*
	* @param memberTree the content tree of member to be documented
	* @param isLastContent true if the content to be added is the last content
	* @return a content tree that will be added to the class documentation
	*/
	@:overload public function getMemberTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}
