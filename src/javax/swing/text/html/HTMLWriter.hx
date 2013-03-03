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
extern class HTMLWriter extends javax.swing.text.AbstractWriter
{
	/**
	* Creates a new HTMLWriter.
	*
	* @param w   a Writer
	* @param doc  an HTMLDocument
	*
	*/
	@:overload @:public public function new(w : java.io.Writer, doc : javax.swing.text.html.HTMLDocument) : Void;
	
	/**
	* Creates a new HTMLWriter.
	*
	* @param w  a Writer
	* @param doc an HTMLDocument
	* @param pos the document location from which to fetch the content
	* @param len the amount to write out
	*/
	@:overload @:public public function new(w : java.io.Writer, doc : javax.swing.text.html.HTMLDocument, pos : Int, len : Int) : Void;
	
	/**
	* Iterates over the
	* Element tree and controls the writing out of
	* all the tags and its attributes.
	*
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*
	*/
	@:overload @:public override public function write() : Void;
	
	/**
	* Writes out the attribute set.  Ignores all
	* attributes with a key of type HTML.Tag,
	* attributes with a key of type StyleConstants,
	* and attributes with a key of type
	* HTML.Attribute.ENDTAG.
	*
	* @param attr   an AttributeSet
	* @exception IOException on any I/O error
	*
	*/
	@:overload @:protected override private function writeAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Writes out all empty elements (all tags that have no
	* corresponding end tag).
	*
	* @param elem   an Element
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*/
	@:overload @:protected private function emptyTag(elem : javax.swing.text.Element) : Void;
	
	/**
	* Determines if the HTML.Tag associated with the
	* element is a block tag.
	*
	* @param attr  an AttributeSet
	* @return  true if tag is block tag, false otherwise.
	*/
	@:overload @:protected private function isBlockTag(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Writes out a start tag for the element.
	* Ignores all synthesized elements.
	*
	* @param elem   an Element
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function startTag(elem : javax.swing.text.Element) : Void;
	
	/**
	* Writes out text that is contained in a TEXTAREA form
	* element.
	*
	* @param attr  an AttributeSet
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*/
	@:overload @:protected private function textAreaContent(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Writes out text.  If a range is specified when the constructor
	* is invoked, then only the appropriate range of text is written
	* out.
	*
	* @param elem   an Element
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*/
	@:overload @:protected override private function text(elem : javax.swing.text.Element) : Void;
	
	/**
	* Writes out the content of the SELECT form element.
	*
	* @param attr the AttributeSet associated with the form element
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function selectContent(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Writes out the content of the Option form element.
	* @param option  an Option
	* @exception IOException on any I/O error
	*
	*/
	@:overload @:protected private function writeOption(option : javax.swing.text.html.Option) : Void;
	
	/**
	* Writes out an end tag for the element.
	*
	* @param elem    an Element
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function endTag(elem : javax.swing.text.Element) : Void;
	
	/**
	* Writes out comments.
	*
	* @param elem    an Element
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*/
	@:overload @:protected private function comment(elem : javax.swing.text.Element) : Void;
	
	/**
	* Returns true if the element is a
	* synthesized element.  Currently we are only testing
	* for the p-implied tag.
	*/
	@:overload @:protected private function synthesizedElement(elem : javax.swing.text.Element) : Bool;
	
	/**
	* Returns true if the StyleConstants.NameAttribute is
	* equal to the tag that is passed in as a parameter.
	*/
	@:overload @:protected private function matchNameAttribute(attr : javax.swing.text.AttributeSet, tag : javax.swing.text.html.HTML.HTML_Tag) : Bool;
	
	/**
	* Searches for embedded tags in the AttributeSet
	* and writes them out.  It also stores these tags in a vector
	* so that when appropriate the corresponding end tags can be
	* written out.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeEmbeddedTags(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Searches the attribute set and for each tag
	* that is stored in the tag vector.  If the tag isnt found,
	* then the tag is removed from the vector and a corresponding
	* end tag is written out.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function closeOutUnwantedEmbeddedTags(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Writes the line separator. This is overriden to make sure we don't
	* replace the newline content in case it is outside normal ascii.
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected override private function writeLineSeparator() : Void;
	
	/**
	* This method is overriden to map any character entities, such as
	* &lt; to &amp;lt;. <code>super.output</code> will be invoked to
	* write the content.
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected override private function output(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
