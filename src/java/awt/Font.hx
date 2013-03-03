package java.awt;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The <code>Font</code> class represents fonts, which are used to
* render text in a visible way.
* A font provides the information needed to map sequences of
* <em>characters</em> to sequences of <em>glyphs</em>
* and to render sequences of glyphs on <code>Graphics</code> and
* <code>Component</code> objects.
*
* <h4>Characters and Glyphs</h4>
*
* A <em>character</em> is a symbol that represents an item such as a letter,
* a digit, or punctuation in an abstract way. For example, <code>'g'</code>,
* <font size=-1>LATIN SMALL LETTER G</font>, is a character.
* <p>
* A <em>glyph</em> is a shape used to render a character or a sequence of
* characters. In simple writing systems, such as Latin, typically one glyph
* represents one character. In general, however, characters and glyphs do not
* have one-to-one correspondence. For example, the character '&aacute;'
* <font size=-1>LATIN SMALL LETTER A WITH ACUTE</font>, can be represented by
* two glyphs: one for 'a' and one for '&acute;'. On the other hand, the
* two-character string "fi" can be represented by a single glyph, an
* "fi" ligature. In complex writing systems, such as Arabic or the South
* and South-East Asian writing systems, the relationship between characters
* and glyphs can be more complicated and involve context-dependent selection
* of glyphs as well as glyph reordering.
*
* A font encapsulates the collection of glyphs needed to render a selected set
* of characters as well as the tables needed to map sequences of characters to
* corresponding sequences of glyphs.
*
* <h4>Physical and Logical Fonts</h4>
*
* The Java Platform distinguishes between two kinds of fonts:
* <em>physical</em> fonts and <em>logical</em> fonts.
* <p>
* <em>Physical</em> fonts are the actual font libraries containing glyph data
* and tables to map from character sequences to glyph sequences, using a font
* technology such as TrueType or PostScript Type 1.
* All implementations of the Java Platform must support TrueType fonts;
* support for other font technologies is implementation dependent.
* Physical fonts may use names such as Helvetica, Palatino, HonMincho, or
* any number of other font names.
* Typically, each physical font supports only a limited set of writing
* systems, for example, only Latin characters or only Japanese and Basic
* Latin.
* The set of available physical fonts varies between configurations.
* Applications that require specific fonts can bundle them and instantiate
* them using the {@link #createFont createFont} method.
* <p>
* <em>Logical</em> fonts are the five font families defined by the Java
* platform which must be supported by any Java runtime environment:
* Serif, SansSerif, Monospaced, Dialog, and DialogInput.
* These logical fonts are not actual font libraries. Instead, the logical
* font names are mapped to physical fonts by the Java runtime environment.
* The mapping is implementation and usually locale dependent, so the look
* and the metrics provided by them vary.
* Typically, each logical font name maps to several physical fonts in order to
* cover a large range of characters.
* <p>
* Peered AWT components, such as {@link Label Label} and
* {@link TextField TextField}, can only use logical fonts.
* <p>
* For a discussion of the relative advantages and disadvantages of using
* physical or logical fonts, see the
* <a href="http://java.sun.com/j2se/corejava/intl/reference/faqs/index.html#desktop-rendering">Internationalization FAQ</a>
* document.
*
* <h4>Font Faces and Names</h4>
*
* A <code>Font</code>
* can have many faces, such as heavy, medium, oblique, gothic and
* regular. All of these faces have similar typographic design.
* <p>
* There are three different names that you can get from a
* <code>Font</code> object.  The <em>logical font name</em> is simply the
* name that was used to construct the font.
* The <em>font face name</em>, or just <em>font name</em> for
* short, is the name of a particular font face, like Helvetica Bold. The
* <em>family name</em> is the name of the font family that determines the
* typographic design across several faces, like Helvetica.
* <p>
* The <code>Font</code> class represents an instance of a font face from
* a collection of  font faces that are present in the system resources
* of the host system.  As examples, Arial Bold and Courier Bold Italic
* are font faces.  There can be several <code>Font</code> objects
* associated with a font face, each differing in size, style, transform
* and font features.
* <p>
* The {@link GraphicsEnvironment#getAllFonts() getAllFonts} method
* of the <code>GraphicsEnvironment</code> class returns an
* array of all font faces available in the system. These font faces are
* returned as <code>Font</code> objects with a size of 1, identity
* transform and default font features. These
* base fonts can then be used to derive new <code>Font</code> objects
* with varying sizes, styles, transforms and font features via the
* <code>deriveFont</code> methods in this class.
*
* <h4>Font and TextAttribute</h4>
*
* <p><code>Font</code> supports most
* <code>TextAttribute</code>s.  This makes some operations, such as
* rendering underlined text, convenient since it is not
* necessary to explicitly construct a <code>TextLayout</code> object.
* Attributes can be set on a Font by constructing or deriving it
* using a <code>Map</code> of <code>TextAttribute</code> values.
*
* <p>The values of some <code>TextAttributes</code> are not
* serializable, and therefore attempting to serialize an instance of
* <code>Font</code> that has such values will not serialize them.
* This means a Font deserialized from such a stream will not compare
* equal to the original Font that contained the non-serializable
* attributes.  This should very rarely pose a problem
* since these attributes are typically used only in special
* circumstances and are unlikely to be serialized.
*
* <ul>
* <li><code>FOREGROUND</code> and <code>BACKGROUND</code> use
* <code>Paint</code> values. The subclass <code>Color</code> is
* serializable, while <code>GradientPaint</code> and
* <code>TexturePaint</code> are not.</li>
* <li><code>CHAR_REPLACEMENT</code> uses
* <code>GraphicAttribute</code> values.  The subclasses
* <code>ShapeGraphicAttribute</code> and
* <code>ImageGraphicAttribute</code> are not serializable.</li>
* <li><code>INPUT_METHOD_HIGHLIGHT</code> uses
* <code>InputMethodHighlight</code> values, which are
* not serializable.  See {@link java.awt.im.InputMethodHighlight}.</li>
* </ul>
*
* Clients who create custom subclasses of <code>Paint</code> and
* <code>GraphicAttribute</code> can make them serializable and
* avoid this problem.  Clients who use input method highlights can
* convert these to the platform-specific attributes for that
* highlight on the current platform and set them on the Font as
* a workaround.</p>
*
* <p>The <code>Map</code>-based constructor and
* <code>deriveFont</code> APIs ignore the FONT attribute, and it is
* not retained by the Font; the static {@link #getFont} method should
* be used if the FONT attribute might be present.  See {@link
* java.awt.font.TextAttribute#FONT} for more information.</p>
*
* <p>Several attributes will cause additional rendering overhead
* and potentially invoke layout.  If a <code>Font</code> has such
* attributes, the <code>{@link #hasLayoutAttributes()}</code> method
* will return true.</p>
*
* <p>Note: Font rotations can cause text baselines to be rotated.  In
* order to account for this (rare) possibility, font APIs are
* specified to return metrics and take parameters 'in
* baseline-relative coordinates'.  This maps the 'x' coordinate to
* the advance along the baseline, (positive x is forward along the
* baseline), and the 'y' coordinate to a distance along the
* perpendicular to the baseline at 'x' (positive y is 90 degrees
* clockwise from the baseline vector).  APIs for which this is
* especially important are called out as having 'baseline-relative
* coordinates.'
*/
extern class Font implements java.io.Serializable
{
	/**
	* A String constant for the canonical family name of the
	* logical font "Dialog". It is useful in Font construction
	* to provide compile-time verification of the name.
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var DIALOG(default, null) : String;
	
	/**
	* A String constant for the canonical family name of the
	* logical font "DialogInput". It is useful in Font construction
	* to provide compile-time verification of the name.
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var DIALOG_INPUT(default, null) : String;
	
	/**
	* A String constant for the canonical family name of the
	* logical font "SansSerif". It is useful in Font construction
	* to provide compile-time verification of the name.
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var SANS_SERIF(default, null) : String;
	
	/**
	* A String constant for the canonical family name of the
	* logical font "Serif". It is useful in Font construction
	* to provide compile-time verification of the name.
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var SERIF(default, null) : String;
	
	/**
	* A String constant for the canonical family name of the
	* logical font "Monospaced". It is useful in Font construction
	* to provide compile-time verification of the name.
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var MONOSPACED(default, null) : String;
	
	/**
	* The plain style constant.
	*/
	@:public @:static @:final public static var PLAIN(default, null) : Int;
	
	/**
	* The bold style constant.  This can be combined with the other style
	* constants (except PLAIN) for mixed styles.
	*/
	@:public @:static @:final public static var BOLD(default, null) : Int;
	
	/**
	* The italicized style constant.  This can be combined with the other
	* style constants (except PLAIN) for mixed styles.
	*/
	@:public @:static @:final public static var ITALIC(default, null) : Int;
	
	/**
	* The baseline used in most Roman scripts when laying out text.
	*/
	@:public @:static @:final public static var ROMAN_BASELINE(default, null) : Int;
	
	/**
	* The baseline used in ideographic scripts like Chinese, Japanese,
	* and Korean when laying out text.
	*/
	@:public @:static @:final public static var CENTER_BASELINE(default, null) : Int;
	
	/**
	* The baseline used in Devanigiri and similar scripts when laying
	* out text.
	*/
	@:public @:static @:final public static var HANGING_BASELINE(default, null) : Int;
	
	/**
	* Identify a font resource of type TRUETYPE.
	* Used to specify a TrueType font resource to the
	* {@link #createFont} method.
	* The TrueType format was extended to become the OpenType
	* format, which adds support for fonts with Postscript outlines,
	* this tag therefore references these fonts, as well as those
	* with TrueType outlines.
	* @since 1.3
	*/
	@:require(java3) @:public @:static @:final public static var TRUETYPE_FONT(default, null) : Int;
	
	/**
	* Identify a font resource of type TYPE1.
	* Used to specify a Type1 font resource to the
	* {@link #createFont} method.
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var TYPE1_FONT(default, null) : Int;
	
	/**
	* The logical name of this <code>Font</code>, as passed to the
	* constructor.
	* @since JDK1.0
	*
	* @serial
	* @see #getName
	*/
	@:require(java0) @:protected private var name : String;
	
	/**
	* The style of this <code>Font</code>, as passed to the constructor.
	* This style can be PLAIN, BOLD, ITALIC, or BOLD+ITALIC.
	* @since JDK1.0
	*
	* @serial
	* @see #getStyle()
	*/
	@:require(java0) @:protected private var style : Int;
	
	/**
	* The point size of this <code>Font</code>, rounded to integer.
	* @since JDK1.0
	*
	* @serial
	* @see #getSize()
	*/
	@:require(java0) @:protected private var size : Int;
	
	/**
	* The point size of this <code>Font</code> in <code>float</code>.
	*
	* @serial
	* @see #getSize()
	* @see #getSize2D()
	*/
	@:protected private var pointSize : Single;
	
	/**
	* Gets the peer of this <code>Font</code>.
	* @return  the peer of the <code>Font</code>.
	* @since JDK1.1
	* @deprecated Font rendering is now platform independent.
	*/
	@:require(java1) @:overload @:public public function getPeer() : java.awt.peer.FontPeer;
	
	/**
	* Creates a new <code>Font</code> from the specified name, style and
	* point size.
	* <p>
	* The font name can be a font face name or a font family name.
	* It is used together with the style to find an appropriate font face.
	* When a font family name is specified, the style argument is used to
	* select the most appropriate face from the family. When a font face
	* name is specified, the face's style and the style argument are
	* merged to locate the best matching font from the same family.
	* For example if face name "Arial Bold" is specified with style
	* <code>Font.ITALIC</code>, the font system looks for a face in the
	* "Arial" family that is bold and italic, and may associate the font
	* instance with the physical font face "Arial Bold Italic".
	* The style argument is merged with the specified face's style, not
	* added or subtracted.
	* This means, specifying a bold face and a bold style does not
	* double-embolden the font, and specifying a bold face and a plain
	* style does not lighten the font.
	* <p>
	* If no face for the requested style can be found, the font system
	* may apply algorithmic styling to achieve the desired style.
	* For example, if <code>ITALIC</code> is requested, but no italic
	* face is available, glyphs from the plain face may be algorithmically
	* obliqued (slanted).
	* <p>
	* Font name lookup is case insensitive, using the case folding
	* rules of the US locale.
	* <p>
	* If the <code>name</code> parameter represents something other than a
	* logical font, i.e. is interpreted as a physical font face or family, and
	* this cannot be mapped by the implementation to a physical font or a
	* compatible alternative, then the font system will map the Font
	* instance to "Dialog", such that for example, the family as reported
	* by {@link #getFamily() getFamily} will be "Dialog".
	* <p>
	*
	* @param name the font name.  This can be a font face name or a font
	* family name, and may represent either a logical font or a physical
	* font found in this {@code GraphicsEnvironment}.
	* The family names for logical fonts are: Dialog, DialogInput,
	* Monospaced, Serif, or SansSerif. Pre-defined String constants exist
	* for all of these names, for example, {@code DIALOG}. If {@code name} is
	* {@code null}, the <em>logical font name</em> of the new
	* {@code Font} as returned by {@code getName()} is set to
	* the name "Default".
	* @param style the style constant for the {@code Font}
	* The style argument is an integer bitmask that may
	* be {@code PLAIN}, or a bitwise union of {@code BOLD} and/or
	* {@code ITALIC} (for example, {@code ITALIC} or {@code BOLD|ITALIC}).
	* If the style argument does not conform to one of the expected
	* integer bitmasks then the style is set to {@code PLAIN}.
	* @param size the point size of the {@code Font}
	* @see GraphicsEnvironment#getAllFonts
	* @see GraphicsEnvironment#getAvailableFontFamilyNames
	* @since JDK1.0
	*/
	@:require(java0) @:overload @:public public function new(name : String, style : Int, size : Int) : Void;
	
	/**
	* Creates a new <code>Font</code> with the specified attributes.
	* Only keys defined in {@link java.awt.font.TextAttribute TextAttribute}
	* are recognized.  In addition the FONT attribute is
	*  not recognized by this constructor
	* (see {@link #getAvailableAttributes}). Only attributes that have
	* values of valid types will affect the new <code>Font</code>.
	* <p>
	* If <code>attributes</code> is <code>null</code>, a new
	* <code>Font</code> is initialized with default values.
	* @see java.awt.font.TextAttribute
	* @param attributes the attributes to assign to the new
	*          <code>Font</code>, or <code>null</code>
	*/
	@:overload @:public public function new(attributes : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : Void;
	
	/**
	* Creates a new <code>Font</code> from the specified <code>font</code>.
	* This constructor is intended for use by subclasses.
	* @param font from which to create this <code>Font</code>.
	* @throws NullPointerException if <code>font</code> is null
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function new(font : java.awt.Font) : Void;
	
	/**
	* Returns a <code>Font</code> appropriate to the attributes.
	* If <code>attributes</code>contains a <code>FONT</code> attribute
	* with a valid <code>Font</code> as its value, it will be
	* merged with any remaining attributes.  See
	* {@link java.awt.font.TextAttribute#FONT} for more
	* information.
	*
	* @param attributes the attributes to assign to the new
	*          <code>Font</code>
	* @return a new <code>Font</code> created with the specified
	*          attributes
	* @throws NullPointerException if <code>attributes</code> is null.
	* @since 1.2
	* @see java.awt.font.TextAttribute
	*/
	@:require(java2) @:overload @:public @:static public static function getFont(attributes : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : java.awt.Font;
	
	/**
	* Returns a new <code>Font</code> using the specified font type
	* and input data.  The new <code>Font</code> is
	* created with a point size of 1 and style {@link #PLAIN PLAIN}.
	* This base font can then be used with the <code>deriveFont</code>
	* methods in this class to derive new <code>Font</code> objects with
	* varying sizes, styles, transforms and font features.  This
	* method does not close the {@link InputStream}.
	* <p>
	* To make the <code>Font</code> available to Font constructors the
	* returned <code>Font</code> must be registered in the
	* <code>GraphicsEnviroment</code> by calling
	* {@link GraphicsEnvironment#registerFont(Font) registerFont(Font)}.
	* @param fontFormat the type of the <code>Font</code>, which is
	* {@link #TRUETYPE_FONT TRUETYPE_FONT} if a TrueType resource is specified.
	* or {@link #TYPE1_FONT TYPE1_FONT} if a Type 1 resource is specified.
	* @param fontStream an <code>InputStream</code> object representing the
	* input data for the font.
	* @return a new <code>Font</code> created with the specified font type.
	* @throws IllegalArgumentException if <code>fontFormat</code> is not
	*     <code>TRUETYPE_FONT</code>or<code>TYPE1_FONT</code>.
	* @throws FontFormatException if the <code>fontStream</code> data does
	*     not contain the required font tables for the specified format.
	* @throws IOException if the <code>fontStream</code>
	*     cannot be completely read.
	* @see GraphicsEnvironment#registerFont(Font)
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function createFont(fontFormat : Int, fontStream : java.io.InputStream) : java.awt.Font;
	
	/**
	* Returns a new <code>Font</code> using the specified font type
	* and the specified font file.  The new <code>Font</code> is
	* created with a point size of 1 and style {@link #PLAIN PLAIN}.
	* This base font can then be used with the <code>deriveFont</code>
	* methods in this class to derive new <code>Font</code> objects with
	* varying sizes, styles, transforms and font features.
	* @param fontFormat the type of the <code>Font</code>, which is
	* {@link #TRUETYPE_FONT TRUETYPE_FONT} if a TrueType resource is
	* specified or {@link #TYPE1_FONT TYPE1_FONT} if a Type 1 resource is
	* specified.
	* So long as the returned font, or its derived fonts are referenced
	* the implementation may continue to access <code>fontFile</code>
	* to retrieve font data. Thus the results are undefined if the file
	* is changed, or becomes inaccessible.
	* <p>
	* To make the <code>Font</code> available to Font constructors the
	* returned <code>Font</code> must be registered in the
	* <code>GraphicsEnviroment</code> by calling
	* {@link GraphicsEnvironment#registerFont(Font) registerFont(Font)}.
	* @param fontFile a <code>File</code> object representing the
	* input data for the font.
	* @return a new <code>Font</code> created with the specified font type.
	* @throws IllegalArgumentException if <code>fontFormat</code> is not
	*     <code>TRUETYPE_FONT</code>or<code>TYPE1_FONT</code>.
	* @throws NullPointerException if <code>fontFile</code> is null.
	* @throws IOException if the <code>fontFile</code> cannot be read.
	* @throws FontFormatException if <code>fontFile</code> does
	*     not contain the required font tables for the specified format.
	* @throws SecurityException if the executing code does not have
	* permission to read from the file.
	* @see GraphicsEnvironment#registerFont(Font)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function createFont(fontFormat : Int, fontFile : java.io.File) : java.awt.Font;
	
	/**
	* Returns a copy of the transform associated with this
	* <code>Font</code>.  This transform is not necessarily the one
	* used to construct the font.  If the font has algorithmic
	* superscripting or width adjustment, this will be incorporated
	* into the returned <code>AffineTransform</code>.
	* <p>
	* Typically, fonts will not be transformed.  Clients generally
	* should call {@link #isTransformed} first, and only call this
	* method if <code>isTransformed</code> returns true.
	*
	* @return an {@link AffineTransform} object representing the
	*          transform attribute of this <code>Font</code> object.
	*/
	@:overload @:public public function getTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the family name of this <code>Font</code>.
	*
	* <p>The family name of a font is font specific. Two fonts such as
	* Helvetica Italic and Helvetica Bold have the same family name,
	* <i>Helvetica</i>, whereas their font face names are
	* <i>Helvetica Bold</i> and <i>Helvetica Italic</i>. The list of
	* available family names may be obtained by using the
	* {@link GraphicsEnvironment#getAvailableFontFamilyNames()} method.
	*
	* <p>Use <code>getName</code> to get the logical name of the font.
	* Use <code>getFontName</code> to get the font face name of the font.
	* @return a <code>String</code> that is the family name of this
	*          <code>Font</code>.
	*
	* @see #getName
	* @see #getFontName
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public public function getFamily() : String;
	
	/**
	* Returns the family name of this <code>Font</code>, localized for
	* the specified locale.
	*
	* <p>The family name of a font is font specific. Two fonts such as
	* Helvetica Italic and Helvetica Bold have the same family name,
	* <i>Helvetica</i>, whereas their font face names are
	* <i>Helvetica Bold</i> and <i>Helvetica Italic</i>. The list of
	* available family names may be obtained by using the
	* {@link GraphicsEnvironment#getAvailableFontFamilyNames()} method.
	*
	* <p>Use <code>getFontName</code> to get the font face name of the font.
	* @param l locale for which to get the family name
	* @return a <code>String</code> representing the family name of the
	*          font, localized for the specified locale.
	* @see #getFontName
	* @see java.util.Locale
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getFamily(l : java.util.Locale) : String;
	
	/**
	* Returns the postscript name of this <code>Font</code>.
	* Use <code>getFamily</code> to get the family name of the font.
	* Use <code>getFontName</code> to get the font face name of the font.
	* @return a <code>String</code> representing the postscript name of
	*          this <code>Font</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getPSName() : String;
	
	/**
	* Returns the logical name of this <code>Font</code>.
	* Use <code>getFamily</code> to get the family name of the font.
	* Use <code>getFontName</code> to get the font face name of the font.
	* @return a <code>String</code> representing the logical name of
	*          this <code>Font</code>.
	* @see #getFamily
	* @see #getFontName
	* @since JDK1.0
	*/
	@:require(java0) @:overload @:public public function getName() : String;
	
	/**
	* Returns the font face name of this <code>Font</code>.  For example,
	* Helvetica Bold could be returned as a font face name.
	* Use <code>getFamily</code> to get the family name of the font.
	* Use <code>getName</code> to get the logical name of the font.
	* @return a <code>String</code> representing the font face name of
	*          this <code>Font</code>.
	* @see #getFamily
	* @see #getName
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getFontName() : String;
	
	/**
	* Returns the font face name of the <code>Font</code>, localized
	* for the specified locale. For example, Helvetica Fett could be
	* returned as the font face name.
	* Use <code>getFamily</code> to get the family name of the font.
	* @param l a locale for which to get the font face name
	* @return a <code>String</code> representing the font face name,
	*          localized for the specified locale.
	* @see #getFamily
	* @see java.util.Locale
	*/
	@:overload @:public public function getFontName(l : java.util.Locale) : String;
	
	/**
	* Returns the style of this <code>Font</code>.  The style can be
	* PLAIN, BOLD, ITALIC, or BOLD+ITALIC.
	* @return the style of this <code>Font</code>
	* @see #isPlain
	* @see #isBold
	* @see #isItalic
	* @since JDK1.0
	*/
	@:require(java0) @:overload @:public public function getStyle() : Int;
	
	/**
	* Returns the point size of this <code>Font</code>, rounded to
	* an integer.
	* Most users are familiar with the idea of using <i>point size</i> to
	* specify the size of glyphs in a font. This point size defines a
	* measurement between the baseline of one line to the baseline of the
	* following line in a single spaced text document. The point size is
	* based on <i>typographic points</i>, approximately 1/72 of an inch.
	* <p>
	* The Java(tm)2D API adopts the convention that one point is
	* equivalent to one unit in user coordinates.  When using a
	* normalized transform for converting user space coordinates to
	* device space coordinates 72 user
	* space units equal 1 inch in device space.  In this case one point
	* is 1/72 of an inch.
	* @return the point size of this <code>Font</code> in 1/72 of an
	*          inch units.
	* @see #getSize2D
	* @see GraphicsConfiguration#getDefaultTransform
	* @see GraphicsConfiguration#getNormalizingTransform
	* @since JDK1.0
	*/
	@:require(java0) @:overload @:public public function getSize() : Int;
	
	/**
	* Returns the point size of this <code>Font</code> in
	* <code>float</code> value.
	* @return the point size of this <code>Font</code> as a
	* <code>float</code> value.
	* @see #getSize
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getSize2D() : Single;
	
	/**
	* Indicates whether or not this <code>Font</code> object's style is
	* PLAIN.
	* @return    <code>true</code> if this <code>Font</code> has a
	*            PLAIN sytle;
	*            <code>false</code> otherwise.
	* @see       java.awt.Font#getStyle
	* @since     JDK1.0
	*/
	@:require(java0) @:overload @:public public function isPlain() : Bool;
	
	/**
	* Indicates whether or not this <code>Font</code> object's style is
	* BOLD.
	* @return    <code>true</code> if this <code>Font</code> object's
	*            style is BOLD;
	*            <code>false</code> otherwise.
	* @see       java.awt.Font#getStyle
	* @since     JDK1.0
	*/
	@:require(java0) @:overload @:public public function isBold() : Bool;
	
	/**
	* Indicates whether or not this <code>Font</code> object's style is
	* ITALIC.
	* @return    <code>true</code> if this <code>Font</code> object's
	*            style is ITALIC;
	*            <code>false</code> otherwise.
	* @see       java.awt.Font#getStyle
	* @since     JDK1.0
	*/
	@:require(java0) @:overload @:public public function isItalic() : Bool;
	
	/**
	* Indicates whether or not this <code>Font</code> object has a
	* transform that affects its size in addition to the Size
	* attribute.
	* @return  <code>true</code> if this <code>Font</code> object
	*          has a non-identity AffineTransform attribute.
	*          <code>false</code> otherwise.
	* @see     java.awt.Font#getTransform
	* @since   1.4
	*/
	@:require(java4) @:overload @:public public function isTransformed() : Bool;
	
	/**
	* Return true if this Font contains attributes that require extra
	* layout processing.
	* @return true if the font has layout attributes
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function hasLayoutAttributes() : Bool;
	
	/**
	* Returns a <code>Font</code> object from the system properties list.
	* <code>nm</code> is treated as the name of a system property to be
	* obtained.  The <code>String</code> value of this property is then
	* interpreted as a <code>Font</code> object according to the
	* specification of <code>Font.decode(String)</code>
	* If the specified property is not found, or the executing code does
	* not have permission to read the property, null is returned instead.
	*
	* @param nm the property name
	* @return a <code>Font</code> object that the property name
	*          describes, or null if no such property exists.
	* @throws NullPointerException if nm is null.
	* @since 1.2
	* @see #decode(String)
	*/
	@:require(java2) @:overload @:public @:static public static function getFont(nm : String) : java.awt.Font;
	
	/**
	* Returns the <code>Font</code> that the <code>str</code>
	* argument describes.
	* To ensure that this method returns the desired Font,
	* format the <code>str</code> parameter in
	* one of these ways
	* <p>
	* <ul>
	* <li><em>fontname-style-pointsize</em>
	* <li><em>fontname-pointsize</em>
	* <li><em>fontname-style</em>
	* <li><em>fontname</em>
	* <li><em>fontname style pointsize</em>
	* <li><em>fontname pointsize</em>
	* <li><em>fontname style</em>
	* <li><em>fontname</em>
	* </ul>
	* in which <i>style</i> is one of the four
	* case-insensitive strings:
	* <code>"PLAIN"</code>, <code>"BOLD"</code>, <code>"BOLDITALIC"</code>, or
	* <code>"ITALIC"</code>, and pointsize is a positive decimal integer
	* representation of the point size.
	* For example, if you want a font that is Arial, bold, with
	* a point size of 18, you would call this method with:
	* "Arial-BOLD-18".
	* This is equivalent to calling the Font constructor :
	* <code>new Font("Arial", Font.BOLD, 18);</code>
	* and the values are interpreted as specified by that constructor.
	* <p>
	* A valid trailing decimal field is always interpreted as the pointsize.
	* Therefore a fontname containing a trailing decimal value should not
	* be used in the fontname only form.
	* <p>
	* If a style name field is not one of the valid style strings, it is
	* interpreted as part of the font name, and the default style is used.
	* <p>
	* Only one of ' ' or '-' may be used to separate fields in the input.
	* The identified separator is the one closest to the end of the string
	* which separates a valid pointsize, or a valid style name from
	* the rest of the string.
	* Null (empty) pointsize and style fields are treated
	* as valid fields with the default value for that field.
	*<p>
	* Some font names may include the separator characters ' ' or '-'.
	* If <code>str</code> is not formed with 3 components, e.g. such that
	* <code>style</code> or <code>pointsize</code> fields are not present in
	* <code>str</code>, and <code>fontname</code> also contains a
	* character determined to be the separator character
	* then these characters where they appear as intended to be part of
	* <code>fontname</code> may instead be interpreted as separators
	* so the font name may not be properly recognised.
	*
	* <p>
	* The default size is 12 and the default style is PLAIN.
	* If <code>str</code> does not specify a valid size, the returned
	* <code>Font</code> has a size of 12.  If <code>str</code> does not
	* specify a valid style, the returned Font has a style of PLAIN.
	* If you do not specify a valid font name in
	* the <code>str</code> argument, this method will return
	* a font with the family name "Dialog".
	* To determine what font family names are available on
	* your system, use the
	* {@link GraphicsEnvironment#getAvailableFontFamilyNames()} method.
	* If <code>str</code> is <code>null</code>, a new <code>Font</code>
	* is returned with the family name "Dialog", a size of 12 and a
	* PLAIN style.
	* @param str the name of the font, or <code>null</code>
	* @return the <code>Font</code> object that <code>str</code>
	*          describes, or a new default <code>Font</code> if
	*          <code>str</code> is <code>null</code>.
	* @see #getFamily
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function decode(str : String) : java.awt.Font;
	
	/**
	* Gets the specified <code>Font</code> from the system properties
	* list.  As in the <code>getProperty</code> method of
	* <code>System</code>, the first
	* argument is treated as the name of a system property to be
	* obtained.  The <code>String</code> value of this property is then
	* interpreted as a <code>Font</code> object.
	* <p>
	* The property value should be one of the forms accepted by
	* <code>Font.decode(String)</code>
	* If the specified property is not found, or the executing code does not
	* have permission to read the property, the <code>font</code>
	* argument is returned instead.
	* @param nm the case-insensitive property name
	* @param font a default <code>Font</code> to return if property
	*          <code>nm</code> is not defined
	* @return    the <code>Font</code> value of the property.
	* @throws NullPointerException if nm is null.
	* @see #decode(String)
	*/
	@:overload @:public @:static public static function getFont(nm : String, font : java.awt.Font) : java.awt.Font;
	
	/**
	* Returns a hashcode for this <code>Font</code>.
	* @return     a hashcode value for this <code>Font</code>.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this <code>Font</code> object to the specified
	* <code>Object</code>.
	* @param obj the <code>Object</code> to compare
	* @return <code>true</code> if the objects are the same
	*          or if the argument is a <code>Font</code> object
	*          describing the same font as this object;
	*          <code>false</code> otherwise.
	* @since JDK1.0
	*/
	@:require(java0) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Converts this <code>Font</code> object to a <code>String</code>
	* representation.
	* @return     a <code>String</code> representation of this
	*          <code>Font</code> object.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:public public function toString() : String;
	
	/**
	* Returns the number of glyphs in this <code>Font</code>. Glyph codes
	* for this <code>Font</code> range from 0 to
	* <code>getNumGlyphs()</code> - 1.
	* @return the number of glyphs in this <code>Font</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getNumGlyphs() : Int;
	
	/**
	* Returns the glyphCode which is used when this <code>Font</code>
	* does not have a glyph for a specified unicode code point.
	* @return the glyphCode of this <code>Font</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMissingGlyphCode() : Int;
	
	/**
	* Returns the baseline appropriate for displaying this character.
	* <p>
	* Large fonts can support different writing systems, and each system can
	* use a different baseline.
	* The character argument determines the writing system to use. Clients
	* should not assume all characters use the same baseline.
	*
	* @param c a character used to identify the writing system
	* @return the baseline appropriate for the specified character.
	* @see LineMetrics#getBaselineOffsets
	* @see #ROMAN_BASELINE
	* @see #CENTER_BASELINE
	* @see #HANGING_BASELINE
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getBaselineFor(c : java.StdTypes.Char16) : java.StdTypes.Int8;
	
	/**
	* Returns a map of font attributes available in this
	* <code>Font</code>.  Attributes include things like ligatures and
	* glyph substitution.
	* @return the attributes map of this <code>Font</code>.
	*/
	@:overload @:public public function getAttributes() : java.util.Map<java.awt.font.TextAttribute, Dynamic>;
	
	/**
	* Returns the keys of all the attributes supported by this
	* <code>Font</code>.  These attributes can be used to derive other
	* fonts.
	* @return an array containing the keys of all the attributes
	*          supported by this <code>Font</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getAvailableAttributes() : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>;
	
	/**
	* Creates a new <code>Font</code> object by replicating this
	* <code>Font</code> object and applying a new style and size.
	* @param style the style for the new <code>Font</code>
	* @param size the size for the new <code>Font</code>
	* @return a new <code>Font</code> object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deriveFont(style : Int, size : Single) : java.awt.Font;
	
	/**
	* Creates a new <code>Font</code> object by replicating this
	* <code>Font</code> object and applying a new style and transform.
	* @param style the style for the new <code>Font</code>
	* @param trans the <code>AffineTransform</code> associated with the
	* new <code>Font</code>
	* @return a new <code>Font</code> object.
	* @throws IllegalArgumentException if <code>trans</code> is
	*         <code>null</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deriveFont(style : Int, trans : java.awt.geom.AffineTransform) : java.awt.Font;
	
	/**
	* Creates a new <code>Font</code> object by replicating the current
	* <code>Font</code> object and applying a new size to it.
	* @param size the size for the new <code>Font</code>.
	* @return a new <code>Font</code> object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deriveFont(size : Single) : java.awt.Font;
	
	/**
	* Creates a new <code>Font</code> object by replicating the current
	* <code>Font</code> object and applying a new transform to it.
	* @param trans the <code>AffineTransform</code> associated with the
	* new <code>Font</code>
	* @return a new <code>Font</code> object.
	* @throws IllegalArgumentException if <code>trans</code> is
	*         <code>null</code>
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deriveFont(trans : java.awt.geom.AffineTransform) : java.awt.Font;
	
	/**
	* Creates a new <code>Font</code> object by replicating the current
	* <code>Font</code> object and applying a new style to it.
	* @param style the style for the new <code>Font</code>
	* @return a new <code>Font</code> object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deriveFont(style : Int) : java.awt.Font;
	
	/**
	* Creates a new <code>Font</code> object by replicating the current
	* <code>Font</code> object and applying a new set of font attributes
	* to it.
	*
	* @param attributes a map of attributes enabled for the new
	* <code>Font</code>
	* @return a new <code>Font</code> object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deriveFont(attributes : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : java.awt.Font;
	
	/**
	* Checks if this <code>Font</code> has a glyph for the specified
	* character.
	*
	* <p> <b>Note:</b> This method cannot handle <a
	* href="../../java/lang/Character.html#supplementary"> supplementary
	* characters</a>. To support all Unicode characters, including
	* supplementary characters, use the {@link #canDisplay(int)}
	* method or <code>canDisplayUpTo</code> methods.
	*
	* @param c the character for which a glyph is needed
	* @return <code>true</code> if this <code>Font</code> has a glyph for this
	*          character; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function canDisplay(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Checks if this <code>Font</code> has a glyph for the specified
	* character.
	*
	* @param codePoint the character (Unicode code point) for which a glyph
	*        is needed.
	* @return <code>true</code> if this <code>Font</code> has a glyph for the
	*          character; <code>false</code> otherwise.
	* @throws IllegalArgumentException if the code point is not a valid Unicode
	*          code point.
	* @see Character#isValidCodePoint(int)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function canDisplay(codePoint : Int) : Bool;
	
	/**
	* Indicates whether or not this <code>Font</code> can display a
	* specified <code>String</code>.  For strings with Unicode encoding,
	* it is important to know if a particular font can display the
	* string. This method returns an offset into the <code>String</code>
	* <code>str</code> which is the first character this
	* <code>Font</code> cannot display without using the missing glyph
	* code. If the <code>Font</code> can display all characters, -1 is
	* returned.
	* @param str a <code>String</code> object
	* @return an offset into <code>str</code> that points
	*          to the first character in <code>str</code> that this
	*          <code>Font</code> cannot display; or <code>-1</code> if
	*          this <code>Font</code> can display all characters in
	*          <code>str</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function canDisplayUpTo(str : String) : Int;
	
	/**
	* Indicates whether or not this <code>Font</code> can display
	* the characters in the specified <code>text</code>
	* starting at <code>start</code> and ending at
	* <code>limit</code>.  This method is a convenience overload.
	* @param text the specified array of <code>char</code> values
	* @param start the specified starting offset (in
	*              <code>char</code>s) into the specified array of
	*              <code>char</code> values
	* @param limit the specified ending offset (in
	*              <code>char</code>s) into the specified array of
	*              <code>char</code> values
	* @return an offset into <code>text</code> that points
	*          to the first character in <code>text</code> that this
	*          <code>Font</code> cannot display; or <code>-1</code> if
	*          this <code>Font</code> can display all characters in
	*          <code>text</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function canDisplayUpTo(text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Int;
	
	/**
	* Indicates whether or not this <code>Font</code> can display the
	* text specified by the <code>iter</code> starting at
	* <code>start</code> and ending at <code>limit</code>.
	*
	* @param iter  a {@link CharacterIterator} object
	* @param start the specified starting offset into the specified
	*              <code>CharacterIterator</code>.
	* @param limit the specified ending offset into the specified
	*              <code>CharacterIterator</code>.
	* @return an offset into <code>iter</code> that points
	*          to the first character in <code>iter</code> that this
	*          <code>Font</code> cannot display; or <code>-1</code> if
	*          this <code>Font</code> can display all characters in
	*          <code>iter</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function canDisplayUpTo(iter : java.text.CharacterIterator, start : Int, limit : Int) : Int;
	
	/**
	* Returns the italic angle of this <code>Font</code>.  The italic angle
	* is the inverse slope of the caret which best matches the posture of this
	* <code>Font</code>.
	* @see TextAttribute#POSTURE
	* @return the angle of the ITALIC style of this <code>Font</code>.
	*/
	@:overload @:public public function getItalicAngle() : Single;
	
	/**
	* Checks whether or not this <code>Font</code> has uniform
	* line metrics.  A logical <code>Font</code> might be a
	* composite font, which means that it is composed of different
	* physical fonts to cover different code ranges.  Each of these
	* fonts might have different <code>LineMetrics</code>.  If the
	* logical <code>Font</code> is a single
	* font then the metrics would be uniform.
	* @return <code>true</code> if this <code>Font</code> has
	* uniform line metrics; <code>false</code> otherwise.
	*/
	@:overload @:public public function hasUniformLineMetrics() : Bool;
	
	/**
	* Returns a {@link LineMetrics} object created with the specified
	* <code>String</code> and {@link FontRenderContext}.
	* @param str the specified <code>String</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>LineMetrics</code> object created with the
	* specified <code>String</code> and {@link FontRenderContext}.
	*/
	@:overload @:public public function getLineMetrics(str : String, frc : java.awt.font.FontRenderContext) : java.awt.font.LineMetrics;
	
	/**
	* Returns a <code>LineMetrics</code> object created with the
	* specified arguments.
	* @param str the specified <code>String</code>
	* @param beginIndex the initial offset of <code>str</code>
	* @param limit the end offset of <code>str</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>LineMetrics</code> object created with the
	* specified arguments.
	*/
	@:overload @:public public function getLineMetrics(str : String, beginIndex : Int, limit : Int, frc : java.awt.font.FontRenderContext) : java.awt.font.LineMetrics;
	
	/**
	* Returns a <code>LineMetrics</code> object created with the
	* specified arguments.
	* @param chars an array of characters
	* @param beginIndex the initial offset of <code>chars</code>
	* @param limit the end offset of <code>chars</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>LineMetrics</code> object created with the
	* specified arguments.
	*/
	@:overload @:public public function getLineMetrics(chars : java.NativeArray<java.StdTypes.Char16>, beginIndex : Int, limit : Int, frc : java.awt.font.FontRenderContext) : java.awt.font.LineMetrics;
	
	/**
	* Returns a <code>LineMetrics</code> object created with the
	* specified arguments.
	* @param ci the specified <code>CharacterIterator</code>
	* @param beginIndex the initial offset in <code>ci</code>
	* @param limit the end offset of <code>ci</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>LineMetrics</code> object created with the
	* specified arguments.
	*/
	@:overload @:public public function getLineMetrics(ci : java.text.CharacterIterator, beginIndex : Int, limit : Int, frc : java.awt.font.FontRenderContext) : java.awt.font.LineMetrics;
	
	/**
	* Returns the logical bounds of the specified <code>String</code> in
	* the specified <code>FontRenderContext</code>.  The logical bounds
	* contains the origin, ascent, advance, and height, which includes
	* the leading.  The logical bounds does not always enclose all the
	* text.  For example, in some languages and in some fonts, accent
	* marks can be positioned above the ascent or below the descent.
	* To obtain a visual bounding box, which encloses all the text,
	* use the {@link TextLayout#getBounds() getBounds} method of
	* <code>TextLayout</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.Font class notes}).
	* @param str the specified <code>String</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a {@link Rectangle2D} that is the bounding box of the
	* specified <code>String</code> in the specified
	* <code>FontRenderContext</code>.
	* @see FontRenderContext
	* @see Font#createGlyphVector
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getStringBounds(str : String, frc : java.awt.font.FontRenderContext) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the logical bounds of the specified <code>String</code> in
	* the specified <code>FontRenderContext</code>.  The logical bounds
	* contains the origin, ascent, advance, and height, which includes
	* the leading.  The logical bounds does not always enclose all the
	* text.  For example, in some languages and in some fonts, accent
	* marks can be positioned above the ascent or below the descent.
	* To obtain a visual bounding box, which encloses all the text,
	* use the {@link TextLayout#getBounds() getBounds} method of
	* <code>TextLayout</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.Font class notes}).
	* @param str the specified <code>String</code>
	* @param beginIndex the initial offset of <code>str</code>
	* @param limit the end offset of <code>str</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>Rectangle2D</code> that is the bounding box of the
	* specified <code>String</code> in the specified
	* <code>FontRenderContext</code>.
	* @throws IndexOutOfBoundsException if <code>beginIndex</code> is
	*         less than zero, or <code>limit</code> is greater than the
	*         length of <code>str</code>, or <code>beginIndex</code>
	*         is greater than <code>limit</code>.
	* @see FontRenderContext
	* @see Font#createGlyphVector
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getStringBounds(str : String, beginIndex : Int, limit : Int, frc : java.awt.font.FontRenderContext) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the logical bounds of the specified array of characters
	* in the specified <code>FontRenderContext</code>.  The logical
	* bounds contains the origin, ascent, advance, and height, which
	* includes the leading.  The logical bounds does not always enclose
	* all the text.  For example, in some languages and in some fonts,
	* accent marks can be positioned above the ascent or below the
	* descent.  To obtain a visual bounding box, which encloses all the
	* text, use the {@link TextLayout#getBounds() getBounds} method of
	* <code>TextLayout</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.Font class notes}).
	* @param chars an array of characters
	* @param beginIndex the initial offset in the array of
	* characters
	* @param limit the end offset in the array of characters
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>Rectangle2D</code> that is the bounding box of the
	* specified array of characters in the specified
	* <code>FontRenderContext</code>.
	* @throws IndexOutOfBoundsException if <code>beginIndex</code> is
	*         less than zero, or <code>limit</code> is greater than the
	*         length of <code>chars</code>, or <code>beginIndex</code>
	*         is greater than <code>limit</code>.
	* @see FontRenderContext
	* @see Font#createGlyphVector
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getStringBounds(chars : java.NativeArray<java.StdTypes.Char16>, beginIndex : Int, limit : Int, frc : java.awt.font.FontRenderContext) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the logical bounds of the characters indexed in the
	* specified {@link CharacterIterator} in the
	* specified <code>FontRenderContext</code>.  The logical bounds
	* contains the origin, ascent, advance, and height, which includes
	* the leading.  The logical bounds does not always enclose all the
	* text.  For example, in some languages and in some fonts, accent
	* marks can be positioned above the ascent or below the descent.
	* To obtain a visual bounding box, which encloses all the text,
	* use the {@link TextLayout#getBounds() getBounds} method of
	* <code>TextLayout</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.Font class notes}).
	* @param ci the specified <code>CharacterIterator</code>
	* @param beginIndex the initial offset in <code>ci</code>
	* @param limit the end offset in <code>ci</code>
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>Rectangle2D</code> that is the bounding box of the
	* characters indexed in the specified <code>CharacterIterator</code>
	* in the specified <code>FontRenderContext</code>.
	* @see FontRenderContext
	* @see Font#createGlyphVector
	* @since 1.2
	* @throws IndexOutOfBoundsException if <code>beginIndex</code> is
	*         less than the start index of <code>ci</code>, or
	*         <code>limit</code> is greater than the end index of
	*         <code>ci</code>, or <code>beginIndex</code> is greater
	*         than <code>limit</code>
	*/
	@:require(java2) @:overload @:public public function getStringBounds(ci : java.text.CharacterIterator, beginIndex : Int, limit : Int, frc : java.awt.font.FontRenderContext) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounds for the character with the maximum
	* bounds as defined in the specified <code>FontRenderContext</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.Font class notes}).
	* @param frc the specified <code>FontRenderContext</code>
	* @return a <code>Rectangle2D</code> that is the bounding box
	* for the character with the maximum bounds.
	*/
	@:overload @:public public function getMaxCharBounds(frc : java.awt.font.FontRenderContext) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a {@link java.awt.font.GlyphVector GlyphVector} by
	* mapping characters to glyphs one-to-one based on the
	* Unicode cmap in this <code>Font</code>.  This method does no other
	* processing besides the mapping of glyphs to characters.  This
	* means that this method is not useful for some scripts, such
	* as Arabic, Hebrew, Thai, and Indic, that require reordering,
	* shaping, or ligature substitution.
	* @param frc the specified <code>FontRenderContext</code>
	* @param str the specified <code>String</code>
	* @return a new <code>GlyphVector</code> created with the
	* specified <code>String</code> and the specified
	* <code>FontRenderContext</code>.
	*/
	@:overload @:public public function createGlyphVector(frc : java.awt.font.FontRenderContext, str : String) : java.awt.font.GlyphVector;
	
	/**
	* Creates a {@link java.awt.font.GlyphVector GlyphVector} by
	* mapping characters to glyphs one-to-one based on the
	* Unicode cmap in this <code>Font</code>.  This method does no other
	* processing besides the mapping of glyphs to characters.  This
	* means that this method is not useful for some scripts, such
	* as Arabic, Hebrew, Thai, and Indic, that require reordering,
	* shaping, or ligature substitution.
	* @param frc the specified <code>FontRenderContext</code>
	* @param chars the specified array of characters
	* @return a new <code>GlyphVector</code> created with the
	* specified array of characters and the specified
	* <code>FontRenderContext</code>.
	*/
	@:overload @:public public function createGlyphVector(frc : java.awt.font.FontRenderContext, chars : java.NativeArray<java.StdTypes.Char16>) : java.awt.font.GlyphVector;
	
	/**
	* Creates a {@link java.awt.font.GlyphVector GlyphVector} by
	* mapping the specified characters to glyphs one-to-one based on the
	* Unicode cmap in this <code>Font</code>.  This method does no other
	* processing besides the mapping of glyphs to characters.  This
	* means that this method is not useful for some scripts, such
	* as Arabic, Hebrew, Thai, and Indic, that require reordering,
	* shaping, or ligature substitution.
	* @param frc the specified <code>FontRenderContext</code>
	* @param ci the specified <code>CharacterIterator</code>
	* @return a new <code>GlyphVector</code> created with the
	* specified <code>CharacterIterator</code> and the specified
	* <code>FontRenderContext</code>.
	*/
	@:overload @:public public function createGlyphVector(frc : java.awt.font.FontRenderContext, ci : java.text.CharacterIterator) : java.awt.font.GlyphVector;
	
	/**
	* Creates a {@link java.awt.font.GlyphVector GlyphVector} by
	* mapping characters to glyphs one-to-one based on the
	* Unicode cmap in this <code>Font</code>.  This method does no other
	* processing besides the mapping of glyphs to characters.  This
	* means that this method is not useful for some scripts, such
	* as Arabic, Hebrew, Thai, and Indic, that require reordering,
	* shaping, or ligature substitution.
	* @param frc the specified <code>FontRenderContext</code>
	* @param glyphCodes the specified integer array
	* @return a new <code>GlyphVector</code> created with the
	* specified integer array and the specified
	* <code>FontRenderContext</code>.
	*/
	@:overload @:public public function createGlyphVector(frc : java.awt.font.FontRenderContext, glyphCodes : java.NativeArray<Int>) : java.awt.font.GlyphVector;
	
	/**
	* Returns a new <code>GlyphVector</code> object, performing full
	* layout of the text if possible.  Full layout is required for
	* complex text, such as Arabic or Hindi.  Support for different
	* scripts depends on the font and implementation.
	* <p>
	* Layout requires bidi analysis, as performed by
	* <code>Bidi</code>, and should only be performed on text that
	* has a uniform direction.  The direction is indicated in the
	* flags parameter,by using LAYOUT_RIGHT_TO_LEFT to indicate a
	* right-to-left (Arabic and Hebrew) run direction, or
	* LAYOUT_LEFT_TO_RIGHT to indicate a left-to-right (English)
	* run direction.
	* <p>
	* In addition, some operations, such as Arabic shaping, require
	* context, so that the characters at the start and limit can have
	* the proper shapes.  Sometimes the data in the buffer outside
	* the provided range does not have valid data.  The values
	* LAYOUT_NO_START_CONTEXT and LAYOUT_NO_LIMIT_CONTEXT can be
	* added to the flags parameter to indicate that the text before
	* start, or after limit, respectively, should not be examined
	* for context.
	* <p>
	* All other values for the flags parameter are reserved.
	*
	* @param frc the specified <code>FontRenderContext</code>
	* @param text the text to layout
	* @param start the start of the text to use for the <code>GlyphVector</code>
	* @param limit the limit of the text to use for the <code>GlyphVector</code>
	* @param flags control flags as described above
	* @return a new <code>GlyphVector</code> representing the text between
	* start and limit, with glyphs chosen and positioned so as to best represent
	* the text
	* @throws ArrayIndexOutOfBoundsException if start or limit is
	* out of bounds
	* @see java.text.Bidi
	* @see #LAYOUT_LEFT_TO_RIGHT
	* @see #LAYOUT_RIGHT_TO_LEFT
	* @see #LAYOUT_NO_START_CONTEXT
	* @see #LAYOUT_NO_LIMIT_CONTEXT
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function layoutGlyphVector(frc : java.awt.font.FontRenderContext, text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, flags : Int) : java.awt.font.GlyphVector;
	
	/**
	* A flag to layoutGlyphVector indicating that text is left-to-right as
	* determined by Bidi analysis.
	*/
	@:public @:static @:final public static var LAYOUT_LEFT_TO_RIGHT(default, null) : Int;
	
	/**
	* A flag to layoutGlyphVector indicating that text is right-to-left as
	* determined by Bidi analysis.
	*/
	@:public @:static @:final public static var LAYOUT_RIGHT_TO_LEFT(default, null) : Int;
	
	/**
	* A flag to layoutGlyphVector indicating that text in the char array
	* before the indicated start should not be examined.
	*/
	@:public @:static @:final public static var LAYOUT_NO_START_CONTEXT(default, null) : Int;
	
	/**
	* A flag to layoutGlyphVector indicating that text in the char array
	* after the indicated limit should not be examined.
	*/
	@:public @:static @:final public static var LAYOUT_NO_LIMIT_CONTEXT(default, null) : Int;
	
	
}
@:native('java$awt$Font$FontAccessImpl') @:internal extern class Font_FontAccessImpl extends sun.font.FontAccess
{
	@:overload @:public override public function getFont2D(font : java.awt.Font) : sun.font.Font2D;
	
	@:overload @:public override public function setFont2D(font : java.awt.Font, handle : sun.font.Font2DHandle) : Void;
	
	@:overload @:public override public function setCreatedFont(font : java.awt.Font) : Void;
	
	@:overload @:public override public function isCreatedFont(font : java.awt.Font) : Bool;
	
	
}
