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
* Takes a sequence of RTF tokens and text and appends the text
* described by the RTF to a <code>StyledDocument</code> (the <em>target</em>).
* The RTF is lexed
* from the character stream by the <code>RTFParser</code> which is this class's
* superclass.
*
* This class is an indirect subclass of OutputStream. It must be closed
* in order to guarantee that all of the text has been sent to
* the text acceptor.
*
*   @see RTFParser
*   @see java.io.OutputStream
*/
@:internal extern class RTFReader extends javax.swing.text.rtf.RTFParser
{
	/**
	* Creates a new RTFReader instance. Text will be sent to
	* the specified TextAcceptor.
	*
	* @param destination The TextAcceptor which is to receive the text.
	*/
	@:overload public function new(destination : javax.swing.text.StyledDocument) : Void;
	
	/** Called when the RTFParser encounters a bin keyword in the
	*  RTF stream.
	*
	*  @see RTFParser
	*/
	@:overload override public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Handles any pure text (containing no control characters) in the input
	* stream. Called by the superclass. */
	@:overload override public function handleText(text : String) : Void;
	
	/** Called by the superclass when a new RTF group is begun.
	*  This implementation saves the current <code>parserState</code>, and gives
	*  the current destination a chance to save its own state.
	* @see RTFParser#begingroup
	*/
	@:overload override public function begingroup() : Void;
	
	/** Called by the superclass when the current RTF group is closed.
	*  This restores the parserState saved by <code>begingroup()</code>
	*  as well as invoking the endgroup method of the current
	*  destination.
	* @see RTFParser#endgroup
	*/
	@:overload override public function endgroup() : Void;
	
	@:overload private function setRTFDestination(newDestination : javax.swing.text.rtf.RTFReader.RTFReader_Destination) : Void;
	
	/** Called by the user when there is no more input (<i>i.e.</i>,
	* at the end of the RTF file.)
	*
	* @see OutputStream#close
	*/
	@:overload override public function close() : Void;
	
	/**
	* Handles a parameterless RTF keyword. This is called by the superclass
	* (RTFParser) when a keyword is found in the input stream.
	*
	* @returns <code>true</code> if the keyword is recognized and handled;
	*          <code>false</code> otherwise
	* @see RTFParser#handleKeyword
	*/
	@:overload override public function handleKeyword(keyword : String) : Bool;
	
	/**
	* Handles an RTF keyword and its integer parameter.
	* This is called by the superclass
	* (RTFParser) when a keyword is found in the input stream.
	*
	* @returns <code>true</code> if the keyword is recognized and handled;
	*          <code>false</code> otherwise
	* @see RTFParser#handleKeyword
	*/
	@:overload override public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	/**
	* setCharacterSet sets the current translation table to correspond with
	* the named character set. The character set is loaded if necessary.
	*
	* @see AbstractFilter
	*/
	@:overload public function setCharacterSet(name : String) : Void;
	
	/** Adds a character set to the RTFReader's list
	*  of known character sets */
	@:overload public static function defineCharacterSet(name : String, table : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/** Looks up a named character set. A character set is a 256-entry
	*  array of characters, mapping unsigned byte values to their Unicode
	*  equivalents. The character set is loaded if necessary.
	*
	*  @returns the character set
	*/
	@:overload public static function getCharacterSet(name : String) : Dynamic;
	
	
}
/** An interface (could be an entirely abstract class) describing
*  a destination. The RTF reader always has a current destination
*  which is where text is sent.
*
*  @see RTFReader
*/
@:native('javax$swing$text$rtf$RTFReader$Destination') @:internal extern interface RTFReader_Destination
{
	@:overload public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function handleText(text : String) : Void;
	
	@:overload public function handleKeyword(keyword : String) : Bool;
	
	@:overload public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	@:overload public function begingroup() : Void;
	
	@:overload public function endgroup(oldState : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	@:overload public function close() : Void;
	
	
}
/** This data-sink class is used to implement ignored destinations
*  (e.g. {\*\blegga blah blah blah} )
*  It accepts all keywords and text but does nothing with them. */
@:native('javax$swing$text$rtf$RTFReader$DiscardingDestination') @:internal extern class RTFReader_DiscardingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function handleText(text : String) : Void;
	
	@:overload public function handleKeyword(text : String) : Bool;
	
	@:overload public function handleKeyword(text : String, parameter : Int) : Bool;
	
	@:overload public function begingroup() : Void;
	
	@:overload public function endgroup(oldState : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	@:overload public function close() : Void;
	
	
}
/** Reads the fonttbl group, inserting fonts into the RTFReader's
*  fontTable dictionary. */
@:native('javax$swing$text$rtf$RTFReader$FonttblDestination') @:internal extern class RTFReader_FonttblDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function handleText(text : String) : Void;
	
	@:overload public function handleKeyword(keyword : String) : Bool;
	
	@:overload public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	/* Groups are irrelevant. */
	@:overload public function begingroup() : Void;
	
	@:overload public function endgroup(oldState : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	/* currently, the only thing we do when the font table ends is
	dump its contents to the debugging log. */
	@:overload public function close() : Void;
	
	
}
/** Reads the colortbl group. Upon end-of-group, the RTFReader's
*  color table is set to an array containing the read colors. */
@:native('javax$swing$text$rtf$RTFReader$ColortblDestination') @:internal extern class RTFReader_ColortblDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function new() : Void;
	
	@:overload public function handleText(text : String) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	/* Colortbls don't understand any parameterless keywords */
	@:overload public function handleKeyword(keyword : String) : Bool;
	
	/* Groups are irrelevant. */
	@:overload public function begingroup() : Void;
	
	@:overload public function endgroup(oldState : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	/* Shouldn't see any binary blobs ... */
	@:overload public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
/** Handles the stylesheet keyword. Styles are read and sorted
*  into the three style arrays in the RTFReader. */
@:native('javax$swing$text$rtf$RTFReader$StylesheetDestination') @:internal extern class RTFReader_StylesheetDestination extends javax.swing.text.rtf.RTFReader.RTFReader_DiscardingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function new() : Void;
	
	@:overload override public function begingroup() : Void;
	
	@:overload override public function close() : Void;
	
	
}
/** This subclass handles an individual style */
@:native('javax$swing$text$rtf$RTFReader$StylesheetDestination$StyleDefiningDestination') @:internal extern class RTFReader_StylesheetDestination_StyleDefiningDestination extends javax.swing.text.rtf.RTFReader.RTFReader_AttributeTrackingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	public var styleName : String;
	
	public var number : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function handleText(text : String) : Void;
	
	@:overload override public function close() : Void;
	
	@:overload public function handleKeyword(keyword : String) : Bool;
	
	@:overload public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	@:overload public function realize() : javax.swing.text.Style;
	
	
}
/** Handles the info group. Currently no info keywords are recognized
*  so this is a subclass of DiscardingDestination. */
@:native('javax$swing$text$rtf$RTFReader$InfoDestination') @:internal extern class RTFReader_InfoDestination extends javax.swing.text.rtf.RTFReader.RTFReader_DiscardingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	
}
/** RTFReader.TextHandlingDestination is an abstract RTF destination
*  which simply tracks the attributes specified by the RTF control words
*  in internal form and can produce acceptable AttributeSets for the
*  current character, paragraph, and section attributes. It is up
*  to the subclasses to determine what is done with the actual text. */
@:native('javax$swing$text$rtf$RTFReader$AttributeTrackingDestination') @:internal extern class RTFReader_AttributeTrackingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function new() : Void;
	
	@:overload @:abstract public function handleText(text : String) : Void;
	
	@:overload public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function begingroup() : Void;
	
	@:overload public function endgroup(oldState : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function handleKeyword(keyword : String) : Bool;
	
	@:overload public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	/** Returns a new MutableAttributeSet containing the
	*  default character attributes */
	@:overload private function rootCharacterAttributes() : javax.swing.text.MutableAttributeSet;
	
	/** Returns a new MutableAttributeSet containing the
	*  default paragraph attributes */
	@:overload private function rootParagraphAttributes() : javax.swing.text.MutableAttributeSet;
	
	/** Returns a new MutableAttributeSet containing the
	*  default section attributes */
	@:overload private function rootSectionAttributes() : javax.swing.text.MutableAttributeSet;
	
	/**
	* Calculates the current section attributes
	* from the current parser state.
	*
	* @returns a newly created MutableAttributeSet.
	*/
	@:overload public function currentSectionAttributes() : javax.swing.text.AttributeSet;
	
	/** Resets the filter's internal notion of the current character
	*  attributes to their default values. Invoked to handle the
	*  \plain keyword. */
	@:overload private function resetCharacterAttributes() : Void;
	
	/** Resets the filter's internal notion of the current paragraph's
	*  attributes to their default values. Invoked to handle the
	*  \pard keyword. */
	@:overload private function resetParagraphAttributes() : Void;
	
	/** Resets the filter's internal notion of the current section's
	*  attributes to their default values. Invoked to handle the
	*  \sectd keyword. */
	@:overload private function resetSectionAttributes() : Void;
	
	
}
/** RTFReader.TextHandlingDestination provides basic text handling
*  functionality. Subclasses must implement: <dl>
*  <dt>deliverText()<dd>to handle a run of text with the same
*                       attributes
*  <dt>finishParagraph()<dd>to end the current paragraph and
*                           set the paragraph's attributes
*  <dt>endSection()<dd>to end the current section
*  </dl>
*/
@:native('javax$swing$text$rtf$RTFReader$TextHandlingDestination') @:internal extern class RTFReader_TextHandlingDestination extends javax.swing.text.rtf.RTFReader.RTFReader_AttributeTrackingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function new() : Void;
	
	@:overload override public function handleText(text : String) : Void;
	
	@:overload override public function close() : Void;
	
	@:overload override public function handleKeyword(keyword : String) : Bool;
	
	@:overload private function beginParagraph() : Void;
	
	@:overload private function endParagraph() : Void;
	
	
}
/** RTFReader.DocumentDestination is a concrete subclass of
*  TextHandlingDestination which appends the text to the
*  StyledDocument given by the <code>target</code> ivar of the
*  containing RTFReader.
*/
@:native('javax$swing$text$rtf$RTFReader$DocumentDestination') @:internal extern class RTFReader_DocumentDestination extends javax.swing.text.rtf.RTFReader.RTFReader_TextHandlingDestination implements javax.swing.text.rtf.RTFReader.RTFReader_Destination
{
	@:overload public function deliverText(text : String, characterAttributes : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function finishParagraph(pgfAttributes : javax.swing.text.AttributeSet, chrAttributes : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function endSection() : Void;
	
	
}
