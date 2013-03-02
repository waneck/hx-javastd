package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class NimbusStyle extends javax.swing.plaf.synth.SynthStyle
{
	/* Keys and scales for large/small/mini components, based on Apples sizes */
	public static var LARGE_KEY(default, null) : String;
	
	public static var SMALL_KEY(default, null) : String;
	
	public static var MINI_KEY(default, null) : String;
	
	public static var LARGE_SCALE(default, null) : Float;
	
	public static var SMALL_SCALE(default, null) : Float;
	
	public static var MINI_SCALE(default, null) : Float;
	
	/**
	* @inheritDoc
	*
	* Overridden to cause this style to populate itself with data from
	* UIDefaults, if necessary.
	*/
	@:overload override public function installDefaults(ctx : javax.swing.plaf.synth.SynthContext) : Void;
	
	/**
	* @inheritDoc
	*
	* Overridden to cause this style to populate itself with data from
	* UIDefaults, if necessary.
	*/
	@:overload override public function getInsets(ctx : javax.swing.plaf.synth.SynthContext, _in : java.awt.Insets) : java.awt.Insets;
	
	/**
	* @inheritDoc
	*
	* <p>Overridden to cause this style to populate itself with data from
	* UIDefaults, if necessary.</p>
	*
	* <p>In addition, NimbusStyle handles ColorTypes slightly differently from
	* Synth.</p>
	* <ul>
	*  <li>ColorType.BACKGROUND will equate to the color stored in UIDefaults
	*      named "background".</li>
	*  <li>ColorType.TEXT_BACKGROUND will equate to the color stored in
	*      UIDefaults named "textBackground".</li>
	*  <li>ColorType.FOREGROUND will equate to the color stored in UIDefaults
	*      named "textForeground".</li>
	*  <li>ColorType.TEXT_FOREGROUND will equate to the color stored in
	*      UIDefaults named "textForeground".</li>
	* </ul>
	*/
	@:overload override private function getColorForState(ctx : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	/**
	* @inheritDoc
	*
	* Overridden to cause this style to populate itself with data from
	* UIDefaults, if necessary. If a value named "font" is not found in
	* UIDefaults, then the "defaultFont" font in UIDefaults will be returned
	* instead.
	*/
	@:overload override private function getFontForState(ctx : javax.swing.plaf.synth.SynthContext) : java.awt.Font;
	
	/**
	* @inheritDoc
	*
	* Returns the SynthPainter for this style, which ends up delegating to
	* the Painters installed in this style.
	*/
	@:overload override public function getPainter(ctx : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthPainter;
	
	/**
	* @inheritDoc
	*
	* Overridden to cause this style to populate itself with data from
	* UIDefaults, if necessary. If opacity is not specified in UI defaults,
	* then it defaults to being non-opaque.
	*/
	@:overload override public function isOpaque(ctx : javax.swing.plaf.synth.SynthContext) : Bool;
	
	/**
	* @inheritDoc
	*
	* <p>Overridden to cause this style to populate itself with data from
	* UIDefaults, if necessary.</p>
	*
	* <p>Properties in UIDefaults may be specified in a chained manner. For
	* example:
	* <pre>
	* background
	* Button.opacity
	* Button.Enabled.foreground
	* Button.Enabled+Selected.background
	* </pre></p>
	*
	* <p>In this example, suppose you were in the Enabled+Selected state and
	* searched for "foreground". In this case, we first check for
	* Button.Enabled+Selected.foreground, but no such color exists. We then
	* fall back to the next valid state, in this case,
	* Button.Enabled.foreground, and have a match. So we return it.</p>
	*
	* <p>Again, if we were in the state Enabled and looked for "background", we
	* wouldn't find it in Button.Enabled, or in Button, but would at the top
	* level in UIManager. So we return that value.</p>
	*
	* <p>One special note: the "key" passed to this method could be of the form
	* "background" or "Button.background" where "Button" equals the prefix
	* passed to the NimbusStyle constructor. In either case, it looks for
	* "background".</p>
	*
	* @param ctx
	* @param key must not be null
	*/
	@:overload override public function get(ctx : javax.swing.plaf.synth.SynthContext, key : Dynamic) : Dynamic;
	
	/**
	* Gets the appropriate background Painter, if there is one, for the state
	* specified in the given SynthContext. This method does appropriate
	* fallback searching, as described in #get.
	*
	* @param ctx The SynthContext. Must not be null.
	* @return The background painter associated for the given state, or null if
	* none could be found.
	*/
	@:overload public function getBackgroundPainter(ctx : javax.swing.plaf.synth.SynthContext) : javax.swing.Painter<Dynamic>;
	
	/**
	* Gets the appropriate foreground Painter, if there is one, for the state
	* specified in the given SynthContext. This method does appropriate
	* fallback searching, as described in #get.
	*
	* @param ctx The SynthContext. Must not be null.
	* @return The foreground painter associated for the given state, or null if
	* none could be found.
	*/
	@:overload public function getForegroundPainter(ctx : javax.swing.plaf.synth.SynthContext) : javax.swing.Painter<Dynamic>;
	
	/**
	* Gets the appropriate border Painter, if there is one, for the state
	* specified in the given SynthContext. This method does appropriate
	* fallback searching, as described in #get.
	*
	* @param ctx The SynthContext. Must not be null.
	* @return The border painter associated for the given state, or null if
	* none could be found.
	*/
	@:overload public function getBorderPainter(ctx : javax.swing.plaf.synth.SynthContext) : javax.swing.Painter<Dynamic>;
	
	
}
/**
* Contains values such as the UIDefaults and painters asssociated with
* a state. Whereas <code>State</code> represents a distinct state that a
* component can be in (such as Enabled), this class represents the colors,
* fonts, painters, etc associated with some state for this
* style.
*/
@:native('javax$swing$plaf$nimbus$NimbusStyle$RuntimeState') @:internal extern class NimbusStyle_RuntimeState implements java.lang.Cloneable
{
	@:overload public function toString() : String;
	
	@:overload public function clone() : javax.swing.plaf.nimbus.NimbusStyle.NimbusStyle_RuntimeState;
	
	
}
/**
* Essentially a struct of data for a style. A default instance of this
* class is used by NimbusStyle. Additional instances exist for each
* component that has overrides.
*/
@:native('javax$swing$plaf$nimbus$NimbusStyle$Values') @:internal extern class NimbusStyle_Values
{
	
}
/**
* This implementation presupposes that key is never null and that
* the two keys being checked for equality are never null
*/
@:native('javax$swing$plaf$nimbus$NimbusStyle$CacheKey') @:internal extern class NimbusStyle_CacheKey
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
