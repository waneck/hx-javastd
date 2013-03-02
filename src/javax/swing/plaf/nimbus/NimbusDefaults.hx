package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NimbusDefaults
{
	@:overload public function clearOverridesCache(c : javax.swing.JComponent) : Void;
	
	/**
	* Get a derived color, derived colors are shared instances and will be
	* updated when its parent UIDefault color changes.
	*
	* @param uiDefaultParentName The parent UIDefault key
	* @param hOffset The hue offset
	* @param sOffset The saturation offset
	* @param bOffset The brightness offset
	* @param aOffset The alpha offset
	* @param uiResource True if the derived color should be a UIResource,
	*        false if it should not be a UIResource
	* @return The stored derived color
	*/
	@:overload public function getDerivedColor(parentUin : String, hOffset : Single, sOffset : Single, bOffset : Single, aOffset : Int, uiResource : Bool) : javax.swing.plaf.nimbus.DerivedColor;
	
	
}
/**
* <p>Derives its font value based on a parent font and a set of offsets and
* attributes. This class is an ActiveValue, meaning that it will recompute
* its value each time it is requested from UIDefaults. It is therefore
* recommended to read this value once and cache it in the UI delegate class
* until asked to reinitialize.</p>
*
* <p>To use this class, create an instance with the key of the font in the
* UI defaults table from which to derive this font, along with a size
* offset (if any), and whether it is to be bold, italic, or left in its
* default form.</p>
*/
@:native('javax$swing$plaf$nimbus$NimbusDefaults$DerivedFont') @:internal extern class NimbusDefaults_DerivedFont implements javax.swing.UIDefaults.UIDefaults_ActiveValue
{
	/**
	* Create a new DerivedFont.
	*
	* @param key The UIDefault key associated with this derived font's
	*            parent or source. If this key leads to a null value, or a
	*            value that is not a font, then null will be returned as
	*            the derived font. The key must not be null.
	* @param sizeOffset The size offset, as a percentage, to use. For
	*                   example, if the source font was a 12pt font and the
	*                   sizeOffset were specified as .9, then the new font
	*                   will be 90% of what the source font was, or, 10.8
	*                   pts which is rounded to 11pts. This fractional
	*                   based offset allows for proper font scaling in high
	*                   DPI or large system font scenarios.
	* @param bold Whether the new font should be bold. If null, then this
	*             new font will inherit the bold setting of the source
	*             font.
	* @param italic Whether the new font should be italicized. If null,
	*               then this new font will inherit the italic setting of
	*               the source font.
	*/
	@:overload public function new(key : String, sizeOffset : Single, bold : Null<Bool>, italic : Null<Bool>) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function createValue(defaults : javax.swing.UIDefaults) : Dynamic;
	
	
}
/**
* This class is private because it relies on the constructor of the
* auto-generated AbstractRegionPainter subclasses. Hence, it is not
* generally useful, and is private.
* <p/>
* LazyPainter is a LazyValue class. It will create the
* AbstractRegionPainter lazily, when asked. It uses reflection to load the
* proper class and invoke its constructor.
*/
@:native('javax$swing$plaf$nimbus$NimbusDefaults$LazyPainter') @:internal extern class NimbusDefaults_LazyPainter implements javax.swing.UIDefaults.UIDefaults_LazyValue
{
	@:overload public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
/**
* A class which creates the NimbusStyle associated with it lazily, but also
* manages a lot more information about the style. It is less of a LazyValue
* type of class, and more of an Entry or Item type of class, as it
* represents an entry in the list of LazyStyles in the map m.
*
* The primary responsibilities of this class include:
* <ul>
*   <li>Determining whether a given component/region pair matches this
*       style</li>
*   <li>Splitting the prefix specified in the constructor into its
*       constituent parts to facilitate quicker matching</li>
*   <li>Creating and vending a NimbusStyle lazily.</li>
* </ul>
*/
@:native('javax$swing$plaf$nimbus$NimbusDefaults$LazyStyle') @:internal extern class NimbusDefaults_LazyStyle
{
	
}
@:native('javax$swing$plaf$nimbus$NimbusDefaults$LazyStyle$Part') @:internal extern class NimbusDefaults_LazyStyle_Part
{
	
}
@:native('javax$swing$plaf$nimbus$NimbusDefaults$ColorTree') @:internal extern class NimbusDefaults_ColorTree implements java.beans.PropertyChangeListener
{
	@:overload public function getColor(uin : String) : java.awt.Color;
	
	@:overload public function addColor(uin : String, color : java.awt.Color) : Void;
	
	@:overload public function update() : Void;
	
	@:overload public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$nimbus$NimbusDefaults$ColorTree$Node') @:internal extern class NimbusDefaults_ColorTree_Node
{
	@:overload public function set(color : java.awt.Color, parent : javax.swing.plaf.nimbus.NimbusDefaults.NimbusDefaults_ColorTree_Node) : Void;
	
	@:overload public function update() : Void;
	
	
}
/**
* Listener to update derived colors on UIManager Defaults changes
*/
@:native('javax$swing$plaf$nimbus$NimbusDefaults$DefaultsListener') @:internal extern class NimbusDefaults_DefaultsListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$nimbus$NimbusDefaults$PainterBorder') @:internal extern class NimbusDefaults_PainterBorder implements javax.swing.border.Border implements javax.swing.plaf.UIResource
{
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	
}
