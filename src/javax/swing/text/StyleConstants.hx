package javax.swing.text;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class StyleConstants
{
	/**
	* Name of elements used to represent components.
	*/
	@:public @:static @:final public static var ComponentElementName(default, null) : String;
	
	/**
	* Name of elements used to represent icons.
	*/
	@:public @:static @:final public static var IconElementName(default, null) : String;
	
	/**
	* Attribute name used to name the collection of
	* attributes.
	*/
	@:public @:static @:final public static var NameAttribute(default, null) : Dynamic;
	
	/**
	* Attribute name used to identifiy the resolving parent
	* set of attributes, if one is defined.
	*/
	@:public @:static @:final public static var ResolveAttribute(default, null) : Dynamic;
	
	/**
	* Attribute used to identify the model for embedded
	* objects that have a model view separation.
	*/
	@:public @:static @:final public static var ModelAttribute(default, null) : Dynamic;
	
	/**
	* Returns the string representation.
	*
	* @return the string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Bidirectional level of a character as assigned by the Unicode bidi
	* algorithm.
	*/
	@:public @:static @:final public static var BidiLevel(default, null) : Dynamic;
	
	/**
	* Name of the font family.
	*/
	@:public @:static @:final public static var FontFamily(default, null) : Dynamic;
	
	/**
	* Name of the font family.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var Family(default, null) : Dynamic;
	
	/**
	* Name of the font size.
	*/
	@:public @:static @:final public static var FontSize(default, null) : Dynamic;
	
	/**
	* Name of the font size.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var Size(default, null) : Dynamic;
	
	/**
	* Name of the bold attribute.
	*/
	@:public @:static @:final public static var Bold(default, null) : Dynamic;
	
	/**
	* Name of the italic attribute.
	*/
	@:public @:static @:final public static var Italic(default, null) : Dynamic;
	
	/**
	* Name of the underline attribute.
	*/
	@:public @:static @:final public static var Underline(default, null) : Dynamic;
	
	/**
	* Name of the Strikethrough attribute.
	*/
	@:public @:static @:final public static var StrikeThrough(default, null) : Dynamic;
	
	/**
	* Name of the Superscript attribute.
	*/
	@:public @:static @:final public static var Superscript(default, null) : Dynamic;
	
	/**
	* Name of the Subscript attribute.
	*/
	@:public @:static @:final public static var Subscript(default, null) : Dynamic;
	
	/**
	* Name of the foreground color attribute.
	*/
	@:public @:static @:final public static var Foreground(default, null) : Dynamic;
	
	/**
	* Name of the background color attribute.
	*/
	@:public @:static @:final public static var Background(default, null) : Dynamic;
	
	/**
	* Name of the component attribute.
	*/
	@:public @:static @:final public static var ComponentAttribute(default, null) : Dynamic;
	
	/**
	* Name of the icon attribute.
	*/
	@:public @:static @:final public static var IconAttribute(default, null) : Dynamic;
	
	/**
	* Name of the input method composed text attribute. The value of
	* this attribute is an instance of AttributedString which represents
	* the composed text.
	*/
	@:public @:static @:final public static var ComposedTextAttribute(default, null) : Dynamic;
	
	/**
	* The amount of space to indent the first
	* line of the paragraph.  This value may be negative
	* to offset in the reverse direction.  The type
	* is Float and specifies the size of the space
	* in points.
	*/
	@:public @:static @:final public static var FirstLineIndent(default, null) : Dynamic;
	
	/**
	* The amount to indent the left side
	* of the paragraph.
	* Type is float and specifies the size in points.
	*/
	@:public @:static @:final public static var LeftIndent(default, null) : Dynamic;
	
	/**
	* The amount to indent the right side
	* of the paragraph.
	* Type is float and specifies the size in points.
	*/
	@:public @:static @:final public static var RightIndent(default, null) : Dynamic;
	
	/**
	* The amount of space between lines
	* of the paragraph.
	* Type is float and specifies the size as a factor of the line height
	*/
	@:public @:static @:final public static var LineSpacing(default, null) : Dynamic;
	
	/**
	* The amount of space above the paragraph.
	* Type is float and specifies the size in points.
	*/
	@:public @:static @:final public static var SpaceAbove(default, null) : Dynamic;
	
	/**
	* The amount of space below the paragraph.
	* Type is float and specifies the size in points.
	*/
	@:public @:static @:final public static var SpaceBelow(default, null) : Dynamic;
	
	/**
	* Alignment for the paragraph.  The type is
	* Integer.  Valid values are:
	* <ul>
	* <li>ALIGN_LEFT
	* <li>ALIGN_RIGHT
	* <li>ALIGN_CENTER
	* <li>ALIGN_JUSTIFED
	* </ul>
	*
	*/
	@:public @:static @:final public static var Alignment(default, null) : Dynamic;
	
	/**
	* TabSet for the paragraph, type is a TabSet containing
	* TabStops.
	*/
	@:public @:static @:final public static var TabSet(default, null) : Dynamic;
	
	/**
	* Orientation for a paragraph.
	*/
	@:public @:static @:final public static var Orientation(default, null) : Dynamic;
	
	/**
	* A possible value for paragraph alignment.  This
	* specifies that the text is aligned to the left
	* indent and extra whitespace should be placed on
	* the right.
	*/
	@:public @:static @:final public static var ALIGN_LEFT(default, null) : Int;
	
	/**
	* A possible value for paragraph alignment.  This
	* specifies that the text is aligned to the center
	* and extra whitespace should be placed equally on
	* the left and right.
	*/
	@:public @:static @:final public static var ALIGN_CENTER(default, null) : Int;
	
	/**
	* A possible value for paragraph alignment.  This
	* specifies that the text is aligned to the right
	* indent and extra whitespace should be placed on
	* the left.
	*/
	@:public @:static @:final public static var ALIGN_RIGHT(default, null) : Int;
	
	/**
	* A possible value for paragraph alignment.  This
	* specifies that extra whitespace should be spread
	* out through the rows of the paragraph with the
	* text lined up with the left and right indent
	* except on the last line which should be aligned
	* to the left.
	*/
	@:public @:static @:final public static var ALIGN_JUSTIFIED(default, null) : Int;
	
	/**
	* Gets the BidiLevel setting.
	*
	* @param a the attribute set
	* @return the value
	*/
	@:overload @:public @:static public static function getBidiLevel(a : javax.swing.text.AttributeSet) : Int;
	
	/**
	* Sets the BidiLevel.
	*
	* @param a the attribute set
	* @param o the bidi level value
	*/
	@:overload @:public @:static public static function setBidiLevel(a : javax.swing.text.MutableAttributeSet, o : Int) : Void;
	
	/**
	* Gets the component setting from the attribute list.
	*
	* @param a the attribute set
	* @return the component, null if none
	*/
	@:overload @:public @:static public static function getComponent(a : javax.swing.text.AttributeSet) : java.awt.Component;
	
	/**
	* Sets the component attribute.
	*
	* @param a the attribute set
	* @param c the component
	*/
	@:overload @:public @:static public static function setComponent(a : javax.swing.text.MutableAttributeSet, c : java.awt.Component) : Void;
	
	/**
	* Gets the icon setting from the attribute list.
	*
	* @param a the attribute set
	* @return the icon, null if none
	*/
	@:overload @:public @:static public static function getIcon(a : javax.swing.text.AttributeSet) : javax.swing.Icon;
	
	/**
	* Sets the icon attribute.
	*
	* @param a the attribute set
	* @param c the icon
	*/
	@:overload @:public @:static public static function setIcon(a : javax.swing.text.MutableAttributeSet, c : javax.swing.Icon) : Void;
	
	/**
	* Gets the font family setting from the attribute list.
	*
	* @param a the attribute set
	* @return the font family, "Monospaced" as the default
	*/
	@:overload @:public @:static public static function getFontFamily(a : javax.swing.text.AttributeSet) : String;
	
	/**
	* Sets the font attribute.
	*
	* @param a the attribute set
	* @param fam the font
	*/
	@:overload @:public @:static public static function setFontFamily(a : javax.swing.text.MutableAttributeSet, fam : String) : Void;
	
	/**
	* Gets the font size setting from the attribute list.
	*
	* @param a the attribute set
	* @return the font size, 12 as the default
	*/
	@:overload @:public @:static public static function getFontSize(a : javax.swing.text.AttributeSet) : Int;
	
	/**
	* Sets the font size attribute.
	*
	* @param a the attribute set
	* @param s the font size
	*/
	@:overload @:public @:static public static function setFontSize(a : javax.swing.text.MutableAttributeSet, s : Int) : Void;
	
	/**
	* Checks whether the bold attribute is set.
	*
	* @param a the attribute set
	* @return true if set else false
	*/
	@:overload @:public @:static public static function isBold(a : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Sets the bold attribute.
	*
	* @param a the attribute set
	* @param b specifies true/false for setting the attribute
	*/
	@:overload @:public @:static public static function setBold(a : javax.swing.text.MutableAttributeSet, b : Bool) : Void;
	
	/**
	* Checks whether the italic attribute is set.
	*
	* @param a the attribute set
	* @return true if set else false
	*/
	@:overload @:public @:static public static function isItalic(a : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Sets the italic attribute.
	*
	* @param a the attribute set
	* @param b specifies true/false for setting the attribute
	*/
	@:overload @:public @:static public static function setItalic(a : javax.swing.text.MutableAttributeSet, b : Bool) : Void;
	
	/**
	* Checks whether the underline attribute is set.
	*
	* @param a the attribute set
	* @return true if set else false
	*/
	@:overload @:public @:static public static function isUnderline(a : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Checks whether the strikethrough attribute is set.
	*
	* @param a the attribute set
	* @return true if set else false
	*/
	@:overload @:public @:static public static function isStrikeThrough(a : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Checks whether the superscript attribute is set.
	*
	* @param a the attribute set
	* @return true if set else false
	*/
	@:overload @:public @:static public static function isSuperscript(a : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Checks whether the subscript attribute is set.
	*
	* @param a the attribute set
	* @return true if set else false
	*/
	@:overload @:public @:static public static function isSubscript(a : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Sets the underline attribute.
	*
	* @param a the attribute set
	* @param b specifies true/false for setting the attribute
	*/
	@:overload @:public @:static public static function setUnderline(a : javax.swing.text.MutableAttributeSet, b : Bool) : Void;
	
	/**
	* Sets the strikethrough attribute.
	*
	* @param a the attribute set
	* @param b specifies true/false for setting the attribute
	*/
	@:overload @:public @:static public static function setStrikeThrough(a : javax.swing.text.MutableAttributeSet, b : Bool) : Void;
	
	/**
	* Sets the superscript attribute.
	*
	* @param a the attribute set
	* @param b specifies true/false for setting the attribute
	*/
	@:overload @:public @:static public static function setSuperscript(a : javax.swing.text.MutableAttributeSet, b : Bool) : Void;
	
	/**
	* Sets the subscript attribute.
	*
	* @param a the attribute set
	* @param b specifies true/false for setting the attribute
	*/
	@:overload @:public @:static public static function setSubscript(a : javax.swing.text.MutableAttributeSet, b : Bool) : Void;
	
	/**
	* Gets the foreground color setting from the attribute list.
	*
	* @param a the attribute set
	* @return the color, Color.black as the default
	*/
	@:overload @:public @:static public static function getForeground(a : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Sets the foreground color.
	*
	* @param a the attribute set
	* @param fg the color
	*/
	@:overload @:public @:static public static function setForeground(a : javax.swing.text.MutableAttributeSet, fg : java.awt.Color) : Void;
	
	/**
	* Gets the background color setting from the attribute list.
	*
	* @param a the attribute set
	* @return the color, Color.black as the default
	*/
	@:overload @:public @:static public static function getBackground(a : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Sets the background color.
	*
	* @param a the attribute set
	* @param fg the color
	*/
	@:overload @:public @:static public static function setBackground(a : javax.swing.text.MutableAttributeSet, fg : java.awt.Color) : Void;
	
	/**
	* Gets the first line indent setting.
	*
	* @param a the attribute set
	* @return the value, 0 if not set
	*/
	@:overload @:public @:static public static function getFirstLineIndent(a : javax.swing.text.AttributeSet) : Single;
	
	/**
	* Sets the first line indent.
	*
	* @param a the attribute set
	* @param i the value
	*/
	@:overload @:public @:static public static function setFirstLineIndent(a : javax.swing.text.MutableAttributeSet, i : Single) : Void;
	
	/**
	* Gets the right indent setting.
	*
	* @param a the attribute set
	* @return the value, 0 if not set
	*/
	@:overload @:public @:static public static function getRightIndent(a : javax.swing.text.AttributeSet) : Single;
	
	/**
	* Sets right indent.
	*
	* @param a the attribute set
	* @param i the value
	*/
	@:overload @:public @:static public static function setRightIndent(a : javax.swing.text.MutableAttributeSet, i : Single) : Void;
	
	/**
	* Gets the left indent setting.
	*
	* @param a the attribute set
	* @return the value, 0 if not set
	*/
	@:overload @:public @:static public static function getLeftIndent(a : javax.swing.text.AttributeSet) : Single;
	
	/**
	* Sets left indent.
	*
	* @param a the attribute set
	* @param i the value
	*/
	@:overload @:public @:static public static function setLeftIndent(a : javax.swing.text.MutableAttributeSet, i : Single) : Void;
	
	/**
	* Gets the line spacing setting.
	*
	* @param a the attribute set
	* @return the value, 0 if not set
	*/
	@:overload @:public @:static public static function getLineSpacing(a : javax.swing.text.AttributeSet) : Single;
	
	/**
	* Sets line spacing.
	*
	* @param a the attribute set
	* @param i the value
	*/
	@:overload @:public @:static public static function setLineSpacing(a : javax.swing.text.MutableAttributeSet, i : Single) : Void;
	
	/**
	* Gets the space above setting.
	*
	* @param a the attribute set
	* @return the value, 0 if not set
	*/
	@:overload @:public @:static public static function getSpaceAbove(a : javax.swing.text.AttributeSet) : Single;
	
	/**
	* Sets space above.
	*
	* @param a the attribute set
	* @param i the value
	*/
	@:overload @:public @:static public static function setSpaceAbove(a : javax.swing.text.MutableAttributeSet, i : Single) : Void;
	
	/**
	* Gets the space below setting.
	*
	* @param a the attribute set
	* @return the value, 0 if not set
	*/
	@:overload @:public @:static public static function getSpaceBelow(a : javax.swing.text.AttributeSet) : Single;
	
	/**
	* Sets space below.
	*
	* @param a the attribute set
	* @param i the value
	*/
	@:overload @:public @:static public static function setSpaceBelow(a : javax.swing.text.MutableAttributeSet, i : Single) : Void;
	
	/**
	* Gets the alignment setting.
	*
	* @param a the attribute set
	* @return the value <code>StyleConstants.ALIGN_LEFT</code> if not set
	*/
	@:overload @:public @:static public static function getAlignment(a : javax.swing.text.AttributeSet) : Int;
	
	/**
	* Sets alignment.
	*
	* @param a the attribute set
	* @param align the alignment value
	*/
	@:overload @:public @:static public static function setAlignment(a : javax.swing.text.MutableAttributeSet, align : Int) : Void;
	
	/**
	* Gets the TabSet.
	*
	* @param a the attribute set
	* @return the <code>TabSet</code>
	*/
	@:overload @:public @:static public static function getTabSet(a : javax.swing.text.AttributeSet) : javax.swing.text.TabSet;
	
	/**
	* Sets the TabSet.
	*
	* @param a the attribute set.
	* @param tabs the TabSet
	*/
	@:overload @:public @:static public static function setTabSet(a : javax.swing.text.MutableAttributeSet, tabs : javax.swing.text.TabSet) : Void;
	
	
}
/**
* This is a typesafe enumeration of the <em>well-known</em>
* attributes that contribute to a paragraph style.  These are
* aliased by the outer class for general presentation.
*/
@:native('javax$swing$text$StyleConstants$ParagraphConstants') extern class StyleConstants_ParagraphConstants extends javax.swing.text.StyleConstants implements javax.swing.text.AttributeSet.AttributeSet_ParagraphAttribute
{
	
}
/**
* This is a typesafe enumeration of the <em>well-known</em>
* attributes that contribute to a character style.  These are
* aliased by the outer class for general presentation.
*/
@:native('javax$swing$text$StyleConstants$CharacterConstants') extern class StyleConstants_CharacterConstants extends javax.swing.text.StyleConstants implements javax.swing.text.AttributeSet.AttributeSet_CharacterAttribute
{
	
}
/**
* This is a typesafe enumeration of the <em>well-known</em>
* attributes that contribute to a color.  These are aliased
* by the outer class for general presentation.
*/
@:native('javax$swing$text$StyleConstants$ColorConstants') extern class StyleConstants_ColorConstants extends javax.swing.text.StyleConstants implements javax.swing.text.AttributeSet.AttributeSet_ColorAttribute implements javax.swing.text.AttributeSet.AttributeSet_CharacterAttribute
{
	
}
/**
* This is a typesafe enumeration of the <em>well-known</em>
* attributes that contribute to a font.  These are aliased
* by the outer class for general presentation.
*/
@:native('javax$swing$text$StyleConstants$FontConstants') extern class StyleConstants_FontConstants extends javax.swing.text.StyleConstants implements javax.swing.text.AttributeSet.AttributeSet_FontAttribute implements javax.swing.text.AttributeSet.AttributeSet_CharacterAttribute
{
	
}
