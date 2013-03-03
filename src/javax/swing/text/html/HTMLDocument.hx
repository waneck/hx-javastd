package javax.swing.text.html;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class HTMLDocument extends javax.swing.text.DefaultStyledDocument
{
	/**
	* Constructs an HTML document using the default buffer size
	* and a default <code>StyleSheet</code>.  This is a convenience
	* method for the constructor
	* <code>HTMLDocument(Content, StyleSheet)</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an HTML document with the default content
	* storage implementation and the specified style/attribute
	* storage mechanism.  This is a convenience method for the
	* constructor
	* <code>HTMLDocument(Content, StyleSheet)</code>.
	*
	* @param styles  the styles
	*/
	@:overload @:public public function new(styles : javax.swing.text.html.StyleSheet) : Void;
	
	/**
	* Constructs an HTML document with the given content
	* storage implementation and the given style/attribute
	* storage mechanism.
	*
	* @param c  the container for the content
	* @param styles the styles
	*/
	@:overload @:public public function new(c : javax.swing.text.AbstractDocument.AbstractDocument_Content, styles : javax.swing.text.html.StyleSheet) : Void;
	
	/**
	* Fetches the reader for the parser to use when loading the document
	* with HTML.  This is implemented to return an instance of
	* <code>HTMLDocument.HTMLReader</code>.
	* Subclasses can reimplement this
	* method to change how the document gets structured if desired.
	* (For example, to handle custom tags, or structurally represent character
	* style elements.)
	*
	* @param pos the starting position
	* @return the reader used by the parser to load the document
	*/
	@:overload @:public public function getReader(pos : Int) : javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_ParserCallback;
	
	/**
	* Returns the reader for the parser to use to load the document
	* with HTML.  This is implemented to return an instance of
	* <code>HTMLDocument.HTMLReader</code>.
	* Subclasses can reimplement this
	* method to change how the document gets structured if desired.
	* (For example, to handle custom tags, or structurally represent character
	* style elements.)
	* <p>This is a convenience method for
	* <code>getReader(int, int, int, HTML.Tag, TRUE)</code>.
	*
	* @param popDepth   the number of <code>ElementSpec.EndTagTypes</code>
	*          to generate before inserting
	* @param pushDepth  the number of <code>ElementSpec.StartTagTypes</code>
	*          with a direction of <code>ElementSpec.JoinNextDirection</code>
	*          that should be generated before inserting,
	*          but after the end tags have been generated
	* @param insertTag  the first tag to start inserting into document
	* @return the reader used by the parser to load the document
	*/
	@:overload @:public public function getReader(pos : Int, popDepth : Int, pushDepth : Int, insertTag : javax.swing.text.html.HTML.HTML_Tag) : javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_ParserCallback;
	
	/**
	* Returns the location to resolve relative URLs against.  By
	* default this will be the document's URL if the document
	* was loaded from a URL.  If a base tag is found and
	* can be parsed, it will be used as the base location.
	*
	* @return the base location
	*/
	@:overload @:public public function getBase() : java.net.URL;
	
	/**
	* Sets the location to resolve relative URLs against.  By
	* default this will be the document's URL if the document
	* was loaded from a URL.  If a base tag is found and
	* can be parsed, it will be used as the base location.
	* <p>This also sets the base of the <code>StyleSheet</code>
	* to be <code>u</code> as well as the base of the document.
	*
	* @param u  the desired base URL
	*/
	@:overload @:public public function setBase(u : java.net.URL) : Void;
	
	/**
	* Inserts new elements in bulk.  This is how elements get created
	* in the document.  The parsing determines what structure is needed
	* and creates the specification as a set of tokens that describe the
	* edit while leaving the document free of a write-lock.  This method
	* can then be called in bursts by the reader to acquire a write-lock
	* for a shorter duration (i.e. while the document is actually being
	* altered).
	*
	* @param offset the starting offset
	* @param data the element data
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document.
	*/
	@:overload @:protected override private function insert(offset : Int, data : java.NativeArray<javax.swing.text.DefaultStyledDocument.DefaultStyledDocument_ElementSpec>) : Void;
	
	/**
	* Updates document structure as a result of text insertion.  This
	* will happen within a write lock.  This implementation simply
	* parses the inserted content for line breaks and builds up a set
	* of instructions for the element buffer.
	*
	* @param chng a description of the document change
	* @param attr the attributes
	*/
	@:overload @:protected override private function insertUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent, attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Replaces the contents of the document with the given
	* element specifications.  This is called before insert if
	* the loading is done in bursts.  This is the only method called
	* if loading the document entirely in one burst.
	*
	* @param data  the new contents of the document
	*/
	@:overload @:protected override private function create(data : java.NativeArray<javax.swing.text.DefaultStyledDocument.DefaultStyledDocument_ElementSpec>) : Void;
	
	/**
	* Sets attributes for a paragraph.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offset the offset into the paragraph (must be at least 0)
	* @param length the number of characters affected (must be at least 0)
	* @param s the attributes
	* @param replace whether to replace existing attributes, or merge them
	*/
	@:overload @:public override public function setParagraphAttributes(offset : Int, length : Int, s : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	/**
	* Fetches the <code>StyleSheet</code> with the document-specific display
	* rules (CSS) that were specified in the HTML document itself.
	*
	* @return the <code>StyleSheet</code>
	*/
	@:overload @:public public function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	/**
	* Fetches an iterator for the specified HTML tag.
	* This can be used for things like iterating over the
	* set of anchors contained, or iterating over the input
	* elements.
	*
	* @param t the requested <code>HTML.Tag</code>
	* @return the <code>Iterator</code> for the given HTML tag
	* @see javax.swing.text.html.HTML.Tag
	*/
	@:overload @:public public function getIterator(t : javax.swing.text.html.HTML.HTML_Tag) : javax.swing.text.html.HTMLDocument.HTMLDocument_Iterator;
	
	/**
	* Creates a document leaf element that directly represents
	* text (doesn't have any children).  This is implemented
	* to return an element of type
	* <code>HTMLDocument.RunElement</code>.
	*
	* @param parent the parent element
	* @param a the attributes for the element
	* @param p0 the beginning of the range (must be at least 0)
	* @param p1 the end of the range (must be at least p0)
	* @return the new element
	*/
	@:overload @:protected override private function createLeafElement(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet, p0 : Int, p1 : Int) : javax.swing.text.Element;
	
	/**
	* Creates a document branch element, that can contain other elements.
	* This is implemented to return an element of type
	* <code>HTMLDocument.BlockElement</code>.
	*
	* @param parent the parent element
	* @param a the attributes
	* @return the element
	*/
	@:overload @:protected override private function createBranchElement(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet) : javax.swing.text.Element;
	
	/**
	* Creates the root element to be used to represent the
	* default document structure.
	*
	* @return the element base
	*/
	@:overload @:protected override private function createDefaultRoot() : javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement;
	
	/**
	* Sets the number of tokens to buffer before trying to update
	* the documents element structure.
	*
	* @param n  the number of tokens to buffer
	*/
	@:overload @:public public function setTokenThreshold(n : Int) : Void;
	
	/**
	* Gets the number of tokens to buffer before trying to update
	* the documents element structure.  The default value is
	* <code>Integer.MAX_VALUE</code>.
	*
	* @return the number of tokens to buffer
	*/
	@:overload @:public public function getTokenThreshold() : Int;
	
	/**
	* Determines how unknown tags are handled by the parser.
	* If set to true, unknown
	* tags are put in the model, otherwise they are dropped.
	*
	* @param preservesTags  true if unknown tags should be
	*          saved in the model, otherwise tags are dropped
	* @see javax.swing.text.html.HTML.Tag
	*/
	@:overload @:public public function setPreservesUnknownTags(preservesTags : Bool) : Void;
	
	/**
	* Returns the behavior the parser observes when encountering
	* unknown tags.
	*
	* @see javax.swing.text.html.HTML.Tag
	* @return true if unknown tags are to be preserved when parsing
	*/
	@:overload @:public public function getPreservesUnknownTags() : Bool;
	
	/**
	* Processes <code>HyperlinkEvents</code> that
	* are generated by documents in an HTML frame.
	* The <code>HyperlinkEvent</code> type, as the parameter suggests,
	* is <code>HTMLFrameHyperlinkEvent</code>.
	* In addition to the typical information contained in a
	* <code>HyperlinkEvent</code>,
	* this event contains the element that corresponds to the frame in
	* which the click happened (the source element) and the
	* target name.  The target name has 4 possible values:
	* <ul>
	* <li>  _self
	* <li>  _parent
	* <li>  _top
	* <li>  a named frame
	* </ul>
	*
	* If target is _self, the action is to change the value of the
	* <code>HTML.Attribute.SRC</code> attribute and fires a
	* <code>ChangedUpdate</code> event.
	*<p>
	* If the target is _parent, then it deletes the parent element,
	* which is a &lt;FRAMESET&gt; element, and inserts a new &lt;FRAME&gt;
	* element, and sets its <code>HTML.Attribute.SRC</code> attribute
	* to have a value equal to the destination URL and fire a
	* <code>RemovedUpdate</code> and <code>InsertUpdate</code>.
	*<p>
	* If the target is _top, this method does nothing. In the implementation
	* of the view for a frame, namely the <code>FrameView</code>,
	* the processing of _top is handled.  Given that _top implies
	* replacing the entire document, it made sense to handle this outside
	* of the document that it will replace.
	*<p>
	* If the target is a named frame, then the element hierarchy is searched
	* for an element with a name equal to the target, its
	* <code>HTML.Attribute.SRC</code> attribute is updated and a
	* <code>ChangedUpdate</code> event is fired.
	*
	* @param e the event
	*/
	@:overload @:public public function processHTMLFrameHyperlinkEvent(e : javax.swing.text.html.HTMLFrameHyperlinkEvent) : Void;
	
	/**
	* Sets the parser that is used by the methods that insert html
	* into the existing document, such as <code>setInnerHTML</code>,
	* and <code>setOuterHTML</code>.
	* <p>
	* <code>HTMLEditorKit.createDefaultDocument</code> will set the parser
	* for you. If you create an <code>HTMLDocument</code> by hand,
	* be sure and set the parser accordingly.
	* @param parser the parser to be used for text insertion
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setParser(parser : javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_Parser) : Void;
	
	/**
	* Returns the parser that is used when inserting HTML into the existing
	* document.
	* @return the parser used for text insertion
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getParser() : javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_Parser;
	
	/**
	* Replaces the children of the given element with the contents
	* specified as an HTML string.
	*
	* <p>This will be seen as at least two events, n inserts followed by
	* a remove.</p>
	*
	* <p>Consider the following structure (the <code>elem</code>
	* parameter is <b>in bold</b>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*      /  \
	*    &lt;p>   &lt;p>
	* </pre>
	*
	* <p>Invoking <code>setInnerHTML(elem, "&lt;ul>&lt;li>")</code>
	* results in the following structure (new elements are <font
	* color="red">in red</font>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*         \
	*         <font color="red">&lt;ul></font>
	*           \
	*           <font color="red">&lt;li></font>
	* </pre>
	*
	* <p>Parameter <code>elem</code> must not be a leaf element,
	* otherwise an <code>IllegalArgumentException</code> is thrown.
	* If either <code>elem</code> or <code>htmlText</code> parameter
	* is <code>null</code>, no changes are made to the document.</p>
	*
	* <p>For this to work correcty, the document must have an
	* <code>HTMLEditorKit.Parser</code> set. This will be the case
	* if the document was created from an HTMLEditorKit via the
	* <code>createDefaultDocument</code> method.</p>
	*
	* @param elem the branch element whose children will be replaced
	* @param htmlText the string to be parsed and assigned to <code>elem</code>
	* @throws IllegalArgumentException if <code>elem</code> is a leaf
	* @throws IllegalStateException if an <code>HTMLEditorKit.Parser</code>
	*         has not been defined
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setInnerHTML(elem : javax.swing.text.Element, htmlText : String) : Void;
	
	/**
	* Replaces the given element in the parent with the contents
	* specified as an HTML string.
	*
	* <p>This will be seen as at least two events, n inserts followed by
	* a remove.</p>
	*
	* <p>When replacing a leaf this will attempt to make sure there is
	* a newline present if one is needed. This may result in an additional
	* element being inserted. Consider, if you were to replace a character
	* element that contained a newline with &lt;img&gt; this would create
	* two elements, one for the image, ane one for the newline.</p>
	*
	* <p>If you try to replace the element at length you will most
	* likely end up with two elements, eg
	* <code>setOuterHTML(getCharacterElement (getLength()),
	* "blah")</code> will result in two leaf elements at the end, one
	* representing 'blah', and the other representing the end
	* element.</p>
	*
	* <p>Consider the following structure (the <code>elem</code>
	* parameter is <b>in bold</b>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*      /  \
	*    &lt;p>   &lt;p>
	* </pre>
	*
	* <p>Invoking <code>setOuterHTML(elem, "&lt;ul>&lt;li>")</code>
	* results in the following structure (new elements are <font
	* color="red">in red</font>).</p>
	*
	* <pre>
	*    &lt;body>
	*      |
	*     <font color="red">&lt;ul></font>
	*       \
	*       <font color="red">&lt;li></font>
	* </pre>
	*
	* <p>If either <code>elem</code> or <code>htmlText</code>
	* parameter is <code>null</code>, no changes are made to the
	* document.</p>
	*
	* <p>For this to work correcty, the document must have an
	* HTMLEditorKit.Parser set. This will be the case if the document
	* was created from an HTMLEditorKit via the
	* <code>createDefaultDocument</code> method.</p>
	*
	* @param elem the element to replace
	* @param htmlText the string to be parsed and inserted in place of <code>elem</code>
	* @throws IllegalStateException if an HTMLEditorKit.Parser has not
	*         been set
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setOuterHTML(elem : javax.swing.text.Element, htmlText : String) : Void;
	
	/**
	* Inserts the HTML specified as a string at the start
	* of the element.
	*
	* <p>Consider the following structure (the <code>elem</code>
	* parameter is <b>in bold</b>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*      /  \
	*    &lt;p>   &lt;p>
	* </pre>
	*
	* <p>Invoking <code>insertAfterStart(elem,
	* "&lt;ul>&lt;li>")</code> results in the following structure
	* (new elements are <font color="red">in red</font>).</p>
	*
	* <pre>
	*        &lt;body>
	*          |
	*        <b>&lt;div></b>
	*       /  |  \
	*    <font color="red">&lt;ul></font> &lt;p> &lt;p>
	*     /
	*  <font color="red">&lt;li></font>
	* </pre>
	*
	* <p>Unlike the <code>insertBeforeStart</code> method, new
	*  elements become <em>children</em> of the specified element,
	*  not siblings.</p>
	*
	* <p>Parameter <code>elem</code> must not be a leaf element,
	* otherwise an <code>IllegalArgumentException</code> is thrown.
	* If either <code>elem</code> or <code>htmlText</code> parameter
	* is <code>null</code>, no changes are made to the document.</p>
	*
	* <p>For this to work correcty, the document must have an
	* <code>HTMLEditorKit.Parser</code> set. This will be the case
	* if the document was created from an HTMLEditorKit via the
	* <code>createDefaultDocument</code> method.</p>
	*
	* @param elem the branch element to be the root for the new text
	* @param htmlText the string to be parsed and assigned to <code>elem</code>
	* @throws IllegalArgumentException if <code>elem</code> is a leaf
	* @throws IllegalStateException if an HTMLEditorKit.Parser has not
	*         been set on the document
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function insertAfterStart(elem : javax.swing.text.Element, htmlText : String) : Void;
	
	/**
	* Inserts the HTML specified as a string at the end of
	* the element.
	*
	* <p> If <code>elem</code>'s children are leaves, and the
	* character at a <code>elem.getEndOffset() - 1</code> is a newline,
	* this will insert before the newline so that there isn't text after
	* the newline.</p>
	*
	* <p>Consider the following structure (the <code>elem</code>
	* parameter is <b>in bold</b>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*      /  \
	*    &lt;p>   &lt;p>
	* </pre>
	*
	* <p>Invoking <code>insertBeforeEnd(elem, "&lt;ul>&lt;li>")</code>
	* results in the following structure (new elements are <font
	* color="red">in red</font>).</p>
	*
	* <pre>
	*        &lt;body>
	*          |
	*        <b>&lt;div></b>
	*       /  |  \
	*     &lt;p> &lt;p> <font color="red">&lt;ul></font>
	*               \
	*               <font color="red">&lt;li></font>
	* </pre>
	*
	* <p>Unlike the <code>insertAfterEnd</code> method, new elements
	* become <em>children</em> of the specified element, not
	* siblings.</p>
	*
	* <p>Parameter <code>elem</code> must not be a leaf element,
	* otherwise an <code>IllegalArgumentException</code> is thrown.
	* If either <code>elem</code> or <code>htmlText</code> parameter
	* is <code>null</code>, no changes are made to the document.</p>
	*
	* <p>For this to work correcty, the document must have an
	* <code>HTMLEditorKit.Parser</code> set. This will be the case
	* if the document was created from an HTMLEditorKit via the
	* <code>createDefaultDocument</code> method.</p>
	*
	* @param elem the element to be the root for the new text
	* @param htmlText the string to be parsed and assigned to <code>elem</code>
	* @throws IllegalArgumentException if <code>elem</code> is a leaf
	* @throws IllegalStateException if an HTMLEditorKit.Parser has not
	*         been set on the document
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function insertBeforeEnd(elem : javax.swing.text.Element, htmlText : String) : Void;
	
	/**
	* Inserts the HTML specified as a string before the start of
	* the given element.
	*
	* <p>Consider the following structure (the <code>elem</code>
	* parameter is <b>in bold</b>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*      /  \
	*    &lt;p>   &lt;p>
	* </pre>
	*
	* <p>Invoking <code>insertBeforeStart(elem,
	* "&lt;ul>&lt;li>")</code> results in the following structure
	* (new elements are <font color="red">in red</font>).</p>
	*
	* <pre>
	*        &lt;body>
	*         /  \
	*      <font color="red">&lt;ul></font> <b>&lt;div></b>
	*       /    /  \
	*     <font color="red">&lt;li></font> &lt;p>  &lt;p>
	* </pre>
	*
	* <p>Unlike the <code>insertAfterStart</code> method, new
	* elements become <em>siblings</em> of the specified element, not
	* children.</p>
	*
	* <p>If either <code>elem</code> or <code>htmlText</code>
	* parameter is <code>null</code>, no changes are made to the
	* document.</p>
	*
	* <p>For this to work correcty, the document must have an
	* <code>HTMLEditorKit.Parser</code> set. This will be the case
	* if the document was created from an HTMLEditorKit via the
	* <code>createDefaultDocument</code> method.</p>
	*
	* @param elem the element the content is inserted before
	* @param htmlText the string to be parsed and inserted before <code>elem</code>
	* @throws IllegalStateException if an HTMLEditorKit.Parser has not
	*         been set on the document
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function insertBeforeStart(elem : javax.swing.text.Element, htmlText : String) : Void;
	
	/**
	* Inserts the HTML specified as a string after the the end of the
	* given element.
	*
	* <p>Consider the following structure (the <code>elem</code>
	* parameter is <b>in bold</b>).</p>
	*
	* <pre>
	*     &lt;body>
	*       |
	*     <b>&lt;div></b>
	*      /  \
	*    &lt;p>   &lt;p>
	* </pre>
	*
	* <p>Invoking <code>insertAfterEnd(elem, "&lt;ul>&lt;li>")</code>
	* results in the following structure (new elements are <font
	* color="red">in red</font>).</p>
	*
	* <pre>
	*        &lt;body>
	*         /  \
	*      <b>&lt;div></b> <font color="red">&lt;ul></font>
	*       / \    \
	*     &lt;p> &lt;p>  <font color="red">&lt;li></font>
	* </pre>
	*
	* <p>Unlike the <code>insertBeforeEnd</code> method, new elements
	* become <em>siblings</em> of the specified element, not
	* children.</p>
	*
	* <p>If either <code>elem</code> or <code>htmlText</code>
	* parameter is <code>null</code>, no changes are made to the
	* document.</p>
	*
	* <p>For this to work correcty, the document must have an
	* <code>HTMLEditorKit.Parser</code> set. This will be the case
	* if the document was created from an HTMLEditorKit via the
	* <code>createDefaultDocument</code> method.</p>
	*
	* @param elem the element the content is inserted after
	* @param htmlText the string to be parsed and inserted after <code>elem</code>
	* @throws IllegalStateException if an HTMLEditorKit.Parser has not
	*         been set on the document
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function insertAfterEnd(elem : javax.swing.text.Element, htmlText : String) : Void;
	
	/**
	* Returns the element that has the given id <code>Attribute</code>.
	* If the element can't be found, <code>null</code> is returned.
	* Note that this method works on an <code>Attribute</code>,
	* <i>not</i> a character tag.  In the following HTML snippet:
	* <code>&lt;a id="HelloThere"&gt;</code> the attribute is
	* 'id' and the character tag is 'a'.
	* This is a convenience method for
	* <code>getElement(RootElement, HTML.Attribute.id, id)</code>.
	* This is not thread-safe.
	*
	* @param id  the string representing the desired <code>Attribute</code>
	* @return the element with the specified <code>Attribute</code>
	*          or <code>null</code> if it can't be found,
	*          or <code>null</code> if <code>id</code> is <code>null</code>
	* @see javax.swing.text.html.HTML.Attribute
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getElement(id : String) : javax.swing.text.Element;
	
	/**
	* Returns the child element of <code>e</code> that contains the
	* attribute, <code>attribute</code> with value <code>value</code>, or
	* <code>null</code> if one isn't found. This is not thread-safe.
	*
	* @param e the root element where the search begins
	* @param attribute the desired <code>Attribute</code>
	* @param value the values for the specified <code>Attribute</code>
	* @return the element with the specified <code>Attribute</code>
	*          and the specified <code>value</code>, or <code>null</code>
	*          if it can't be found
	* @see javax.swing.text.html.HTML.Attribute
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getElement(e : javax.swing.text.Element, attribute : Dynamic, value : Dynamic) : javax.swing.text.Element;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload @:protected override private function fireChangedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload @:protected override private function fireUndoableEditUpdate(e : javax.swing.event.UndoableEditEvent) : Void;
	
	/**
	* Document property key value. The value for the key will be a Vector
	* of Strings that are comments not found in the body.
	*/
	@:public @:static @:final public static var AdditionalComments(default, null) : String;
	
	
}
/**
* An iterator to iterate over a particular type of
* tag.  The iterator is not thread safe.  If reliable
* access to the document is not already ensured by
* the context under which the iterator is being used,
* its use should be performed under the protection of
* Document.render.
*/
@:native('javax$swing$text$html$HTMLDocument$Iterator') extern class HTMLDocument_Iterator
{
	/**
	* Return the attributes for this tag.
	* @return the <code>AttributeSet</code> for this tag, or
	*      <code>null</code> if none can be found
	*/
	@:overload @:public @:abstract public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Returns the start of the range for which the current occurrence of
	* the tag is defined and has the same attributes.
	*
	* @return the start of the range, or -1 if it can't be found
	*/
	@:overload @:public @:abstract public function getStartOffset() : Int;
	
	/**
	* Returns the end of the range for which the current occurrence of
	* the tag is defined and has the same attributes.
	*
	* @return the end of the range
	*/
	@:overload @:public @:abstract public function getEndOffset() : Int;
	
	/**
	* Move the iterator forward to the next occurrence
	* of the tag it represents.
	*/
	@:overload @:public @:abstract public function next() : Void;
	
	/**
	* Indicates if the iterator is currently
	* representing an occurrence of a tag.  If
	* false there are no more tags for this iterator.
	* @return true if the iterator is currently representing an
	*              occurrence of a tag, otherwise returns false
	*/
	@:overload @:public @:abstract public function isValid() : Bool;
	
	/**
	* Type of tag this iterator represents.
	*/
	@:overload @:public @:abstract public function getTag() : javax.swing.text.html.HTML.HTML_Tag;
	
	
}
/**
* An iterator to iterate over a particular type of tag.
*/
@:native('javax$swing$text$html$HTMLDocument$LeafIterator') @:internal extern class HTMLDocument_LeafIterator extends javax.swing.text.html.HTMLDocument.HTMLDocument_Iterator
{
	/**
	* Returns the attributes for this tag.
	* @return the <code>AttributeSet</code> for this tag,
	*              or <code>null</code> if none can be found
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Returns the start of the range for which the current occurrence of
	* the tag is defined and has the same attributes.
	*
	* @return the start of the range, or -1 if it can't be found
	*/
	@:overload @:public override public function getStartOffset() : Int;
	
	/**
	* Returns the end of the range for which the current occurrence of
	* the tag is defined and has the same attributes.
	*
	* @return the end of the range
	*/
	@:overload @:public override public function getEndOffset() : Int;
	
	/**
	* Moves the iterator forward to the next occurrence
	* of the tag it represents.
	*/
	@:overload @:public override public function next() : Void;
	
	/**
	* Returns the type of tag this iterator represents.
	*
	* @return the <code>HTML.Tag</code> that this iterator represents.
	* @see javax.swing.text.html.HTML.Tag
	*/
	@:overload @:public override public function getTag() : javax.swing.text.html.HTML.HTML_Tag;
	
	/**
	* Returns true if the current position is not <code>null</code>.
	* @return true if current position is not <code>null</code>,
	*              otherwise returns false
	*/
	@:overload @:public override public function isValid() : Bool;
	
	
}
/**
* An HTML reader to load an HTML document with an HTML
* element structure.  This is a set of callbacks from
* the parser, implemented to create a set of elements
* tagged with attributes.  The parse builds up tokens
* (ElementSpec) that describe the element subtree desired,
* and burst it into the document under the protection of
* a write lock using the insert method on the document
* outer class.
* <p>
* The reader can be configured by registering actions
* (of type <code>HTMLDocument.HTMLReader.TagAction</code>)
* that describe how to handle the action.  The idea behind
* the actions provided is that the most natural text editing
* operations can be provided if the element structure boils
* down to paragraphs with runs of some kind of style
* in them.  Some things are more naturally specified
* structurally, so arbitrary structure should be allowed
* above the paragraphs, but will need to be edited with structural
* actions.  The implication of this is that some of the
* HTML elements specified in the stream being parsed will
* be collapsed into attributes, and in some cases paragraphs
* will be synthesized.  When HTML elements have been
* converted to attributes, the attribute key will be of
* type HTML.Tag, and the value will be of type AttributeSet
* so that no information is lost.  This enables many of the
* existing actions to work so that the user can type input,
* hit the return key, backspace, delete, etc and have a
* reasonable result.  Selections can be created, and attributes
* applied or removed, etc.  With this in mind, the work done
* by the reader can be categorized into the following kinds
* of tasks:
* <dl>
* <dt>Block
* <dd>Build the structure like it's specified in the stream.
* This produces elements that contain other elements.
* <dt>Paragraph
* <dd>Like block except that it's expected that the element
* will be used with a paragraph view so a paragraph element
* won't need to be synthesized.
* <dt>Character
* <dd>Contribute the element as an attribute that will start
* and stop at arbitrary text locations.  This will ultimately
* be mixed into a run of text, with all of the currently
* flattened HTML character elements.
* <dt>Special
* <dd>Produce an embedded graphical element.
* <dt>Form
* <dd>Produce an element that is like the embedded graphical
* element, except that it also has a component model associated
* with it.
* <dt>Hidden
* <dd>Create an element that is hidden from view when the
* document is being viewed read-only, and visible when the
* document is being edited.  This is useful to keep the
* model from losing information, and used to store things
* like comments and unrecognized tags.
*
* </dl>
* <p>
* Currently, &lt;APPLET&gt;, &lt;PARAM&gt;, &lt;MAP&gt;, &lt;AREA&gt;, &lt;LINK&gt;,
* &lt;SCRIPT&gt; and &lt;STYLE&gt; are unsupported.
*
* <p>
* The assignment of the actions described is shown in the
* following table for the tags defined in <code>HTML.Tag</code>.<P>
* <table border=1 summary="HTML tags and assigned actions">
* <tr><th>Tag</th><th>Action</th></tr>
* <tr><td><code>HTML.Tag.A</code>         <td>CharacterAction
* <tr><td><code>HTML.Tag.ADDRESS</code>   <td>CharacterAction
* <tr><td><code>HTML.Tag.APPLET</code>    <td>HiddenAction
* <tr><td><code>HTML.Tag.AREA</code>      <td>AreaAction
* <tr><td><code>HTML.Tag.B</code>         <td>CharacterAction
* <tr><td><code>HTML.Tag.BASE</code>      <td>BaseAction
* <tr><td><code>HTML.Tag.BASEFONT</code>  <td>CharacterAction
* <tr><td><code>HTML.Tag.BIG</code>       <td>CharacterAction
* <tr><td><code>HTML.Tag.BLOCKQUOTE</code><td>BlockAction
* <tr><td><code>HTML.Tag.BODY</code>      <td>BlockAction
* <tr><td><code>HTML.Tag.BR</code>        <td>SpecialAction
* <tr><td><code>HTML.Tag.CAPTION</code>   <td>BlockAction
* <tr><td><code>HTML.Tag.CENTER</code>    <td>BlockAction
* <tr><td><code>HTML.Tag.CITE</code>      <td>CharacterAction
* <tr><td><code>HTML.Tag.CODE</code>      <td>CharacterAction
* <tr><td><code>HTML.Tag.DD</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.DFN</code>       <td>CharacterAction
* <tr><td><code>HTML.Tag.DIR</code>       <td>BlockAction
* <tr><td><code>HTML.Tag.DIV</code>       <td>BlockAction
* <tr><td><code>HTML.Tag.DL</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.DT</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.EM</code>        <td>CharacterAction
* <tr><td><code>HTML.Tag.FONT</code>      <td>CharacterAction
* <tr><td><code>HTML.Tag.FORM</code>      <td>As of 1.4 a BlockAction
* <tr><td><code>HTML.Tag.FRAME</code>     <td>SpecialAction
* <tr><td><code>HTML.Tag.FRAMESET</code>  <td>BlockAction
* <tr><td><code>HTML.Tag.H1</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.H2</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.H3</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.H4</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.H5</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.H6</code>        <td>ParagraphAction
* <tr><td><code>HTML.Tag.HEAD</code>      <td>HeadAction
* <tr><td><code>HTML.Tag.HR</code>        <td>SpecialAction
* <tr><td><code>HTML.Tag.HTML</code>      <td>BlockAction
* <tr><td><code>HTML.Tag.I</code>         <td>CharacterAction
* <tr><td><code>HTML.Tag.IMG</code>       <td>SpecialAction
* <tr><td><code>HTML.Tag.INPUT</code>     <td>FormAction
* <tr><td><code>HTML.Tag.ISINDEX</code>   <td>IsndexAction
* <tr><td><code>HTML.Tag.KBD</code>       <td>CharacterAction
* <tr><td><code>HTML.Tag.LI</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.LINK</code>      <td>LinkAction
* <tr><td><code>HTML.Tag.MAP</code>       <td>MapAction
* <tr><td><code>HTML.Tag.MENU</code>      <td>BlockAction
* <tr><td><code>HTML.Tag.META</code>      <td>MetaAction
* <tr><td><code>HTML.Tag.NOFRAMES</code>  <td>BlockAction
* <tr><td><code>HTML.Tag.OBJECT</code>    <td>SpecialAction
* <tr><td><code>HTML.Tag.OL</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.OPTION</code>    <td>FormAction
* <tr><td><code>HTML.Tag.P</code>         <td>ParagraphAction
* <tr><td><code>HTML.Tag.PARAM</code>     <td>HiddenAction
* <tr><td><code>HTML.Tag.PRE</code>       <td>PreAction
* <tr><td><code>HTML.Tag.SAMP</code>      <td>CharacterAction
* <tr><td><code>HTML.Tag.SCRIPT</code>    <td>HiddenAction
* <tr><td><code>HTML.Tag.SELECT</code>    <td>FormAction
* <tr><td><code>HTML.Tag.SMALL</code>     <td>CharacterAction
* <tr><td><code>HTML.Tag.STRIKE</code>    <td>CharacterAction
* <tr><td><code>HTML.Tag.S</code>         <td>CharacterAction
* <tr><td><code>HTML.Tag.STRONG</code>    <td>CharacterAction
* <tr><td><code>HTML.Tag.STYLE</code>     <td>StyleAction
* <tr><td><code>HTML.Tag.SUB</code>       <td>CharacterAction
* <tr><td><code>HTML.Tag.SUP</code>       <td>CharacterAction
* <tr><td><code>HTML.Tag.TABLE</code>     <td>BlockAction
* <tr><td><code>HTML.Tag.TD</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.TEXTAREA</code>  <td>FormAction
* <tr><td><code>HTML.Tag.TH</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.TITLE</code>     <td>TitleAction
* <tr><td><code>HTML.Tag.TR</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.TT</code>        <td>CharacterAction
* <tr><td><code>HTML.Tag.U</code>         <td>CharacterAction
* <tr><td><code>HTML.Tag.UL</code>        <td>BlockAction
* <tr><td><code>HTML.Tag.VAR</code>       <td>CharacterAction
* </table>
* <p>
* Once &lt;/html> is encountered, the Actions are no longer notified.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader') extern class HTMLDocument_HTMLReader extends javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_ParserCallback
{
	@:overload @:public public function new(offset : Int) : Void;
	
	@:overload @:public public function new(offset : Int, popDepth : Int, pushDepth : Int, insertTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* The last method called on the reader.  It allows
	* any pending changes to be flushed into the document.
	* Since this is currently loading synchronously, the entire
	* set of changes are pushed in at this point.
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Called by the parser to indicate a block of text was
	* encountered.
	*/
	@:overload @:public override public function handleText(data : java.NativeArray<java.StdTypes.Char16>, pos : Int) : Void;
	
	/**
	* Callback from the parser.  Route to the appropriate
	* handler for the tag.
	*/
	@:overload @:public override public function handleStartTag(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet, pos : Int) : Void;
	
	@:overload @:public override public function handleComment(data : java.NativeArray<java.StdTypes.Char16>, pos : Int) : Void;
	
	/**
	* Callback from the parser.  Route to the appropriate
	* handler for the tag.
	*/
	@:overload @:public override public function handleEndTag(t : javax.swing.text.html.HTML.HTML_Tag, pos : Int) : Void;
	
	/**
	* Callback from the parser.  Route to the appropriate
	* handler for the tag.
	*/
	@:overload @:public override public function handleSimpleTag(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet, pos : Int) : Void;
	
	/**
	* This is invoked after the stream has been parsed, but before
	* <code>flush</code>. <code>eol</code> will be one of \n, \r
	* or \r\n, which ever is encountered the most in parsing the
	* stream.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function handleEndOfLineString(eol : String) : Void;
	
	/**
	* Registers a handler for the given tag.  By default
	* all of the well-known tags will have been registered.
	* This can be used to change the handling of a particular
	* tag or to add support for custom tags.
	*/
	@:overload @:protected private function registerTag(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction) : Void;
	
	/**
	* Pushes the current character style on a stack in preparation
	* for forming a new nested character style.
	*/
	@:overload @:protected private function pushCharacterStyle() : Void;
	
	/**
	* Pops a previously pushed character style off the stack
	* to return to a previous style.
	*/
	@:overload @:protected private function popCharacterStyle() : Void;
	
	/**
	* Adds the given content to the textarea document.
	* This method gets called when we are in a textarea
	* context.  Therefore all text that is seen belongs
	* to the text area and is hence added to the
	* TextAreaDocument associated with the text area.
	*/
	@:overload @:protected private function textAreaContent(data : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Adds the given content that was encountered in a
	* PRE element.  This synthesizes lines to hold the
	* runs of text, and makes calls to addContent to
	* actually add the text.
	*/
	@:overload @:protected private function preContent(data : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Adds an instruction to the parse buffer to create a
	* block element with the given attributes.
	*/
	@:overload @:protected private function blockOpen(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	/**
	* Adds an instruction to the parse buffer to close out
	* a block element of the given type.
	*/
	@:overload @:protected private function blockClose(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* Adds some text with the current character attributes.
	*
	* @param data the content to add
	* @param offs the initial offset
	* @param length the length
	*/
	@:overload @:protected private function addContent(data : java.NativeArray<java.StdTypes.Char16>, offs : Int, length : Int) : Void;
	
	/**
	* Adds some text with the current character attributes.
	*
	* @param data the content to add
	* @param offs the initial offset
	* @param length the length
	* @param generateImpliedPIfNecessary whether to generate implied
	* paragraphs
	*/
	@:overload @:protected private function addContent(data : java.NativeArray<java.StdTypes.Char16>, offs : Int, length : Int, generateImpliedPIfNecessary : Bool) : Void;
	
	/**
	* Adds content that is basically specified entirely
	* in the attribute set.
	*/
	@:overload @:protected private function addSpecialElement(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:protected private var parseBuffer : java.util.Vector<javax.swing.text.DefaultStyledDocument.DefaultStyledDocument_ElementSpec>;
	
	@:protected private var charAttr : javax.swing.text.MutableAttributeSet;
	
	
}
/**
* An action to be performed in response
* to parsing a tag.  This allows customization
* of how each tag is handled and avoids a large
* switch statement.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$TagAction') extern class HTMLDocument_HTMLReader_TagAction
{
	/**
	* Called when a start tag is seen for the
	* type of tag this action was registered
	* to.  The tag argument indicates the actual
	* tag for those actions that are shared across
	* many tags.  By default this does nothing and
	* completely ignores the tag.
	*/
	@:overload @:public public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	/**
	* Called when an end tag is seen for the
	* type of tag this action was registered
	* to.  The tag argument indicates the actual
	* tag for those actions that are shared across
	* many tags.  By default this does nothing and
	* completely ignores the tag.
	*/
	@:overload @:public public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$BlockAction') extern class HTMLDocument_HTMLReader_BlockAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
/**
* Action used for the actual element form tag. This is named such
* as there was already a public class named FormAction.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$FormTagAction') @:internal extern class HTMLDocument_HTMLReader_FormTagAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_BlockAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$ParagraphAction') extern class HTMLDocument_HTMLReader_ParagraphAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_BlockAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$SpecialAction') extern class HTMLDocument_HTMLReader_SpecialAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$IsindexAction') extern class HTMLDocument_HTMLReader_IsindexAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$HiddenAction') extern class HTMLDocument_HTMLReader_HiddenAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
/**
* Subclass of HiddenAction to set the content type for style sheets,
* and to set the name of the default style sheet.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$MetaAction') @:internal extern class HTMLDocument_HTMLReader_MetaAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_HiddenAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	
}
/**
* End if overridden to create the necessary stylesheets that
* are referenced via the link tag. It is done in this manner
* as the meta tag can be used to specify an alternate style sheet,
* and is not guaranteed to come before the link tags.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$HeadAction') @:internal extern class HTMLDocument_HTMLReader_HeadAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_BlockAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
/**
* A subclass to add the AttributeSet to styles if the
* attributes contains an attribute for 'rel' with value
* 'stylesheet' or 'alternate stylesheet'.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$LinkAction') @:internal extern class HTMLDocument_HTMLReader_LinkAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_HiddenAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$MapAction') @:internal extern class HTMLDocument_HTMLReader_MapAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$AreaAction') @:internal extern class HTMLDocument_HTMLReader_AreaAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$StyleAction') @:internal extern class HTMLDocument_HTMLReader_StyleAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$PreAction') extern class HTMLDocument_HTMLReader_PreAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_BlockAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$CharacterAction') extern class HTMLDocument_HTMLReader_CharacterAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
/**
* Provides conversion of HTML tag/attribute
* mappings that have a corresponding StyleConstants
* and CSS mapping.  The conversion is to CSS attributes.
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$ConvertAction') @:internal extern class HTMLDocument_HTMLReader_ConvertAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$AnchorAction') @:internal extern class HTMLDocument_HTMLReader_AnchorAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_CharacterAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$TitleAction') @:internal extern class HTMLDocument_HTMLReader_TitleAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_HiddenAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$BaseAction') @:internal extern class HTMLDocument_HTMLReader_BaseAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_TagAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	
}
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$ObjectAction') @:internal extern class HTMLDocument_HTMLReader_ObjectAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_SpecialAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
/**
* Action to support forms by building all of the elements
* used to represent form controls.  This will process
* the &lt;INPUT&gt;, &lt;TEXTAREA&gt;, &lt;SELECT&gt;,
* and &lt;OPTION&gt; tags.  The element created by
* this action is expected to have the attribute
* <code>StyleConstants.ModelAttribute</code> set to
* the model that holds the state for the form control.
* This enables multiple views, and allows document to
* be iterated over picking up the data of the form.
* The following are the model assignments for the
* various type of form elements.
* <table summary="model assignments for the various types of form elements">
* <tr>
*   <th>Element Type
*   <th>Model Type
* <tr>
*   <td>input, type button
*   <td>{@link DefaultButtonModel}
* <tr>
*   <td>input, type checkbox
*   <td>{@link javax.swing.JToggleButton.ToggleButtonModel}
* <tr>
*   <td>input, type image
*   <td>{@link DefaultButtonModel}
* <tr>
*   <td>input, type password
*   <td>{@link PlainDocument}
* <tr>
*   <td>input, type radio
*   <td>{@link javax.swing.JToggleButton.ToggleButtonModel}
* <tr>
*   <td>input, type reset
*   <td>{@link DefaultButtonModel}
* <tr>
*   <td>input, type submit
*   <td>{@link DefaultButtonModel}
* <tr>
*   <td>input, type text or type is null.
*   <td>{@link PlainDocument}
* <tr>
*   <td>select
*   <td>{@link DefaultComboBoxModel} or an {@link DefaultListModel}, with an item type of Option
* <tr>
*   <td>textarea
*   <td>{@link PlainDocument}
* </table>
*
*/
@:native('javax$swing$text$html$HTMLDocument$HTMLReader$FormAction') extern class HTMLDocument_HTMLReader_FormAction extends javax.swing.text.html.HTMLDocument.HTMLDocument_HTMLReader_SpecialAction
{
	@:overload @:public override public function start(t : javax.swing.text.html.HTML.HTML_Tag, attr : javax.swing.text.MutableAttributeSet) : Void;
	
	@:overload @:public override public function end(t : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	
}
/**
* Used by StyleSheet to determine when to avoid removing HTML.Tags
* matching StyleConstants.
*/
@:native('javax$swing$text$html$HTMLDocument$TaggedAttributeSet') @:internal extern class HTMLDocument_TaggedAttributeSet extends javax.swing.text.SimpleAttributeSet
{
	
}
/**
* An element that represents a chunk of text that has
* a set of HTML character level attributes assigned to
* it.
*/
@:native('javax$swing$text$html$HTMLDocument$RunElement') extern class HTMLDocument_RunElement extends javax.swing.text.AbstractDocument.AbstractDocument_LeafElement
{
	/**
	* Constructs an element that represents content within the
	* document (has no children).
	*
	* @param parent  the parent element
	* @param a       the element attributes
	* @param offs0   the start offset (must be at least 0)
	* @param offs1   the end offset (must be at least offs0)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet, offs0 : Int, offs1 : Int) : Void;
	
	/**
	* Gets the name of the element.
	*
	* @return the name, null if none
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Gets the resolving parent.  HTML attributes are not inherited
	* at the model level so we override this to return null.
	*
	* @return null, there are none
	* @see AttributeSet#getResolveParent
	*/
	@:overload @:public override public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
/**
* An element that represents a structural <em>block</em> of
* HTML.
*/
@:native('javax$swing$text$html$HTMLDocument$BlockElement') extern class HTMLDocument_BlockElement extends javax.swing.text.AbstractDocument.AbstractDocument_BranchElement
{
	/**
	* Constructs a composite element that initially contains
	* no children.
	*
	* @param parent  the parent element
	* @param a       the attributes for the element
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(parent : javax.swing.text.Element, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Gets the name of the element.
	*
	* @return the name, null if none
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Gets the resolving parent.  HTML attributes are not inherited
	* at the model level so we override this to return null.
	*
	* @return null, there are none
	* @see AttributeSet#getResolveParent
	*/
	@:overload @:public override public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
/**
* Document that allows you to set the maximum length of the text.
*/
@:native('javax$swing$text$html$HTMLDocument$FixedLengthDocument') @:internal extern class HTMLDocument_FixedLengthDocument extends javax.swing.text.PlainDocument
{
	@:overload @:public public function new(maxLength : Int) : Void;
	
	@:overload @:public override public function insertString(offset : Int, str : String, a : javax.swing.text.AttributeSet) : Void;
	
	
}
