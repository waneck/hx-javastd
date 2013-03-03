package javax.swing.text.html;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class HTML
{
	/**
	* Returns the set of actual HTML tags that
	* are recognized by the default HTML reader.
	* This set does not include tags that are
	* manufactured by the reader.
	*/
	@:overload @:public @:static public static function getAllTags() : java.NativeArray<javax.swing.text.html.HTML.HTML_Tag>;
	
	/**
	* Fetches a tag constant for a well-known tag name (i.e. one of
	* the tags in the set {A, ADDRESS, APPLET, AREA, B,
	* BASE, BASEFONT, BIG,
	* BLOCKQUOTE, BODY, BR, CAPTION, CENTER, CITE, CODE,
	* DD, DFN, DIR, DIV, DL, DT, EM, FONT, FORM, FRAME,
	* FRAMESET, H1, H2, H3, H4, H5, H6, HEAD, HR, HTML,
	* I, IMG, INPUT, ISINDEX, KBD, LI, LINK, MAP, MENU,
	* META, NOBR, NOFRAMES, OBJECT, OL, OPTION, P, PARAM,
	* PRE, SAMP, SCRIPT, SELECT, SMALL, SPAN, STRIKE, S,
	* STRONG, STYLE, SUB, SUP, TABLE, TD, TEXTAREA,
	* TH, TITLE, TR, TT, U, UL, VAR}.  If the given
	* name does not represent one of the well-known tags, then
	* <code>null</code> will be returned.
	*
	* @param tagName the <code>String</code> name requested
	* @return a tag constant corresponding to the <code>tagName</code>,
	*    or <code>null</code> if not found
	*/
	@:overload @:public @:static public static function getTag(tagName : String) : javax.swing.text.html.HTML.HTML_Tag;
	
	/**
	* Fetches an integer attribute value.  Attribute values
	* are stored as a string, and this is a convenience method
	* to convert to an actual integer.
	*
	* @param attr the set of attributes to use to try to fetch a value
	* @param key the key to use to fetch the value
	* @param def the default value to use if the attribute isn't
	*  defined or there is an error converting to an integer
	*/
	@:overload @:public @:static public static function getIntegerAttributeValue(attr : javax.swing.text.AttributeSet, key : javax.swing.text.html.HTML.HTML_Attribute, def : Int) : Int;
	
	@:public @:static @:final public static var NULL_ATTRIBUTE_VALUE(default, null) : String;
	
	/**
	* Returns the set of HTML attributes recognized.
	* @return the set of HTML attributes recognized
	*/
	@:overload @:public @:static public static function getAllAttributeKeys() : java.NativeArray<javax.swing.text.html.HTML.HTML_Attribute>;
	
	/**
	* Fetches an attribute constant for a well-known attribute name
	* (i.e. one of the attributes in the set {FACE, COMMENT, SIZE,
	* COLOR, CLEAR, BACKGROUND, BGCOLOR, TEXT, LINK, VLINK, ALINK,
	* WIDTH, HEIGHT, ALIGN, NAME, HREF, REL, REV, TITLE, TARGET,
	* SHAPE, COORDS, ISMAP, NOHREF, ALT, ID, SRC, HSPACE, VSPACE,
	* USEMAP, LOWSRC, CODEBASE, CODE, ARCHIVE, VALUE, VALUETYPE,
	* TYPE, CLASS, STYLE, LANG, DIR, DECLARE, CLASSID, DATA, CODETYPE,
	* STANDBY, BORDER, SHAPES, NOSHADE, COMPACT, START, ACTION, METHOD,
	* ENCTYPE, CHECKED, MAXLENGTH, MULTIPLE, SELECTED, ROWS, COLS,
	* DUMMY, CELLSPACING, CELLPADDING, VALIGN, HALIGN, NOWRAP, ROWSPAN,
	* COLSPAN, PROMPT, HTTPEQUIV, CONTENT, LANGUAGE, VERSION, N,
	* FRAMEBORDER, MARGINWIDTH, MARGINHEIGHT, SCROLLING, NORESIZE,
	* MEDIA, ENDTAG}).
	* If the given name does not represent one of the well-known attributes,
	* then <code>null</code> will be returned.
	*
	* @param attName the <code>String</code> requested
	* @return the <code>Attribute</code> corresponding to <code>attName</code>
	*/
	@:overload @:public @:static public static function getAttributeKey(attName : String) : javax.swing.text.html.HTML.HTML_Attribute;
	
	
}
/**
* Typesafe enumeration for an HTML tag.  Although the
* set of HTML tags is a closed set, we have left the
* set open so that people can add their own tag types
* to their custom parser and still communicate to the
* reader.
*/
@:native('javax$swing$text$html$HTML$Tag') extern class HTML_Tag
{
	/** @since 1.3 */
	@:require(java3) @:overload @:public public function new() : Void;
	
	/**
	* Creates a new <code>Tag</code> with the specified <code>id</code>,
	* and with <code>causesBreak</code> and <code>isBlock</code>
	* set to <code>false</code>.
	*
	* @param id  the id of the new tag
	*/
	@:overload @:protected private function new(id : String) : Void;
	
	/**
	* Creates a new <code>Tag</code> with the specified <code>id</code>;
	* <code>causesBreak</code> and <code>isBlock</code> are defined
	* by the user.
	*
	* @param id the id of the new tag
	* @param causesBreak  <code>true</code> if this tag
	*    causes a break to the flow of data
	* @param isBlock <code>true</code> if the tag is used
	*    to add structure to a document
	*/
	@:overload @:protected private function new(id : String, causesBreak : Bool, isBlock : Bool) : Void;
	
	/**
	* Returns <code>true</code> if this tag is a block
	* tag, which is a tag used to add structure to a
	* document.
	*
	* @return <code>true</code> if this tag is a block
	*   tag, otherwise returns <code>false</code>
	*/
	@:overload @:public public function isBlock() : Bool;
	
	/**
	* Returns <code>true</code> if this tag causes a
	* line break to the flow of data, otherwise returns
	* <code>false</code>.
	*
	* @return <code>true</code> if this tag causes a
	*   line break to the flow of data, otherwise returns
	*   <code>false</code>
	*/
	@:overload @:public public function breaksFlow() : Bool;
	
	/**
	* Returns <code>true</code> if this tag is pre-formatted,
	* which is true if the tag is either <code>PRE</code> or
	* <code>TEXTAREA</code>.
	*
	* @return <code>true</code> if this tag is pre-formatted,
	*   otherwise returns <code>false</code>
	*/
	@:overload @:public public function isPreformatted() : Bool;
	
	/**
	* Returns the string representation of the
	* tag.
	*
	* @return the <code>String</code> representation of the tag
	*/
	@:overload @:public public function toString() : String;
	
	@:public @:static @:final public static var A(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var ADDRESS(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var APPLET(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var AREA(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var B(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var BASE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var BASEFONT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var BIG(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var BLOCKQUOTE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var BODY(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var BR(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var CAPTION(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var CENTER(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var CITE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var CODE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var DD(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var DFN(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var DIR(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var DIV(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var DL(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var DT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var EM(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var FONT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var FORM(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var FRAME(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var FRAMESET(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var H1(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var H2(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var H3(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var H4(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var H5(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var H6(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var HEAD(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var HR(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var HTML(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var I(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var IMG(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var INPUT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var ISINDEX(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var KBD(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var LI(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var LINK(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var MAP(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var MENU(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var META(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var NOFRAMES(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var OBJECT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var OL(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var OPTION(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var P(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var PARAM(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var PRE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SAMP(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SCRIPT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SELECT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SMALL(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SPAN(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var STRIKE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var S(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var STRONG(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var STYLE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SUB(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var SUP(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TABLE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TD(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TEXTAREA(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TH(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TITLE(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TR(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var TT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var U(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var UL(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	@:public @:static @:final public static var VAR(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	/**
	* All text content must be in a paragraph element.
	* If a paragraph didn't exist when content was
	* encountered, a paragraph is manufactured.
	* <p>
	* This is a tag synthesized by the HTML reader.
	* Since elements are identified by their tag type,
	* we create a some fake tag types to mark the elements
	* that were manufactured.
	*/
	@:public @:static @:final public static var IMPLIED(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	/**
	* All text content is labeled with this tag.
	* <p>
	* This is a tag synthesized by the HTML reader.
	* Since elements are identified by their tag type,
	* we create a some fake tag types to mark the elements
	* that were manufactured.
	*/
	@:public @:static @:final public static var CONTENT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	/**
	* All comments are labeled with this tag.
	* <p>
	* This is a tag synthesized by the HTML reader.
	* Since elements are identified by their tag type,
	* we create a some fake tag types to mark the elements
	* that were manufactured.
	*/
	@:public @:static @:final public static var COMMENT(default, null) : javax.swing.text.html.HTML.HTML_Tag;
	
	
}
@:native('javax$swing$text$html$HTML$UnknownTag') extern class HTML_UnknownTag extends javax.swing.text.html.HTML.HTML_Tag implements java.io.Serializable
{
	/**
	* Creates a new <code>UnknownTag</code> with the specified
	* <code>id</code>.
	* @param id the id of the new tag
	*/
	@:overload @:public public function new(id : String) : Void;
	
	/**
	* Returns the hash code which corresponds to the string
	* for this tag.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this object to the specifed object.
	* The result is <code>true</code> if and only if the argument is not
	* <code>null</code> and is an <code>UnknownTag</code> object
	* with the same name.
	*
	* @param     obj   the object to compare this tag with
	* @return    <code>true</code> if the objects are equal;
	*            <code>false</code> otherwise
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* Typesafe enumeration representing an HTML
* attribute.
*/
@:native('javax$swing$text$html$HTML$Attribute') extern class HTML_Attribute
{
	/**
	* Returns the string representation of this attribute.
	* @return the string representation of this attribute
	*/
	@:overload @:public public function toString() : String;
	
	@:public @:static @:final public static var SIZE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var COLOR(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CLEAR(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var BACKGROUND(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var BGCOLOR(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var TEXT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var LINK(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var VLINK(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ALINK(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var WIDTH(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var HEIGHT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ALIGN(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var NAME(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var HREF(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var REL(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var REV(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var TITLE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var TARGET(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var SHAPE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var COORDS(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ISMAP(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var NOHREF(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ALT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ID(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var SRC(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var HSPACE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var VSPACE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var USEMAP(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var LOWSRC(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CODEBASE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CODE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ARCHIVE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var VALUE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var VALUETYPE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var TYPE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CLASS(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var STYLE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var LANG(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var FACE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var DIR(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var DECLARE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CLASSID(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var DATA(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CODETYPE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var STANDBY(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var BORDER(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var SHAPES(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var NOSHADE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var COMPACT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var START(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ACTION(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var METHOD(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ENCTYPE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CHECKED(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var MAXLENGTH(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var MULTIPLE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var SELECTED(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ROWS(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var COLS(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var DUMMY(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CELLSPACING(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CELLPADDING(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var VALIGN(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var HALIGN(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var NOWRAP(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ROWSPAN(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var COLSPAN(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var PROMPT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var HTTPEQUIV(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var CONTENT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var LANGUAGE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var VERSION(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var N(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var FRAMEBORDER(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var MARGINWIDTH(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var MARGINHEIGHT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var SCROLLING(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var NORESIZE(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var ENDTAG(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	@:public @:static @:final public static var COMMENT(default, null) : javax.swing.text.html.HTML.HTML_Attribute;
	
	
}
