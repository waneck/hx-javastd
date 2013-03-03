package javax.swing.plaf.synth;
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
extern class SynthStyle
{
	/**
	* Constructs a SynthStyle.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the <code>SynthGraphicUtils</code> for the specified context.
	*
	* @param context SynthContext identifying requester
	* @return SynthGraphicsUtils
	*/
	@:overload @:public public function getGraphicsUtils(context : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthGraphicsUtils;
	
	/**
	* Returns the color for the specified state. This gives precedence to
	* foreground and background of the <code>JComponent</code>. If the
	* <code>Color</code> from the <code>JComponent</code> is not appropriate,
	* or not used, this will invoke <code>getColorForState</code>. Subclasses
	* should generally not have to override this, instead override
	* {@link #getColorForState}.
	*
	* @param context SynthContext identifying requester
	* @param type Type of color being requested.
	* @return Color
	*/
	@:overload @:public public function getColor(context : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	/**
	* Returns the color for the specified state. This should NOT call any
	* methods on the <code>JComponent</code>.
	*
	* @param context SynthContext identifying requester
	* @param type Type of color being requested.
	* @return Color to render with
	*/
	@:overload @:protected @:abstract private function getColorForState(context : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	/**
	* Returns the Font for the specified state. This redirects to the
	* <code>JComponent</code> from the <code>context</code> as necessary.
	* If this does not redirect
	* to the JComponent {@link #getFontForState} is invoked.
	*
	* @param context SynthContext identifying requester
	* @return Font to render with
	*/
	@:overload @:public public function getFont(context : javax.swing.plaf.synth.SynthContext) : java.awt.Font;
	
	/**
	* Returns the font for the specified state. This should NOT call any
	* method on the <code>JComponent</code>.
	*
	* @param context SynthContext identifying requester
	* @return Font to render with
	*/
	@:overload @:protected @:abstract private function getFontForState(context : javax.swing.plaf.synth.SynthContext) : java.awt.Font;
	
	/**
	* Returns the Insets that are used to calculate sizing information.
	*
	* @param context SynthContext identifying requester
	* @param insets Insets to place return value in.
	* @return Sizing Insets.
	*/
	@:overload @:public public function getInsets(context : javax.swing.plaf.synth.SynthContext, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the <code>SynthPainter</code> that will be used for painting.
	* This may return null.
	*
	* @param context SynthContext identifying requester
	* @return SynthPainter to use
	*/
	@:overload @:public public function getPainter(context : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthPainter;
	
	/**
	* Returns true if the region is opaque.
	*
	* @param context SynthContext identifying requester
	* @return true if region is opaque.
	*/
	@:overload @:public public function isOpaque(context : javax.swing.plaf.synth.SynthContext) : Bool;
	
	/**
	* Getter for a region specific style property.
	*
	* @param context SynthContext identifying requester
	* @param key Property being requested.
	* @return Value of the named property
	*/
	@:overload @:public public function get(context : javax.swing.plaf.synth.SynthContext, key : Dynamic) : Dynamic;
	
	/**
	* Installs the necessary state from this Style on the
	* <code>JComponent</code> from <code>context</code>.
	*
	* @param context SynthContext identifying component to install properties
	*        to.
	*/
	@:overload @:public public function installDefaults(context : javax.swing.plaf.synth.SynthContext) : Void;
	
	/**
	* Uninstalls any state that this style installed on
	* the <code>JComponent</code> from <code>context</code>.
	* <p>
	* Styles should NOT depend upon this being called, in certain cases
	* it may never be called.
	*
	* @param context SynthContext identifying component to install properties
	*        to.
	*/
	@:overload @:public public function uninstallDefaults(context : javax.swing.plaf.synth.SynthContext) : Void;
	
	/**
	* Convenience method to get a specific style property whose value is
	* a <code>Number</code>. If the value is a <code>Number</code>,
	* <code>intValue</code> is returned, otherwise <code>defaultValue</code>
	* is returned.
	*
	* @param context SynthContext identifying requester
	* @param key Property being requested.
	* @param defaultValue Value to return if the property has not been
	*        specified, or is not a Number
	* @return Value of the named property
	*/
	@:overload @:public public function getInt(context : javax.swing.plaf.synth.SynthContext, key : Dynamic, defaultValue : Int) : Int;
	
	/**
	* Convenience method to get a specific style property whose value is
	* an Boolean.
	*
	* @param context SynthContext identifying requester
	* @param key Property being requested.
	* @param defaultValue Value to return if the property has not been
	*        specified, or is not a Boolean
	* @return Value of the named property
	*/
	@:overload @:public public function getBoolean(context : javax.swing.plaf.synth.SynthContext, key : Dynamic, defaultValue : Bool) : Bool;
	
	/**
	* Convenience method to get a specific style property whose value is
	* an Icon.
	*
	* @param context SynthContext identifying requester
	* @param key Property being requested.
	* @return Value of the named property, or null if not specified
	*/
	@:overload @:public public function getIcon(context : javax.swing.plaf.synth.SynthContext, key : Dynamic) : javax.swing.Icon;
	
	/**
	* Convenience method to get a specific style property whose value is
	* a String.
	*
	* @param context SynthContext identifying requester
	* @param key Property being requested.
	* @param defaultValue Value to return if the property has not been
	*        specified, or is not a String
	* @return Value of the named property
	*/
	@:overload @:public public function getString(context : javax.swing.plaf.synth.SynthContext, key : Dynamic, defaultValue : String) : String;
	
	
}
