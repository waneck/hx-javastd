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
* Support for defining the visual characteristics of
* HTML views being rendered.  The StyleSheet is used to
* translate the HTML model into visual characteristics.
* This enables views to be customized by a look-and-feel,
* multiple views over the same model can be rendered
* differently, etc.  This can be thought of as a CSS
* rule repository.  The key for CSS attributes is an
* object of type CSS.Attribute.  The type of the value
* is up to the StyleSheet implementation, but the
* <code>toString</code> method is required
* to return a string representation of CSS value.
* <p>
* The primary entry point for HTML View implementations
* to get their attributes is the
* {@link #getViewAttributes getViewAttributes}
* method.  This should be implemented to establish the
* desired policy used to associate attributes with the view.
* Each HTMLEditorKit (i.e. and therefore each associated
* JEditorPane) can have its own StyleSheet, but by default one
* sheet will be shared by all of the HTMLEditorKit instances.
* HTMLDocument instance can also have a StyleSheet, which
* holds the document-specific CSS specifications.
* <p>
* In order for Views to store less state and therefore be
* more lightweight, the StyleSheet can act as a factory for
* painters that handle some of the rendering tasks.  This allows
* implementations to determine what they want to cache
* and have the sharing potentially at the level that a
* selector is common to multiple views.  Since the StyleSheet
* may be used by views over multiple documents and typically
* the HTML attributes don't effect the selector being used,
* the potential for sharing is significant.
* <p>
* The rules are stored as named styles, and other information
* is stored to translate the context of an element to a
* rule quickly.  The following code fragment will display
* the named styles, and therefore the CSS rules contained.
* <code><pre>
* &nbsp;
* &nbsp; import java.util.*;
* &nbsp; import javax.swing.text.*;
* &nbsp; import javax.swing.text.html.*;
* &nbsp;
* &nbsp; public class ShowStyles {
* &nbsp;
* &nbsp;     public static void main(String[] args) {
* &nbsp;       HTMLEditorKit kit = new HTMLEditorKit();
* &nbsp;       HTMLDocument doc = (HTMLDocument) kit.createDefaultDocument();
* &nbsp;       StyleSheet styles = doc.getStyleSheet();
* &nbsp;
* &nbsp;       Enumeration rules = styles.getStyleNames();
* &nbsp;       while (rules.hasMoreElements()) {
* &nbsp;           String name = (String) rules.nextElement();
* &nbsp;           Style rule = styles.getStyle(name);
* &nbsp;           System.out.println(rule.toString());
* &nbsp;       }
* &nbsp;       System.exit(0);
* &nbsp;     }
* &nbsp; }
* &nbsp;
* </pre></code>
* <p>
* The semantics for when a CSS style should overide visual attributes
* defined by an element are not well defined. For example, the html
* <code>&lt;body bgcolor=red&gt;</code> makes the body have a red
* background. But if the html file also contains the CSS rule
* <code>body { background: blue }</code> it becomes less clear as to
* what color the background of the body should be. The current
* implemention gives visual attributes defined in the element the
* highest precedence, that is they are always checked before any styles.
* Therefore, in the previous example the background would have a
* red color as the body element defines the background color to be red.
* <p>
* As already mentioned this supports CSS. We don't support the full CSS
* spec. Refer to the javadoc of the CSS class to see what properties
* we support. The two major CSS parsing related
* concepts we do not currently
* support are pseudo selectors, such as <code>A:link { color: red }</code>,
* and the <code>important</code> modifier.
* <p>
* <font color="red">Note: This implementation is currently
* incomplete.  It can be replaced with alternative implementations
* that are complete.  Future versions of this class will provide
* better CSS support.</font>
*
* @author  Timothy Prinzing
* @author  Sunita Mani
* @author  Sara Swanson
* @author  Jill Nakata
*/
extern class StyleSheet extends javax.swing.text.StyleContext
{
	/**
	* Construct a StyleSheet
	*/
	@:overload public function new() : Void;
	
	/**
	* Fetches the style to use to render the given type
	* of HTML tag.  The element given is representing
	* the tag and can be used to determine the nesting
	* for situations where the attributes will differ
	* if nesting inside of elements.
	*
	* @param t the type to translate to visual attributes
	* @param e the element representing the tag; the element
	*  can be used to determine the nesting for situations where
	*  the attributes will differ if nested inside of other
	*  elements
	* @return the set of CSS attributes to use to render
	*  the tag
	*/
	@:overload public function getRule(t : javax.swing.text.html.HTML.HTML_Tag, e : javax.swing.text.Element) : javax.swing.text.Style;
	
	/**
	* Fetches the rule that best matches the selector given
	* in string form. Where <code>selector</code> is a space separated
	* String of the element names. For example, <code>selector</code>
	* might be 'html body tr td''<p>
	* The attributes of the returned Style will change
	* as rules are added and removed. That is if you to ask for a rule
	* with a selector "table p" and a new rule was added with a selector
	* of "p" the returned Style would include the new attributes from
	* the rule "p".
	*/
	@:overload public function getRule(selector : String) : javax.swing.text.Style;
	
	/**
	* Adds a set of rules to the sheet.  The rules are expected to
	* be in valid CSS format.  Typically this would be called as
	* a result of parsing a &lt;style&gt; tag.
	*/
	@:overload public function addRule(rule : String) : Void;
	
	/**
	* Translates a CSS declaration to an AttributeSet that represents
	* the CSS declaration.  Typically this would be called as a
	* result of encountering an HTML style attribute.
	*/
	@:overload public function getDeclaration(decl : String) : javax.swing.text.AttributeSet;
	
	/**
	* Loads a set of rules that have been specified in terms of
	* CSS1 grammar.  If there are collisions with existing rules,
	* the newly specified rule will win.
	*
	* @param in the stream to read the CSS grammar from
	* @param ref the reference URL.  This value represents the
	*  location of the stream and may be null.  All relative
	*  URLs specified in the stream will be based upon this
	*  parameter.
	*/
	@:overload public function loadRules(_in : java.io.Reader, ref : java.net.URL) : Void;
	
	/**
	* Fetches a set of attributes to use in the view for
	* displaying.  This is basically a set of attributes that
	* can be used for View.getAttributes.
	*/
	@:overload public function getViewAttributes(v : javax.swing.text.View) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a named style previously added to the document.
	*
	* @param nm  the name of the style to remove
	*/
	@:overload override public function removeStyle(nm : String) : Void;
	
	/**
	* Adds the rules from the StyleSheet <code>ss</code> to those of
	* the receiver. <code>ss's</code> rules will override the rules of
	* any previously added style sheets. An added StyleSheet will never
	* override the rules of the receiving style sheet.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function addStyleSheet(ss : javax.swing.text.html.StyleSheet) : Void;
	
	/**
	* Removes the StyleSheet <code>ss</code> from those of the receiver.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function removeStyleSheet(ss : javax.swing.text.html.StyleSheet) : Void;
	
	/**
	* Returns an array of the linked StyleSheets. Will return null
	* if there are no linked StyleSheets.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getStyleSheets() : java.NativeArray<javax.swing.text.html.StyleSheet>;
	
	/**
	* Imports a style sheet from <code>url</code>. The resulting rules
	* are directly added to the receiver. If you do not want the rules
	* to become part of the receiver, create a new StyleSheet and use
	* addStyleSheet to link it in.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function importStyleSheet(url : java.net.URL) : Void;
	
	/**
	* Sets the base. All import statements that are relative, will be
	* relative to <code>base</code>.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function setBase(base : java.net.URL) : Void;
	
	/**
	* Returns the base.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getBase() : java.net.URL;
	
	/**
	* Adds a CSS attribute to the given set.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function addCSSAttribute(attr : javax.swing.text.MutableAttributeSet, key : javax.swing.text.html.CSS.CSS_Attribute, value : String) : Void;
	
	/**
	* Adds a CSS attribute to the given set.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function addCSSAttributeFromHTML(attr : javax.swing.text.MutableAttributeSet, key : javax.swing.text.html.CSS.CSS_Attribute, value : String) : Bool;
	
	/**
	* Converts a set of HTML attributes to an equivalent
	* set of CSS attributes.
	*
	* @param htmlAttrSet AttributeSet containing the HTML attributes.
	*/
	@:overload public function translateHTMLToCSS(htmlAttrSet : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Adds an attribute to the given set, and returns
	* the new representative set.  This is reimplemented to
	* convert StyleConstant attributes to CSS prior to forwarding
	* to the superclass behavior.  The StyleConstants attribute
	* has no corresponding CSS entry, the StyleConstants attribute
	* is stored (but will likely be unused).
	*
	* @param old the old attribute set
	* @param key the non-null attribute key
	* @param value the attribute value
	* @return the updated attribute set
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload override public function addAttribute(old : javax.swing.text.AttributeSet, key : Dynamic, value : Dynamic) : javax.swing.text.AttributeSet;
	
	/**
	* Adds a set of attributes to the element.  If any of these attributes
	* are StyleConstants attributes, they will be converted to CSS prior
	* to forwarding to the superclass behavior.
	*
	* @param old the old attribute set
	* @param attr the attributes to add
	* @return the updated attribute set
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload override public function addAttributes(old : javax.swing.text.AttributeSet, attr : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Removes an attribute from the set.  If the attribute is a StyleConstants
	* attribute, the request will be converted to a CSS attribute prior to
	* forwarding to the superclass behavior.
	*
	* @param old the old set of attributes
	* @param key the non-null attribute name
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttribute
	*/
	@:overload override public function removeAttribute(old : javax.swing.text.AttributeSet, key : Dynamic) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a set of attributes for the element.  If any of the attributes
	* is a StyleConstants attribute, the request will be converted to a CSS
	* attribute prior to forwarding to the superclass behavior.
	*
	* @param old the old attribute set
	* @param names the attribute names
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload override public function removeAttributes(old : javax.swing.text.AttributeSet, names : java.util.Enumeration<Dynamic>) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a set of attributes. If any of the attributes
	* is a StyleConstants attribute, the request will be converted to a CSS
	* attribute prior to forwarding to the superclass behavior.
	*
	* @param old the old attribute set
	* @param attrs the attributes
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload override public function removeAttributes(old : javax.swing.text.AttributeSet, attrs : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Creates a compact set of attributes that might be shared.
	* This is a hook for subclasses that want to alter the
	* behavior of SmallAttributeSet.  This can be reimplemented
	* to return an AttributeSet that provides some sort of
	* attribute conversion.
	*
	* @param a The set of attributes to be represented in the
	*  the compact form.
	*/
	@:overload override private function createSmallAttributeSet(a : javax.swing.text.AttributeSet) : javax.swing.text.StyleContext.StyleContext_SmallAttributeSet;
	
	/**
	* Creates a large set of attributes that should trade off
	* space for time.  This set will not be shared.  This is
	* a hook for subclasses that want to alter the behavior
	* of the larger attribute storage format (which is
	* SimpleAttributeSet by default).   This can be reimplemented
	* to return a MutableAttributeSet that provides some sort of
	* attribute conversion.
	*
	* @param a The set of attributes to be represented in the
	*  the larger form.
	*/
	@:overload override private function createLargeAttributeSet(a : javax.swing.text.AttributeSet) : javax.swing.text.MutableAttributeSet;
	
	/**
	* Fetches the font to use for the given set of attributes.
	*/
	@:overload override public function getFont(a : javax.swing.text.AttributeSet) : java.awt.Font;
	
	/**
	* Takes a set of attributes and turn it into a foreground color
	* specification.  This might be used to specify things
	* like brighter, more hue, etc.
	*
	* @param a the set of attributes
	* @return the color
	*/
	@:overload override public function getForeground(a : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Takes a set of attributes and turn it into a background color
	* specification.  This might be used to specify things
	* like brighter, more hue, etc.
	*
	* @param a the set of attributes
	* @return the color
	*/
	@:overload override public function getBackground(a : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Fetches the box formatter to use for the given set
	* of CSS attributes.
	*/
	@:overload public function getBoxPainter(a : javax.swing.text.AttributeSet) : javax.swing.text.html.StyleSheet.StyleSheet_BoxPainter;
	
	/**
	* Fetches the list formatter to use for the given set
	* of CSS attributes.
	*/
	@:overload public function getListPainter(a : javax.swing.text.AttributeSet) : javax.swing.text.html.StyleSheet.StyleSheet_ListPainter;
	
	/**
	* Sets the base font size, with valid values between 1 and 7.
	*/
	@:overload public function setBaseFontSize(sz : Int) : Void;
	
	/**
	* Sets the base font size from the passed in String. The string
	* can either identify a specific font size, with legal values between
	* 1 and 7, or identifiy a relative font size such as +1 or -2.
	*/
	@:overload public function setBaseFontSize(size : String) : Void;
	
	@:overload public static function getIndexOfSize(pt : Single) : Int;
	
	/**
	* Returns the point size, given a size index.
	*/
	@:overload public function getPointSize(index : Int) : Single;
	
	/**
	*  Given a string such as "+2", "-2", or "2",
	*  returns a point size value.
	*/
	@:overload public function getPointSize(size : String) : Single;
	
	/**
	* Converts a color string such as "RED" or "#NNNNNN" to a Color.
	* Note: This will only convert the HTML3.2 color strings
	*       or a string of length 7;
	*       otherwise, it will return null.
	*/
	@:overload public function stringToColor(string : String) : java.awt.Color;
	
	
}
/**
* Large set of attributes that does conversion of requests
* for attributes of type StyleConstants.
*/
@:native('javax$swing$text$html$StyleSheet$LargeConversionSet') @:internal extern class StyleSheet_LargeConversionSet extends javax.swing.text.SimpleAttributeSet
{
	/**
	* Creates a new attribute set based on a supplied set of attributes.
	*
	* @param source the set of attributes
	*/
	@:overload public function new(source : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function new() : Void;
	
	/**
	* Checks whether a given attribute is defined.
	*
	* @param key the attribute key
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload override public function isDefined(key : Dynamic) : Bool;
	
	/**
	* Gets the value of an attribute.
	*
	* @param key the attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload override public function getAttribute(key : Dynamic) : Dynamic;
	
	
}
/**
* Small set of attributes that does conversion of requests
* for attributes of type StyleConstants.
*/
@:native('javax$swing$text$html$StyleSheet$SmallConversionSet') @:internal extern class StyleSheet_SmallConversionSet extends javax.swing.text.StyleContext.StyleContext_SmallAttributeSet
{
	/**
	* Creates a new attribute set based on a supplied set of attributes.
	*
	* @param attrs the set of attributes
	*/
	@:overload public function new(attrs : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Checks whether a given attribute is defined.
	*
	* @param key the attribute key
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload override public function isDefined(key : Dynamic) : Bool;
	
	/**
	* Gets the value of an attribute.
	*
	* @param key the attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload override public function getAttribute(key : Dynamic) : Dynamic;
	
	
}
/**
* A temporary class used to hold a Vector, a StringBuffer and a
* Hashtable. This is used to avoid allocing a lot of garbage when
* searching for rules. Use the static method obtainSearchBuffer and
* releaseSearchBuffer to get a SearchBuffer, and release it when
* done.
*/
@:native('javax$swing$text$html$StyleSheet$SearchBuffer') @:internal extern class StyleSheet_SearchBuffer
{
	
}
/**
* Class to carry out some of the duties of
* CSS formatting.  Implementations of this
* class enable views to present the CSS formatting
* while not knowing anything about how the CSS values
* are being cached.
* <p>
* As a delegate of Views, this object is responsible for
* the insets of a View and making sure the background
* is maintained according to the CSS attributes.
*/
@:native('javax$swing$text$html$StyleSheet$BoxPainter') extern class StyleSheet_BoxPainter implements java.io.Serializable
{
	/**
	* Fetches the inset needed on a given side to
	* account for the margin, border, and padding.
	*
	* @param side The size of the box to fetch the
	*  inset for.  This can be View.TOP,
	*  View.LEFT, View.BOTTOM, or View.RIGHT.
	* @param v the view making the request.  This is
	*  used to get the AttributeSet, and may be used to
	*  resolve percentage arguments.
	* @exception IllegalArgumentException for an invalid direction
	*/
	@:overload public function getInset(side : Int, v : javax.swing.text.View) : Single;
	
	/**
	* Paints the CSS box according to the attributes
	* given.  This should paint the border, padding,
	* and background.
	*
	* @param g the rendering surface.
	* @param x the x coordinate of the allocated area to
	*  render into.
	* @param y the y coordinate of the allocated area to
	*  render into.
	* @param w the width of the allocated area to render into.
	* @param h the height of the allocated area to render into.
	* @param v the view making the request.  This is
	*  used to get the AttributeSet, and may be used to
	*  resolve percentage arguments.
	*/
	@:overload public function paint(g : java.awt.Graphics, x : Single, y : Single, w : Single, h : Single, v : javax.swing.text.View) : Void;
	
	
}
@:native('javax$swing$text$html$StyleSheet$BoxPainter$HorizontalMargin') extern enum StyleSheet_BoxPainter_HorizontalMargin
{
	LEFT;
	RIGHT;
	
}

/**
* Class to carry out some of the duties of CSS list
* formatting.  Implementations of this
* class enable views to present the CSS formatting
* while not knowing anything about how the CSS values
* are being cached.
*/
@:native('javax$swing$text$html$StyleSheet$ListPainter') extern class StyleSheet_ListPainter implements java.io.Serializable
{
	/**
	* Paints the CSS list decoration according to the
	* attributes given.
	*
	* @param g the rendering surface.
	* @param x the x coordinate of the list item allocation
	* @param y the y coordinate of the list item allocation
	* @param w the width of the list item allocation
	* @param h the height of the list item allocation
	* @param v the allocated area to paint into.
	* @param item which list item is being painted.  This
	*  is a number greater than or equal to 0.
	*/
	@:overload public function paint(g : java.awt.Graphics, x : Single, y : Single, w : Single, h : Single, v : javax.swing.text.View, item : Int) : Void;
	
	
}
/**
* Paints the background image.
*/
@:native('javax$swing$text$html$StyleSheet$BackgroundImagePainter') @:internal extern class StyleSheet_BackgroundImagePainter implements java.io.Serializable
{
	
}
/**
* A subclass of MuxingAttributeSet that translates between
* CSS and HTML and StyleConstants. The AttributeSets used are
* the CSS rules that match the Views Elements.
*/
@:native('javax$swing$text$html$StyleSheet$ViewAttributeSet') @:internal extern class StyleSheet_ViewAttributeSet extends javax.swing.text.html.MuxingAttributeSet
{
	/**
	* Checks whether a given attribute is defined.
	* This will convert the key over to CSS if the
	* key is a StyleConstants key that has a CSS
	* mapping.
	*
	* @param key the attribute key
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload override public function isDefined(key : Dynamic) : Bool;
	
	/**
	* Gets the value of an attribute.  If the requested
	* attribute is a StyleConstants attribute that has
	* a CSS mapping, the request will be converted.
	*
	* @param key the attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload override public function getAttribute(key : Dynamic) : Dynamic;
	
	/**
	* If not overriden, the resolving parent defaults to
	* the parent element.
	*
	* @return the attributes from the parent
	* @see AttributeSet#getResolveParent
	*/
	@:overload override public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
/**
* A subclass of MuxingAttributeSet that implements Style. Currently
* the MutableAttributeSet methods are unimplemented, that is they
* do nothing.
*/
@:native('javax$swing$text$html$StyleSheet$ResolvedStyle') @:internal extern class StyleSheet_ResolvedStyle extends javax.swing.text.html.MuxingAttributeSet implements java.io.Serializable implements javax.swing.text.Style
{
	/**
	* Returns true if the receiver matches <code>selector</code>, where
	* a match is defined by the CSS rule matching.
	* Each simple selector must be separated by a single space.
	*/
	@:overload private function matches(selector : String) : Bool;
	
	@:overload public function addAttribute(name : Dynamic, value : Dynamic) : Void;
	
	@:overload public function addAttributes(attributes : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function removeAttribute(name : Dynamic) : Void;
	
	@:overload public function removeAttributes(names : java.util.Enumeration<Dynamic>) : Void;
	
	@:overload public function removeAttributes(attributes : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function setResolveParent(parent : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	@:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	
}
/**
* SelectorMapping contains a specifitiy, as an integer, and an associated
* Style. It can also reference children <code>SelectorMapping</code>s,
* so that it behaves like a tree.
* <p>
* This is not thread safe, it is assumed the caller will take the
* necessary precations if this is to be used in a threaded environment.
*/
@:native('javax$swing$text$html$StyleSheet$SelectorMapping') @:internal extern class StyleSheet_SelectorMapping implements java.io.Serializable
{
	@:overload public function new(specificity : Int) : Void;
	
	/**
	* Returns the specificity this mapping represents.
	*/
	@:overload public function getSpecificity() : Int;
	
	/**
	* Sets the Style associated with this mapping.
	*/
	@:overload public function setStyle(style : javax.swing.text.Style) : Void;
	
	/**
	* Returns the Style associated with this mapping.
	*/
	@:overload public function getStyle() : javax.swing.text.Style;
	
	/**
	* Returns the child mapping identified by the simple selector
	* <code>selector</code>. If a child mapping does not exist for
	*<code>selector</code>, and <code>create</code> is true, a new
	* one will be created.
	*/
	@:overload public function getChildSelectorMapping(selector : String, create : Bool) : javax.swing.text.html.StyleSheet.StyleSheet_SelectorMapping;
	
	/**
	* Creates a child <code>SelectorMapping</code> with the specified
	* <code>specificity</code>.
	*/
	@:overload private function createChildSelectorMapping(specificity : Int) : javax.swing.text.html.StyleSheet.StyleSheet_SelectorMapping;
	
	/**
	* Returns the specificity for the child selector
	* <code>selector</code>.
	*/
	@:overload private function getChildSpecificity(selector : String) : Int;
	
	
}
/**
* Default parser for CSS specifications that get loaded into
* the StyleSheet.<p>
* This class is NOT thread safe, do not ask it to parse while it is
* in the middle of parsing.
*/
@:native('javax$swing$text$html$StyleSheet$CssParser') @:internal extern class StyleSheet_CssParser implements javax.swing.text.html.CSSParser.CSSParser_CSSParserCallback
{
	/**
	* Parses the passed in CSS declaration into an AttributeSet.
	*/
	@:overload public function parseDeclaration(string : String) : javax.swing.text.AttributeSet;
	
	/**
	* Parses the passed in CSS declaration into an AttributeSet.
	*/
	@:overload public function parseDeclaration(r : java.io.Reader) : javax.swing.text.AttributeSet;
	
	/**
	* Parse the given CSS stream
	*/
	@:overload public function parse(base : java.net.URL, r : java.io.Reader, parseDeclaration : Bool, isLink : Bool) : Void;
	
	/**
	* Invoked when a valid @import is encountered, will call
	* <code>importStyleSheet</code> if a
	* <code>MalformedURLException</code> is not thrown in creating
	* the URL.
	*/
	@:overload public function handleImport(importString : String) : Void;
	
	/**
	* A selector has been encountered.
	*/
	@:overload public function handleSelector(selector : String) : Void;
	
	/**
	* Invoked when the start of a rule is encountered.
	*/
	@:overload public function startRule() : Void;
	
	/**
	* Invoked when a property name is encountered.
	*/
	@:overload public function handleProperty(property : String) : Void;
	
	/**
	* Invoked when a property value is encountered.
	*/
	@:overload public function handleValue(value : String) : Void;
	
	/**
	* Invoked when the end of a rule is encountered.
	*/
	@:overload public function endRule() : Void;
	
	
}
