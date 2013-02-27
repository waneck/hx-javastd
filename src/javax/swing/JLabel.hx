package javax.swing;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
* A display area for a short text string or an image,
* or both.
* A label does not react to input events.
* As a result, it cannot get the keyboard focus.
* A label can, however, display a keyboard alternative
* as a convenience for a nearby component
* that has a keyboard alternative but can't display it.
* <p>
* A <code>JLabel</code> object can display
* either text, an image, or both.
* You can specify where in the label's display area
* the label's contents are aligned
* by setting the vertical and horizontal alignment.
* By default, labels are vertically centered
* in their display area.
* Text-only labels are leading edge aligned, by default;
* image-only labels are horizontally centered, by default.
* <p>
* You can also specify the position of the text
* relative to the image.
* By default, text is on the trailing edge of the image,
* with the text and image vertically aligned.
* <p>
* A label's leading and trailing edge are determined from the value of its
* {@link java.awt.ComponentOrientation} property.  At present, the default
* ComponentOrientation setting maps the leading edge to left and the trailing
* edge to right.
*
* <p>
* Finally, you can use the <code>setIconTextGap</code> method
* to specify how many pixels
* should appear between the text and the image.
* The default is 4 pixels.
* <p>
* See <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/label.html">How to Use Labels</a>
* in <em>The Java Tutorial</em>
* for further documentation.
* <p>
* <strong>Warning:</strong> Swing is not thread safe. For more
* information see <a
* href="package-summary.html#threading">Swing's Threading
* Policy</a>.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @beaninfo
*   attribute: isContainer false
* description: A component that displays a short string and an icon.
*
* @author Hans Muller
*/
extern class JLabel extends javax.swing.JComponent implements javax.swing.SwingConstants implements javax.accessibility.Accessible
{
	private var labelFor : java.awt.Component;
	
	/**
	* Creates a <code>JLabel</code> instance with the specified
	* text, image, and horizontal alignment.
	* The label is centered vertically in its display area.
	* The text is on the trailing edge of the image.
	*
	* @param text  The text to be displayed by the label.
	* @param icon  The image to be displayed by the label.
	* @param horizontalAlignment  One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code>,
	*           <code>RIGHT</code>,
	*           <code>LEADING</code> or
	*           <code>TRAILING</code>.
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon, horizontalAlignment : Int) : Void;
	
	/**
	* Creates a <code>JLabel</code> instance with the specified
	* text and horizontal alignment.
	* The label is centered vertically in its display area.
	*
	* @param text  The text to be displayed by the label.
	* @param horizontalAlignment  One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code>,
	*           <code>RIGHT</code>,
	*           <code>LEADING</code> or
	*           <code>TRAILING</code>.
	*/
	@:overload public function new(text : String, horizontalAlignment : Int) : Void;
	
	/**
	* Creates a <code>JLabel</code> instance with the specified text.
	* The label is aligned against the leading edge of its display area,
	* and centered vertically.
	*
	* @param text  The text to be displayed by the label.
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Creates a <code>JLabel</code> instance with the specified
	* image and horizontal alignment.
	* The label is centered vertically in its display area.
	*
	* @param image  The image to be displayed by the label.
	* @param horizontalAlignment  One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code>,
	*           <code>RIGHT</code>,
	*           <code>LEADING</code> or
	*           <code>TRAILING</code>.
	*/
	@:overload public function new(image : javax.swing.Icon, horizontalAlignment : Int) : Void;
	
	/**
	* Creates a <code>JLabel</code> instance with the specified image.
	* The label is centered vertically and horizontally
	* in its display area.
	*
	* @param image  The image to be displayed by the label.
	*/
	@:overload public function new(image : javax.swing.Icon) : Void;
	
	/**
	* Creates a <code>JLabel</code> instance with
	* no image and with an empty string for the title.
	* The label is centered vertically
	* in its display area.
	* The label's contents, once set, will be displayed on the leading edge
	* of the label's display area.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return LabelUI object
	*/
	@:overload public function getUI() : javax.swing.plaf.LabelUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the LabelUI L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.LabelUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns a string that specifies the name of the l&f class
	* that renders this component.
	*
	* @return String "LabelUI"
	*
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns the text string that the label displays.
	*
	* @return a String
	* @see #setText
	*/
	@:overload public function getText() : String;
	
	/**
	* Defines the single line of text this component will display.  If
	* the value of text is null or empty string, nothing is displayed.
	* <p>
	* The default value of this property is null.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @see #setVerticalTextPosition
	* @see #setHorizontalTextPosition
	* @see #setIcon
	* @beaninfo
	*    preferred: true
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Defines the single line of text this component will display.
	*/
	@:overload public function setText(text : String) : Void;
	
	/**
	* Returns the graphic image (glyph, icon) that the label displays.
	*
	* @return an Icon
	* @see #setIcon
	*/
	@:overload public function getIcon() : javax.swing.Icon;
	
	/**
	* Defines the icon this component will display.  If
	* the value of icon is null, nothing is displayed.
	* <p>
	* The default value of this property is null.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @see #setVerticalTextPosition
	* @see #setHorizontalTextPosition
	* @see #getIcon
	* @beaninfo
	*    preferred: true
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The icon this component will display.
	*/
	@:overload public function setIcon(icon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon used by the label when it's disabled.
	* If no disabled icon has been set this will forward the call to
	* the look and feel to construct an appropriate disabled Icon.
	* <p>
	* Some look and feels might not render the disabled Icon, in which
	* case they will ignore this.
	*
	* @return the <code>disabledIcon</code> property
	* @see #setDisabledIcon
	* @see javax.swing.LookAndFeel#getDisabledIcon
	* @see ImageIcon
	*/
	@:overload public function getDisabledIcon() : javax.swing.Icon;
	
	/**
	* Set the icon to be displayed if this JLabel is "disabled"
	* (JLabel.setEnabled(false)).
	* <p>
	* The default value of this property is null.
	*
	* @param disabledIcon the Icon to display when the component is disabled
	* @see #getDisabledIcon
	* @see #setEnabled
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The icon to display if the label is disabled.
	*/
	@:overload public function setDisabledIcon(disabledIcon : javax.swing.Icon) : Void;
	
	/**
	* Specify a keycode that indicates a mnemonic key.
	* This property is used when the label is part of a larger component.
	* If the labelFor property of the label is not null, the label will
	* call the requestFocus method of the component specified by the
	* labelFor property when the mnemonic is activated.
	*
	* @see #getLabelFor
	* @see #setLabelFor
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The mnemonic keycode.
	*/
	@:overload public function setDisplayedMnemonic(key : Int) : Void;
	
	/**
	* Specifies the displayedMnemonic as a char value.
	*
	* @param aChar  a char specifying the mnemonic to display
	* @see #setDisplayedMnemonic(int)
	*/
	@:overload public function setDisplayedMnemonic(aChar : java.StdTypes.Char16) : Void;
	
	/**
	* Return the keycode that indicates a mnemonic key.
	* This property is used when the label is part of a larger component.
	* If the labelFor property of the label is not null, the label will
	* call the requestFocus method of the component specified by the
	* labelFor property when the mnemonic is activated.
	*
	* @return int value for the mnemonic key
	*
	* @see #getLabelFor
	* @see #setLabelFor
	*/
	@:overload public function getDisplayedMnemonic() : Int;
	
	/**
	* Provides a hint to the look and feel as to which character in the
	* text should be decorated to represent the mnemonic. Not all look and
	* feels may support this. A value of -1 indicates either there is no
	* mnemonic, the mnemonic character is not contained in the string, or
	* the developer does not wish the mnemonic to be displayed.
	* <p>
	* The value of this is updated as the properties relating to the
	* mnemonic change (such as the mnemonic itself, the text...).
	* You should only ever have to call this if
	* you do not wish the default character to be underlined. For example, if
	* the text was 'Save As', with a mnemonic of 'a', and you wanted the 'A'
	* to be decorated, as 'Save <u>A</u>s', you would have to invoke
	* <code>setDisplayedMnemonicIndex(5)</code> after invoking
	* <code>setDisplayedMnemonic(KeyEvent.VK_A)</code>.
	*
	* @since 1.4
	* @param index Index into the String to underline
	* @exception IllegalArgumentException will be thrown if <code>index</code
	*            is >= length of the text, or < -1
	*
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: the index into the String to draw the keyboard character
	*               mnemonic at
	*/
	@:require(java4) @:overload public function setDisplayedMnemonicIndex(index : Int) : Void;
	
	/**
	* Returns the character, as an index, that the look and feel should
	* provide decoration for as representing the mnemonic character.
	*
	* @since 1.4
	* @return index representing mnemonic character
	* @see #setDisplayedMnemonicIndex
	*/
	@:require(java4) @:overload public function getDisplayedMnemonicIndex() : Int;
	
	/**
	* Verify that key is a legal value for the horizontalAlignment properties.
	*
	* @param key the property value to check
	* @param message the IllegalArgumentException detail message
	* @exception IllegalArgumentException if key isn't LEFT, CENTER, RIGHT,
	* LEADING or TRAILING.
	* @see #setHorizontalTextPosition
	* @see #setHorizontalAlignment
	*/
	@:overload private function checkHorizontalKey(key : Int, message : String) : Int;
	
	/**
	* Verify that key is a legal value for the
	* verticalAlignment or verticalTextPosition properties.
	*
	* @param key the property value to check
	* @param message the IllegalArgumentException detail message
	* @exception IllegalArgumentException if key isn't TOP, CENTER, or BOTTOM.
	* @see #setVerticalAlignment
	* @see #setVerticalTextPosition
	*/
	@:overload private function checkVerticalKey(key : Int, message : String) : Int;
	
	/**
	* Returns the amount of space between the text and the icon
	* displayed in this label.
	*
	* @return an int equal to the number of pixels between the text
	*         and the icon.
	* @see #setIconTextGap
	*/
	@:overload public function getIconTextGap() : Int;
	
	/**
	* If both the icon and text properties are set, this property
	* defines the space between them.
	* <p>
	* The default value of this property is 4 pixels.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @see #getIconTextGap
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: If both the icon and text properties are set, this
	*               property defines the space between them.
	*/
	@:overload public function setIconTextGap(iconTextGap : Int) : Void;
	
	/**
	* Returns the alignment of the label's contents along the Y axis.
	*
	* @return   The value of the verticalAlignment property, one of the
	*           following constants defined in <code>SwingConstants</code>:
	*           <code>TOP</code>,
	*           <code>CENTER</code>, or
	*           <code>BOTTOM</code>.
	*
	* @see SwingConstants
	* @see #setVerticalAlignment
	*/
	@:overload public function getVerticalAlignment() : Int;
	
	/**
	* Sets the alignment of the label's contents along the Y axis.
	* <p>
	* The default value of this property is CENTER.
	*
	* @param alignment One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>TOP</code>,
	*           <code>CENTER</code> (the default), or
	*           <code>BOTTOM</code>.
	*
	* @see SwingConstants
	* @see #getVerticalAlignment
	* @beaninfo
	*        bound: true
	*         enum: TOP    SwingConstants.TOP
	*               CENTER SwingConstants.CENTER
	*               BOTTOM SwingConstants.BOTTOM
	*    attribute: visualUpdate true
	*  description: The alignment of the label's contents along the Y axis.
	*/
	@:overload public function setVerticalAlignment(alignment : Int) : Void;
	
	/**
	* Returns the alignment of the label's contents along the X axis.
	*
	* @return   The value of the horizontalAlignment property, one of the
	*           following constants defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code>,
	*           <code>RIGHT</code>,
	*           <code>LEADING</code> or
	*           <code>TRAILING</code>.
	*
	* @see #setHorizontalAlignment
	* @see SwingConstants
	*/
	@:overload public function getHorizontalAlignment() : Int;
	
	/**
	* Sets the alignment of the label's contents along the X axis.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @param alignment  One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code> (the default for image-only labels),
	*           <code>RIGHT</code>,
	*           <code>LEADING</code> (the default for text-only labels) or
	*           <code>TRAILING</code>.
	*
	* @see SwingConstants
	* @see #getHorizontalAlignment
	* @beaninfo
	*        bound: true
	*         enum: LEFT     SwingConstants.LEFT
	*               CENTER   SwingConstants.CENTER
	*               RIGHT    SwingConstants.RIGHT
	*               LEADING  SwingConstants.LEADING
	*               TRAILING SwingConstants.TRAILING
	*    attribute: visualUpdate true
	*  description: The alignment of the label's content along the X axis.
	*/
	@:overload public function setHorizontalAlignment(alignment : Int) : Void;
	
	/**
	* Returns the vertical position of the label's text,
	* relative to its image.
	*
	* @return   One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>TOP</code>,
	*           <code>CENTER</code>, or
	*           <code>BOTTOM</code>.
	*
	* @see #setVerticalTextPosition
	* @see SwingConstants
	*/
	@:overload public function getVerticalTextPosition() : Int;
	
	/**
	* Sets the vertical position of the label's text,
	* relative to its image.
	* <p>
	* The default value of this property is CENTER.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @param textPosition  One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>TOP</code>,
	*           <code>CENTER</code> (the default), or
	*           <code>BOTTOM</code>.
	*
	* @see SwingConstants
	* @see #getVerticalTextPosition
	* @beaninfo
	*        bound: true
	*         enum: TOP    SwingConstants.TOP
	*               CENTER SwingConstants.CENTER
	*               BOTTOM SwingConstants.BOTTOM
	*       expert: true
	*    attribute: visualUpdate true
	*  description: The vertical position of the text relative to it's image.
	*/
	@:overload public function setVerticalTextPosition(textPosition : Int) : Void;
	
	/**
	* Returns the horizontal position of the label's text,
	* relative to its image.
	*
	* @return   One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code>,
	*           <code>RIGHT</code>,
	*           <code>LEADING</code> or
	*           <code>TRAILING</code>.
	*
	* @see SwingConstants
	*/
	@:overload public function getHorizontalTextPosition() : Int;
	
	/**
	* Sets the horizontal position of the label's text,
	* relative to its image.
	*
	* @param textPosition  One of the following constants
	*           defined in <code>SwingConstants</code>:
	*           <code>LEFT</code>,
	*           <code>CENTER</code>,
	*           <code>RIGHT</code>,
	*           <code>LEADING</code>, or
	*           <code>TRAILING</code> (the default).
	* @exception IllegalArgumentException
	*
	* @see SwingConstants
	* @beaninfo
	*       expert: true
	*        bound: true
	*         enum: LEFT     SwingConstants.LEFT
	*               CENTER   SwingConstants.CENTER
	*               RIGHT    SwingConstants.RIGHT
	*               LEADING  SwingConstants.LEADING
	*               TRAILING SwingConstants.TRAILING
	*    attribute: visualUpdate true
	*  description: The horizontal position of the label's text,
	*               relative to its image.
	*/
	@:overload public function setHorizontalTextPosition(textPosition : Int) : Void;
	
	/**
	* This is overridden to return false if the current Icon's Image is
	* not equal to the passed in Image <code>img</code>.
	*
	* @see     java.awt.image.ImageObserver
	* @see     java.awt.Component#imageUpdate(java.awt.Image, int, int, int, int, int)
	*/
	@:overload override public function imageUpdate(img : java.awt.Image, infoflags : Int, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Returns a string representation of this JLabel. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JLabel.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Get the component this is labelling.
	*
	* @return the Component this is labelling.  Can be null if this
	* does not label a Component.  If the displayedMnemonic
	* property is set and the labelFor property is also set, the label
	* will call the requestFocus method of the component specified by the
	* labelFor property when the mnemonic is activated.
	*
	* @see #getDisplayedMnemonic
	* @see #setDisplayedMnemonic
	*/
	@:overload public function getLabelFor() : java.awt.Component;
	
	/**
	* Set the component this is labelling.  Can be null if this does not
	* label a Component.  If the displayedMnemonic property is set
	* and the labelFor property is also set, the label will
	* call the requestFocus method of the component specified by the
	* labelFor property when the mnemonic is activated.
	*
	* @param c  the Component this label is for, or null if the label is
	*           not the label for a component
	*
	* @see #getDisplayedMnemonic
	* @see #setDisplayedMnemonic
	*
	* @beaninfo
	*        bound: true
	*  description: The component this is labelling.
	*/
	@:overload public function setLabelFor(c : java.awt.Component) : Void;
	
	/**
	* Get the AccessibleContext of this object
	*
	* @return the AccessibleContext of this object
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this Label.
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* The class used to obtain the accessible role for this object.
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
@:native('javax$swing$JLabel$AccessibleJLabel') extern class JLabel_AccessibleJLabel extends AccessibleJComponent implements javax.accessibility.AccessibleText implements javax.accessibility.AccessibleExtendedComponent
{
	/**
	* Get the accessible name of this object.
	*
	* @return the localized name of the object -- can be null if this
	* object does not have a name
	* @see AccessibleContext#setAccessibleName
	*/
	@:overload public function getAccessibleName() : String;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the AccessibleIcons associated with this object if one
	* or more exist.  Otherwise return null.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleIcon() : java.NativeArray<javax.accessibility.AccessibleIcon>;
	
	/**
	* Get the AccessibleRelationSet associated with this object if one
	* exists.  Otherwise return null.
	* @see AccessibleRelation
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRelationSet() : javax.accessibility.AccessibleRelationSet;
	
	/* AccessibleText ---------- */
	@:overload public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Given a point in local coordinates, return the zero-based index
	* of the character under that Point.  If the point is invalid,
	* this method returns -1.
	*
	* @param p the Point in local coordinates
	* @return the zero-based index of the character under Point p; if
	* Point is invalid returns -1.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getIndexAtPoint(p : java.awt.Point) : Int;
	
	/**
	* Determine the bounding box of the character at the given
	* index into the string.  The bounds are returned in local
	* coordinates.  If the index is invalid an empty rectangle is
	* returned.
	*
	* @param i the index into the String
	* @return the screen coordinates of the character's the bounding box,
	* if index is invalid returns an empty rectangle.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	/**
	* Return the number of characters (valid indicies)
	*
	* @return the number of characters
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCharCount() : Int;
	
	/**
	* Return the zero-based offset of the caret.
	*
	* Note: That to the right of the caret will have the same index
	* value as the offset (the caret is between two characters).
	* @return the zero-based offset of the caret.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCaretPosition() : Int;
	
	/**
	* Returns the String at a given index.
	*
	* @param part the AccessibleText.CHARACTER, AccessibleText.WORD,
	* or AccessibleText.SENTENCE to retrieve
	* @param index an index within the text >= 0
	* @return the letter, word, or sentence,
	*   null for an invalid index or part
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAtIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String after a given index.
	*
	* @param part the AccessibleText.CHARACTER, AccessibleText.WORD,
	* or AccessibleText.SENTENCE to retrieve
	* @param index an index within the text >= 0
	* @return the letter, word, or sentence, null for an invalid
	*  index or part
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAfterIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String before a given index.
	*
	* @param part the AccessibleText.CHARACTER, AccessibleText.WORD,
	*   or AccessibleText.SENTENCE to retrieve
	* @param index an index within the text >= 0
	* @return the letter, word, or sentence, null for an invalid index
	*  or part
	* @since 1.3
	*/
	@:require(java3) @:overload public function getBeforeIndex(part : Int, index : Int) : String;
	
	/**
	* Return the AttributeSet for a given character at a given index
	*
	* @param i the zero-based index into the text
	* @return the AttributeSet of the character
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCharacterAttribute(i : Int) : javax.swing.text.AttributeSet;
	
	/**
	* Returns the start offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into the text of the start of the selection
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectionStart() : Int;
	
	/**
	* Returns the end offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into teh text of the end of the selection
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectionEnd() : Int;
	
	/**
	* Returns the portion of the text that is selected.
	*
	* @return the String portion of the text that is selected
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedText() : String;
	
	/**
	* Returns the tool tip text
	*
	* @return the tool tip text, if supported, of the object;
	* otherwise, null
	* @since 1.4
	*/
	@:require(java4) @:overload public function getToolTipText() : String;
	
	/**
	* Returns the titled border text
	*
	* @return the titled border text, if supported, of the object;
	* otherwise, null
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTitledBorderText() : String;
	
	/**
	* Returns key bindings associated with this object
	*
	* @return the key bindings, if supported, of the object;
	* otherwise, null
	* @see AccessibleKeyBinding
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleKeyBinding() : javax.accessibility.AccessibleKeyBinding;
	
	
}
@:native('javax$swing$JLabel$AccessibleJLabel$LabelKeyBinding') @:internal extern class JLabel_AccessibleJLabel_LabelKeyBinding implements javax.accessibility.AccessibleKeyBinding
{
	/**
	* Returns the number of key bindings for this object
	*
	* @return the zero-based number of key bindings for this object
	*/
	@:overload public function getAccessibleKeyBindingCount() : Int;
	
	/**
	* Returns a key binding for this object.  The value returned is an
	* java.lang.Object which must be cast to appropriate type depending
	* on the underlying implementation of the key.  For example, if the
	* Object returned is a javax.swing.KeyStroke, the user of this
	* method should do the following:
	* <nf><code>
	* Component c = <get the component that has the key bindings>
	* AccessibleContext ac = c.getAccessibleContext();
	* AccessibleKeyBinding akb = ac.getAccessibleKeyBinding();
	* for (int i = 0; i < akb.getAccessibleKeyBindingCount(); i++) {
	*     Object o = akb.getAccessibleKeyBinding(i);
	*     if (o instanceof javax.swing.KeyStroke) {
	*         javax.swing.KeyStroke keyStroke = (javax.swing.KeyStroke)o;
	*         <do something with the key binding>
	*     }
	* }
	* </code></nf>
	*
	* @param i zero-based index of the key bindings
	* @return a javax.lang.Object which specifies the key binding
	* @exception IllegalArgumentException if the index is
	* out of bounds
	* @see #getAccessibleKeyBindingCount
	*/
	@:overload public function getAccessibleKeyBinding(i : Int) : Dynamic;
	
	
}
