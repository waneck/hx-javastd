package javax.swing.text.rtf;
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
/**
* Generates an RTF output stream (java.io.OutputStream) from rich text
* (handed off through a series of LTTextAcceptor calls).  Can be used to
* generate RTF from any object which knows how to write to a text acceptor
* (e.g., LTAttributedText and LTRTFFilter).
*
* <p>Note that this is a lossy conversion since RTF's model of
* text does not exactly correspond with LightText's.
*
* @see LTAttributedText
* @see LTRTFFilter
* @see LTTextAcceptor
* @see java.io.OutputStream
*/
@:internal extern class RTFGenerator
{
	/** The default color, used for text without an explicit color
	*  attribute. */
	public static var defaultRTFColor(default, null) : java.awt.Color;
	
	public static var defaultFontSize(default, null) : Single;
	
	public static var defaultFontFamily(default, null) : String;
	
	private static var textKeywords : java.NativeArray<RTFGenerator_CharacterKeywordPair>;
	
	@:overload public static function writeDocument(d : javax.swing.text.Document, to : java.io.OutputStream) : Void;
	
	@:overload public function new(to : java.io.OutputStream) : Void;
	
	@:overload public function examineElement(el : javax.swing.text.Element) : Void;
	
	/* Writes a line break to the output file, for ease in debugging */
	@:overload public function writeLineBreak() : Void;
	
	@:overload public function writeRTFHeader() : Void;
	
	@:overload public function writeRTFTrailer() : Void;
	
	@:overload private function checkNumericControlWord(currentAttributes : javax.swing.text.MutableAttributeSet, newAttributes : javax.swing.text.AttributeSet, attrName : Dynamic, controlWord : String, dflt : Single, scale : Single) : Void;
	
	@:overload private function checkControlWord(currentAttributes : javax.swing.text.MutableAttributeSet, newAttributes : javax.swing.text.AttributeSet, word : javax.swing.text.rtf.RTFAttribute) : Void;
	
	@:overload private function checkControlWords(currentAttributes : javax.swing.text.MutableAttributeSet, newAttributes : javax.swing.text.AttributeSet, words : java.NativeArray<javax.swing.text.rtf.RTFAttribute>, domain : Int) : Void;
	
	@:overload private function resetSectionAttributes(currentAttributes : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload public function writeParagraphElement(el : javax.swing.text.Element) : Void;
	
	/* debugging. TODO: remove.
private static String tabdump(Object tso)
{
	String buf;
	int i;

	if (tso == null)
	return "[none]";

	TabStop[] ts = (TabStop[])tso;

	buf = "[";
	for(i = 0; i < ts.length; i++) {
	buf = buf + ts[i].toString();
	if ((i+1) < ts.length)
	buf = buf + ",";
	}
	return buf + "]";
}
*/
	@:overload private function resetParagraphAttributes(currentAttributes : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload private function resetCharacterAttributes(currentAttributes : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload public function writeTextElement(el : javax.swing.text.Element) : Void;
	
	@:overload public function writeText(s : javax.swing.text.Segment) : Void;
	
	@:overload public function writeText(s : String) : Void;
	
	@:overload public function writeRawString(str : String) : Void;
	
	@:overload public function writeControlWord(keyword : String) : Void;
	
	@:overload public function writeControlWord(keyword : String, arg : Int) : Void;
	
	@:overload public function writeBegingroup() : Void;
	
	@:overload public function writeEndgroup() : Void;
	
	@:overload public function writeCharacter(ch : java.StdTypes.Char16) : Void;
	
	/* Not very efficient. TODO. */
	@:overload private static function convertCharacter(conversion : java.NativeArray<Int>, ch : java.StdTypes.Char16) : Int;
	
	
}
/* An array of character-keyword pairs. This could be done
as a dictionary (and lookup would be quicker), but that
would require allocating an object for every character
written (slow!). */
@:native('javax$swing$text$rtf$RTFGenerator$CharacterKeywordPair') @:internal extern class RTFGenerator_CharacterKeywordPair
{
	public var character : java.StdTypes.Char16;
	
	public var keyword : String;
	
	
}
