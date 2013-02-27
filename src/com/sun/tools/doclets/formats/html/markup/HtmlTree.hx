package com.sun.tools.doclets.formats.html.markup;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Class for generating HTML tree for javadoc output.
*
* @author Bhavesh Patel
*/
extern class HtmlTree extends com.sun.tools.doclets.internal.toolkit.Content
{
	public static var EMPTY(default, null) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Constructor to construct HtmlTree object.
	*
	* @param tag HTML tag for the HtmlTree object
	*/
	@:overload public function new(tag : com.sun.tools.doclets.formats.html.markup.HtmlTag) : Void;
	
	/**
	* Constructor to construct HtmlTree object.
	*
	* @param tag HTML tag for the HtmlTree object
	* @param contents contents to be added to the tree
	*/
	@:overload public function new(tag : com.sun.tools.doclets.formats.html.markup.HtmlTag, contents : java.NativeArray<com.sun.tools.doclets.internal.toolkit.Content>) : Void;
	
	/**
	* Adds an attribute for the HTML tag.
	*
	* @param attrName name of the attribute
	* @param attrValue value of the attribute
	*/
	@:overload public function addAttr(attrName : com.sun.tools.doclets.formats.html.markup.HtmlAttr, attrValue : String) : Void;
	
	/**
	* Adds a style for the HTML tag.
	*
	* @param style style to be added
	*/
	@:overload public function addStyle(style : com.sun.tools.doclets.formats.html.markup.HtmlStyle) : Void;
	
	/**
	* Adds content for the HTML tag.
	*
	* @param tagContent tag content to be added
	*/
	@:overload public function addContent(tagContent : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* This method adds a string content to the htmltree. If the last content member
	* added is a StringContent, append the string to that StringContent or else
	* create a new StringContent and add it to the html tree.
	*
	* @param stringContent string content that needs to be added
	*/
	@:overload override public function addContent(stringContent : String) : Void;
	
	/**
	* Generates an HTML anchor tag.
	*
	* @param ref reference url for the anchor tag
	* @param body content for the anchor tag
	* @return an HtmlTree object
	*/
	@:overload public static function A(ref : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates an HTML anchor tag with name attribute and content.
	*
	* @param name name for the anchor tag
	* @param body content for the anchor tag
	* @return an HtmlTree object
	*/
	@:overload public static function A_NAME(name : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates an HTML anchor tag with name attribute.
	*
	* @param name name for the anchor tag
	* @return an HtmlTree object
	*/
	@:overload public static function A_NAME(name : String) : HtmlTree;
	
	/**
	* Generates a CAPTION tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the CAPTION tag
	*/
	@:overload public static function CAPTION(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a CODE tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the CODE tag
	*/
	@:overload public static function CODE(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a DD tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the DD tag
	*/
	@:overload public static function DD(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a DL tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the DL tag
	*/
	@:overload public static function DL(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a DIV tag with the style class attributes. It also encloses
	* a content.
	*
	* @param styleClass stylesheet class for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the DIV tag
	*/
	@:overload public static function DIV(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a DIV tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the DIV tag
	*/
	@:overload public static function DIV(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a DT tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the DT tag
	*/
	@:overload public static function DT(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a EM tag with some content.
	*
	* @param body content to be added to the tag
	* @return an HtmlTree object for the EM tag
	*/
	@:overload public static function EM(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a FRAME tag.
	*
	* @param src the url of the document to be shown in the frame
	* @param name specifies the name of the frame
	* @param title the title for the frame
	* @param scrolling specifies whether to display scrollbars in the frame
	* @return an HtmlTree object for the FRAME tag
	*/
	@:overload public static function FRAME(src : String, name : String, title : String, scrolling : String) : HtmlTree;
	
	/**
	* Generates a Frame tag.
	*
	* @param src the url of the document to be shown in the frame
	* @param name specifies the name of the frame
	* @param title the title for the frame
	* @return an HtmlTree object for the SPAN tag
	*/
	@:overload public static function FRAME(src : String, name : String, title : String) : HtmlTree;
	
	/**
	* Generates a FRAMESET tag.
	*
	* @param cols the size of columns in the frameset
	* @param rows the size of rows in the frameset
	* @param title the title for the frameset
	* @param onload the script to run when the document loads
	* @return an HtmlTree object for the FRAMESET tag
	*/
	@:overload public static function FRAMESET(cols : String, rows : String, title : String, onload : String) : HtmlTree;
	
	/**
	* Generates a heading tag (h1 to h6) with the title and style class attributes. It also encloses
	* a content.
	*
	* @param headingTag the heading tag to be generated
	* @param printTitle true if title for the tag needs to be printed else false
	* @param styleClass stylesheet class for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the tag
	*/
	@:overload public static function HEADING(headingTag : com.sun.tools.doclets.formats.html.markup.HtmlTag, printTitle : Bool, styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a heading tag (h1 to h6) with style class attribute. It also encloses
	* a content.
	*
	* @param headingTag the heading tag to be generated
	* @param styleClass stylesheet class for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the tag
	*/
	@:overload public static function HEADING(headingTag : com.sun.tools.doclets.formats.html.markup.HtmlTag, styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a heading tag (h1 to h6) with the title attribute. It also encloses
	* a content.
	*
	* @param headingTag the heading tag to be generated
	* @param printTitle true if the title for the tag needs to be printed else false
	* @param body content for the tag
	* @return an HtmlTree object for the tag
	*/
	@:overload public static function HEADING(headingTag : com.sun.tools.doclets.formats.html.markup.HtmlTag, printTitle : Bool, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a heading tag (h1 to h6)  with some content.
	*
	* @param headingTag the heading tag to be generated
	* @param body content for the tag
	* @return an HtmlTree object for the tag
	*/
	@:overload public static function HEADING(headingTag : com.sun.tools.doclets.formats.html.markup.HtmlTag, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates an HTML tag with lang attribute. It also adds head and body
	* content to the HTML tree.
	*
	* @param lang language for the HTML document
	* @param head head for the HTML tag
	* @param body body for the HTML tag
	* @return an HtmlTree object for the HTML tag
	*/
	@:overload public static function HTML(lang : String, head : com.sun.tools.doclets.internal.toolkit.Content, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a I tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the I tag
	*/
	@:overload public static function I(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a LI tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the LI tag
	*/
	@:overload public static function LI(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a LI tag with some content.
	*
	* @param styleClass style for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the LI tag
	*/
	@:overload public static function LI(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a LINK tag with the rel, type, href and title attributes.
	*
	* @param rel relevance of the link
	* @param type type of link
	* @param href the path for the link
	* @param title title for the link
	* @return an HtmlTree object for the LINK tag
	*/
	@:overload public static function LINK(rel : String, type : String, href : String, title : String) : HtmlTree;
	
	/**
	* Generates a META tag with the http-equiv, content and charset attributes.
	*
	* @param http-equiv http equiv attribute for the META tag
	* @param content type of content
	* @param charset character set used
	* @return an HtmlTree object for the META tag
	*/
	@:overload public static function META(httpEquiv : String, content : String, charSet : String) : HtmlTree;
	
	/**
	* Generates a META tag with the name and content attributes.
	*
	* @param name name attribute
	* @param content type of content
	* @return an HtmlTree object for the META tag
	*/
	@:overload public static function META(name : String, content : String) : HtmlTree;
	
	/**
	* Generates a NOSCRIPT tag with some content.
	*
	* @param body content of the noscript tag
	* @return an HtmlTree object for the NOSCRIPT tag
	*/
	@:overload public static function NOSCRIPT(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a P tag with some content.
	*
	* @param body content of the Paragraph tag
	* @return an HtmlTree object for the P tag
	*/
	@:overload public static function P(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a P tag with some content.
	*
	* @param styleClass style of the Paragraph tag
	* @param body content of the Paragraph tag
	* @return an HtmlTree object for the P tag
	*/
	@:overload public static function P(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a SMALL tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the SMALL tag
	*/
	@:overload public static function SMALL(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a STRONG tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the STRONG tag
	*/
	@:overload public static function STRONG(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a SPAN tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the SPAN tag
	*/
	@:overload public static function SPAN(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a SPAN tag with style class attribute and some content.
	*
	* @param styleClass style class for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the SPAN tag
	*/
	@:overload public static function SPAN(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a Table tag with border, width and summary attributes and
	* some content.
	*
	* @param border border for the table
	* @param width width of the table
	* @param summary summary for the table
	* @param body content for the table
	* @return an HtmlTree object for the TABLE tag
	*/
	@:overload public static function TABLE(border : Int, width : Int, summary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a Table tag with style class, border, cell padding,
	* cellspacing and summary attributes and some content.
	*
	* @param styleClass style of the table
	* @param border border for the table
	* @param cellPadding cell padding for the table
	* @param cellSpacing cell spacing for the table
	* @param summary summary for the table
	* @param body content for the table
	* @return an HtmlTree object for the TABLE tag
	*/
	@:overload public static function TABLE(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, border : Int, cellPadding : Int, cellSpacing : Int, summary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a Table tag with border, cell padding,
	* cellspacing and summary attributes and some content.
	*
	* @param border border for the table
	* @param cellPadding cell padding for the table
	* @param cellSpacing cell spacing for the table
	* @param summary summary for the table
	* @param body content for the table
	* @return an HtmlTree object for the TABLE tag
	*/
	@:overload public static function TABLE(border : Int, cellPadding : Int, cellSpacing : Int, summary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a TD tag with style class attribute and some content.
	*
	* @param styleClass style for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the TD tag
	*/
	@:overload public static function TD(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a TD tag for an HTML table with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the TD tag
	*/
	@:overload public static function TD(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a TH tag with style class and scope attributes and some content.
	*
	* @param styleClass style for the tag
	* @param scope scope of the tag
	* @param body content for the tag
	* @return an HtmlTree object for the TH tag
	*/
	@:overload public static function TH(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, scope : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a TH tag with scope attribute and some content.
	*
	* @param scope scope of the tag
	* @param body content for the tag
	* @return an HtmlTree object for the TH tag
	*/
	@:overload public static function TH(scope : String, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a TITLE tag with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the TITLE tag
	*/
	@:overload public static function TITLE(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a TR tag for an HTML table with some content.
	*
	* @param body content for the tag
	* @return an HtmlTree object for the TR tag
	*/
	@:overload public static function TR(body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* Generates a UL tag with the style class attribute and some content.
	*
	* @param styleClass style for the tag
	* @param body content for the tag
	* @return an HtmlTree object for the UL tag
	*/
	@:overload public static function UL(styleClass : com.sun.tools.doclets.formats.html.markup.HtmlStyle, body : com.sun.tools.doclets.internal.toolkit.Content) : HtmlTree;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function isEmpty() : Bool;
	
	/**
	* Returns true if the HTML tree has content.
	*
	* @return true if the HTML tree has content else return false
	*/
	@:overload public function hasContent() : Bool;
	
	/**
	* Returns true if the HTML tree has attributes.
	*
	* @return true if the HTML tree has attributes else return false
	*/
	@:overload public function hasAttrs() : Bool;
	
	/**
	* Returns true if the HTML tree has a specific attribute.
	*
	* @param attrName name of the attribute to check within the HTML tree
	* @return true if the HTML tree has the specified attribute else return false
	*/
	@:overload public function hasAttr(attrName : com.sun.tools.doclets.formats.html.markup.HtmlAttr) : Bool;
	
	/**
	* Returns true if the HTML tree is valid. This check is more specific to
	* standard doclet and not exactly similar to W3C specifications. But it
	* ensures HTML validation.
	*
	* @return true if the HTML tree is valid
	*/
	@:overload override public function isValid() : Bool;
	
	/**
	* Returns true if the element is an inline element.
	*
	* @return true if the HTML tag is an inline element
	*/
	@:overload public function isInline() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function write(contentBuilder : java.lang.StringBuilder) : Void;
	
	
}
