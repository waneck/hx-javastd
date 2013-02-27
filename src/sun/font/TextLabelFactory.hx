package sun.font;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
/*
*
* (C) Copyright IBM Corp. 1998-2003 All Rights Reserved
*/
extern class TextLabelFactory
{
	/**
	* Initialize a factory to produce glyph arrays.
	* @param frc the FontRenderContext to use for the arrays to be produced.
	* @param text the text of the paragraph.
	* @param bidi the bidi information for the paragraph text, or null if the
	* entire text is left-to-right text.
	*/
	@:overload public function new(frc : java.awt.font.FontRenderContext, text : java.NativeArray<java.StdTypes.Char16>, bidi : java.text.Bidi, flags : Int) : Void;
	
	@:overload public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	@:overload public function getText() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getParagraphBidi() : java.text.Bidi;
	
	@:overload public function getLineBidi() : java.text.Bidi;
	
	@:overload public function getLayoutFlags() : Int;
	
	@:overload public function getLineStart() : Int;
	
	@:overload public function getLineLimit() : Int;
	
	/**
	* Set a line context for the factory.  Shaping only occurs on this line.
	* Characters are ordered as they would appear on this line.
	* @param lineStart the index within the text of the start of the line.
	* @param lineLimit the index within the text of the limit of the line.
	*/
	@:overload public function setLineContext(lineStart : Int, lineLimit : Int) : Void;
	
	/**
	* Create an extended glyph array for the text between start and limit.
	*
	* @param font the font to use to generate glyphs and character positions.
	* @param start the start of the subrange for which to create the glyph array
	* @param limit the limit of the subrange for which to create glyph array
	*
	* Start and limit must be within the bounds of the current line.  If no
	* line context has been set, the entire text is used as the current line.
	* The text between start and limit will be treated as though it all has
	* the same bidi level (and thus the same directionality) as the character
	* at start.  Clients should ensure that all text between start and limit
	* has the same bidi level for the current line.
	*/
	@:overload public function createExtended(font : java.awt.Font, lm : sun.font.CoreMetrics, decorator : sun.font.Decoration, start : Int, limit : Int) : sun.font.ExtendedTextLabel;
	
	/**
	* Create a simple glyph array for the text between start and limit.
	*
	* @param font the font to use to generate glyphs and character positions.
	* @param start the start of the subrange for which to create the glyph array
	* @param limit the limit of the subrange for which to create glyph array
	*/
	@:overload public function createSimple(font : java.awt.Font, lm : sun.font.CoreMetrics, start : Int, limit : Int) : sun.font.TextLabel;
	
	
}
