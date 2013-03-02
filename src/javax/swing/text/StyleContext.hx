package javax.swing.text;
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
extern class StyleContext implements java.io.Serializable implements javax.swing.text.AbstractDocument.AbstractDocument_AttributeContext
{
	/**
	* Returns default AttributeContext shared by all documents that
	* don't bother to define/supply their own context.
	*
	* @return the context
	*/
	@:overload @:final public static function getDefaultStyleContext() : javax.swing.text.StyleContext;
	
	/**
	* Creates a new StyleContext object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds a new style into the style hierarchy.  Style attributes
	* resolve from bottom up so an attribute specified in a child
	* will override an attribute specified in the parent.
	*
	* @param nm   the name of the style (must be unique within the
	*   collection of named styles in the document).  The name may
	*   be null if the style is unnamed, but the caller is responsible
	*   for managing the reference returned as an unnamed style can't
	*   be fetched by name.  An unnamed style may be useful for things
	*   like character attribute overrides such as found in a style
	*   run.
	* @param parent the parent style.  This may be null if unspecified
	*   attributes need not be resolved in some other style.
	* @return the created style
	*/
	@:overload public function addStyle(nm : String, parent : javax.swing.text.Style) : javax.swing.text.Style;
	
	/**
	* Removes a named style previously added to the document.
	*
	* @param nm  the name of the style to remove
	*/
	@:overload public function removeStyle(nm : String) : Void;
	
	/**
	* Fetches a named style previously added to the document
	*
	* @param nm  the name of the style
	* @return the style
	*/
	@:overload public function getStyle(nm : String) : javax.swing.text.Style;
	
	/**
	* Fetches the names of the styles defined.
	*
	* @return the list of names as an enumeration
	*/
	@:overload public function getStyleNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Adds a listener to track when styles are added
	* or removed.
	*
	* @param l the change listener
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a listener that was tracking styles being
	* added or removed.
	*
	* @param l the change listener
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this StyleContext with addChangeListener().
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Gets the font from an attribute set.  This is
	* implemented to try and fetch a cached font
	* for the given AttributeSet, and if that fails
	* the font features are resolved and the
	* font is fetched from the low-level font cache.
	*
	* @param attr the attribute set
	* @return the font
	*/
	@:overload public function getFont(attr : javax.swing.text.AttributeSet) : java.awt.Font;
	
	/**
	* Takes a set of attributes and turn it into a foreground color
	* specification.  This might be used to specify things
	* like brighter, more hue, etc.  By default it simply returns
	* the value specified by the StyleConstants.Foreground attribute.
	*
	* @param attr the set of attributes
	* @return the color
	*/
	@:overload public function getForeground(attr : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Takes a set of attributes and turn it into a background color
	* specification.  This might be used to specify things
	* like brighter, more hue, etc.  By default it simply returns
	* the value specified by the StyleConstants.Background attribute.
	*
	* @param attr the set of attributes
	* @return the color
	*/
	@:overload public function getBackground(attr : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Gets a new font.  This returns a Font from a cache
	* if a cached font exists.  If not, a Font is added to
	* the cache.  This is basically a low-level cache for
	* 1.1 font features.
	*
	* @param family the font family (such as "Monospaced")
	* @param style the style of the font (such as Font.PLAIN)
	* @param size the point size >= 1
	* @return the new font
	*/
	@:overload public function getFont(family : String, style : Int, size : Int) : java.awt.Font;
	
	/**
	* Returns font metrics for a font.
	*
	* @param f the font
	* @return the metrics
	*/
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Adds an attribute to the given set, and returns
	* the new representative set.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param old the old attribute set
	* @param name the non-null attribute name
	* @param value the attribute value
	* @return the updated attribute set
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload @:synchronized public function addAttribute(old : javax.swing.text.AttributeSet, name : Dynamic, value : Dynamic) : javax.swing.text.AttributeSet;
	
	/**
	* Adds a set of attributes to the element.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param old the old attribute set
	* @param attr the attributes to add
	* @return the updated attribute set
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload @:synchronized public function addAttributes(old : javax.swing.text.AttributeSet, attr : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Removes an attribute from the set.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param old the old set of attributes
	* @param name the non-null attribute name
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttribute
	*/
	@:overload @:synchronized public function removeAttribute(old : javax.swing.text.AttributeSet, name : Dynamic) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a set of attributes for the element.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param old the old attribute set
	* @param names the attribute names
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload @:synchronized public function removeAttributes(old : javax.swing.text.AttributeSet, names : java.util.Enumeration<Dynamic>) : javax.swing.text.AttributeSet;
	
	/**
	* Removes a set of attributes for the element.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param old the old attribute set
	* @param attrs the attributes
	* @return the updated attribute set
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload @:synchronized public function removeAttributes(old : javax.swing.text.AttributeSet, attrs : javax.swing.text.AttributeSet) : javax.swing.text.AttributeSet;
	
	/**
	* Fetches an empty AttributeSet.
	*
	* @return the set
	*/
	@:overload public function getEmptySet() : javax.swing.text.AttributeSet;
	
	/**
	* Returns a set no longer needed by the MutableAttributeSet implmentation.
	* This is useful for operation under 1.1 where there are no weak
	* references.  This would typically be called by the finalize method
	* of the MutableAttributeSet implementation.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param a the set to reclaim
	*/
	@:overload public function reclaim(a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Returns the maximum number of key/value pairs to try and
	* compress into unique/immutable sets.  Any sets above this
	* limit will use hashtables and be a MutableAttributeSet.
	*
	* @return the threshold
	*/
	@:overload private function getCompressionThreshold() : Int;
	
	/**
	* Create a compact set of attributes that might be shared.
	* This is a hook for subclasses that want to alter the
	* behavior of SmallAttributeSet.  This can be reimplemented
	* to return an AttributeSet that provides some sort of
	* attribute conversion.
	*
	* @param a The set of attributes to be represented in the
	*  the compact form.
	*/
	@:overload private function createSmallAttributeSet(a : javax.swing.text.AttributeSet) : javax.swing.text.StyleContext.StyleContext_SmallAttributeSet;
	
	/**
	* Create a large set of attributes that should trade off
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
	@:overload private function createLargeAttributeSet(a : javax.swing.text.AttributeSet) : javax.swing.text.MutableAttributeSet;
	
	/**
	* Converts a StyleContext to a String.
	*
	* @return the string
	*/
	@:overload public function toString() : String;
	
	/**
	* Context-specific handling of writing out attributes
	*/
	@:overload public function writeAttributes(out : java.io.ObjectOutputStream, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Context-specific handling of reading in attributes
	*/
	@:overload public function readAttributes(_in : java.io.ObjectInputStream, a : javax.swing.text.MutableAttributeSet) : Void;
	
	/**
	* Writes a set of attributes to the given object stream
	* for the purpose of serialization.  This will take
	* special care to deal with static attribute keys that
	* have been registered wit the
	* <code>registerStaticAttributeKey</code> method.
	* Any attribute key not regsitered as a static key
	* will be serialized directly.  All values are expected
	* to be serializable.
	*
	* @param out the output stream
	* @param a the attribute set
	* @exception IOException on any I/O error
	*/
	@:overload public static function writeAttributeSet(out : java.io.ObjectOutputStream, a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Reads a set of attributes from the given object input
	* stream that have been previously written out with
	* <code>writeAttributeSet</code>.  This will try to restore
	* keys that were static objects to the static objects in
	* the current virtual machine considering only those keys
	* that have been registered with the
	* <code>registerStaticAttributeKey</code> method.
	* The attributes retrieved from the stream will be placed
	* into the given mutable set.
	*
	* @param in the object stream to read the attribute data from.
	* @param a  the attribute set to place the attribute
	*   definitions in.
	* @exception ClassNotFoundException passed upward if encountered
	*  when reading the object stream.
	* @exception IOException passed upward if encountered when
	*  reading the object stream.
	*/
	@:overload public static function readAttributeSet(_in : java.io.ObjectInputStream, a : javax.swing.text.MutableAttributeSet) : Void;
	
	/**
	* Registers an object as a static object that is being
	* used as a key in attribute sets.  This allows the key
	* to be treated specially for serialization.
	* <p>
	* For operation under a 1.1 virtual machine, this
	* uses the value returned by <code>toString</code>
	* concatenated to the classname.  The value returned
	* by toString should not have the class reference
	* in it (ie it should be reimplemented from the
	* definition in Object) in order to be the same when
	* recomputed later.
	*
	* @param key the non-null object key
	*/
	@:overload public static function registerStaticAttributeKey(key : Dynamic) : Void;
	
	/**
	* Returns the object previously registered with
	* <code>registerStaticAttributeKey</code>.
	*/
	@:overload public static function getStaticAttribute(key : Dynamic) : Dynamic;
	
	/**
	* Returns the String that <code>key</code> will be registered with
	* @see #getStaticAttribute
	* @see #registerStaticAttributeKey
	*/
	@:overload public static function getStaticAttributeKey(key : Dynamic) : Dynamic;
	
	/**
	* The name given to the default logical style attached
	* to paragraphs.
	*/
	public static var DEFAULT_STYLE(default, null) : String;
	
	
}
/**
* This class holds a small number of attributes in an array.
* The storage format is key, value, key, value, etc.  The size
* of the set is the length of the array divided by two.  By
* default, this is the class that will be used to store attributes
* when held in the compact sharable form.
*/
@:native('javax$swing$text$StyleContext$SmallAttributeSet') extern class StyleContext_SmallAttributeSet implements javax.swing.text.AttributeSet
{
	@:overload public function new(attributes : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function new(attrs : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Returns a string showing the key/value pairs
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a hashcode for this set of attributes.
	* @return     a hashcode value for this set of attributes.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this object to the specifed object.
	* The result is <code>true</code> if the object is an equivalent
	* set of attributes.
	* @param     obj   the object to compare with.
	* @return    <code>true</code> if the objects are equal;
	*            <code>false</code> otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Clones a set of attributes.  Since the set is immutable, a
	* clone is basically the same set.
	*
	* @return the set of attributes
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Gets the number of attributes that are defined.
	*
	* @return the number of attributes
	* @see AttributeSet#getAttributeCount
	*/
	@:overload public function getAttributeCount() : Int;
	
	/**
	* Checks whether a given attribute is defined.
	*
	* @param key the attribute key
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload public function isDefined(key : Dynamic) : Bool;
	
	/**
	* Checks whether two attribute sets are equal.
	*
	* @param attr the attribute set to check against
	* @return true if the same
	* @see AttributeSet#isEqual
	*/
	@:overload public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Copies a set of attributes.
	*
	* @return the copy
	* @see AttributeSet#copyAttributes
	*/
	@:overload public function copyAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the value of an attribute.
	*
	* @param key the attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload public function getAttribute(key : Dynamic) : Dynamic;
	
	/**
	* Gets the names of all attributes.
	*
	* @return the attribute names
	* @see AttributeSet#getAttributeNames
	*/
	@:overload public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Checks whether a given attribute name/value is defined.
	*
	* @param name the attribute name
	* @param value the attribute value
	* @return true if the name/value is defined
	* @see AttributeSet#containsAttribute
	*/
	@:overload public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	/**
	* Checks whether the attribute set contains all of
	* the given attributes.
	*
	* @param attrs the attributes to check
	* @return true if the element contains all the attributes
	* @see AttributeSet#containsAttributes
	*/
	@:overload public function containsAttributes(attrs : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* If not overriden, the resolving parent defaults to
	* the parent element.
	*
	* @return the attributes from the parent
	* @see AttributeSet#getResolveParent
	*/
	@:overload public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
/**
* An enumeration of the keys in a SmallAttributeSet.
*/
@:native('javax$swing$text$StyleContext$KeyEnumeration') @:internal extern class StyleContext_KeyEnumeration implements java.util.Enumeration<Dynamic>
{
	/**
	* Tests if this enumeration contains more elements.
	*
	* @return  <code>true</code> if this enumeration contains more elements;
	*          <code>false</code> otherwise.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function hasMoreElements() : Bool;
	
	/**
	* Returns the next element of this enumeration.
	*
	* @return     the next element of this enumeration.
	* @exception  NoSuchElementException  if no more elements exist.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload public function nextElement() : Dynamic;
	
	
}
/**
* Sorts the key strings so that they can be very quickly compared
* in the attribute set searchs.
*/
@:native('javax$swing$text$StyleContext$KeyBuilder') @:internal extern class StyleContext_KeyBuilder
{
	@:overload public function initialize(a : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Creates a table of sorted key/value entries
	* suitable for creation of an instance of
	* SmallAttributeSet.
	*/
	@:overload public function createTable() : java.NativeArray<Dynamic>;
	
	/**
	* Adds a key/value to the set.
	*/
	@:overload public function addAttribute(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Adds a set of key/value pairs to the set.
	*/
	@:overload public function addAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Removes the given name from the set.
	*/
	@:overload public function removeAttribute(key : Dynamic) : Void;
	
	/**
	* Removes the set of keys from the set.
	*/
	@:overload public function removeAttributes(names : java.util.Enumeration<Dynamic>) : Void;
	
	/**
	* Removes the set of matching attributes from the set.
	*/
	@:overload public function removeAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	
}
/**
* key for a font table
*/
@:native('javax$swing$text$StyleContext$FontKey') @:internal extern class StyleContext_FontKey
{
	/**
	* Constructs a font key.
	*/
	@:overload public function new(family : String, style : Int, size : Int) : Void;
	
	@:overload public function setValue(family : String, style : Int, size : Int) : Void;
	
	/**
	* Returns a hashcode for this font.
	* @return     a hashcode value for this font.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this object to the specifed object.
	* The result is <code>true</code> if and only if the argument is not
	* <code>null</code> and is a <code>Font</code> object with the same
	* name, style, and point size as this font.
	* @param     obj   the object to compare this font with.
	* @return    <code>true</code> if the objects are equal;
	*            <code>false</code> otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* A collection of attributes, typically used to represent
* character and paragraph styles.  This is an implementation
* of MutableAttributeSet that can be observed if desired.
* These styles will take advantage of immutability while
* the sets are small enough, and may be substantially more
* efficient than something like SimpleAttributeSet.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$text$StyleContext$NamedStyle') extern class StyleContext_NamedStyle implements javax.swing.text.Style implements java.io.Serializable
{
	/**
	* Creates a new named style.
	*
	* @param name the style name, null for unnamed
	* @param parent the parent style, null if none
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(name : String, parent : javax.swing.text.Style) : Void;
	
	/**
	* Creates a new named style.
	*
	* @param parent the parent style, null if none
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(parent : javax.swing.text.Style) : Void;
	
	/**
	* Creates a new named style, with a null name and parent.
	*/
	@:overload public function new() : Void;
	
	/**
	* Converts the style to a string.
	*
	* @return the string
	*/
	@:overload public function toString() : String;
	
	/**
	* Fetches the name of the style.   A style is not required to be named,
	* so null is returned if there is no name associated with the style.
	*
	* @return the name
	*/
	@:overload public function getName() : String;
	
	/**
	* Changes the name of the style.  Does nothing with a null name.
	*
	* @param name the new name
	*/
	@:overload public function setName(name : String) : Void;
	
	/**
	* Adds a change listener.
	*
	* @param l the change listener
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a change listener.
	*
	* @param l the change listener
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this NamedStyle with addChangeListener().
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	*
	* @see EventListenerList
	*/
	@:overload private function fireStateChanged() : Void;
	
	/**
	* Return an array of all the listeners of the given type that
	* were added to this model.
	*
	* @return all of the objects receiving <em>listenerType</em> notifications
	*          from this model
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Gets the number of attributes that are defined.
	*
	* @return the number of attributes >= 0
	* @see AttributeSet#getAttributeCount
	*/
	@:overload public function getAttributeCount() : Int;
	
	/**
	* Checks whether a given attribute is defined.
	*
	* @param attrName the non-null attribute name
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload public function isDefined(attrName : Dynamic) : Bool;
	
	/**
	* Checks whether two attribute sets are equal.
	*
	* @param attr the attribute set to check against
	* @return true if the same
	* @see AttributeSet#isEqual
	*/
	@:overload public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Copies a set of attributes.
	*
	* @return the copy
	* @see AttributeSet#copyAttributes
	*/
	@:overload public function copyAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the value of an attribute.
	*
	* @param attrName the non-null attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload public function getAttribute(attrName : Dynamic) : Dynamic;
	
	/**
	* Gets the names of all attributes.
	*
	* @return the attribute names as an enumeration
	* @see AttributeSet#getAttributeNames
	*/
	@:overload public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Checks whether a given attribute name/value is defined.
	*
	* @param name the non-null attribute name
	* @param value the attribute value
	* @return true if the name/value is defined
	* @see AttributeSet#containsAttribute
	*/
	@:overload public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	/**
	* Checks whether the element contains all the attributes.
	*
	* @param attrs the attributes to check
	* @return true if the element contains all the attributes
	* @see AttributeSet#containsAttributes
	*/
	@:overload public function containsAttributes(attrs : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Gets attributes from the parent.
	* If not overriden, the resolving parent defaults to
	* the parent element.
	*
	* @return the attributes from the parent
	* @see AttributeSet#getResolveParent
	*/
	@:overload public function getResolveParent() : javax.swing.text.AttributeSet;
	
	/**
	* Adds an attribute.
	*
	* @param name the non-null attribute name
	* @param value the attribute value
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload public function addAttribute(name : Dynamic, value : Dynamic) : Void;
	
	/**
	* Adds a set of attributes to the element.
	*
	* @param attr the attributes to add
	* @see MutableAttributeSet#addAttribute
	*/
	@:overload public function addAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Removes an attribute from the set.
	*
	* @param name the non-null attribute name
	* @see MutableAttributeSet#removeAttribute
	*/
	@:overload public function removeAttribute(name : Dynamic) : Void;
	
	/**
	* Removes a set of attributes for the element.
	*
	* @param names the attribute names
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload public function removeAttributes(names : java.util.Enumeration<Dynamic>) : Void;
	
	/**
	* Removes a set of attributes for the element.
	*
	* @param attrs the attributes
	* @see MutableAttributeSet#removeAttributes
	*/
	@:overload public function removeAttributes(attrs : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Sets the resolving parent.
	*
	* @param parent the parent, null if none
	* @see MutableAttributeSet#setResolveParent
	*/
	@:overload public function setResolveParent(parent : javax.swing.text.AttributeSet) : Void;
	
	/**
	* The change listeners for the model.
	*/
	private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Only one ChangeEvent is needed per model instance since the
	* event's only (read-only) state is the source property.  The source
	* of events generated here is always "this".
	*/
	@:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	
}
