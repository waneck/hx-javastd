package java.awt.font;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
*
*/
/*
* (C) Copyright IBM Corp. 1999,  All rights reserved.
*/
@:internal extern class StyledParagraph
{
	/**
	* Create a new StyledParagraph over the given styled text.
	* @param aci an iterator over the text
	* @param chars the characters extracted from aci
	*/
	@:overload public function new(aci : java.text.AttributedCharacterIterator, chars : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Return a StyledParagraph reflecting the insertion of a single character
	* into the text.  This method will attempt to reuse the given paragraph,
	* but may create a new paragraph.
	* @param aci an iterator over the text.  The text should be the same as the
	*     text used to create (or most recently update) oldParagraph, with
	*     the exception of inserting a single character at insertPos.
	* @param chars the characters in aci
	* @param insertPos the index of the new character in aci
	* @param oldParagraph a StyledParagraph for the text in aci before the
	*     insertion
	*/
	@:overload public static function insertChar(aci : java.text.AttributedCharacterIterator, chars : java.NativeArray<java.StdTypes.Char16>, insertPos : Int, oldParagraph : StyledParagraph) : StyledParagraph;
	
	/**
	* Return a StyledParagraph reflecting the insertion of a single character
	* into the text.  This method will attempt to reuse the given paragraph,
	* but may create a new paragraph.
	* @param aci an iterator over the text.  The text should be the same as the
	*     text used to create (or most recently update) oldParagraph, with
	*     the exception of deleting a single character at deletePos.
	* @param chars the characters in aci
	* @param deletePos the index where a character was removed
	* @param oldParagraph a StyledParagraph for the text in aci before the
	*     insertion
	*/
	@:overload public static function deleteChar(aci : java.text.AttributedCharacterIterator, chars : java.NativeArray<java.StdTypes.Char16>, deletePos : Int, oldParagraph : StyledParagraph) : StyledParagraph;
	
	/**
	* Return the index at which there is a different Font, GraphicAttribute, or
	* Dcoration than at the given index.
	* @param index a valid index in the paragraph
	* @return the first index where there is a change in attributes from
	*      those at index
	*/
	@:overload public function getRunLimit(index : Int) : Int;
	
	/**
	* Return the Decoration in effect at the given index.
	* @param index a valid index in the paragraph
	* @return the Decoration at index.
	*/
	@:overload public function getDecorationAt(index : Int) : sun.font.Decoration;
	
	/**
	* Return the Font or GraphicAttribute in effect at the given index.
	* The client must test the type of the return value to determine what
	* it is.
	* @param index a valid index in the paragraph
	* @return the Font or GraphicAttribute at index.
	*/
	@:overload public function getFontOrGraphicAt(index : Int) : Dynamic;
	
	
}
