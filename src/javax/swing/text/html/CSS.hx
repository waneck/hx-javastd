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
/**
* Defines a set of
* <a href="http://www.w3.org/TR/REC-CSS1">CSS attributes</a>
* as a typesafe enumeration.  The HTML View implementations use
* CSS attributes to determine how they will render. This also defines
* methods to map between CSS/HTML/StyleConstants. Any shorthand
* properties, such as font, are mapped to the intrinsic properties.
* <p>The following describes the CSS properties that are suppored by the
* rendering engine:
* <ul><li>font-family
*   <li>font-style
*   <li>font-size (supports relative units)
*   <li>font-weight
*   <li>font
*   <li>color
*   <li>background-color (with the exception of transparent)
*   <li>background-image
*   <li>background-repeat
*   <li>background-position
*   <li>background
*   <li>text-decoration (with the exception of blink and overline)
*   <li>vertical-align (only sup and super)
*   <li>text-align (justify is treated as center)
*   <li>margin-top
*   <li>margin-right
*   <li>margin-bottom
*   <li>margin-left
*   <li>margin
*   <li>padding-top
*   <li>padding-right
*   <li>padding-bottom
*   <li>padding-left
*   <li>padding
*   <li>border-top-style
*   <li>border-right-style
*   <li>border-bottom-style
*   <li>border-left-style
*   <li>border-style (only supports inset, outset and none)
*   <li>border-top-color
*   <li>border-right-color
*   <li>border-bottom-color
*   <li>border-left-color
*   <li>border-color
*   <li>list-style-image
*   <li>list-style-type
*   <li>list-style-position
* </ul>
* The following are modeled, but currently not rendered.
* <ul><li>font-variant
*   <li>background-attachment (background always treated as scroll)
*   <li>word-spacing
*   <li>letter-spacing
*   <li>text-indent
*   <li>text-transform
*   <li>line-height
*   <li>border-top-width (this is used to indicate if a border should be used)
*   <li>border-right-width
*   <li>border-bottom-width
*   <li>border-left-width
*   <li>border-width
*   <li>border-top
*   <li>border-right
*   <li>border-bottom
*   <li>border-left
*   <li>border
*   <li>width
*   <li>height
*   <li>float
*   <li>clear
*   <li>display
*   <li>white-space
*   <li>list-style
* </ul>
* <p><b>Note: for the time being we do not fully support relative units,
* unless noted, so that
* p { margin-top: 10% } will be treated as if no margin-top was specified.
*
* @author  Timothy Prinzing
* @author  Scott Violet
* @see StyleSheet
*/
extern class CSS implements java.io.Serializable
{
	@:overload public function new() : Void;
	
	/**
	* Return the set of all possible CSS attribute keys.
	*/
	@:overload public static function getAllAttributeKeys() : java.NativeArray<CSS_Attribute>;
	
	/**
	* Translates a string to a <code>CSS.Attribute</code> object.
	* This will return <code>null</code> if there is no attribute
	* by the given name.
	*
	* @param name the name of the CSS attribute to fetch the
	*  typesafe enumeration for
	* @return the <code>CSS.Attribute</code> object,
	*  or <code>null</code> if the string
	*  doesn't represent a valid attribute key
	*/
	@:overload @:final public static function getAttribute(name : String) : CSS_Attribute;
	
	
}
/**
* Definitions to be used as a key on AttributeSet's
* that might hold CSS attributes.  Since this is a
* closed set (i.e. defined exactly by the specification),
* it is final and cannot be extended.
*/
@:native('javax$swing$text$html$CSS$Attribute') extern class CSS_Attribute
{
	/**
	* The string representation of the attribute.  This
	* should exactly match the string specified in the
	* CSS specification.
	*/
	@:overload public function toString() : String;
	
	/**
	* Fetch the default value for the attribute.
	* If there is no default value (such as for
	* composite attributes), null will be returned.
	*/
	@:overload public function getDefaultValue() : String;
	
	/**
	* Indicates if the attribute should be inherited
	* from the parent or not.
	*/
	@:overload public function isInherited() : Bool;
	
	public static var BACKGROUND(default, null) : CSS_Attribute;
	
	public static var BACKGROUND_ATTACHMENT(default, null) : CSS_Attribute;
	
	public static var BACKGROUND_COLOR(default, null) : CSS_Attribute;
	
	public static var BACKGROUND_IMAGE(default, null) : CSS_Attribute;
	
	public static var BACKGROUND_POSITION(default, null) : CSS_Attribute;
	
	public static var BACKGROUND_REPEAT(default, null) : CSS_Attribute;
	
	public static var BORDER(default, null) : CSS_Attribute;
	
	public static var BORDER_BOTTOM(default, null) : CSS_Attribute;
	
	public static var BORDER_BOTTOM_COLOR(default, null) : CSS_Attribute;
	
	public static var BORDER_BOTTOM_STYLE(default, null) : CSS_Attribute;
	
	public static var BORDER_BOTTOM_WIDTH(default, null) : CSS_Attribute;
	
	public static var BORDER_COLOR(default, null) : CSS_Attribute;
	
	public static var BORDER_LEFT(default, null) : CSS_Attribute;
	
	public static var BORDER_LEFT_COLOR(default, null) : CSS_Attribute;
	
	public static var BORDER_LEFT_STYLE(default, null) : CSS_Attribute;
	
	public static var BORDER_LEFT_WIDTH(default, null) : CSS_Attribute;
	
	public static var BORDER_RIGHT(default, null) : CSS_Attribute;
	
	public static var BORDER_RIGHT_COLOR(default, null) : CSS_Attribute;
	
	public static var BORDER_RIGHT_STYLE(default, null) : CSS_Attribute;
	
	public static var BORDER_RIGHT_WIDTH(default, null) : CSS_Attribute;
	
	public static var BORDER_STYLE(default, null) : CSS_Attribute;
	
	public static var BORDER_TOP(default, null) : CSS_Attribute;
	
	public static var BORDER_TOP_COLOR(default, null) : CSS_Attribute;
	
	public static var BORDER_TOP_STYLE(default, null) : CSS_Attribute;
	
	public static var BORDER_TOP_WIDTH(default, null) : CSS_Attribute;
	
	public static var BORDER_WIDTH(default, null) : CSS_Attribute;
	
	public static var CLEAR(default, null) : CSS_Attribute;
	
	public static var COLOR(default, null) : CSS_Attribute;
	
	public static var DISPLAY(default, null) : CSS_Attribute;
	
	public static var FLOAT(default, null) : CSS_Attribute;
	
	public static var FONT(default, null) : CSS_Attribute;
	
	public static var FONT_FAMILY(default, null) : CSS_Attribute;
	
	public static var FONT_SIZE(default, null) : CSS_Attribute;
	
	public static var FONT_STYLE(default, null) : CSS_Attribute;
	
	public static var FONT_VARIANT(default, null) : CSS_Attribute;
	
	public static var FONT_WEIGHT(default, null) : CSS_Attribute;
	
	public static var HEIGHT(default, null) : CSS_Attribute;
	
	public static var LETTER_SPACING(default, null) : CSS_Attribute;
	
	public static var LINE_HEIGHT(default, null) : CSS_Attribute;
	
	public static var LIST_STYLE(default, null) : CSS_Attribute;
	
	public static var LIST_STYLE_IMAGE(default, null) : CSS_Attribute;
	
	public static var LIST_STYLE_POSITION(default, null) : CSS_Attribute;
	
	public static var LIST_STYLE_TYPE(default, null) : CSS_Attribute;
	
	public static var MARGIN(default, null) : CSS_Attribute;
	
	public static var MARGIN_BOTTOM(default, null) : CSS_Attribute;
	
	public static var MARGIN_LEFT(default, null) : CSS_Attribute;
	
	public static var MARGIN_RIGHT(default, null) : CSS_Attribute;
	
	public static var MARGIN_TOP(default, null) : CSS_Attribute;
	
	public static var PADDING(default, null) : CSS_Attribute;
	
	public static var PADDING_BOTTOM(default, null) : CSS_Attribute;
	
	public static var PADDING_LEFT(default, null) : CSS_Attribute;
	
	public static var PADDING_RIGHT(default, null) : CSS_Attribute;
	
	public static var PADDING_TOP(default, null) : CSS_Attribute;
	
	public static var TEXT_ALIGN(default, null) : CSS_Attribute;
	
	public static var TEXT_DECORATION(default, null) : CSS_Attribute;
	
	public static var TEXT_INDENT(default, null) : CSS_Attribute;
	
	public static var TEXT_TRANSFORM(default, null) : CSS_Attribute;
	
	public static var VERTICAL_ALIGN(default, null) : CSS_Attribute;
	
	public static var WORD_SPACING(default, null) : CSS_Attribute;
	
	public static var WHITE_SPACE(default, null) : CSS_Attribute;
	
	public static var WIDTH(default, null) : CSS_Attribute;
	
	
}
@:native('javax$swing$text$html$CSS$Value') @:internal extern class CSS_Value
{
	/**
	* The string representation of the attribute.  This
	* should exactly match the string specified in the
	* CSS specification.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Base class to CSS values in the attribute sets.  This
* is intended to act as a convertor to/from other attribute
* formats.
* <p>
* The CSS parser uses the parseCssValue method to convert
* a string to whatever format is appropriate a given key
* (i.e. these convertors are stored in a map using the
* CSS.Attribute as a key and the CssValue as the value).
* <p>
* The HTML to CSS conversion process first converts the
* HTML.Attribute to a CSS.Attribute, and then calls
* the parseHtmlValue method on the value of the HTML
* attribute to produce the corresponding CSS value.
* <p>
* The StyleConstants to CSS conversion process first
* converts the StyleConstants attribute to a
* CSS.Attribute, and then calls the fromStyleConstants
* method to convert the StyleConstants value to a
* CSS value.
* <p>
* The CSS to StyleConstants conversion process first
* converts the StyleConstants attribute to a
* CSS.Attribute, and then calls the toStyleConstants
* method to convert the CSS value to a StyleConstants
* value.
*/
@:native('javax$swing$text$html$CSS$CssValue') @:internal extern class CSS_CssValue implements java.io.Serializable
{
	/**
	* Return the CSS format of the value
	*/
	@:overload public function toString() : String;
	
	
}
/**
* By default CSS attributes are represented as simple
* strings.  They also have no conversion to/from
* StyleConstants by default. This class represents the
* value as a string (via the superclass), but
* provides StyleConstants conversion support for the
* CSS attributes that are held as strings.
*/
@:native('javax$swing$text$html$CSS$StringValue') @:internal extern class CSS_StringValue extends CSS_CssValue
{
	
}
/**
* Represents a value for the CSS.FONT_SIZE attribute.
* The binary format of the value can be one of several
* types.  If the type is Float,
* the value is specified in terms of point or
* percentage, depending upon the ending of the
* associated string.
* If the type is Integer, the value is specified
* in terms of a size index.
*/
@:native('javax$swing$text$html$CSS$FontSize') @:internal extern class CSS_FontSize extends CSS_CssValue
{
	
}
@:native('javax$swing$text$html$CSS$FontFamily') @:internal extern class CSS_FontFamily extends CSS_CssValue
{
	
}
@:native('javax$swing$text$html$CSS$FontWeight') @:internal extern class CSS_FontWeight extends CSS_CssValue
{
	
}
@:native('javax$swing$text$html$CSS$ColorValue') @:internal extern class CSS_ColorValue extends CSS_CssValue
{
	
}
@:native('javax$swing$text$html$CSS$BorderStyle') @:internal extern class CSS_BorderStyle extends CSS_CssValue
{
	
}
@:native('javax$swing$text$html$CSS$LengthValue') @:internal extern class CSS_LengthValue extends CSS_CssValue
{
	
}
/**
* BorderWidthValue is used to model BORDER_XXX_WIDTH and adds support
* for the thin/medium/thick values.
*/
@:native('javax$swing$text$html$CSS$BorderWidthValue') @:internal extern class CSS_BorderWidthValue extends CSS_LengthValue
{
	
}
/**
* Handles uniquing of CSS values, like lists, and background image
* repeating.
*/
@:native('javax$swing$text$html$CSS$CssValueMapper') @:internal extern class CSS_CssValueMapper extends CSS_CssValue
{
	
}
/**
* Used for background images, to represent the position.
*/
@:native('javax$swing$text$html$CSS$BackgroundPosition') @:internal extern class CSS_BackgroundPosition extends CSS_CssValue
{
	
}
/**
* Used for BackgroundImages.
*/
@:native('javax$swing$text$html$CSS$BackgroundImage') @:internal extern class CSS_BackgroundImage extends CSS_CssValue
{
	
}
/**
* Parses a length value, this is used internally, and never added
* to an AttributeSet or returned to the developer.
*/
@:native('javax$swing$text$html$CSS$LengthUnit') @:internal extern class CSS_LengthUnit implements java.io.Serializable
{
	@:overload public function toString() : String;
	
	
}
/**
* Class used to parse font property. The font property is shorthand
* for the other font properties. This expands the properties, placing
* them in the attributeset.
*/
@:native('javax$swing$text$html$CSS$ShorthandFontParser') @:internal extern class CSS_ShorthandFontParser
{
	
}
/**
* Parses the background property into its intrinsic values.
*/
@:native('javax$swing$text$html$CSS$ShorthandBackgroundParser') @:internal extern class CSS_ShorthandBackgroundParser
{
	
}
/**
* Used to parser margin and padding.
*/
@:native('javax$swing$text$html$CSS$ShorthandMarginParser') @:internal extern class CSS_ShorthandMarginParser
{
	
}
@:native('javax$swing$text$html$CSS$ShorthandBorderParser') @:internal extern class CSS_ShorthandBorderParser
{
	
}
/**
* An iterator to express the requirements to use when computing
* layout.
*/
@:native('javax$swing$text$html$CSS$LayoutIterator') @:internal extern interface CSS_LayoutIterator
{
	@:overload public function setOffset(offs : Int) : Void;
	
	@:overload public function getOffset() : Int;
	
	@:overload public function setSpan(span : Int) : Void;
	
	@:overload public function getSpan() : Int;
	
	@:overload public function getCount() : Int;
	
	@:overload public function setIndex(i : Int) : Void;
	
	@:overload public function getMinimumSpan(parentSpan : Single) : Single;
	
	@:overload public function getPreferredSpan(parentSpan : Single) : Single;
	
	@:overload public function getMaximumSpan(parentSpan : Single) : Single;
	
	@:overload public function getAdjustmentWeight() : Int;
	
	@:overload public function getBorderWidth() : Single;
	
	@:overload public function getLeadingCollapseSpan() : Single;
	
	@:overload public function getTrailingCollapseSpan() : Single;
	
	
}
