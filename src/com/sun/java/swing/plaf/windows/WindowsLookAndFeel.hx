package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
/*
* <p>These classes are designed to be used while the
* corresponding <code>LookAndFeel</code> class has been installed
* (<code>UIManager.setLookAndFeel(new <i>XXX</i>LookAndFeel())</code>).
* Using them while a different <code>LookAndFeel</code> is installed
* may produce unexpected results, including exceptions.
* Additionally, changing the <code>LookAndFeel</code>
* maintained by the <code>UIManager</code> without updating the
* corresponding <code>ComponentUI</code> of any
* <code>JComponent</code>s may also produce unexpected results,
* such as the wrong colors showing up, and is generally not
* encouraged.
*
*/
extern class WindowsLookAndFeel extends javax.swing.plaf.basic.BasicLookAndFeel
{
	@:overload @:public override public function getName() : String;
	
	@:overload @:public override public function getDescription() : String;
	
	@:overload @:public override public function getID() : String;
	
	@:overload @:public override public function isNativeLookAndFeel() : Bool;
	
	@:overload @:public override public function isSupportedLookAndFeel() : Bool;
	
	@:overload @:public override public function initialize() : Void;
	
	/**
	* Initialize the uiClassID to BasicComponentUI mapping.
	* The JComponent classes define their own uiClassID constants
	* (see AbstractComponent.getUIClassID).  This table must
	* map those constants to a BasicComponentUI class of the
	* appropriate type.
	*
	* @see BasicLookAndFeel#getDefaults
	*/
	@:overload @:protected override private function initClassDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Load the SystemColors into the defaults table.  The keys
	* for SystemColor defaults are the same as the names of
	* the public fields in SystemColor.  If the table is being
	* created on a native Windows platform we use the SystemColor
	* values, otherwise we create color objects whose values match
	* the defaults Windows95 colors.
	*/
	@:overload @:protected override private function initSystemColorDefaults(table : javax.swing.UIDefaults) : Void;
	
	@:overload @:protected override private function initComponentDefaults(table : javax.swing.UIDefaults) : Void;
	
	@:overload @:public override public function uninitialize() : Void;
	
	/**
	* Sets the state of the hide mnemonic flag. This flag is used by the
	* component UI delegates to determine if the mnemonic should be rendered.
	* This method is a non operation if the underlying operating system
	* does not support the mnemonic hiding feature.
	*
	* @param hide true if mnemonics should be hidden
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function setMnemonicHidden(hide : Bool) : Void;
	
	/**
	* Gets the state of the hide mnemonic flag. This only has meaning
	* if this feature is supported by the underlying OS.
	*
	* @return true if mnemonics are hidden, otherwise, false
	* @see #setMnemonicHidden
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function isMnemonicHidden() : Bool;
	
	/**
	* Gets the state of the flag which indicates if the old Windows
	* look and feel should be rendered. This flag is used by the
	* component UI delegates as a hint to determine which style the component
	* should be rendered.
	*
	* @return true if Windows 95 and Windows NT 4 look and feel should
	*         be rendered
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function isClassicWindows() : Bool;
	
	/**
	* <p>
	* Invoked when the user attempts an invalid operation,
	* such as pasting into an uneditable <code>JTextField</code>
	* that has focus.
	* </p>
	* <p>
	* If the user has enabled visual error indication on
	* the desktop, this method will flash the caption bar
	* of the active window. The user can also set the
	* property awt.visualbell=true to achieve the same
	* results.
	* </p>
	*
	* @param component Component the error occured in, may be
	*                  null indicating the error condition is
	*                  not directly associated with a
	*                  <code>Component</code>.
	*
	* @see javax.swing.LookAndFeel#provideErrorFeedback
	*/
	@:overload @:public override public function provideErrorFeedback(component : java.awt.Component) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getLayoutStyle() : javax.swing.LayoutStyle;
	
	/**
	* Returns an <code>Action</code>.
	* <P>
	* This Action contains the information and logic to render an
	* auditory cue. The <code>Object</code> that is passed to this
	* method contains the information needed to render the auditory
	* cue. Normally, this <code>Object</code> is a <code>String</code>
	* that points to a <code>Toolkit</code> <code>desktopProperty</code>.
	* This <code>desktopProperty</code> is resolved by AWT and the
	* Windows OS.
	* <P>
	* This <code>Action</code>'s <code>actionPerformed</code> method
	* is fired by the <code>playSound</code> method.
	*
	* @return      an Action which knows how to render the auditory
	*              cue for one particular system or user activity
	* @see #playSound(Action)
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected override private function createAudioAction(key : Dynamic) : javax.swing.Action;
	
	/**
	* {@inheritDoc}
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getDisabledIcon(component : javax.swing.JComponent, icon : javax.swing.Icon) : javax.swing.Icon;
	
	
}
/**
* Pass the name String to the super constructor. This is used
* later to identify the Action and decide whether to play it or
* not. Store the resource String. It is used to get the audio
* resource. In this case, the resource is a <code>Runnable</code>
* supplied by <code>Toolkit</code>. This <code>Runnable</code> is
* effectively a pointer down into the Win32 OS that knows how to
* play the right sound.
*
* @since 1.4
*/
@:require(java4) @:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$AudioAction') @:internal extern class WindowsLookAndFeel_AudioAction extends javax.swing.AbstractAction
{
	/**
	* We use the String as the name of the Action and as a pointer to
	* the underlying OSes audio resource.
	*/
	@:overload @:public public function new(name : String, resource : String) : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Gets an <code>Icon</code> from the native libraries if available,
* otherwise gets it from an image resource file.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$LazyWindowsIcon') @:internal extern class WindowsLookAndFeel_LazyWindowsIcon implements javax.swing.UIDefaults.UIDefaults_LazyValue
{
	@:overload @:public public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
/**
* Gets an <code>Icon</code> from the native libraries if available.
* A desktop property is used to trigger reloading the icon when needed.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$ActiveWindowsIcon') @:internal extern class WindowsLookAndFeel_ActiveWindowsIcon implements javax.swing.UIDefaults.UIDefaults_ActiveValue
{
	@:overload @:public public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
/**
* Icon backed-up by XP Skin.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$SkinIcon') @:internal extern class WindowsLookAndFeel_SkinIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource
{
	/**
	* Draw the icon at the specified location.  Icon implementations
	* may use the Component argument to get properties useful for
	* painting, e.g. the foreground or background color.
	*/
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	/**
	* Returns the icon's width.
	*
	* @return an int specifying the fixed width of the icon.
	*/
	@:overload @:public public function getIconWidth() : Int;
	
	/**
	* Returns the icon's height.
	*
	* @return an int specifying the fixed height of the icon.
	*/
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* DesktopProperty for fonts. If a font with the name 'MS Sans Serif'
* is returned, it is mapped to 'Microsoft Sans Serif'.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$WindowsFontProperty') @:internal extern class WindowsLookAndFeel_WindowsFontProperty extends com.sun.java.swing.plaf.windows.DesktopProperty
{
	@:overload @:public override public function invalidate(laf : javax.swing.LookAndFeel) : Void;
	
	@:overload @:protected override private function configureValue(value : Dynamic) : Dynamic;
	
	
}
/**
* DesktopProperty for fonts that only gets sizes from the desktop,
* font name and style are passed into the constructor
*/
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$WindowsFontSizeProperty') @:internal extern class WindowsLookAndFeel_WindowsFontSizeProperty extends com.sun.java.swing.plaf.windows.DesktopProperty
{
	@:overload @:protected override private function configureValue(value : Dynamic) : Dynamic;
	
	
}
/**
* A value wrapper that actively retrieves values from xp or falls back
* to the classic value if not running XP styles.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$XPValue') @:internal extern class WindowsLookAndFeel_XPValue implements javax.swing.UIDefaults.UIDefaults_ActiveValue
{
	@:protected private var classicValue : Dynamic;
	
	@:protected private var xpValue : Dynamic;
	
	@:overload @:public public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	@:overload @:protected private function getXPValue(table : javax.swing.UIDefaults) : Dynamic;
	
	@:overload @:protected private function getClassicValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$XPBorderValue') @:internal extern class WindowsLookAndFeel_XPBorderValue extends com.sun.java.swing.plaf.windows.WindowsLookAndFeel.WindowsLookAndFeel_XPValue
{
	@:overload @:public override public function getXPValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$XPColorValue') @:internal extern class WindowsLookAndFeel_XPColorValue extends com.sun.java.swing.plaf.windows.WindowsLookAndFeel.WindowsLookAndFeel_XPValue
{
	@:overload @:public override public function getXPValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$XPColorValue$XPColorValueKey') @:internal extern class WindowsLookAndFeel_XPColorValue_XPColorValueKey
{
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$XPDLUValue') @:internal extern class WindowsLookAndFeel_XPDLUValue extends com.sun.java.swing.plaf.windows.WindowsLookAndFeel.WindowsLookAndFeel_XPValue
{
	@:overload @:public override public function getXPValue(table : javax.swing.UIDefaults) : Dynamic;
	
	@:overload @:public override public function getClassicValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$TriggerDesktopProperty') @:internal extern class WindowsLookAndFeel_TriggerDesktopProperty extends com.sun.java.swing.plaf.windows.DesktopProperty
{
	@:overload @:protected override private function updateUI() : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$FontDesktopProperty') @:internal extern class WindowsLookAndFeel_FontDesktopProperty extends com.sun.java.swing.plaf.windows.WindowsLookAndFeel.WindowsLookAndFeel_TriggerDesktopProperty
{
	@:overload @:protected override private function updateUI() : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$WindowsLayoutStyle') @:internal extern class WindowsLookAndFeel_WindowsLayoutStyle extends sun.swing.DefaultLayoutStyle
{
	@:overload @:public override public function getPreferredGap(component1 : javax.swing.JComponent, component2 : javax.swing.JComponent, type : javax.swing.LayoutStyle.LayoutStyle_ComponentPlacement, position : Int, parent : java.awt.Container) : Int;
	
	@:overload @:public override public function getContainerGap(component : javax.swing.JComponent, position : Int, parent : java.awt.Container) : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsLookAndFeel$RGBGrayFilter') @:internal extern class WindowsLookAndFeel_RGBGrayFilter extends java.awt.image.RGBImageFilter
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function filterRGB(x : Int, y : Int, rgb : Int) : Int;
	
	
}
