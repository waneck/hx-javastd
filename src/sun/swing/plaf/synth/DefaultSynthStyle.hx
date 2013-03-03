package sun.swing.plaf.synth;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Default implementation of SynthStyle. Has setters for the various
* SynthStyle methods. Many of the properties can be specified for all states,
* using SynthStyle directly, or a specific state using one of the StateInfo
* methods.
* <p>
* Beyond the constructor a subclass should override the <code>addTo</code>
* and <code>clone</code> methods, these are used when the Styles are being
* merged into a resulting style.
*
* @author Scott Violet
*/
extern class DefaultSynthStyle extends javax.swing.plaf.synth.SynthStyle implements java.lang.Cloneable
{
	/**
	* Nullary constructor, intended for subclassers.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new DefaultSynthStyle that is a copy of the passed in
	* style. Any StateInfo's of the passed in style are clonsed as well.
	*
	* @param style Style to duplicate
	*/
	@:overload @:public public function new(style : sun.swing.plaf.synth.DefaultSynthStyle) : Void;
	
	/**
	* Creates a new DefaultSynthStyle.
	*
	* @param insets Insets for the Style
	* @param opaque Whether or not the background is completely painted in
	*        an opaque color
	* @param states StateInfos describing properties per state
	* @param data Style specific data.
	*/
	@:overload @:public public function new(insets : java.awt.Insets, opaque : Bool, states : java.NativeArray<sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo>, data : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload @:public override public function getColor(context : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	@:overload @:public public function getColor(c : javax.swing.JComponent, id : javax.swing.plaf.synth.Region, state : Int, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	@:overload @:protected override private function getColorForState(context : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	/**
	* Returns the color for the specified state.
	*
	* @param c JComponent the style is associated with
	* @param id Region identifier
	* @param state State of the region.
	* @param type Type of color being requested.
	* @return Color to render with
	*/
	@:overload @:protected private function getColorForState(c : javax.swing.JComponent, id : javax.swing.plaf.synth.Region, state : Int, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	/**
	* Sets the font that is used if there is no matching StateInfo, or
	* it does not define a font.
	*
	* @param font Font to use for rendering
	*/
	@:overload @:public public function setFont(font : java.awt.Font) : Void;
	
	@:overload @:public override public function getFont(state : javax.swing.plaf.synth.SynthContext) : java.awt.Font;
	
	@:overload @:public public function getFont(c : javax.swing.JComponent, id : javax.swing.plaf.synth.Region, state : Int) : java.awt.Font;
	
	/**
	* Returns the font for the specified state. This should NOT callback
	* to the JComponent.
	*
	* @param c JComponent the style is associated with
	* @param id Region identifier
	* @param state State of the region.
	* @return Font to render with
	*/
	@:overload @:protected private function getFontForState(c : javax.swing.JComponent, id : javax.swing.plaf.synth.Region, state : Int) : java.awt.Font;
	
	@:overload @:protected override private function getFontForState(context : javax.swing.plaf.synth.SynthContext) : java.awt.Font;
	
	/**
	* Sets the SynthGraphicsUtils that will be used for rendering.
	*
	* @param graphics SynthGraphics
	*/
	@:overload @:public public function setGraphicsUtils(graphics : javax.swing.plaf.synth.SynthGraphicsUtils) : Void;
	
	/**
	* Returns a SynthGraphicsUtils.
	*
	* @param context SynthContext indentifying requestor
	* @return SynthGraphicsUtils
	*/
	@:overload @:public override public function getGraphicsUtils(context : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthGraphicsUtils;
	
	/**
	* Sets the insets.
	*
	* @param Insets.
	*/
	@:overload @:public public function setInsets(insets : java.awt.Insets) : Void;
	
	/**
	* Returns the Insets. If <code>to</code> is non-null the resulting
	* insets will be placed in it, otherwise a new Insets object will be
	* created and returned.
	*
	* @param context SynthContext indentifying requestor
	* @param to Where to place Insets
	* @return Insets.
	*/
	@:overload @:public override public function getInsets(state : javax.swing.plaf.synth.SynthContext, to : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Sets the Painter to use for the border.
	*
	* @param painter Painter for the Border.
	*/
	@:overload @:public public function setPainter(painter : javax.swing.plaf.synth.SynthPainter) : Void;
	
	/**
	* Returns the Painter for the passed in Component. This may return null.
	*
	* @param ss SynthContext indentifying requestor
	* @return Painter for the border
	*/
	@:overload @:public override public function getPainter(ss : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthPainter;
	
	/**
	* Sets whether or not the JComponent should be opaque.
	*
	* @param opaque Whether or not the JComponent should be opaque.
	*/
	@:overload @:public public function setOpaque(opaque : Bool) : Void;
	
	/**
	* Returns the value to initialize the opacity property of the Component
	* to. A Style should NOT assume the opacity will remain this value, the
	* developer may reset it or override it.
	*
	* @param ss SynthContext indentifying requestor
	* @return opaque Whether or not the JComponent is opaque.
	*/
	@:overload @:public override public function isOpaque(ss : javax.swing.plaf.synth.SynthContext) : Bool;
	
	/**
	* Sets style specific values. This does NOT copy the data, it
	* assigns it directly to this Style.
	*
	* @param data Style specific values
	*/
	@:overload @:public public function setData(data : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns the style specific data.
	*
	* @return Style specific data.
	*/
	@:overload @:public public function getData() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Getter for a region specific style property.
	*
	* @param state SynthContext indentifying requestor
	* @param key Property being requested.
	* @return Value of the named property
	*/
	@:overload @:public override public function get(state : javax.swing.plaf.synth.SynthContext, key : Dynamic) : Dynamic;
	
	/**
	* Returns the default value for a particular property.  This is only
	* invoked if this style doesn't define a property for <code>key</code>.
	*
	* @param state SynthContext indentifying requestor
	* @param key Property being requested.
	* @return Value of the named property
	*/
	@:overload @:public public function getDefaultValue(context : javax.swing.plaf.synth.SynthContext, key : Dynamic) : Dynamic;
	
	/**
	* Creates a clone of this style.
	*
	* @return Clone of this style
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Merges the contents of this Style with that of the passed in Style,
	* returning the resulting merged syle. Properties of this
	* <code>DefaultSynthStyle</code> will take precedence over those of the
	* passed in <code>DefaultSynthStyle</code>. For example, if this
	* style specifics a non-null font, the returned style will have its
	* font so to that regardless of the <code>style</code>'s font.
	*
	* @param style Style to add our styles to
	* @return Merged style.
	*/
	@:overload @:public public function addTo(style : sun.swing.plaf.synth.DefaultSynthStyle) : sun.swing.plaf.synth.DefaultSynthStyle;
	
	/**
	* Sets the array of StateInfo's which are used to specify properties
	* specific to a particular style.
	*
	* @param states StateInfos
	*/
	@:overload @:public public function setStateInfo(states : java.NativeArray<sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo>) : Void;
	
	/**
	* Returns the array of StateInfo's that that are used to specify
	* properties specific to a particular style.
	*
	* @return Array of StateInfos.
	*/
	@:overload @:public public function getStateInfo() : java.NativeArray<sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo>;
	
	/**
	* Returns the best matching StateInfo for a particular state.
	*
	* @param state Component state.
	* @return Best matching StateInfo, or null
	*/
	@:overload @:public public function getStateInfo(state : Int) : sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* StateInfo represents Style information specific to the state of
* a component.
*/
@:native('sun$swing$plaf$synth$DefaultSynthStyle$StateInfo') extern class DefaultSynthStyle_StateInfo
{
	/**
	* Creates a new StateInfo.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new StateInfo with the specified properties
	*
	* @param state Component state(s) that this StateInfo should be used
	* for
	* @param painter Painter responsible for rendering
	* @param bgPainter Painter responsible for rendering the background
	* @param font Font for this state
	* @param colors Colors for this state
	*/
	@:overload @:public public function new(state : Int, font : java.awt.Font, colors : java.NativeArray<java.awt.Color>) : Void;
	
	/**
	* Creates a new StateInfo that is a copy of the passed in
	* StateInfo.
	*
	* @param info StateInfo to copy.
	*/
	@:overload @:public public function new(info : sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo) : Void;
	
	@:overload @:public public function getData() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:public public function setData(data : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Sets the font for this state.
	*
	* @param font Font to use for rendering
	*/
	@:overload @:public public function setFont(font : java.awt.Font) : Void;
	
	/**
	* Returns the font for this state.
	*
	* @return Returns the font to use for rendering this state
	*/
	@:overload @:public public function getFont() : java.awt.Font;
	
	/**
	* Sets the array of colors to use for rendering this state. This
	* is indexed by <code>ColorType.getID()</code>.
	*
	* @param colors Array of colors
	*/
	@:overload @:public public function setColors(colors : java.NativeArray<java.awt.Color>) : Void;
	
	/**
	* Returns the array of colors to use for rendering this state. This
	* is indexed by <code>ColorType.getID()</code>.
	*
	* @return Array of colors
	*/
	@:overload @:public public function getColors() : java.NativeArray<java.awt.Color>;
	
	/**
	* Returns the Color to used for the specified ColorType.
	*
	* @return Color.
	*/
	@:overload @:public public function getColor(type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	/**
	* Merges the contents of this StateInfo with that of the passed in
	* StateInfo, returning the resulting merged StateInfo. Properties of
	* this <code>StateInfo</code> will take precedence over those of the
	* passed in <code>StateInfo</code>. For example, if this
	* StateInfo specifics a non-null font, the returned StateInfo will
	* have its font so to that regardless of the <code>StateInfo</code>'s
	* font.
	*
	* @param info StateInfo to add our styles to
	* @return Merged StateInfo.
	*/
	@:overload @:public public function addTo(info : sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo) : sun.swing.plaf.synth.DefaultSynthStyle.DefaultSynthStyle_StateInfo;
	
	/**
	* Sets the state this StateInfo corresponds to.
	*
	* @see SynthConstants
	* @param state info.
	*/
	@:overload @:public public function setComponentState(state : Int) : Void;
	
	/**
	* Returns the state this StateInfo corresponds to.
	*
	* @see SynthConstants
	* @return state info.
	*/
	@:overload @:public public function getComponentState() : Int;
	
	/**
	* Creates and returns a copy of this StateInfo.
	*
	* @return Copy of this StateInfo.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}
