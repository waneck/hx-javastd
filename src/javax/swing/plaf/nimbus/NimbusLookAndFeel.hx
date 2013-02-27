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
extern class NimbusLookAndFeel extends javax.swing.plaf.synth.SynthLookAndFeel
{
	/**
	* Create a new NimbusLookAndFeel.
	*/
	@:overload public function new() : Void;
	
	/** Called by UIManager when this look and feel is installed. */
	@:overload override public function initialize() : Void;
	
	/** Called by UIManager when this look and feel is uninstalled. */
	@:overload override public function uninitialize() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* Gets the style associated with the given component and region. This
	* will never return null. If an appropriate component and region cannot
	* be determined, then a default style is returned.
	*
	* @param c a non-null reference to a JComponent
	* @param r a non-null reference to the region of the component c
	* @return a non-null reference to a NimbusStyle.
	*/
	@:overload public static function getStyle(c : javax.swing.JComponent, r : javax.swing.plaf.synth.Region) : javax.swing.plaf.nimbus.NimbusStyle;
	
	/**
	* Return a short string that identifies this look and feel. This
	* String will be the unquoted String "Nimbus".
	*
	* @return a short string identifying this look and feel.
	*/
	@:overload override public function getName() : String;
	
	/**
	* Return a string that identifies this look and feel. This String will
	* be the unquoted String "Nimbus".
	*
	* @return a short string identifying this look and feel.
	*/
	@:overload override public function getID() : String;
	
	/**
	* Returns a textual description of this look and feel.
	*
	* @return textual description of this look and feel.
	*/
	@:overload override public function getDescription() : String;
	
	/**
	* @inheritDoc
	* @return {@code true}
	*/
	@:overload override public function shouldUpdateStyleOnAncestorChanged() : Bool;
	
	/**
	* @inheritDoc
	*
	* <p>Overridden to return {@code true} when one of the following
	* properties change:
	* <ul>
	*   <li>{@code "Nimbus.Overrides"}
	*   <li>{@code "Nimbus.Overrides.InheritDefaults"}
	*   <li>{@code "JComponent.sizeVariant"}
	* </ul>
	*
	* @since 1.7
	*/
	@:require(java7) @:overload override private function shouldUpdateStyleOnEvent(ev : java.beans.PropertyChangeEvent) : Bool;
	
	/**
	* <p>Registers a third party component with the NimbusLookAndFeel.</p>
	*
	* <p>Regions represent Components and areas within Components that act as
	* independent painting areas. Once registered with the NimbusLookAndFeel,
	* NimbusStyles for these Regions can be retrieved via the
	* <code>getStyle</code> method.</p>
	*
	* <p>The NimbusLookAndFeel uses a standard naming scheme for entries in the
	* UIDefaults table. The key for each property, state, painter, and other
	* default registered in UIDefaults for a specific Region will begin with
	* the specified <code>prefix</code></p>
	*
	* <p>For example, suppose I had a component named JFoo. Suppose I then registered
	* this component with the NimbusLookAndFeel in this manner:</p>
	*
	* <pre><code>
	*     laf.register(NimbusFooUI.FOO_REGION, "Foo");
	* </code></pre>
	*
	* <p>In this case, I could then register properties for this component with
	* UIDefaults in the following manner:</p>
	*
	* <pre><code>
	*     UIManager.put("Foo.background", new ColorUIResource(Color.BLACK));
	*     UIManager.put("Foo.Enabled.backgroundPainter", new FooBackgroundPainter());
	* </code></pre>
	*
	* <p>It is also possible to register a named component with Nimbus.
	* For example, suppose you wanted to style the background of a JPanel
	* named "MyPanel" differently from other JPanels. You could accomplish this
	* by doing the following:</p>
	*
	* <pre><code>
	*     laf.register(Region.PANEL, "\"MyPanel\"");
	*     UIManager.put("\"MyPanel\".background", new ColorUIResource(Color.RED));
	* </code></pre>
	*
	* @param region The Synth Region that is being registered. Such as Button, or
	*        ScrollBarThumb, or NimbusFooUI.FOO_REGION.
	* @param prefix The UIDefault prefix. For example, could be ComboBox, or if
	*        a named components, "MyComboBox", or even something like
	*        ToolBar."MyComboBox"."ComboBox.arrowButton"
	*/
	@:overload public function register(region : javax.swing.plaf.synth.Region, prefix : String) : Void;
	
	@:overload override public function getDisabledIcon(component : javax.swing.JComponent, icon : javax.swing.Icon) : javax.swing.Icon;
	
	/**
	* Get a derived color, derived colors are shared instances and is color
	* value will change when its parent UIDefault color changes.
	*
	* @param uiDefaultParentName The parent UIDefault key
	* @param hOffset             The hue offset
	* @param sOffset             The saturation offset
	* @param bOffset             The brightness offset
	* @param aOffset             The alpha offset
	* @param uiResource          True if the derived color should be a
	*                            UIResource, false if it should not be
	* @return The stored derived color
	*/
	@:overload public function getDerivedColor(uiDefaultParentName : String, hOffset : Single, sOffset : Single, bOffset : Single, aOffset : Int, uiResource : Bool) : java.awt.Color;
	
	/**
	* Decodes and returns a color, which is derived from an offset between two
	* other colors.
	*
	* @param color1   The first color
	* @param color2   The second color
	* @param midPoint The offset between color 1 and color 2, a value of 0.0 is
	*                 color 1 and 1.0 is color 2;
	* @param uiResource True if the derived color should be a UIResource
	* @return The derived color
	*/
	@:overload @:final private function getDerivedColor(color1 : java.awt.Color, color2 : java.awt.Color, midPoint : Single, uiResource : Bool) : java.awt.Color;
	
	/**
	* Decodes and returns a color, which is derived from a offset between two
	* other colors.
	*
	* @param color1   The first color
	* @param color2   The second color
	* @param midPoint The offset between color 1 and color 2, a value of 0.0 is
	*                 color 1 and 1.0 is color 2;
	* @return The derived color, which will be a UIResource
	*/
	@:overload @:final private function getDerivedColor(color1 : java.awt.Color, color2 : java.awt.Color, midPoint : Single) : java.awt.Color;
	
	
}
/**
* Simple Symbolic Link style UIDefalts Property
*/
@:native('javax$swing$plaf$nimbus$NimbusLookAndFeel$LinkProperty') @:internal extern class NimbusLookAndFeel_LinkProperty implements javax.swing.UIDefaults.UIDefaults_ActiveValue implements javax.swing.plaf.UIResource
{
	@:overload public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
/**
* Nimbus Property that looks up Nimbus keys for standard key names. For
* example "Button.background" --> "Button[Enabled].backgound"
*/
@:native('javax$swing$plaf$nimbus$NimbusLookAndFeel$NimbusProperty') @:internal extern class NimbusLookAndFeel_NimbusProperty implements javax.swing.UIDefaults.UIDefaults_ActiveValue implements javax.swing.plaf.UIResource
{
	/**
	* Creates the value retrieved from the <code>UIDefaults</code> table.
	* The object is created each time it is accessed.
	*
	* @param table a <code>UIDefaults</code> table
	* @return the created <code>Object</code>
	*/
	@:overload public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
@:native('javax$swing$plaf$nimbus$NimbusLookAndFeel$DefaultsListener') @:internal extern class NimbusLookAndFeel_DefaultsListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	
}
