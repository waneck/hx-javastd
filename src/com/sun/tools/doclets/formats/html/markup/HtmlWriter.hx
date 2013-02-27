package com.sun.tools.doclets.formats.html.markup;
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
* Class for the Html format code generation.
* Initilizes PrintWriter with FileWriter, to enable print
* related methods to generate the code to the named File through FileWriter.
*
* @since 1.2
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
@:require(java2) extern class HtmlWriter extends java.io.PrintWriter
{
	/**
	* Name of the file, to which this writer is writing to.
	*/
	private var htmlFilename(default, null) : String;
	
	/**
	* The window title of this file
	*/
	private var winTitle : String;
	
	/**
	* URL file separator string("/").
	*/
	public static var fileseparator(default, null) : String;
	
	/**
	* The configuration
	*/
	private var configuration : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* The flag to indicate whether a member details list is printed or not.
	*/
	private var memberDetailsListPrinted : Bool;
	
	/**
	* Header for tables displaying packages and description..
	*/
	private var packageTableHeader(default, null) : java.NativeArray<String>;
	
	/**
	* Summary for use tables displaying class and package use.
	*/
	private var useTableSummary(default, null) : String;
	
	/**
	* Column header for class docs displaying Modifier and Type header.
	*/
	private var modifierTypeHeader(default, null) : String;
	
	public var overviewLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var defaultPackageLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var packageLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var useLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var prevLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var nextLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var prevclassLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var nextclassLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var summaryLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var detailLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var framesLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var noframesLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var treeLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var classLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var deprecatedLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var deprecatedPhrase(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var allclassesLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var indexLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var helpLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var seeLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var descriptionLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var prevpackageLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var nextpackageLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var packagesLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var methodDetailsLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var annotationTypeDetailsLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var fieldDetailsLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var propertyDetailsLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var constructorDetailsLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var enumConstantsDetailsLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var specifiedByLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var overridesLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var descfrmClassLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	public var descfrmInterfaceLabel(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Constructor.
	*
	* @param path The directory path to be created for this file
	*             or null if none to be created.
	* @param filename File Name to which the PrintWriter will
	*                 do the Output.
	* @param docencoding Encoding to be used for this file.
	* @exception IOException Exception raised by the FileWriter is passed on
	* to next level.
	* @exception UnSupportedEncodingException Exception raised by the
	* OutputStreamWriter is passed on to next level.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, path : String, filename : String, docencoding : String) : Void;
	
	/**
	* Get the configuration string as a content.
	*
	* @param key the key to look for in the configuration file
	* @return a content tree for the text
	*/
	@:overload public function getResource(key : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the configuration string as a content.
	*
	* @param key the key to look for in the configuration file
	* @param a1 string argument added to configuration text
	* @return a content tree for the text
	*/
	@:overload public function getResource(key : String, a1 : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the configuration string as a content.
	*
	* @param key the key to look for in the configuration file
	* @param a1 string argument added to configuration text
	* @param a2 string argument added to configuration text
	* @return a content tree for the text
	*/
	@:overload public function getResource(key : String, a1 : String, a2 : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print &lt;HTML&gt; tag. Add a newline character at the end.
	*/
	@:overload public function html() : Void;
	
	/**
	* Print &lt;/HTML&gt; tag. Add a newline character at the end.
	*/
	@:overload public function htmlEnd() : Void;
	
	/**
	* Print the script code to be embeded before the  &lt;/HEAD&gt; tag.
	*/
	@:overload private function printWinTitleScript(winTitle : String) : Void;
	
	/**
	* Returns an HtmlTree for the SCRIPT tag.
	*
	* @return an HtmlTree for the SCRIPT tag
	*/
	@:overload private function getWinTitleScript() : com.sun.tools.doclets.formats.html.markup.HtmlTree;
	
	/**
	* Returns a content tree for the SCRIPT tag for the main page(index.html).
	*
	* @return a content for the SCRIPT tag
	*/
	@:overload private function getFramesetJavaScript() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print the Javascript &lt;SCRIPT&gt; start tag with its type
	* attribute.
	*/
	@:overload public function script() : Void;
	
	/**
	* Print the Javascript &lt;/SCRIPT&gt; end tag.
	*/
	@:overload public function scriptEnd() : Void;
	
	/**
	* Print the Javascript &lt;NOSCRIPT&gt; start tag.
	*/
	@:overload public function noScript() : Void;
	
	/**
	* Print the Javascript &lt;/NOSCRIPT&gt; end tag.
	*/
	@:overload public function noScriptEnd() : Void;
	
	/**
	* Return the Javascript call to be embedded in the &lt;BODY&gt; tag.
	* Return nothing if winTitle is empty.
	* @return the Javascript call to be embedded in the &lt;BODY&gt; tag.
	*/
	@:overload private function getWindowTitleOnload() : String;
	
	/**
	* Print &lt;BODY BGCOLOR="bgcolor"&gt;, including JavaScript
	* "onload" call to load windowtitle script.  This script shows the name
	* of the document in the window title bar when frames are on.
	*
	* @param bgcolor Background color.
	* @param includeScript  boolean set true if printing windowtitle script
	*/
	@:overload public function body(bgcolor : String, includeScript : Bool) : Void;
	
	/**
	* Returns an HtmlTree for the BODY tag.
	*
	* @param includeScript  set true if printing windowtitle script
	* @param title title for the window
	* @return an HtmlTree for the BODY tag
	*/
	@:overload public function getBody(includeScript : Bool, title : String) : com.sun.tools.doclets.formats.html.markup.HtmlTree;
	
	/**
	* Print &lt;/BODY&gt; tag. Add a newline character at the end.
	*/
	@:overload public function bodyEnd() : Void;
	
	/**
	* Print &lt;TITLE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function title() : Void;
	
	/**
	* Print &lt;TITLE&gt; tag. Add a newline character at the end.
	*
	* @param winTitle The title of this document.
	*/
	@:overload public function title(winTitle : String) : Void;
	
	/**
	* Returns an HtmlTree for the TITLE tag.
	*
	* @return an HtmlTree for the TITLE tag
	*/
	@:overload public function getTitle() : com.sun.tools.doclets.formats.html.markup.HtmlTree;
	
	/**
	* Print &lt;/TITLE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function titleEnd() : Void;
	
	/**
	* Print &lt;UL&gt; tag. Add a newline character at the end.
	*/
	@:overload public function ul() : Void;
	
	/**
	* Print &lt;/UL&gt; tag. Add a newline character at the end.
	*/
	@:overload public function ulEnd() : Void;
	
	/**
	* Print &lt;LI&gt; tag.
	*/
	@:overload public function li() : Void;
	
	/**
	* Print &lt;LI TYPE="type"&gt; tag.
	*
	* @param type Type string.
	*/
	@:overload public function li(type : String) : Void;
	
	/**
	* Print &lt;H1&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h1() : Void;
	
	/**
	* Print &lt;/H1&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h1End() : Void;
	
	/**
	* Print text with &lt;H1&gt; tag. Also adds &lt;/H1&gt; tag. Add a newline character
	* at the end of the text.
	*
	* @param text Text to be printed with &lt;H1&gt; format.
	*/
	@:overload public function h1(text : String) : Void;
	
	/**
	* Print &lt;H2&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h2() : Void;
	
	/**
	* Print text with &lt;H2&gt; tag. Also adds &lt;/H2&gt; tag. Add a newline character
	*  at the end of the text.
	*
	* @param text Text to be printed with &lt;H2&gt; format.
	*/
	@:overload public function h2(text : String) : Void;
	
	/**
	* Print &lt;/H2&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h2End() : Void;
	
	/**
	* Print &lt;H3&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h3() : Void;
	
	/**
	* Print text with &lt;H3&gt; tag. Also adds &lt;/H3&gt; tag. Add a newline character
	*  at the end of the text.
	*
	* @param text Text to be printed with &lt;H3&gt; format.
	*/
	@:overload public function h3(text : String) : Void;
	
	/**
	* Print &lt;/H3&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h3End() : Void;
	
	/**
	* Print &lt;H4&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h4() : Void;
	
	/**
	* Print &lt;/H4&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h4End() : Void;
	
	/**
	* Print text with &lt;H4&gt; tag. Also adds &lt;/H4&gt; tag. Add a newline character
	* at the end of the text.
	*
	* @param text Text to be printed with &lt;H4&gt; format.
	*/
	@:overload public function h4(text : String) : Void;
	
	/**
	* Print &lt;H5&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h5() : Void;
	
	/**
	* Print &lt;/H5&gt; tag. Add a newline character at the end.
	*/
	@:overload public function h5End() : Void;
	
	/**
	* Print HTML &lt;IMG SRC="imggif" WIDTH="width" HEIGHT="height" ALT="imgname&gt;
	* tag. It prepends the "images" directory name to the "imggif". This
	* method is used for oneone format generation. Add a newline character
	* at the end.
	*
	* @param imggif   Image GIF file.
	* @param imgname  Image name.
	* @param width    Width of the image.
	* @param height   Height of the image.
	*/
	@:overload public function img(imggif : String, imgname : String, width : Int, height : Int) : Void;
	
	/**
	* Print &lt;MENU&gt; tag. Add a newline character at the end.
	*/
	@:overload public function menu() : Void;
	
	/**
	* Print &lt;/MENU&gt; tag. Add a newline character at the end.
	*/
	@:overload public function menuEnd() : Void;
	
	/**
	* Print &lt;PRE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function pre() : Void;
	
	/**
	* Print &lt;PRE&gt; tag without adding new line character at th eend.
	*/
	@:overload public function preNoNewLine() : Void;
	
	/**
	* Print &lt;/PRE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function preEnd() : Void;
	
	/**
	* Print &lt;HR&gt; tag. Add a newline character at the end.
	*/
	@:overload public function hr() : Void;
	
	/**
	* Print &lt;HR SIZE="size" WIDTH="widthpercent%"&gt; tag. Add a newline
	* character at the end.
	*
	* @param size           Size of the ruler.
	* @param widthPercent   Percentage Width of the ruler
	*/
	@:overload public function hr(size : Int, widthPercent : Int) : Void;
	
	/**
	* Print &lt;HR SIZE="size" NOSHADE&gt; tag. Add a newline character at the end.
	*
	* @param size           Size of the ruler.
	* @param noshade        noshade string.
	*/
	@:overload public function hr(size : Int, noshade : String) : Void;
	
	/**
	* Get the "&lt;STRONG&gt;" string.
	*
	* @return String Return String "&lt;STRONG&gt;";
	*/
	@:overload public function getStrong() : String;
	
	/**
	* Get the "&lt;/STRONG&gt;" string.
	*
	* @return String Return String "&lt;/STRONG&gt;";
	*/
	@:overload public function getStrongEnd() : String;
	
	/**
	* Print &lt;STRONG&gt; tag.
	*/
	@:overload public function strong() : Void;
	
	/**
	* Print &lt;/STRONG&gt; tag.
	*/
	@:overload public function strongEnd() : Void;
	
	/**
	* Print text passed, in strong format using &lt;STRONG&gt; and &lt;/STRONG&gt; tags.
	*
	* @param text String to be printed in between &lt;STRONG&gt; and &lt;/STRONG&gt; tags.
	*/
	@:overload public function strong(text : String) : Void;
	
	/**
	* Print text passed, in Italics using &lt;I&gt; and &lt;/I&gt; tags.
	*
	* @param text String to be printed in between &lt;I&gt; and &lt;/I&gt; tags.
	*/
	@:overload public function italics(text : String) : Void;
	
	/**
	* Return, text passed, with Italics &lt;i&gt; and &lt;/i&gt; tags, surrounding it.
	* So if the text passed is "Hi", then string returned will be "&lt;i&gt;Hi&lt;/i&gt;".
	*
	* @param text String to be printed in between &lt;I&gt; and &lt;/I&gt; tags.
	*/
	@:overload public function italicsText(text : String) : String;
	
	@:overload public function codeText(text : String) : String;
	
	/**
	* Print "&#38;nbsp;", non-breaking space.
	*/
	@:overload public function space() : Void;
	
	/**
	* Return "&#38;nbsp;", non-breaking space.
	*/
	@:overload public function getSpace() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Print &lt;DL&gt; tag. Add a newline character at the end.
	*/
	@:overload public function dl() : Void;
	
	/**
	* Print &lt;/DL&gt; tag. Add a newline character at the end.
	*/
	@:overload public function dlEnd() : Void;
	
	/**
	* Print &lt;DT&gt; tag.
	*/
	@:overload public function dt() : Void;
	
	/**
	* Print &lt;/DT&gt; tag.
	*/
	@:overload public function dtEnd() : Void;
	
	/**
	* Print &lt;DD&gt; tag.
	*/
	@:overload public function dd() : Void;
	
	/**
	* Print &lt;/DD&gt; tag. Add a newline character at the end.
	*/
	@:overload public function ddEnd() : Void;
	
	/**
	* Print &lt;SUP&gt; tag. Add a newline character at the end.
	*/
	@:overload public function sup() : Void;
	
	/**
	* Print &lt;/SUP&gt; tag. Add a newline character at the end.
	*/
	@:overload public function supEnd() : Void;
	
	/**
	* Print &lt;FONT SIZE="size"&gt; tag. Add a newline character at the end.
	*
	* @param size String size.
	*/
	@:overload public function font(size : String) : Void;
	
	/**
	* Print &lt;FONT SIZE="size"&gt; tag.
	*
	* @param size String size.
	*/
	@:overload public function fontNoNewLine(size : String) : Void;
	
	/**
	* Print &lt;FONT CLASS="stylename"&gt; tag. Add a newline character at the end.
	*
	* @param stylename String stylename.
	*/
	@:overload public function fontStyle(stylename : String) : Void;
	
	/**
	* Print &lt;FONT SIZE="size" CLASS="stylename"&gt; tag. Add a newline character
	* at the end.
	*
	* @param size String size.
	* @param stylename String stylename.
	*/
	@:overload public function fontSizeStyle(size : String, stylename : String) : Void;
	
	/**
	* Print &lt;/FONT&gt; tag.
	*/
	@:overload public function fontEnd() : Void;
	
	/**
	* Get the "&lt;FONT COLOR="color"&gt;" string.
	*
	* @param color String color.
	* @return String Return String "&lt;FONT COLOR="color"&gt;".
	*/
	@:overload public function getFontColor(color : String) : String;
	
	/**
	* Get the "&lt;/FONT&gt;" string.
	*
	* @return String Return String "&lt;/FONT&gt;";
	*/
	@:overload public function getFontEnd() : String;
	
	/**
	* Print &lt;CENTER&gt; tag. Add a newline character at the end.
	*/
	@:overload public function center() : Void;
	
	/**
	* Print &lt;/CENTER&gt; tag. Add a newline character at the end.
	*/
	@:overload public function centerEnd() : Void;
	
	/**
	* Print anchor &lt;A NAME="name"&gt; tag.
	*
	* @param name Name String.
	*/
	@:overload public function aName(name : String) : Void;
	
	/**
	* Print &lt;/A&gt; tag.
	*/
	@:overload public function aEnd() : Void;
	
	/**
	* Print &lt;I&gt; tag.
	*/
	@:overload public function italic() : Void;
	
	/**
	* Print &lt;/I&gt; tag.
	*/
	@:overload public function italicEnd() : Void;
	
	/**
	* Print contents within anchor &lt;A NAME="name"&gt; tags.
	*
	* @param name String name.
	* @param content String contents.
	*/
	@:overload public function anchor(name : String, content : String) : Void;
	
	/**
	* Print anchor &lt;A NAME="name"&gt; and &lt;/A&gt;tags. Print comment string
	* "&lt;!-- --&gt;" within those tags.
	*
	* @param name String name.
	*/
	@:overload public function anchor(name : String) : Void;
	
	/**
	* Print newline and then print &lt;P&gt; tag. Add a newline character at the
	* end.
	*/
	@:overload public function p() : Void;
	
	/**
	* Print newline and then print &lt;/P&gt; tag. Add a newline character at the
	* end.
	*/
	@:overload public function pEnd() : Void;
	
	/**
	* Print newline and then print &lt;BR&gt; tag. Add a newline character at the
	* end.
	*/
	@:overload public function br() : Void;
	
	/**
	* Print &lt;ADDRESS&gt; tag. Add a newline character at the end.
	*/
	@:overload public function address() : Void;
	
	/**
	* Print &lt;/ADDRESS&gt; tag. Add a newline character at the end.
	*/
	@:overload public function addressEnd() : Void;
	
	/**
	* Print &lt;HEAD&gt; tag. Add a newline character at the end.
	*/
	@:overload public function head() : Void;
	
	/**
	* Print &lt;/HEAD&gt; tag. Add a newline character at the end.
	*/
	@:overload public function headEnd() : Void;
	
	/**
	* Print &lt;CODE&gt; tag.
	*/
	@:overload public function code() : Void;
	
	/**
	* Print &lt;/CODE&gt; tag.
	*/
	@:overload public function codeEnd() : Void;
	
	/**
	* Print &lt;EM&gt; tag. Add a newline character at the end.
	*/
	@:overload public function em() : Void;
	
	/**
	* Print &lt;/EM&gt; tag. Add a newline character at the end.
	*/
	@:overload public function emEnd() : Void;
	
	/**
	* Print HTML &lt;TABLE BORDER="border" WIDTH="width"
	* CELLPADDING="cellpadding" CELLSPACING="cellspacing"&gt; tag.
	*
	* @param border       Border size.
	* @param width        Width of the table.
	* @param cellpadding  Cellpadding for the table cells.
	* @param cellspacing  Cellspacing for the table cells.
	*/
	@:overload public function table(border : Int, width : String, cellpadding : Int, cellspacing : Int) : Void;
	
	/**
	* Print HTML &lt;TABLE BORDER="border" WIDTH="width"
	* CELLPADDING="cellpadding" CELLSPACING="cellspacing" SUMMARY="summary"&gt; tag.
	*
	* @param border       Border size.
	* @param width        Width of the table.
	* @param cellpadding  Cellpadding for the table cells.
	* @param cellspacing  Cellspacing for the table cells.
	* @param summary      Table summary.
	*/
	@:overload public function table(border : Int, width : String, cellpadding : Int, cellspacing : Int, summary : String) : Void;
	
	/**
	* Print HTML &lt;TABLE BORDER="border" CELLPADDING="cellpadding"
	* CELLSPACING="cellspacing"&gt; tag.
	*
	* @param border       Border size.
	* @param cellpadding  Cellpadding for the table cells.
	* @param cellspacing  Cellspacing for the table cells.
	*/
	@:overload public function table(border : Int, cellpadding : Int, cellspacing : Int) : Void;
	
	/**
	* Print HTML &lt;TABLE BORDER="border" CELLPADDING="cellpadding"
	* CELLSPACING="cellspacing" SUMMARY="summary"&gt; tag.
	*
	* @param border       Border size.
	* @param cellpadding  Cellpadding for the table cells.
	* @param cellspacing  Cellspacing for the table cells.
	* @param summary      Table summary.
	*/
	@:overload public function table(border : Int, cellpadding : Int, cellspacing : Int, summary : String) : Void;
	
	/**
	* Print HTML &lt;TABLE BORDER="border" WIDTH="width"&gt;
	*
	* @param border       Border size.
	* @param width        Width of the table.
	*/
	@:overload public function table(border : Int, width : String) : Void;
	
	/**
	* Print the HTML table tag with border size 0 and width 100%.
	*/
	@:overload public function table() : Void;
	
	/**
	* Print &lt;/TABLE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function tableEnd() : Void;
	
	/**
	* Print &lt;TR&gt; tag. Add a newline character at the end.
	*/
	@:overload public function tr() : Void;
	
	/**
	* Print &lt;/TR&gt; tag. Add a newline character at the end.
	*/
	@:overload public function trEnd() : Void;
	
	/**
	* Print &lt;TD&gt; tag.
	*/
	@:overload public function td() : Void;
	
	/**
	* Print &lt;TD NOWRAP&gt; tag.
	*/
	@:overload public function tdNowrap() : Void;
	
	/**
	* Print &lt;TD WIDTH="width"&gt; tag.
	*
	* @param width String width.
	*/
	@:overload public function tdWidth(width : String) : Void;
	
	/**
	* Print &lt;/TD&gt; tag. Add a newline character at the end.
	*/
	@:overload public function tdEnd() : Void;
	
	/**
	* Print &lt;LINK str&gt; tag.
	*
	* @param str String.
	*/
	@:overload public function link(str : String) : Void;
	
	/**
	* Print "&lt;!-- " comment start string.
	*/
	@:overload public function commentStart() : Void;
	
	/**
	* Print "--&gt;" comment end string. Add a newline character at the end.
	*/
	@:overload public function commentEnd() : Void;
	
	/**
	* Print &lt;CAPTION CLASS="stylename"&gt; tag. Adds a newline character
	* at the end.
	*
	* @param stylename style to be applied.
	*/
	@:overload public function captionStyle(stylename : String) : Void;
	
	/**
	* Print &lt;/CAPTION&gt; tag. Add a newline character at the end.
	*/
	@:overload public function captionEnd() : Void;
	
	/**
	* Print &lt;TR BGCOLOR="color" CLASS="stylename"&gt; tag. Adds a newline character
	* at the end.
	*
	* @param color String color.
	* @param stylename String stylename.
	*/
	@:overload public function trBgcolorStyle(color : String, stylename : String) : Void;
	
	/**
	* Print &lt;TR BGCOLOR="color"&gt; tag. Adds a newline character at the end.
	*
	* @param color String color.
	*/
	@:overload public function trBgcolor(color : String) : Void;
	
	/**
	* Print &lt;TR ALIGN="align" VALIGN="valign"&gt; tag. Adds a newline character
	* at the end.
	*
	* @param align String align.
	* @param valign String valign.
	*/
	@:overload public function trAlignVAlign(align : String, valign : String) : Void;
	
	/**
	* Print &lt;TH ALIGN="align"&gt; tag.
	*
	* @param align the align attribute.
	*/
	@:overload public function thAlign(align : String) : Void;
	
	/**
	* Print &lt;TH CLASS="stylename" SCOPE="scope" NOWRAP&gt; tag.
	*
	* @param stylename style to be applied.
	* @param scope the scope attribute.
	*/
	@:overload public function thScopeNoWrap(stylename : String, scope : String) : Void;
	
	/*
	* Returns a header for Modifier and Type column of a table.
	*/
	@:overload public function getModifierTypeHeader() : String;
	
	/**
	* Print &lt;TH align="align" COLSPAN=i&gt; tag.
	*
	* @param align the align attribute.
	* @param i integer.
	*/
	@:overload public function thAlignColspan(align : String, i : Int) : Void;
	
	/**
	* Print &lt;TH align="align" NOWRAP&gt; tag.
	*
	* @param align the align attribute.
	*/
	@:overload public function thAlignNowrap(align : String) : Void;
	
	/**
	* Print &lt;/TH&gt; tag. Add a newline character at the end.
	*/
	@:overload public function thEnd() : Void;
	
	/**
	* Print &lt;TD COLSPAN=i&gt; tag.
	*
	* @param i integer.
	*/
	@:overload public function tdColspan(i : Int) : Void;
	
	/**
	* Print &lt;TD BGCOLOR="color" CLASS="stylename"&gt; tag.
	*
	* @param color String color.
	* @param stylename String stylename.
	*/
	@:overload public function tdBgcolorStyle(color : String, stylename : String) : Void;
	
	/**
	* Print &lt;TD COLSPAN=i BGCOLOR="color" CLASS="stylename"&gt; tag.
	*
	* @param i integer.
	* @param color String color.
	* @param stylename String stylename.
	*/
	@:overload public function tdColspanBgcolorStyle(i : Int, color : String, stylename : String) : Void;
	
	/**
	* Print &lt;TD ALIGN="align"&gt; tag. Adds a newline character
	* at the end.
	*
	* @param align String align.
	*/
	@:overload public function tdAlign(align : String) : Void;
	
	/**
	* Print &lt;TD ALIGN="align" CLASS="stylename"&gt; tag.
	*
	* @param align        String align.
	* @param stylename    String stylename.
	*/
	@:overload public function tdVAlignClass(align : String, stylename : String) : Void;
	
	/**
	* Print &lt;TD VALIGN="valign"&gt; tag.
	*
	* @param valign String valign.
	*/
	@:overload public function tdVAlign(valign : String) : Void;
	
	/**
	* Print &lt;TD ALIGN="align" VALIGN="valign"&gt; tag.
	*
	* @param align   String align.
	* @param valign  String valign.
	*/
	@:overload public function tdAlignVAlign(align : String, valign : String) : Void;
	
	/**
	* Print &lt;TD ALIGN="align" ROWSPAN=rowspan&gt; tag.
	*
	* @param align    String align.
	* @param rowspan  integer rowspan.
	*/
	@:overload public function tdAlignRowspan(align : String, rowspan : Int) : Void;
	
	/**
	* Print &lt;TD ALIGN="align" VALIGN="valign" ROWSPAN=rowspan&gt; tag.
	*
	* @param align    String align.
	* @param valign  String valign.
	* @param rowspan  integer rowspan.
	*/
	@:overload public function tdAlignVAlignRowspan(align : String, valign : String, rowspan : Int) : Void;
	
	/**
	* Print &lt;BLOCKQUOTE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function blockquote() : Void;
	
	/**
	* Print &lt;/BLOCKQUOTE&gt; tag. Add a newline character at the end.
	*/
	@:overload public function blockquoteEnd() : Void;
	
	/**
	* Get the "&lt;code&gt;" string.
	*
	* @return String Return String "&lt;code&gt;";
	*/
	@:overload public function getCode() : String;
	
	/**
	* Get the "&lt;/code&gt;" string.
	*
	* @return String Return String "&lt;/code&gt;";
	*/
	@:overload public function getCodeEnd() : String;
	
	/**
	* Print &lt;NOFRAMES&gt; tag. Add a newline character at the end.
	*/
	@:overload public function noFrames() : Void;
	
	/**
	* Print &lt;/NOFRAMES&gt; tag. Add a newline character at the end.
	*/
	@:overload public function noFramesEnd() : Void;
	
	
}
