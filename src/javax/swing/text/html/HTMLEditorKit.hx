package javax.swing.text.html;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The Swing JEditorPane text component supports different kinds
* of content via a plug-in mechanism called an EditorKit.  Because
* HTML is a very popular format of content, some support is provided
* by default.  The default support is provided by this class, which
* supports HTML version 3.2 (with some extensions), and is migrating
* toward version 4.0.
* The &lt;applet&gt; tag is not supported, but some support is provided
* for the &lt;object&gt; tag.
* <p>
* There are several goals of the HTML EditorKit provided, that have
* an effect upon the way that HTML is modeled.  These
* have influenced its design in a substantial way.
* <dl>
* <p>
* <dt>
* Support editing
* <dd>
* It might seem fairly obvious that a plug-in for JEditorPane
* should provide editing support, but that fact has several
* design considerations.  There are a substantial number of HTML
* documents that don't properly conform to an HTML specification.
* These must be normalized somewhat into a correct form if one
* is to edit them.  Additionally, users don't like to be presented
* with an excessive amount of structure editing, so using traditional
* text editing gestures is preferred over using the HTML structure
* exactly as defined in the HTML document.
* <p>
* The modeling of HTML is provided by the class <code>HTMLDocument</code>.
* Its documention describes the details of how the HTML is modeled.
* The editing support leverages heavily off of the text package.
* <p>
* <dt>
* Extendable/Scalable
* <dd>
* To maximize the usefulness of this kit, a great deal of effort
* has gone into making it extendable.  These are some of the
* features.
* <ol>
*   <li>
*   The parser is replacable.  The default parser is the Hot Java
*   parser which is DTD based.  A different DTD can be used, or an
*   entirely different parser can be used.  To change the parser,
*   reimplement the getParser method.  The default parser is
*   dynamically loaded when first asked for, so the class files
*   will never be loaded if an alternative parser is used.  The
*   default parser is in a separate package called parser below
*   this package.
*   <li>
*   The parser drives the ParserCallback, which is provided by
*   HTMLDocument.  To change the callback, subclass HTMLDocument
*   and reimplement the createDefaultDocument method to return
*   document that produces a different reader.  The reader controls
*   how the document is structured.  Although the Document provides
*   HTML support by default, there is nothing preventing support of
*   non-HTML tags that result in alternative element structures.
*   <li>
*   The default view of the models are provided as a hierarchy of
*   View implementations, so one can easily customize how a particular
*   element is displayed or add capabilities for new kinds of elements
*   by providing new View implementations.  The default set of views
*   are provided by the <code>HTMLFactory</code> class.  This can
*   be easily changed by subclassing or replacing the HTMLFactory
*   and reimplementing the getViewFactory method to return the alternative
*   factory.
*   <li>
*   The View implementations work primarily off of CSS attributes,
*   which are kept in the views.  This makes it possible to have
*   multiple views mapped over the same model that appear substantially
*   different.  This can be especially useful for printing.  For
*   most HTML attributes, the HTML attributes are converted to CSS
*   attributes for display.  This helps make the View implementations
*   more general purpose
* </ol>
* <p>
* <dt>
* Asynchronous Loading
* <dd>
* Larger documents involve a lot of parsing and take some time
* to load.  By default, this kit produces documents that will be
* loaded asynchronously if loaded using <code>JEditorPane.setPage</code>.
* This is controlled by a property on the document.  The method
* {@link #createDefaultDocument createDefaultDocument} can
* be overriden to change this.  The batching of work is done
* by the <code>HTMLDocument.HTMLReader</code> class.  The actual
* work is done by the <code>DefaultStyledDocument</code> and
* <code>AbstractDocument</code> classes in the text package.
* <p>
* <dt>
* Customization from current LAF
* <dd>
* HTML provides a well known set of features without exactly
* specifying the display characteristics.  Swing has a theme
* mechanism for its look-and-feel implementations.  It is desirable
* for the look-and-feel to feed display characteristics into the
* HTML views.  An user with poor vision for example would want
* high contrast and larger than typical fonts.
* <p>
* The support for this is provided by the <code>StyleSheet</code>
* class.  The presentation of the HTML can be heavily influenced
* by the setting of the StyleSheet property on the EditorKit.
* <p>
* <dt>
* Not lossy
* <dd>
* An EditorKit has the ability to be read and save documents.
* It is generally the most pleasing to users if there is no loss
* of data between the two operation.  The policy of the HTMLEditorKit
* will be to store things not recognized or not necessarily visible
* so they can be subsequently written out.  The model of the HTML document
* should therefore contain all information discovered while reading the
* document.  This is constrained in some ways by the need to support
* editing (i.e. incorrect documents sometimes must be normalized).
* The guiding principle is that information shouldn't be lost, but
* some might be synthesized to produce a more correct model or it might
* be rearranged.
* </dl>
*
* @author  Timothy Prinzing
*/
extern class HTMLEditorKit extends javax.swing.text.StyledEditorKit implements javax.accessibility.Accessible
{
	/**
	* Constructs an HTMLEditorKit, creates a StyleContext,
	* and loads the style sheet.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Get the MIME type of the data that this
	* kit represents support for.  This kit supports
	* the type <code>text/html</code>.
	*
	* @return the type
	*/
	@:overload @:public override public function getContentType() : String;
	
	/**
	* Fetch a factory that is suitable for producing
	* views of any models that are produced by this
	* kit.
	*
	* @return the factory
	*/
	@:overload @:public override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	/**
	* Create an uninitialized text storage model
	* that is appropriate for this type of editor.
	*
	* @return the model
	*/
	@:overload @:public override public function createDefaultDocument() : javax.swing.text.Document;
	
	/**
	* Inserts content from the given stream. If <code>doc</code> is
	* an instance of HTMLDocument, this will read
	* HTML 3.2 text. Inserting HTML into a non-empty document must be inside
	* the body Element, if you do not insert into the body an exception will
	* be thrown. When inserting into a non-empty document all tags outside
	* of the body (head, title) will be dropped.
	*
	* @param in  the stream to read from
	* @param doc the destination for the insertion
	* @param pos the location in the document to place the
	*   content
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document
	* @exception RuntimeException (will eventually be a BadLocationException)
	*            if pos is invalid
	*/
	@:overload @:public override public function read(_in : java.io.Reader, doc : javax.swing.text.Document, pos : Int) : Void;
	
	/**
	* Inserts HTML into an existing document.
	*
	* @param doc       the document to insert into
	* @param offset    the offset to insert HTML at
	* @param popDepth  the number of ElementSpec.EndTagTypes to generate before
	*        inserting
	* @param pushDepth the number of ElementSpec.StartTagTypes with a direction
	*        of ElementSpec.JoinNextDirection that should be generated
	*        before inserting, but after the end tags have been generated
	* @param insertTag the first tag to start inserting into document
	* @exception RuntimeException (will eventually be a BadLocationException)
	*            if pos is invalid
	*/
	@:overload @:public public function insertHTML(doc : javax.swing.text.html.HTMLDocument, offset : Int, html : String, popDepth : Int, pushDepth : Int, insertTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* Write content from a document to the given stream
	* in a format appropriate for this kind of content handler.
	*
	* @param out  the stream to write to
	* @param doc  the source for the write
	* @param pos  the location in the document to fetch the
	*   content
	* @param len  the amount to write out
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document
	*/
	@:overload @:public override public function write(out : java.io.Writer, doc : javax.swing.text.Document, pos : Int, len : Int) : Void;
	
	/**
	* Called when the kit is being installed into the
	* a JEditorPane.
	*
	* @param c the JEditorPane
	*/
	@:overload @:public override public function install(c : javax.swing.JEditorPane) : Void;
	
	/**
	* Called when the kit is being removed from the
	* JEditorPane.  This is used to unregister any
	* listeners that were attached.
	*
	* @param c the JEditorPane
	*/
	@:overload @:public override public function deinstall(c : javax.swing.JEditorPane) : Void;
	
	/**
	* Default Cascading Style Sheet file that sets
	* up the tag views.
	*/
	@:public @:static @:final public static var DEFAULT_CSS(default, null) : String;
	
	/**
	* Set the set of styles to be used to render the various
	* HTML elements.  These styles are specified in terms of
	* CSS specifications.  Each document produced by the kit
	* will have a copy of the sheet which it can add the
	* document specific styles to.  By default, the StyleSheet
	* specified is shared by all HTMLEditorKit instances.
	* This should be reimplemented to provide a finer granularity
	* if desired.
	*/
	@:overload @:public public function setStyleSheet(s : javax.swing.text.html.StyleSheet) : Void;
	
	/**
	* Get the set of styles currently being used to render the
	* HTML elements.  By default the resource specified by
	* DEFAULT_CSS gets loaded, and is shared by all HTMLEditorKit
	* instances.
	*/
	@:overload @:public public function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	/**
	* Fetches the command list for the editor.  This is
	* the list of commands supported by the superclass
	* augmented by the collection of commands defined
	* locally for style operations.
	*
	* @return the command list
	*/
	@:overload @:public override public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Copies the key/values in <code>element</code>s AttributeSet into
	* <code>set</code>. This does not copy component, icon, or element
	* names attributes. Subclasses may wish to refine what is and what
	* isn't copied here. But be sure to first remove all the attributes that
	* are in <code>set</code>.<p>
	* This is called anytime the caret moves over a different location.
	*
	*/
	@:overload @:protected override private function createInputAttributes(element : javax.swing.text.Element, set : javax.swing.text.MutableAttributeSet) : Void;
	
	/**
	* Gets the input attributes used for the styled
	* editing actions.
	*
	* @return the attribute set
	*/
	@:overload @:public override public function getInputAttributes() : javax.swing.text.MutableAttributeSet;
	
	/**
	* Sets the default cursor.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setDefaultCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Returns the default cursor.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getDefaultCursor() : java.awt.Cursor;
	
	/**
	* Sets the cursor to use over links.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setLinkCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Returns the cursor to use over hyper links.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getLinkCursor() : java.awt.Cursor;
	
	/**
	* Indicates whether an html form submission is processed automatically
	* or only <code>FormSubmitEvent</code> is fired.
	*
	* @return true  if html form submission is processed automatically,
	*         false otherwise.
	*
	* @see #setAutoFormSubmission
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isAutoFormSubmission() : Bool;
	
	/**
	* Specifies if an html form submission is processed
	* automatically or only <code>FormSubmitEvent</code> is fired.
	* By default it is set to true.
	*
	* @see #isAutoFormSubmission()
	* @see FormSubmitEvent
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function setAutoFormSubmission(isAuto : Bool) : Void;
	
	/**
	* Creates a copy of the editor kit.
	*
	* @return the copy
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Fetch the parser to use for reading HTML streams.
	* This can be reimplemented to provide a different
	* parser.  The default implementation is loaded dynamically
	* to avoid the overhead of loading the default parser if
	* it's not used.  The default parser is the HotJava parser
	* using an HTML 3.2 DTD.
	*/
	@:overload @:protected private function getParser() : javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_Parser;
	
	/**
	* returns the AccessibleContext associated with this editor kit
	*
	* @return the AccessibleContext associated with this editor kit
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/** The bold action identifier
*/
	@:public @:static @:final public static var BOLD_ACTION(default, null) : String;
	
	/** The italic action identifier
*/
	@:public @:static @:final public static var ITALIC_ACTION(default, null) : String;
	
	/** The paragraph left indent action identifier
*/
	@:public @:static @:final public static var PARA_INDENT_LEFT(default, null) : String;
	
	/** The paragraph right indent action identifier
*/
	@:public @:static @:final public static var PARA_INDENT_RIGHT(default, null) : String;
	
	/** The  font size increase to next value action identifier
*/
	@:public @:static @:final public static var FONT_CHANGE_BIGGER(default, null) : String;
	
	/** The font size decrease to next value action identifier
*/
	@:public @:static @:final public static var FONT_CHANGE_SMALLER(default, null) : String;
	
	/** The Color choice action identifier
	The color is passed as an argument
*/
	@:public @:static @:final public static var COLOR_ACTION(default, null) : String;
	
	/** The logical style choice action identifier
	The logical style is passed in as an argument
*/
	@:public @:static @:final public static var LOGICAL_STYLE_ACTION(default, null) : String;
	
	/**
	* Align images at the top.
	*/
	@:public @:static @:final public static var IMG_ALIGN_TOP(default, null) : String;
	
	/**
	* Align images in the middle.
	*/
	@:public @:static @:final public static var IMG_ALIGN_MIDDLE(default, null) : String;
	
	/**
	* Align images at the bottom.
	*/
	@:public @:static @:final public static var IMG_ALIGN_BOTTOM(default, null) : String;
	
	/**
	* Align images at the border.
	*/
	@:public @:static @:final public static var IMG_BORDER(default, null) : String;
	
	
}
/**
* Class to watch the associated component and fire
* hyperlink events on it when appropriate.
*/
@:native('javax$swing$text$html$HTMLEditorKit$LinkController') extern class HTMLEditorKit_LinkController extends java.awt.event.MouseAdapter implements java.awt.event.MouseMotionListener implements java.io.Serializable
{
	/**
	* Called for a mouse click event.
	* If the component is read-only (ie a browser) then
	* the clicked event is used to drive an attempt to
	* follow the reference specified by a link.
	*
	* @param e the mouse event
	* @see MouseListener#mouseClicked
	*/
	@:overload @:public override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Calls linkActivated on the associated JEditorPane
	* if the given position represents a link.<p>This is implemented
	* to forward to the method with the same name, but with the following
	* args both == -1.
	*
	* @param pos the position
	* @param editor the editor pane
	*/
	@:overload @:protected private function activateLink(pos : Int, editor : javax.swing.JEditorPane) : Void;
	
	
}
/**
* Interface to be supported by the parser.  This enables
* providing a different parser while reusing some of the
* implementation provided by this editor kit.
*/
@:native('javax$swing$text$html$HTMLEditorKit$Parser') extern class HTMLEditorKit_Parser
{
	/**
	* Parse the given stream and drive the given callback
	* with the results of the parse.  This method should
	* be implemented to be thread-safe.
	*/
	@:overload @:public @:abstract public function parse(r : java.io.Reader, cb : javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_ParserCallback, ignoreCharSet : Bool) : Void;
	
	
}
/**
* The result of parsing drives these callback methods.
* The open and close actions should be balanced.  The
* <code>flush</code> method will be the last method
* called, to give the receiver a chance to flush any
* pending data into the document.
* <p>Refer to DocumentParser, the default parser used, for further
* information on the contents of the AttributeSets, the positions, and
* other info.
*
* @see javax.swing.text.html.parser.DocumentParser
*/
@:native('javax$swing$text$html$HTMLEditorKit$ParserCallback') extern class HTMLEditorKit_ParserCallback
{
	/**
	* This is passed as an attribute in the attributeset to indicate
	* the element is implied eg, the string '&lt;&gt;foo&lt;\t&gt;'
	* contains an implied html element and an implied body element.
	*
	* @since 1.3
	*/
	@:require(java3) @:public @:static @:final public static var IMPLIED(default, null) : Dynamic;
	
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function handleText(data : java.NativeArray<java.StdTypes.Char16>, pos : Int) : Void;
	
	@:overload @:public public function handleComment(data : java.NativeArray<java.StdTypes.Char16>, pos : Int) : Void;
	
	@:overload @:public public function handleStartTag(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet, pos : Int) : Void;
	
	@:overload @:public public function handleEndTag(t : javax.swing.text.html.HTML.HTML_Tag, pos : Int) : Void;
	
	@:overload @:public public function handleSimpleTag(t : javax.swing.text.html.HTML.HTML_Tag, a : javax.swing.text.MutableAttributeSet, pos : Int) : Void;
	
	@:overload @:public public function handleError(errorMsg : String, pos : Int) : Void;
	
	/**
	* This is invoked after the stream has been parsed, but before
	* <code>flush</code>. <code>eol</code> will be one of \n, \r
	* or \r\n, which ever is encountered the most in parsing the
	* stream.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function handleEndOfLineString(eol : String) : Void;
	
	
}
/**
* A factory to build views for HTML.  The following
* table describes what this factory will build by
* default.
*
* <table summary="Describes the tag and view created by this factory by default">
* <tr>
* <th align=left>Tag<th align=left>View created
* </tr><tr>
* <td>HTML.Tag.CONTENT<td>InlineView
* </tr><tr>
* <td>HTML.Tag.IMPLIED<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.P<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.H1<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.H2<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.H3<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.H4<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.H5<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.H6<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.DT<td>javax.swing.text.html.ParagraphView
* </tr><tr>
* <td>HTML.Tag.MENU<td>ListView
* </tr><tr>
* <td>HTML.Tag.DIR<td>ListView
* </tr><tr>
* <td>HTML.Tag.UL<td>ListView
* </tr><tr>
* <td>HTML.Tag.OL<td>ListView
* </tr><tr>
* <td>HTML.Tag.LI<td>BlockView
* </tr><tr>
* <td>HTML.Tag.DL<td>BlockView
* </tr><tr>
* <td>HTML.Tag.DD<td>BlockView
* </tr><tr>
* <td>HTML.Tag.BODY<td>BlockView
* </tr><tr>
* <td>HTML.Tag.HTML<td>BlockView
* </tr><tr>
* <td>HTML.Tag.CENTER<td>BlockView
* </tr><tr>
* <td>HTML.Tag.DIV<td>BlockView
* </tr><tr>
* <td>HTML.Tag.BLOCKQUOTE<td>BlockView
* </tr><tr>
* <td>HTML.Tag.PRE<td>BlockView
* </tr><tr>
* <td>HTML.Tag.BLOCKQUOTE<td>BlockView
* </tr><tr>
* <td>HTML.Tag.PRE<td>BlockView
* </tr><tr>
* <td>HTML.Tag.IMG<td>ImageView
* </tr><tr>
* <td>HTML.Tag.HR<td>HRuleView
* </tr><tr>
* <td>HTML.Tag.BR<td>BRView
* </tr><tr>
* <td>HTML.Tag.TABLE<td>javax.swing.text.html.TableView
* </tr><tr>
* <td>HTML.Tag.INPUT<td>FormView
* </tr><tr>
* <td>HTML.Tag.SELECT<td>FormView
* </tr><tr>
* <td>HTML.Tag.TEXTAREA<td>FormView
* </tr><tr>
* <td>HTML.Tag.OBJECT<td>ObjectView
* </tr><tr>
* <td>HTML.Tag.FRAMESET<td>FrameSetView
* </tr><tr>
* <td>HTML.Tag.FRAME<td>FrameView
* </tr>
* </table>
*/
@:native('javax$swing$text$html$HTMLEditorKit$HTMLFactory') extern class HTMLEditorKit_HTMLFactory implements javax.swing.text.ViewFactory
{
	/**
	* Creates a view from an element.
	*
	* @param elem the element
	* @return the view
	*/
	@:overload @:public public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	
}
@:native('javax$swing$text$html$HTMLEditorKit$HTMLFactory$BodyBlockView') @:internal extern class HTMLEditorKit_HTMLFactory_BodyBlockView extends javax.swing.text.html.BlockView implements java.awt.event.ComponentListener
{
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	@:overload @:protected override private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	@:overload @:protected override private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	@:overload @:public override public function setParent(parent : javax.swing.text.View) : Void;
	
	@:overload @:public public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	
}
/**
* An abstract Action providing some convenience methods that may
* be useful in inserting HTML into an existing document.
* <p>NOTE: None of the convenience methods obtain a lock on the
* document. If you have another thread modifying the text these
* methods may have inconsistent behavior, or return the wrong thing.
*/
@:native('javax$swing$text$html$HTMLEditorKit$HTMLTextAction') extern class HTMLEditorKit_HTMLTextAction extends javax.swing.text.StyledEditorKit.StyledEditorKit_StyledTextAction
{
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* @return HTMLDocument of <code>e</code>.
	*/
	@:overload @:protected private function getHTMLDocument(e : javax.swing.JEditorPane) : javax.swing.text.html.HTMLDocument;
	
	/**
	* @return HTMLEditorKit for <code>e</code>.
	*/
	@:overload @:protected private function getHTMLEditorKit(e : javax.swing.JEditorPane) : javax.swing.text.html.HTMLEditorKit;
	
	/**
	* Returns an array of the Elements that contain <code>offset</code>.
	* The first elements corresponds to the root.
	*/
	@:overload @:protected private function getElementsAt(doc : javax.swing.text.html.HTMLDocument, offset : Int) : java.NativeArray<javax.swing.text.Element>;
	
	/**
	* Returns number of elements, starting at the deepest leaf, needed
	* to get to an element representing <code>tag</code>. This will
	* return -1 if no elements is found representing <code>tag</code>,
	* or 0 if the parent of the leaf at <code>offset</code> represents
	* <code>tag</code>.
	*/
	@:overload @:protected private function elementCountToTag(doc : javax.swing.text.html.HTMLDocument, offset : Int, tag : javax.swing.text.html.HTML.HTML_Tag) : Int;
	
	/**
	* Returns the deepest element at <code>offset</code> matching
	* <code>tag</code>.
	*/
	@:overload @:protected private function findElementMatchingTag(doc : javax.swing.text.html.HTMLDocument, offset : Int, tag : javax.swing.text.html.HTML.HTML_Tag) : javax.swing.text.Element;
	
	
}
/**
* InsertHTMLTextAction can be used to insert an arbitrary string of HTML
* into an existing HTML document. At least two HTML.Tags need to be
* supplied. The first Tag, parentTag, identifies the parent in
* the document to add the elements to. The second tag, addTag,
* identifies the first tag that should be added to the document as
* seen in the HTML string. One important thing to remember, is that
* the parser is going to generate all the appropriate tags, even if
* they aren't in the HTML string passed in.<p>
* For example, lets say you wanted to create an action to insert
* a table into the body. The parentTag would be HTML.Tag.BODY,
* addTag would be HTML.Tag.TABLE, and the string could be something
* like &lt;table&gt;&lt;tr&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;.
* <p>There is also an option to supply an alternate parentTag and
* addTag. These will be checked for if there is no parentTag at
* offset.
*/
@:native('javax$swing$text$html$HTMLEditorKit$InsertHTMLTextAction') extern class HTMLEditorKit_InsertHTMLTextAction extends javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_HTMLTextAction
{
	@:overload @:public public function new(name : String, html : String, parentTag : javax.swing.text.html.HTML.HTML_Tag, addTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	@:overload @:public public function new(name : String, html : String, parentTag : javax.swing.text.html.HTML.HTML_Tag, addTag : javax.swing.text.html.HTML.HTML_Tag, alternateParentTag : javax.swing.text.html.HTML.HTML_Tag, alternateAddTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* A cover for HTMLEditorKit.insertHTML. If an exception it
	* thrown it is wrapped in a RuntimeException and thrown.
	*/
	@:overload @:protected private function insertHTML(editor : javax.swing.JEditorPane, doc : javax.swing.text.html.HTMLDocument, offset : Int, html : String, popDepth : Int, pushDepth : Int, addTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* This is invoked when inserting at a boundary. It determines
	* the number of pops, and then the number of pushes that need
	* to be performed, and then invokes insertHTML.
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function insertAtBoundary(editor : javax.swing.JEditorPane, doc : javax.swing.text.html.HTMLDocument, offset : Int, insertElement : javax.swing.text.Element, html : String, parentTag : javax.swing.text.html.HTML.HTML_Tag, addTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* This is invoked when inserting at a boundary. It determines
	* the number of pops, and then the number of pushes that need
	* to be performed, and then invokes insertHTML.
	* @deprecated As of Java 2 platform v1.3, use insertAtBoundary
	*/
	@:overload @:protected private function insertAtBoundry(editor : javax.swing.JEditorPane, doc : javax.swing.text.html.HTMLDocument, offset : Int, insertElement : javax.swing.text.Element, html : String, parentTag : javax.swing.text.html.HTML.HTML_Tag, addTag : javax.swing.text.html.HTML.HTML_Tag) : Void;
	
	/**
	* Inserts the HTML into the document.
	*
	* @param ae the event
	*/
	@:overload @:public override public function actionPerformed(ae : java.awt.event.ActionEvent) : Void;
	
	/** HTML to insert. */
	@:protected private var html : String;
	
	/** Tag to check for in the document. */
	@:protected private var parentTag : javax.swing.text.html.HTML.HTML_Tag;
	
	/** Tag in HTML to start adding tags from. */
	@:protected private var addTag : javax.swing.text.html.HTML.HTML_Tag;
	
	/** Alternate Tag to check for in the document if parentTag is
	* not found. */
	@:protected private var alternateParentTag : javax.swing.text.html.HTML.HTML_Tag;
	
	/** Alternate tag in HTML to start adding tags from if parentTag
	* is not found and alternateParentTag is found. */
	@:protected private var alternateAddTag : javax.swing.text.html.HTML.HTML_Tag;
	
	
}
/**
* InsertHRAction is special, at actionPerformed time it will determine
* the parent HTML.Tag based on the paragraph element at the selection
* start.
*/
@:native('javax$swing$text$html$HTMLEditorKit$InsertHRAction') @:internal extern class HTMLEditorKit_InsertHRAction extends javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_InsertHTMLTextAction
{
	/**
	* Inserts the HTML into the document.
	*
	* @param ae the event
	*/
	@:overload @:public override public function actionPerformed(ae : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Action to move the focus on the next or previous hypertext link
* or object. TODO: This method relies on support from the
* javax.accessibility package.  The text package should support
* keyboard navigation of text elements directly.
*/
@:native('javax$swing$text$html$HTMLEditorKit$NavigateLinkAction') @:internal extern class HTMLEditorKit_NavigateLinkAction extends javax.swing.text.TextAction implements javax.swing.event.CaretListener
{
	/*
	* Create this action with the appropriate identifier.
	*/
	@:overload @:public public function new(actionName : String) : Void;
	
	/**
	* Called when the caret position is updated.
	*
	* @param e the caret event
	*/
	@:overload @:public public function caretUpdate(e : javax.swing.event.CaretEvent) : Void;
	
	/*
	* The operation to perform when this action is triggered.
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* A highlight painter that draws a one-pixel border around
* the highlighted area.
*/
@:native('javax$swing$text$html$HTMLEditorKit$NavigateLinkAction$FocusHighlightPainter') @:internal extern class HTMLEditorKit_NavigateLinkAction_FocusHighlightPainter extends javax.swing.text.DefaultHighlighter.DefaultHighlighter_DefaultHighlightPainter
{
	/**
	* Paints a portion of a highlight.
	*
	* @param g the graphics context
	* @param offs0 the starting model offset >= 0
	* @param offs1 the ending model offset >= offs1
	* @param bounds the bounding box of the view, which is not
	*        necessarily the region to paint.
	* @param c the editor
	* @param view View painting for
	* @return region in which drawing occurred
	*/
	@:overload @:public override public function paintLayer(g : java.awt.Graphics, offs0 : Int, offs1 : Int, bounds : java.awt.Shape, c : javax.swing.text.JTextComponent, view : javax.swing.text.View) : java.awt.Shape;
	
	
}
/*
* Action to activate the hypertext link that has focus.
* TODO: This method relies on support from the
* javax.accessibility package.  The text package should support
* keyboard navigation of text elements directly.
*/
@:native('javax$swing$text$html$HTMLEditorKit$ActivateLinkAction') @:internal extern class HTMLEditorKit_ActivateLinkAction extends javax.swing.text.TextAction
{
	/**
	* Create this action with the appropriate identifier.
	*/
	@:overload @:public public function new(actionName : String) : Void;
	
	/*
	* The operation to perform when this action is triggered.
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Move the caret to the beginning of the document.
* @see DefaultEditorKit#beginAction
* @see HTMLEditorKit#getActions
*/
@:native('javax$swing$text$html$HTMLEditorKit$BeginAction') @:internal extern class HTMLEditorKit_BeginAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
