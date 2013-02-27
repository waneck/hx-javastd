package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Class for the Html Format Code Generation specific to JavaDoc.
* This Class contains methods related to the Html Code Generation which
* are used extensively while generating the entire documentation.
*
* @since 1.2
* @author Atul M Dambalkar
* @author Robert Field
* @author Bhavesh Patel (Modified)
*/
@:require(java2) extern class HtmlDocletWriter extends com.sun.tools.doclets.formats.html.markup.HtmlDocWriter
{
	/**
	* Relative path from the file getting generated to the destination
	* directory. For example, if the file getting generated is
	* "java/lang/Object.html", then the relative path string is "../../".
	* This string can be empty if the file getting generated is in
	* the destination directory.
	*/
	public var relativePath : String;
	
	/**
	* Same as relativepath, but normalized to never be empty or
	* end with a slash.
	*/
	public var relativepathNoSlash : String;
	
	/**
	* Platform-dependent directory path from the current or the
	* destination directory to the file getting generated.
	* Used when creating the file.
	* For example, if the file getting generated is
	* "java/lang/Object.html", then the path string is "java/lang".
	*/
	public var path : String;
	
	/**
	* Name of the file getting generated. If the file getting generated is
	* "java/lang/Object.html", then the filename is "Object.html".
	*/
	public var filename : String;
	
	/**
	* The display length used for indentation while generating the class page.
	*/
	public var displayLength : Int;
	
	/**
	* To check whether annotation heading is printed or not.
	*/
	private var printedAnnotationHeading : Bool;
	
	/**
	* Constructor to construct the HtmlStandardWriter object.
	*
	* @param filename File to be generated.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Constructor to construct the HtmlStandardWriter object.
	*
	* @param path         Platform-dependent {@link #path} used when
	*                     creating file.
	* @param filename     Name of file to be generated.
	* @param relativePath Value for the variable {@link #relativePath}.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, path : String, filename : String, relativePath : String) : Void;
	
	/**
	* Replace {&#064;docRoot} tag used in options that accept HTML text, such
	* as -header, -footer, -top and -bottom, and when converting a relative
	* HREF where commentTagsToString inserts a {&#064;docRoot} where one was
	* missing.  (Also see DocRootTaglet for {&#064;docRoot} tags in doc
	* comments.)
	* <p>
	* Replace {&#064;docRoot} tag in htmlstr with the relative path to the
	* destination directory from the directory where the file is being
	* written, looping to handle all such tags in htmlstr.
	* <p>
	* For example, for "-d docs" and -header containing {&#064;docRoot}, when
	* the HTML page for source file p/C1.java is being generated, the
	* {&#064;docRoot} tag would be inserted into the header as "../",
	* the relative path from docs/p/ to docs/ (the document root).
	* <p>
	* Note: This doc comment was written with '&amp;#064;' representing '@'
	* to prevent the inline tag from being interpreted.
	*/
	@:overload public function replaceDocRootDir(htmlstr : String) : String;
	
	/**
	* Print Html Hyper Link, with target frame.  This
	* link will only appear if page is not in a frame.
	*
	* @param link String name of the file.
	* @param where Position in the file
	* @param target Name of the target frame.
	* @param label Tag for the link.
	* @param strong Whether the label should be strong or not?
	*/
	@:overload public function printNoFramesTargetHyperLink(link : String, where : String, target : String, label : String, strong : Bool) : Void;
	
	/**
	* Get the script to show or hide the All classes link.
	*
	* @param id id of the element to show or hide
	* @return a content tree for the script
	*/
	@:overload public function getAllClassesLinkScript(id : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Adds the tags information.
	*
	* @param doc the doc for which the tags will be generated
	* @param htmltree the documentation tree to which the tags will be added
	*/
	@:overload private function addTagsInfo(doc : com.sun.javadoc.Doc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Check whether there are any tags for Serialization Overview
	* section to be printed.
	*
	* @param field the FieldDoc object to check for tags.
	* @return true if there are tags to be printed else return false.
	*/
	@:overload private function hasSerializationOverviewTags(field : com.sun.javadoc.FieldDoc) : Bool;
	
	/**
	* Returns a TagletWriter that knows how to write HTML.
	*
	* @return a TagletWriter that knows how to write HTML.
	*/
	@:overload public function getTagletWriterInstance(isFirstSentence : Bool) : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter;
	
	@:overload private function printTagsInfoHeader() : Void;
	
	@:overload private function printTagsInfoFooter() : Void;
	
	/**
	* Get Package link, with target frame.
	*
	* @param pd The link will be to the "package-summary.html" page for this package
	* @param target name of the target frame
	* @param label tag for the link
	* @return a content for the target package link
	*/
	@:overload public function getTargetPackageLink(pd : com.sun.javadoc.PackageDoc, target : String, label : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the html file header. Also print Html page title and stylesheet
	* default properties.
	*
	* @param title         String window title to go in the &lt;TITLE&gt; tag
	* @param metakeywords  Array of String keywords for META tag.  Each element
	*                      of the array is assigned to a separate META tag.
	*                      Pass in null for no array.
	* @param includeScript boolean true if printing windowtitle script.
	*             False for files that appear in the left-hand frames.
	*/
	@:overload public function printHtmlHeader(title : String, metakeywords : java.NativeArray<String>, includeScript : Bool) : Void;
	
	/**
	* Generates the HTML document tree and prints it out.
	*
	* @param metakeywords Array of String keywords for META tag. Each element
	*                     of the array is assigned to a separate META tag.
	*                     Pass in null for no array
	* @param includeScript true if printing windowtitle script
	*                      false for files that appear in the left-hand frames
	* @param body the body htmltree to be included in the document
	*/
	@:overload public function printHtmlDocument(metakeywords : java.NativeArray<String>, includeScript : Bool, body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the window title.
	*
	* @param title the title string to construct the complete window title
	* @return the window title string
	*/
	@:overload public function getWindowTitle(title : String) : String;
	
	/**
	* Print user specified header and the footer.
	*
	* @param header if true print the user provided header else print the
	* user provided footer.
	*/
	@:overload public function printUserHeaderFooter(header : Bool) : Void;
	
	/**
	* Get user specified header and the footer.
	*
	* @param header if true print the user provided header else print the
	* user provided footer.
	*/
	@:overload public function getUserHeaderFooter(header : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the user specified top.
	*/
	@:overload public function printTop() : Void;
	
	/**
	* Adds the user specified top.
	*
	* @param body the content tree to which user specified top will be added
	*/
	@:overload public function addTop(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the user specified bottom.
	*/
	@:overload public function printBottom() : Void;
	
	/**
	* Adds the user specified bottom.
	*
	* @param body the content tree to which user specified bottom will be added
	*/
	@:overload public function addBottom(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the navigation bar for the Html page at the top and and the bottom.
	*
	* @param header If true print navigation bar at the top of the page else
	* print the nevigation bar at the bottom.
	*/
	@:overload private function navLinks(header : Bool) : Void;
	
	/**
	* Adds the navigation bar for the Html page at the top and and the bottom.
	*
	* @param header If true print navigation bar at the top of the page else
	* @param body the HtmlTree to which the nav links will be added
	*/
	@:overload private function addNavLinks(header : Bool, body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the word "NEXT" to indicate that no link is available.  Override
	* this method to customize next link.
	*/
	@:overload private function navLinkNext() : Void;
	
	/**
	* Get the word "NEXT" to indicate that no link is available.  Override
	* this method to customize next link.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkNext() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the word "PREV" to indicate that no link is available.  Override
	* this method to customize prev link.
	*/
	@:overload private function navLinkPrevious() : Void;
	
	/**
	* Get the word "PREV" to indicate that no link is available.  Override
	* this method to customize prev link.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkPrevious() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Do nothing. This is the default method.
	*/
	@:overload private function printSummaryDetailLinks() : Void;
	
	/**
	* Do nothing. This is the default method.
	*/
	@:overload private function addSummaryDetailLinks(navDiv : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print link to the "overview-summary.html" page.
	*/
	@:overload private function navLinkContents() : Void;
	
	/**
	* Get link to the "overview-summary.html" page.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkContents() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Description for a cell in the navigation bar.
	*/
	@:overload private function navCellStart() : Void;
	
	/**
	* Description for a cell in the navigation bar, but with reverse
	* high-light effect.
	*/
	@:overload private function navCellRevStart() : Void;
	
	/**
	* Closing tag for navigation bar cell.
	*/
	@:overload private function navCellEnd() : Void;
	
	/**
	* Print link to the "package-summary.html" page for the package passed.
	*
	* @param pkg Package to which link will be generated.
	*/
	@:overload private function navLinkPackage(pkg : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Get link to the "package-summary.html" page for the package passed.
	*
	* @param pkg Package to which link will be generated
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkPackage(pkg : com.sun.javadoc.PackageDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the word "Package" in the navigation bar cell, to indicate that
	* link is not available here.
	*/
	@:overload private function navLinkPackage() : Void;
	
	/**
	* Get the word "Package" , to indicate that link is not available here.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the word "Use" in the navigation bar cell, to indicate that link
	* is not available.
	*/
	@:overload private function navLinkClassUse() : Void;
	
	/**
	* Get the word "Use", to indicate that link is not available.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkClassUse() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print link for previous file.
	*
	* @param prev File name for the prev link.
	*/
	@:overload public function navLinkPrevious(prev : String) : Void;
	
	/**
	* Get link for previous file.
	*
	* @param prev File name for the prev link
	* @return a content tree for the link
	*/
	@:overload public function getNavLinkPrevious(prev : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print link for next file.  If next is null, just print the label
	* without linking it anywhere.
	*
	* @param next File name for the next link.
	*/
	@:overload public function navLinkNext(next : String) : Void;
	
	/**
	* Get link for next file.  If next is null, just print the label
	* without linking it anywhere.
	*
	* @param next File name for the next link
	* @return a content tree for the link
	*/
	@:overload public function getNavLinkNext(next : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print "FRAMES" link, to switch to the frame version of the output.
	*
	* @param link File to be linked, "index.html".
	*/
	@:overload private function navShowLists(link : String) : Void;
	
	/**
	* Get "FRAMES" link, to switch to the frame version of the output.
	*
	* @param link File to be linked, "index.html"
	* @return a content tree for the link
	*/
	@:overload private function getNavShowLists(link : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print "FRAMES" link, to switch to the frame version of the output.
	*/
	@:overload private function navShowLists() : Void;
	
	/**
	* Get "FRAMES" link, to switch to the frame version of the output.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavShowLists() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print "NO FRAMES" link, to switch to the non-frame version of the output.
	*
	* @param link File to be linked.
	*/
	@:overload private function navHideLists(link : String) : Void;
	
	/**
	* Get "NO FRAMES" link, to switch to the non-frame version of the output.
	*
	* @param link File to be linked
	* @return a content tree for the link
	*/
	@:overload private function getNavHideLists(link : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print "Tree" link in the navigation bar. If there is only one package
	* specified on the command line, then the "Tree" link will be to the
	* only "package-tree.html" file otherwise it will be to the
	* "overview-tree.html" file.
	*/
	@:overload private function navLinkTree() : Void;
	
	/**
	* Get "Tree" link in the navigation bar. If there is only one package
	* specified on the command line, then the "Tree" link will be to the
	* only "package-tree.html" file otherwise it will be to the
	* "overview-tree.html" file.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the overview tree link for the main tree.
	*
	* @param label the label for the link
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkMainTree(label : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the word "Class" in the navigation bar cell, to indicate that
	* class link is not available.
	*/
	@:overload private function navLinkClass() : Void;
	
	/**
	* Get the word "Class", to indicate that class link is not available.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkClass() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print "Deprecated" API link in the navigation bar.
	*/
	@:overload private function navLinkDeprecated() : Void;
	
	/**
	* Get "Deprecated" API link in the navigation bar.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkDeprecated() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print link for generated index. If the user has used "-splitindex"
	* command line option, then link to file "index-files/index-1.html" is
	* generated otherwise link to file "index-all.html" is generated.
	*/
	@:overload private function navLinkClassIndex() : Void;
	
	/**
	* Get link for generated index. If the user has used "-splitindex"
	* command line option, then link to file "index-files/index-1.html" is
	* generated otherwise link to file "index-all.html" is generated.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkClassIndex() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print link for generated class index.
	*/
	@:overload private function navLinkIndex() : Void;
	
	/**
	* Get link for generated class index.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkIndex() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print help file link. If user has provided a help file, then generate a
	* link to the user given file, which is already copied to current or
	* destination directory.
	*/
	@:overload private function navLinkHelp() : Void;
	
	/**
	* Get help file link. If user has provided a help file, then generate a
	* link to the user given file, which is already copied to current or
	* destination directory.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkHelp() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the word "Detail" in the navigation bar. No link is available.
	*/
	@:overload private function navDetail() : Void;
	
	/**
	* Print the word "Summary" in the navigation bar. No link is available.
	*/
	@:overload private function navSummary() : Void;
	
	/**
	* Print the Html table tag for the index summary tables. The table tag
	* printed is
	* &lt;TABLE BORDER="1" CELLPADDING="3" CELLSPACING="0" WIDTH="100%">
	*/
	@:overload public function tableIndexSummary() : Void;
	
	/**
	* Print the Html table tag for the index summary tables.
	*
	* @param summary the summary for the table tag summary attribute.
	*/
	@:overload public function tableIndexSummary(summary : String) : Void;
	
	/**
	* Same as {@link #tableIndexSummary()}.
	*/
	@:overload public function tableIndexDetail() : Void;
	
	/**
	* Print Html tag for table elements. The tag printed is
	* &lt;TD ALIGN="right" VALIGN="top" WIDTH="1%"&gt;.
	*/
	@:overload public function tdIndex() : Void;
	
	/**
	* Print table caption.
	*/
	@:overload public function tableCaptionStart() : Void;
	
	/**
	* Print table sub-caption.
	*/
	@:overload public function tableSubCaptionStart() : Void;
	
	/**
	* Print table caption end tags.
	*/
	@:overload public function tableCaptionEnd() : Void;
	
	/**
	* Print summary table header.
	*/
	@:overload public function summaryTableHeader(header : java.NativeArray<String>, scope : String) : Void;
	
	/**
	* Get summary table header.
	*
	* @param header the header for the table
	* @param scope the scope of the headers
	* @return a content tree for the header
	*/
	@:overload public function getSummaryTableHeader(header : java.NativeArray<String>, scope : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get table caption.
	*
	* @param rawText the caption for the table which could be raw Html
	* @return a content tree for the caption
	*/
	@:overload public function getTableCaption(rawText : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the marker anchor which will be added to the documentation tree.
	*
	* @param anchorName the anchor name attribute
	* @return a content tree for the marker anchor
	*/
	@:overload public function getMarkerAnchor(anchorName : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the marker anchor which will be added to the documentation tree.
	*
	* @param anchorName the anchor name attribute
	* @param anchorContent the content that should be added to the anchor
	* @return a content tree for the marker anchor
	*/
	@:overload public function getMarkerAnchor(anchorName : String, anchorContent : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Returns a packagename content.
	*
	* @param packageDoc the package to check
	* @return package name content
	*/
	@:overload public function getPackageName(packageDoc : com.sun.javadoc.PackageDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Returns a package name label.
	*
	* @param parsedName the package name
	* @return the package name content
	*/
	@:overload public function getPackageLabel(packageName : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add package deprecation information to the documentation tree
	*
	* @param deprPkgs list of deprecated packages
	* @param headingKey the caption for the deprecated package table
	* @param tableSummary the summary for the deprecated package table
	* @param tableHeader table headers for the deprecated package table
	* @param contentTree the content tree to which the deprecated package table will be added
	*/
	@:overload private function addPackageDeprecatedAPI(deprPkgs : java.util.List<com.sun.javadoc.Doc>, headingKey : String, tableSummary : String, tableHeader : java.NativeArray<String>, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Prine table header information about color, column span and the font.
	*
	* @param color Background color.
	* @param span  Column span.
	*/
	@:overload public function tableHeaderStart(color : String, span : Int) : Void;
	
	/**
	* Print table header for the inherited members summary tables. Print the
	* background color information.
	*
	* @param color Background color.
	*/
	@:overload public function tableInheritedHeaderStart(color : String) : Void;
	
	/**
	* Print "Use" table header. Print the background color and the column span.
	*
	* @param color Background color.
	*/
	@:overload public function tableUseInfoHeaderStart(color : String) : Void;
	
	/**
	* Print table header with the background color with default column span 2.
	*
	* @param color Background color.
	*/
	@:overload public function tableHeaderStart(color : String) : Void;
	
	/**
	* Print table header with the column span, with the default color #CCCCFF.
	*
	* @param span Column span.
	*/
	@:overload public function tableHeaderStart(span : Int) : Void;
	
	/**
	* Print table header with default column span 2 and default color #CCCCFF.
	*/
	@:overload public function tableHeaderStart() : Void;
	
	/**
	* Print table header end tags for font, column and row.
	*/
	@:overload public function tableHeaderEnd() : Void;
	
	/**
	* Print table header end tags in inherited tables for column and row.
	*/
	@:overload public function tableInheritedHeaderEnd() : Void;
	
	/**
	* Print the summary table row cell attribute width.
	*
	* @param width Width of the table cell.
	*/
	@:overload public function summaryRow(width : Int) : Void;
	
	/**
	* Print the summary table row cell end tag.
	*/
	@:overload public function summaryRowEnd() : Void;
	
	/**
	* Print the heading in Html &lt;H2> format.
	*
	* @param str The Header string.
	*/
	@:overload public function printIndexHeading(str : String) : Void;
	
	/**
	* Print Html tag &lt;FRAMESET=arg&gt;.
	*
	* @param arg Argument for the tag.
	*/
	@:overload public function frameSet(arg : String) : Void;
	
	/**
	* Print Html closing tag &lt;/FRAMESET&gt;.
	*/
	@:overload public function frameSetEnd() : Void;
	
	/**
	* Print Html tag &lt;FRAME=arg&gt;.
	*
	* @param arg Argument for the tag.
	*/
	@:overload public function frame(arg : String) : Void;
	
	/**
	* Print Html closing tag &lt;/FRAME&gt;.
	*/
	@:overload public function frameEnd() : Void;
	
	/**
	* Return path to the class page for a classdoc. For example, the class
	* name is "java.lang.Object" and if the current file getting generated is
	* "java/io/File.html", then the path string to the class, returned is
	* "../../java/lang.Object.html".
	*
	* @param cd Class to which the path is requested.
	*/
	@:overload private function pathToClass(cd : com.sun.javadoc.ClassDoc) : String;
	
	/**
	* Return the path to the class page for a classdoc. Works same as
	* {@link #pathToClass(ClassDoc)}.
	*
	* @param cd   Class to which the path is requested.
	* @param name Name of the file(doesn't include path).
	*/
	@:overload private function pathString(cd : com.sun.javadoc.ClassDoc, name : String) : String;
	
	/**
	* Return path to the given file name in the given package. So if the name
	* passed is "Object.html" and the name of the package is "java.lang", and
	* if the relative path is "../.." then returned string will be
	* "../../java/lang/Object.html"
	*
	* @param pd Package in which the file name is assumed to be.
	* @param name File name, to which path string is.
	*/
	@:overload private function pathString(pd : com.sun.javadoc.PackageDoc, name : String) : String;
	
	/**
	* Print the link to the given package.
	*
	* @param pkg the package to link to.
	* @param label the label for the link.
	* @param isStrong true if the label should be strong.
	*/
	@:overload public function printPackageLink(pkg : com.sun.javadoc.PackageDoc, label : String, isStrong : Bool) : Void;
	
	/**
	* Print the link to the given package.
	*
	* @param pkg the package to link to.
	* @param label the label for the link.
	* @param isStrong true if the label should be strong.
	* @param style  the font of the package link label.
	*/
	@:overload public function printPackageLink(pkg : com.sun.javadoc.PackageDoc, label : String, isStrong : Bool, style : String) : Void;
	
	/**
	* Return the link to the given package.
	*
	* @param pkg the package to link to.
	* @param label the label for the link.
	* @param isStrong true if the label should be strong.
	* @return the link to the given package.
	*/
	@:overload public function getPackageLinkString(pkg : com.sun.javadoc.PackageDoc, label : String, isStrong : Bool) : String;
	
	/**
	* Return the link to the given package.
	*
	* @param pkg the package to link to.
	* @param label the label for the link.
	* @param isStrong true if the label should be strong.
	* @param style  the font of the package link label.
	* @return the link to the given package.
	*/
	@:overload public function getPackageLinkString(pkg : com.sun.javadoc.PackageDoc, label : String, isStrong : Bool, style : String) : String;
	
	/**
	* Return the link to the given package.
	*
	* @param pkg the package to link to.
	* @param label the label for the link.
	* @return a content tree for the package link.
	*/
	@:overload public function getPackageLink(pkg : com.sun.javadoc.PackageDoc, label : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	@:overload public function italicsClassName(cd : com.sun.javadoc.ClassDoc, qual : Bool) : String;
	
	@:overload public function printSrcLink(d : com.sun.javadoc.ProgramElementDoc, label : String) : Void;
	
	/**
	* Add the link to the content tree.
	*
	* @param doc program element doc for which the link will be added
	* @param label label for the link
	* @param htmltree the content tree to which the link will be added
	*/
	@:overload public function addSrcLink(doc : com.sun.javadoc.ProgramElementDoc, label : com.sun.tools.doclets.internal.toolkit.Content, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return the link to the given class.
	*
	* @param linkInfo the information about the link.
	*
	* @return the link for the given class.
	*/
	@:overload public function getLink(linkInfo : com.sun.tools.doclets.formats.html.LinkInfoImpl) : String;
	
	/**
	* Return the type parameters for the given class.
	*
	* @param linkInfo the information about the link.
	* @return the type for the given class.
	*/
	@:overload public function getTypeParameterLinks(linkInfo : com.sun.tools.doclets.formats.html.LinkInfoImpl) : String;
	
	/**
	* Print the link to the given class.
	*/
	@:overload public function printLink(linkInfo : com.sun.tools.doclets.formats.html.LinkInfoImpl) : Void;
	
	/*************************************************************
	* Return a class cross link to external class documentation.
	* The name must be fully qualified to determine which package
	* the class is in.  The -link option does not allow users to
	* link to external classes in the "default" package.
	*
	* @param qualifiedClassName the qualified name of the external class.
	* @param refMemName the name of the member being referenced.  This should
	* be null or empty string if no member is being referenced.
	* @param label the label for the external link.
	* @param strong true if the link should be strong.
	* @param style the style of the link.
	* @param code true if the label should be code font.
	*/
	@:overload public function getCrossClassLink(qualifiedClassName : String, refMemName : String, label : String, strong : Bool, style : String, code : Bool) : String;
	
	@:overload public function isClassLinkable(cd : com.sun.javadoc.ClassDoc) : Bool;
	
	@:overload public function getCrossPackageLink(pkgName : String) : String;
	
	/**
	* Get the class link.
	*
	* @param context the id of the context where the link will be added
	* @param cd the class doc to link to
	* @return a content tree for the link
	*/
	@:overload public function getQualifiedClassLink(context : Int, cd : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the class link.
	*
	* @param context the id of the context where the link will be added
	* @param cd the class doc to link to
	* @param contentTree the content tree to which the link will be added
	*/
	@:overload public function addPreQualifiedClassLink(context : Int, cd : com.sun.javadoc.ClassDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Retrieve the class link with the package portion of the label in
	* plain text.  If the qualifier is excluded, it willnot be included in the
	* link label.
	*
	* @param cd the class to link to.
	* @param isStrong true if the link should be strong.
	* @return the link with the package portion of the label in plain text.
	*/
	@:overload public function getPreQualifiedClassLink(context : Int, cd : com.sun.javadoc.ClassDoc, isStrong : Bool) : String;
	
	/**
	* Add the class link with the package portion of the label in
	* plain text. If the qualifier is excluded, it will not be included in the
	* link label.
	*
	* @param context the id of the context where the link will be added
	* @param cd the class to link to
	* @param isStrong true if the link should be strong
	* @param contentTree the content tree to which the link with be added
	*/
	@:overload public function addPreQualifiedClassLink(context : Int, cd : com.sun.javadoc.ClassDoc, isStrong : Bool, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the class link, with only class name as the strong link and prefixing
	* plain package name.
	*
	* @param context the id of the context where the link will be added
	* @param cd the class to link to
	* @param contentTree the content tree to which the link with be added
	*/
	@:overload public function addPreQualifiedStrongClassLink(context : Int, cd : com.sun.javadoc.ClassDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printText(key : String) : Void;
	
	@:overload public function printText(key : String, a1 : String) : Void;
	
	@:overload public function printText(key : String, a1 : String, a2 : String) : Void;
	
	@:overload public function strongText(key : String) : Void;
	
	@:overload public function strongText(key : String, a1 : String) : Void;
	
	@:overload public function strongText(key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Get the link for the given member.
	*
	* @param context the id of the context where the link will be added
	* @param doc the member being linked to
	* @param label the label for the link
	* @return a content tree for the doc link
	*/
	@:overload public function getDocLink(context : Int, doc : com.sun.javadoc.MemberDoc, label : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the link for the given member.
	*
	* @param context the id of the context where the link will be printed.
	* @param classDoc the classDoc that we should link to.  This is not
	*                 necessarily equal to doc.containingClass().  We may be
	*                 inheriting comments.
	* @param doc the member being linked to.
	* @param label the label for the link.
	* @param strong true if the link should be strong.
	*/
	@:overload public function printDocLink(context : Int, classDoc : com.sun.javadoc.ClassDoc, doc : com.sun.javadoc.MemberDoc, label : String, strong : Bool) : Void;
	
	/**
	* Print the link for the given member.
	*
	* @param context the id of the context where the link will be printed.
	* @param classDoc the classDoc that we should link to.  This is not
	*                 necessarily equal to doc.containingClass().  We may be
	*                 inheriting comments.
	* @param doc the member being linked to.
	* @param label the label for the link.
	* @param strong true if the link should be strong.
	* @param isProperty true if the doc parameter is a JavaFX property.
	*/
	@:overload public function printDocLink(context : Int, classDoc : com.sun.javadoc.ClassDoc, doc : com.sun.javadoc.MemberDoc, label : String, strong : Bool, isProperty : Bool) : Void;
	
	/**
	* Return the link for the given member.
	*
	* @param context the id of the context where the link will be printed.
	* @param doc the member being linked to.
	* @param label the label for the link.
	* @param strong true if the link should be strong.
	* @return the link for the given member.
	*/
	@:overload public function getDocLink(context : Int, doc : com.sun.javadoc.MemberDoc, label : String, strong : Bool) : String;
	
	/**
	* Return the link for the given member.
	*
	* @param context the id of the context where the link will be printed.
	* @param classDoc the classDoc that we should link to.  This is not
	*                 necessarily equal to doc.containingClass().  We may be
	*                 inheriting comments.
	* @param doc the member being linked to.
	* @param label the label for the link.
	* @param strong true if the link should be strong.
	* @return the link for the given member.
	*/
	@:overload public function getDocLink(context : Int, classDoc : com.sun.javadoc.ClassDoc, doc : com.sun.javadoc.MemberDoc, label : String, strong : Bool) : String;
	
	/**
	* Return the link for the given member.
	*
	* @param context the id of the context where the link will be printed.
	* @param classDoc the classDoc that we should link to.  This is not
	*                 necessarily equal to doc.containingClass().  We may be
	*                 inheriting comments.
	* @param doc the member being linked to.
	* @param label the label for the link.
	* @param strong true if the link should be strong.
	* @param isProperty true if the doc parameter is a JavaFX property.
	* @return the link for the given member.
	*/
	@:overload public function getDocLink(context : Int, classDoc : com.sun.javadoc.ClassDoc, doc : com.sun.javadoc.MemberDoc, label : String, strong : Bool, isProperty : Bool) : String;
	
	/**
	* Return the link for the given member.
	*
	* @param context the id of the context where the link will be added
	* @param classDoc the classDoc that we should link to.  This is not
	*                 necessarily equal to doc.containingClass().  We may be
	*                 inheriting comments
	* @param doc the member being linked to
	* @param label the label for the link
	* @return the link for the given member
	*/
	@:overload public function getDocLink(context : Int, classDoc : com.sun.javadoc.ClassDoc, doc : com.sun.javadoc.MemberDoc, label : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	@:overload public function anchor(emd : com.sun.javadoc.ExecutableMemberDoc) : Void;
	
	@:overload public function getAnchor(emd : com.sun.javadoc.ExecutableMemberDoc) : String;
	
	@:overload public function getAnchor(emd : com.sun.javadoc.ExecutableMemberDoc, isProperty : Bool) : String;
	
	@:overload public function seeTagToString(see : com.sun.javadoc.SeeTag) : String;
	
	@:overload public function printInlineComment(doc : com.sun.javadoc.Doc, tag : com.sun.javadoc.Tag) : Void;
	
	/**
	* Add the inline comment.
	*
	* @param doc the doc for which the inline comment will be added
	* @param tag the inline tag to be added
	* @param htmltree the content tree to which the comment will be added
	*/
	@:overload public function addInlineComment(doc : com.sun.javadoc.Doc, tag : com.sun.javadoc.Tag, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printInlineDeprecatedComment(doc : com.sun.javadoc.Doc, tag : com.sun.javadoc.Tag) : Void;
	
	/**
	* Add the inline deprecated comment.
	*
	* @param doc the doc for which the inline deprecated comment will be added
	* @param tag the inline tag to be added
	* @param htmltree the content tree to which the comment will be added
	*/
	@:overload public function addInlineDeprecatedComment(doc : com.sun.javadoc.Doc, tag : com.sun.javadoc.Tag, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printSummaryComment(doc : com.sun.javadoc.Doc) : Void;
	
	/**
	* Adds the summary content.
	*
	* @param doc the doc for which the summary will be generated
	* @param htmltree the documentation tree to which the summary will be added
	*/
	@:overload public function addSummaryComment(doc : com.sun.javadoc.Doc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printSummaryComment(doc : com.sun.javadoc.Doc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>) : Void;
	
	/**
	* Adds the summary content.
	*
	* @param doc the doc for which the summary will be generated
	* @param firstSentenceTags the first sentence tags for the doc
	* @param htmltree the documentation tree to which the summary will be added
	*/
	@:overload public function addSummaryComment(doc : com.sun.javadoc.Doc, firstSentenceTags : java.NativeArray<com.sun.javadoc.Tag>, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printSummaryDeprecatedComment(doc : com.sun.javadoc.Doc) : Void;
	
	@:overload public function printSummaryDeprecatedComment(doc : com.sun.javadoc.Doc, tag : com.sun.javadoc.Tag) : Void;
	
	@:overload public function addSummaryDeprecatedComment(doc : com.sun.javadoc.Doc, tag : com.sun.javadoc.Tag, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printInlineComment(doc : com.sun.javadoc.Doc) : Void;
	
	/**
	* Adds the inline comment.
	*
	* @param doc the doc for which the inline comments will be generated
	* @param htmltree the documentation tree to which the inline comments will be added
	*/
	@:overload public function addInlineComment(doc : com.sun.javadoc.Doc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function printInlineDeprecatedComment(doc : com.sun.javadoc.Doc) : Void;
	
	/**
	* Converts inline tags and text to text strings, expanding the
	* inline tags along the way.  Called wherever text can contain
	* an inline tag, such as in comments or in free-form text arguments
	* to non-inline tags.
	*
	* @param holderTag    specific tag where comment resides
	* @param doc    specific doc where comment resides
	* @param tags   array of text tags and inline tags (often alternating)
	*               present in the text of interest for this doc
	* @param isFirstSentence  true if text is first sentence
	*/
	@:overload public function commentTagsToString(holderTag : com.sun.javadoc.Tag, doc : com.sun.javadoc.Doc, tags : java.NativeArray<com.sun.javadoc.Tag>, isFirstSentence : Bool) : String;
	
	@:overload public function removeNonInlineHtmlTags(text : String) : String;
	
	@:overload public function replace(text : String, tobe : String, by : String) : String;
	
	@:overload public function printStyleSheetProperties() : Void;
	
	/**
	* Returns a link to the stylesheet file.
	*
	* @return an HtmlTree for the lINK tag which provides the stylesheet location
	*/
	@:overload public function getStyleSheetProperties() : com.sun.tools.doclets.formats.html.markup.HtmlTree;
	
	/**
	* According to
	* <cite>The Java&trade; Language Specification</cite>,
	* all the outer classes and static nested classes are core classes.
	*/
	@:overload public function isCoreClass(cd : com.sun.javadoc.ClassDoc) : Bool;
	
	/**
	* Write the annotatation types for the given packageDoc.
	*
	* @param packageDoc the package to write annotations for.
	*/
	@:overload public function writeAnnotationInfo(packageDoc : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Adds the annotatation types for the given packageDoc.
	*
	* @param packageDoc the package to write annotations for.
	* @param htmltree the documentation tree to which the annotation info will be
	*        added
	*/
	@:overload public function addAnnotationInfo(packageDoc : com.sun.javadoc.PackageDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Write the annotatation types for the given doc.
	*
	* @param doc the doc to write annotations for.
	*/
	@:overload public function writeAnnotationInfo(doc : com.sun.javadoc.ProgramElementDoc) : Void;
	
	/**
	* Adds the annotatation types for the given doc.
	*
	* @param packageDoc the package to write annotations for
	* @param htmltree the content tree to which the annotation types will be added
	*/
	@:overload public function addAnnotationInfo(doc : com.sun.javadoc.ProgramElementDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Write the annotatation types for the given doc and parameter.
	*
	* @param indent the number of spaced to indent the parameters.
	* @param doc the doc to write annotations for.
	* @param param the parameter to write annotations for.
	*/
	@:overload public function writeAnnotationInfo(indent : Int, doc : com.sun.javadoc.Doc, param : com.sun.javadoc.Parameter) : Bool;
	
	/**
	* Add the annotatation types for the given doc and parameter.
	*
	* @param indent the number of spaces to indent the parameters.
	* @param doc the doc to write annotations for.
	* @param param the parameter to write annotations for.
	* @param tree the content tree to which the annotation types will be added
	*/
	@:overload public function addAnnotationInfo(indent : Int, doc : com.sun.javadoc.Doc, param : com.sun.javadoc.Parameter, tree : com.sun.tools.doclets.internal.toolkit.Content) : Bool;
	
	/**
	* Return the configuation for this doclet.
	*
	* @return the configuration for this doclet.
	*/
	@:overload override public function configuration() : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	
}
