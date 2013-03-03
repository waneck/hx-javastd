package javax.swing.text.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* MinimalHTMLWriter is a fallback writer used by the
* HTMLEditorKit to write out HTML for a document that
* is a not produced by the EditorKit.
*
* The format for the document is:
* <pre>
* &lt;html&gt;
*   &lt;head&gt;
*     &lt;style&gt;
*        &lt;!-- list of named styles
*         p.normal {
*            font-family: SansSerif;
*            margin-height: 0;
*            font-size: 14
*         }
*        --&gt;
*      &lt;/style&gt;
*   &lt;/head&gt;
*   &lt;body&gt;
*    &lt;p style=normal&gt;
*        <b>Bold, italic, and underline attributes
*        of the run are emitted as HTML tags.
*        The remaining attributes are emitted as
*        part of the style attribute of a &lt;span&gt; tag.
*        The syntax is similar to inline styles.</b>
*    &lt;/p&gt;
*   &lt;/body&gt;
* &lt;/html&gt;
* </pre>
*
* @author Sunita Mani
*/
extern class MinimalHTMLWriter extends javax.swing.text.AbstractWriter
{
	/**
	* Creates a new MinimalHTMLWriter.
	*
	* @param w  Writer
	* @param doc StyledDocument
	*
	*/
	@:overload @:public public function new(w : java.io.Writer, doc : javax.swing.text.StyledDocument) : Void;
	
	/**
	* Creates a new MinimalHTMLWriter.
	*
	* @param w  Writer
	* @param doc StyledDocument
	* @param pos The location in the document to fetch the
	*   content.
	* @param len The amount to write out.
	*
	*/
	@:overload @:public public function new(w : java.io.Writer, doc : javax.swing.text.StyledDocument, pos : Int, len : Int) : Void;
	
	/**
	* Generates HTML output
	* from a StyledDocument.
	*
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*
	*/
	@:overload @:public override public function write() : Void;
	
	/**
	* Writes out all the attributes for the
	* following types:
	*  StyleConstants.ParagraphConstants,
	*  StyleConstants.CharacterConstants,
	*  StyleConstants.FontConstants,
	*  StyleConstants.ColorConstants.
	* The attribute name and value are separated by a colon.
	* Each pair is separated by a semicolon.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected override private function writeAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Writes out text.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected override private function text(elem : javax.swing.text.Element) : Void;
	
	/**
	* Writes out a start tag appropriately
	* indented.  Also increments the indent level.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeStartTag(tag : String) : Void;
	
	/**
	* Writes out an end tag appropriately
	* indented.  Also decrements the indent level.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeEndTag(endTag : String) : Void;
	
	/**
	* Writes out the &lt;head&gt; and &lt;style&gt;
	* tags, and then invokes writeStyles() to write
	* out all the named styles as the content of the
	* &lt;style&gt; tag.  The content is surrounded by
	* valid HTML comment markers to ensure that the
	* document is viewable in applications/browsers
	* that do not support the tag.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeHeader() : Void;
	
	/**
	* Writes out all the named styles as the
	* content of the &lt;style&gt; tag.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeStyles() : Void;
	
	/**
	* Iterates over the elements in the document
	* and processes elements based on whether they are
	* branch elements or leaf elements.  This method specially handles
	* leaf elements that are text.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeBody() : Void;
	
	/**
	* Emits an end tag for a &lt;p&gt;
	* tag.  Before writing out the tag, this method ensures
	* that all other tags that have been opened are
	* appropriately closed off.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeEndParagraph() : Void;
	
	/**
	* Emits the start tag for a paragraph. If
	* the paragraph has a named style associated with it,
	* then this method also generates a class attribute for the
	* &lt;p&gt; tag and sets its value to be the name of the
	* style.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeStartParagraph(elem : javax.swing.text.Element) : Void;
	
	/**
	* Responsible for writing out other non-text leaf
	* elements.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeLeaf(elem : javax.swing.text.Element) : Void;
	
	/**
	* Responsible for handling Icon Elements;
	* deliberately unimplemented.  How to implement this method is
	* an issue of policy.  For example, if you're generating
	* an &lt;img&gt; tag, how should you
	* represent the src attribute (the location of the image)?
	* In certain cases it could be a URL, in others it could
	* be read from a stream.
	*
	* @param elem element of type StyleConstants.IconElementName
	*/
	@:overload @:protected private function writeImage(elem : javax.swing.text.Element) : Void;
	
	/**
	* Responsible for handling Component Elements;
	* deliberately unimplemented.
	* How this method is implemented is a matter of policy.
	*/
	@:overload @:protected private function writeComponent(elem : javax.swing.text.Element) : Void;
	
	/**
	* Returns true if the element is a text element.
	*
	*/
	@:overload @:protected private function isText(elem : javax.swing.text.Element) : Bool;
	
	/**
	* Writes out the attribute set
	* in an HTML-compliant manner.
	*
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*/
	@:overload @:protected private function writeContent(elem : javax.swing.text.Element, needsIndenting : Bool) : Void;
	
	/**
	* Generates
	* bold &lt;b&gt;, italic &lt;i&gt;, and &lt;u&gt; tags for the
	* text based on its attribute settings.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeHTMLTags(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Writes out the remaining
	* character-level attributes (attributes other than bold,
	* italic, and underline) in an HTML-compliant way.  Given that
	* attributes such as font family and font size have no direct
	* mapping to HTML tags, a &lt;span&gt; tag is generated and its
	* style attribute is set to contain the list of remaining
	* attributes just like inline styles.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function writeNonHTMLAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Returns true if we are currently in a &lt;font&gt; tag.
	*/
	@:overload @:protected private function inFontTag() : Bool;
	
	/**
	* This is no longer used, instead &lt;span&gt; will be written out.
	* <p>
	* Writes out an end tag for the &lt;font&gt; tag.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function endFontTag() : Void;
	
	/**
	* This is no longer used, instead &lt;span&gt; will be written out.
	* <p>
	* Writes out a start tag for the &lt;font&gt; tag.
	* Because font tags cannot be nested,
	* this method closes out
	* any enclosing font tag before writing out a
	* new start tag.
	*
	* @exception IOException on any I/O error
	*/
	@:overload @:protected private function startFontTag(style : String) : Void;
	
	
}
