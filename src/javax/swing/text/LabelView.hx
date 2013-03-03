package javax.swing.text;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A <code>LabelView</code> is a styled chunk of text
* that represents a view mapped over an element in the
* text model.  It caches the character level attributes
* used for rendering.
*
* @author Timothy Prinzing
*/
extern class LabelView extends javax.swing.text.GlyphView implements javax.swing.text.TabableView
{
	/**
	* Constructs a new view wrapped on an element.
	*
	* @param elem the element
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Sets whether or not the view is underlined.
	* Note that this setter is protected and is really
	* only meant if you need to update some additional
	* state when set.
	*
	* @param u true if the view is underlined, otherwise
	*          false
	* @see #isUnderline
	*/
	@:overload @:protected private function setUnderline(u : Bool) : Void;
	
	/**
	* Sets whether or not the view has a strike/line
	* through it.
	* Note that this setter is protected and is really
	* only meant if you need to update some additional
	* state when set.
	*
	* @param s true if the view has a strike/line
	*          through it, otherwise false
	* @see #isStrikeThrough
	*/
	@:overload @:protected private function setStrikeThrough(s : Bool) : Void;
	
	/**
	* Sets whether or not the view represents a
	* superscript.
	* Note that this setter is protected and is really
	* only meant if you need to update some additional
	* state when set.
	*
	* @param s true if the view represents a
	*          superscript, otherwise false
	* @see #isSuperscript
	*/
	@:overload @:protected private function setSuperscript(s : Bool) : Void;
	
	/**
	* Sets whether or not the view represents a
	* subscript.
	* Note that this setter is protected and is really
	* only meant if you need to update some additional
	* state when set.
	*
	* @param s true if the view represents a
	*          subscript, otherwise false
	* @see #isSubscript
	*/
	@:overload @:protected private function setSubscript(s : Bool) : Void;
	
	/**
	* Sets the background color for the view. This method is typically
	* invoked as part of configuring this <code>View</code>. If you need
	* to customize the background color you should override
	* <code>setPropertiesFromAttributes</code> and invoke this method. A
	* value of null indicates no background should be rendered, so that the
	* background of the parent <code>View</code> will show through.
	*
	* @param bg background color, or null
	* @see #setPropertiesFromAttributes
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function setBackground(bg : java.awt.Color) : Void;
	
	/**
	* Sets the cached properties from the attributes.
	*/
	@:overload @:protected private function setPropertiesFromAttributes() : Void;
	
	/**
	* Fetches the <code>FontMetrics</code> used for this view.
	* @deprecated FontMetrics are not used for glyph rendering
	*  when running in the JDK.
	*/
	@:overload @:protected private function getFontMetrics() : java.awt.FontMetrics;
	
	/**
	* Fetches the background color to use to render the glyphs.
	* This is implemented to return a cached background color,
	* which defaults to <code>null</code>.
	*
	* @return the cached background color
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getBackground() : java.awt.Color;
	
	/**
	* Fetches the foreground color to use to render the glyphs.
	* This is implemented to return a cached foreground color,
	* which defaults to <code>null</code>.
	*
	* @return the cached foreground color
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getForeground() : java.awt.Color;
	
	/**
	* Fetches the font that the glyphs should be based upon.
	* This is implemented to return a cached font.
	*
	* @return the cached font
	*/
	@:overload @:public override public function getFont() : java.awt.Font;
	
	/**
	* Determines if the glyphs should be underlined.  If true,
	* an underline should be drawn through the baseline.  This
	* is implemented to return the cached underline property.
	*
	* <p>When you request this property, <code>LabelView</code>
	* re-syncs its state with the properties of the
	* <code>Element</code>'s <code>AttributeSet</code>.
	* If <code>Element</code>'s <code>AttributeSet</code>
	* does not have this property set, it will revert to false.
	*
	* @return the value of the cached
	*     <code>underline</code> property
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function isUnderline() : Bool;
	
	/**
	* Determines if the glyphs should have a strikethrough
	* line.  If true, a line should be drawn through the center
	* of the glyphs.  This is implemented to return the
	* cached <code>strikeThrough</code> property.
	*
	* <p>When you request this property, <code>LabelView</code>
	* re-syncs its state with the properties of the
	* <code>Element</code>'s <code>AttributeSet</code>.
	* If <code>Element</code>'s <code>AttributeSet</code>
	* does not have this property set, it will revert to false.
	*
	* @return the value of the cached
	*     <code>strikeThrough</code> property
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function isStrikeThrough() : Bool;
	
	/**
	* Determines if the glyphs should be rendered as superscript.
	* @return the value of the cached subscript property
	*
	* <p>When you request this property, <code>LabelView</code>
	* re-syncs its state with the properties of the
	* <code>Element</code>'s <code>AttributeSet</code>.
	* If <code>Element</code>'s <code>AttributeSet</code>
	* does not have this property set, it will revert to false.
	*
	* @return the value of the cached
	*     <code>subscript</code> property
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function isSubscript() : Bool;
	
	/**
	* Determines if the glyphs should be rendered as subscript.
	*
	* <p>When you request this property, <code>LabelView</code>
	* re-syncs its state with the properties of the
	* <code>Element</code>'s <code>AttributeSet</code>.
	* If <code>Element</code>'s <code>AttributeSet</code>
	* does not have this property set, it will revert to false.
	*
	* @return the value of the cached
	*     <code>superscript</code> property
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function isSuperscript() : Bool;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload @:public override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
