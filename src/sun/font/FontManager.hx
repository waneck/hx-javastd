package sun.font;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface FontManager
{
	/**
	* Register a new font. Please, note that {@code null} is not a valid
	* argument, and it's caller's responsibility to ensure that, but to keep
	* compatibility, if {@code null} is passed as an argument, {@code false}
	* is returned, and no {@link NullPointerException}
	* is thrown.
	*
	* As additional note, an implementation should ensure that this font
	* cannot override existing installed fonts.
	*
	* @param font
	* @return {@code true} is the font is successfully registered,
	* {@code false} otherwise.
	*/
	@:overload @:public public function registerFont(font : java.awt.Font) : Bool;
	
	@:overload @:public public function deRegisterBadFont(font2D : sun.font.Font2D) : Void;
	
	/**
	* The client supplies a name and a style.
	* The name could be a family name, or a full name.
	* A font may exist with the specified style, or it may
	* exist only in some other style. For non-native fonts the scaler
	* may be able to emulate the required style.
	*/
	@:overload @:public public function findFont2D(name : String, style : Int, fallback : Int) : sun.font.Font2D;
	
	/**
	* Creates a Font2D for the specified font file, that is expected
	* to be in the specified font format (according to the constants
	* in java.awt.Font). The parameter {@code isCopy} is set to true
	* when the specified font file is actually a copy of the font data
	* and needs to be deleted afterwards. This method is called
	* for the Font.createFont() methods.
	*
	* @param fontFile the file holding the font data
	* @param fontFormat the expected font format
	* @param isCopy {@code true} if the file is a copy and needs to be
	*        deleted, {@code false} otherwise
	*
	* @return the created Font2D instance
	*/
	@:overload @:public public function createFont2D(fontFile : java.io.File, fontFormat : Int, isCopy : Bool, tracker : sun.font.CreatedFontTracker) : sun.font.Font2D;
	
	/**
	* If usingPerAppContextComposites is true, we are in "applet"
	* (eg browser) enviroment and at least one context has selected
	* an alternate composite font behaviour.
	*/
	@:overload @:public public function usingPerAppContextComposites() : Bool;
	
	/**
	* Creates a derived composite font from the specified font (handle).
	*
	* @param family the font family of the derived font
	* @param style the font style of the derived font
	* @param handle the original font (handle)
	*
	* @return the handle for the derived font
	*/
	@:overload @:public public function getNewComposite(family : String, style : Int, handle : sun.font.Font2DHandle) : sun.font.Font2DHandle;
	
	/**
	* Indicates a preference for locale-specific fonts in the mapping of
	* logical fonts to physical fonts. Calling this method indicates that font
	* rendering should primarily use fonts specific to the primary writing
	* system (the one indicated by the default encoding and the initial
	* default locale). For example, if the primary writing system is
	* Japanese, then characters should be rendered using a Japanese font
	* if possible, and other fonts should only be used for characters for
	* which the Japanese font doesn't have glyphs.
	* <p>
	* The actual change in font rendering behavior resulting from a call
	* to this method is implementation dependent; it may have no effect at
	* all, or the requested behavior may already match the default behavior.
	* The behavior may differ between font rendering in lightweight
	* and peered components.  Since calling this method requests a
	* different font, clients should expect different metrics, and may need
	* to recalculate window sizes and layout. Therefore this method should
	* be called before user interface initialisation.
	*
	* @see #preferProportionalFonts()
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function preferLocaleFonts() : Void;
	
	/**
	* preferLocaleFonts() and preferProportionalFonts() are called to inform
	* that the application could be using an alternate set of composite
	* fonts, and so the implementation should try to create a CompositeFonts
	* with this directive in mind.
	*
	* @see #preferLocaleFonts()
	*/
	@:overload @:public public function preferProportionalFonts() : Void;
	
	
}
