package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class MetalLookAndFeel extends javax.swing.plaf.basic.BasicLookAndFeel
{
	/**
	* Returns the name of this look and feel. This returns
	* {@code "Metal"}.
	*
	* @return the name of this look and feel
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Returns an identifier for this look and feel. This returns
	* {@code "Metal"}.
	*
	* @return the identifier of this look and feel
	*/
	@:overload @:public override public function getID() : String;
	
	/**
	* Returns a short description of this look and feel. This returns
	* {@code "The Java(tm) Look and Feel"}.

	* @return a short description for the look and feel
	*/
	@:overload @:public override public function getDescription() : String;
	
	/**
	* Returns {@code false}; {@code MetalLookAndFeel} is not a native
	* look and feel.
	*
	* @return {@code false}
	*/
	@:overload @:public override public function isNativeLookAndFeel() : Bool;
	
	/**
	* Returns {@code true}; {@code MetalLookAndFeel} can be run on
	* any platform.
	*
	* @return {@code true}
	*/
	@:overload @:public override public function isSupportedLookAndFeel() : Bool;
	
	/**
	* Returns {@code true}; metal can provide {@code Window}
	* decorations.
	*
	* @return {@code true}
	*
	* @see JDialog#setDefaultLookAndFeelDecorated
	* @see JFrame#setDefaultLookAndFeelDecorated
	* @see JRootPane#setWindowDecorationStyle
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function getSupportsWindowDecorations() : Bool;
	
	/**
	* Populates {@code table} with mappings from {@code uiClassID} to
	* the fully qualified name of the ui class. {@code
	* MetalLookAndFeel} registers an entry for each of the classes in
	* the package {@code javax.swing.plaf.metal} that are named
	* MetalXXXUI. The string {@code XXX} is one of Swing's uiClassIDs. For
	* the {@code uiClassIDs} that do not have a class in metal, the
	* corresponding class in {@code javax.swing.plaf.basic} is
	* used. For example, metal does not have a class named {@code
	* "MetalColorChooserUI"}, as such, {@code
	* javax.swing.plaf.basic.BasicColorChooserUI} is used.
	*
	* @param table the {@code UIDefaults} instance the entries are
	*        added to
	* @throws NullPointerException if {@code table} is {@code null}
	*
	* @see javax.swing.plaf.basic.BasicLookAndFeel#initClassDefaults
	*/
	@:overload @:protected override private function initClassDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Populates {@code table} with system colors. The following values are
	* added to {@code table}:
	* <table border="1" cellpadding="1" cellspacing="0"
	*         summary="Metal's system color mapping"
	*         valign="top" >
	*  <tr valign="top"  align="left">
	*    <th bgcolor="#CCCCFF" align="left">Key
	*    <th bgcolor="#CCCCFF" align="left">Value
	*  <tr valign="top"  align="left">
	*    <td>"desktop"
	*    <td>{@code theme.getDesktopColor()}
	*  <tr valign="top"  align="left">
	*    <td>"activeCaption"
	*    <td>{@code theme.getWindowTitleBackground()}
	*  <tr valign="top"  align="left">
	*    <td>"activeCaptionText"
	*    <td>{@code theme.getWindowTitleForeground()}
	*  <tr valign="top"  align="left">
	*    <td>"activeCaptionBorder"
	*    <td>{@code theme.getPrimaryControlShadow()}
	*  <tr valign="top"  align="left">
	*    <td>"inactiveCaption"
	*    <td>{@code theme.getWindowTitleInactiveBackground()}
	*  <tr valign="top"  align="left">
	*    <td>"inactiveCaptionText"
	*    <td>{@code theme.getWindowTitleInactiveForeground()}
	*  <tr valign="top"  align="left">
	*    <td>"inactiveCaptionBorder"
	*    <td>{@code theme.getControlShadow()}
	*  <tr valign="top"  align="left">
	*    <td>"window"
	*    <td>{@code theme.getWindowBackground()}
	*  <tr valign="top"  align="left">
	*    <td>"windowBorder"
	*    <td>{@code theme.getControl()}
	*  <tr valign="top"  align="left">
	*    <td>"windowText"
	*    <td>{@code theme.getUserTextColor()}
	*  <tr valign="top"  align="left">
	*    <td>"menu"
	*    <td>{@code theme.getMenuBackground()}
	*  <tr valign="top"  align="left">
	*    <td>"menuText"
	*    <td>{@code theme.getMenuForeground()}
	*  <tr valign="top"  align="left">
	*    <td>"text"
	*    <td>{@code theme.getWindowBackground()}
	*  <tr valign="top"  align="left">
	*    <td>"textText"
	*    <td>{@code theme.getUserTextColor()}
	*  <tr valign="top"  align="left">
	*    <td>"textHighlight"
	*    <td>{@code theme.getTextHighlightColor()}
	*  <tr valign="top"  align="left">
	*    <td>"textHighlightText"
	*    <td>{@code theme.getHighlightedTextColor()}
	*  <tr valign="top"  align="left">
	*    <td>"textInactiveText"
	*    <td>{@code theme.getInactiveSystemTextColor()}
	*  <tr valign="top"  align="left">
	*    <td>"control"
	*    <td>{@code theme.getControl()}
	*  <tr valign="top"  align="left">
	*    <td>"controlText"
	*    <td>{@code theme.getControlTextColor()}
	*  <tr valign="top"  align="left">
	*    <td>"controlHighlight"
	*    <td>{@code theme.getControlHighlight()}
	*  <tr valign="top"  align="left">
	*    <td>"controlLtHighlight"
	*    <td>{@code theme.getControlHighlight()}
	*  <tr valign="top"  align="left">
	*    <td>"controlShadow"
	*    <td>{@code theme.getControlShadow()}
	*  <tr valign="top"  align="left">
	*    <td>"controlDkShadow"
	*    <td>{@code theme.getControlDarkShadow()}
	*  <tr valign="top"  align="left">
	*    <td>"scrollbar"
	*    <td>{@code theme.getControl()}
	*  <tr valign="top"  align="left">
	*    <td>"info"
	*    <td>{@code theme.getPrimaryControl()}
	*  <tr valign="top"  align="left">
	*    <td>"infoText"
	*    <td>{@code theme.getPrimaryControlInfo()}
	* </table>
	* The value {@code theme} corresponds to the current {@code MetalTheme}.
	*
	* @param table the {@code UIDefaults} object the values are added to
	* @throws NullPointerException if {@code table} is {@code null}
	*/
	@:overload @:protected override private function initSystemColorDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Populates {@code table} with the defaults for metal.
	*
	* @param table the {@code UIDefaults} to add the values to
	* @throws NullPointerException if {@code table} is {@code null}
	*/
	@:overload @:protected override private function initComponentDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Ensures the current {@code MetalTheme} is {@code non-null}. This is
	* a cover method for {@code getCurrentTheme}.
	*
	* @see #getCurrentTheme
	*/
	@:overload @:protected private function createDefaultTheme() : Void;
	
	/**
	* Returns the look and feel defaults. This invokes, in order,
	* {@code createDefaultTheme()}, {@code super.getDefaults()} and
	* {@code getCurrentTheme().addCustomEntriesToTable(table)}.
	* <p>
	* While this method is public, it should only be invoked by the
	* {@code UIManager} when the look and feel is set as the current
	* look and feel and after {@code initialize} has been invoked.
	*
	* @return the look and feel defaults
	*
	* @see #createDefaultTheme
	* @see javax.swing.plaf.basic.BasicLookAndFeel#getDefaults()
	* @see MetalTheme#addCustomEntriesToTable(UIDefaults)
	*/
	@:overload @:public override public function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* {@inheritDoc}
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function provideErrorFeedback(component : java.awt.Component) : Void;
	
	/**
	* Set the theme used by <code>MetalLookAndFeel</code>.
	* <p>
	* After the theme is set, {@code MetalLookAndFeel} needs to be
	* re-installed and the uis need to be recreated. The following
	* shows how to do this:
	* <pre>
	*   MetalLookAndFeel.setCurrentTheme(theme);
	*
	*   // re-install the Metal Look and Feel
	*   UIManager.setLookAndFeel(new MetalLookAndFeel());
	*
	*   // Update the ComponentUIs for all Components. This
	*   // needs to be invoked for all windows.
	*   SwingUtilities.updateComponentTreeUI(rootComponent);
	* </pre>
	* If this is not done the results are undefined.
	*
	* @param theme the theme to use
	* @throws NullPointerException if {@code theme} is {@code null}
	* @see #getCurrentTheme
	*/
	@:overload @:public @:static public static function setCurrentTheme(theme : javax.swing.plaf.metal.MetalTheme) : Void;
	
	/**
	* Return the theme currently being used by <code>MetalLookAndFeel</code>.
	* If the current theme is {@code null}, the default theme is created.
	*
	* @return the current theme
	* @see #setCurrentTheme
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getCurrentTheme() : javax.swing.plaf.metal.MetalTheme;
	
	/**
	* Returns an <code>Icon</code> with a disabled appearance.
	* This method is used to generate a disabled <code>Icon</code> when
	* one has not been specified.  For example, if you create a
	* <code>JButton</code> and only specify an <code>Icon</code> via
	* <code>setIcon</code> this method will be called to generate the
	* disabled <code>Icon</code>. If null is passed as <code>icon</code>
	* this method returns null.
	* <p>
	* Some look and feels might not render the disabled Icon, in which
	* case they will ignore this.
	*
	* @param component JComponent that will display the Icon, may be null
	* @param icon Icon to generate disable icon from.
	* @return Disabled icon, or null if a suitable Icon can not be
	*         generated.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getDisabledIcon(component : javax.swing.JComponent, icon : javax.swing.Icon) : javax.swing.Icon;
	
	/**
	* Returns an <code>Icon</code> for use by disabled
	* components that are also selected. This method is used to generate an
	* <code>Icon</code> for components that are in both the disabled and
	* selected states but do not have a specific <code>Icon</code> for this
	* state.  For example, if you create a <code>JButton</code> and only
	* specify an <code>Icon</code> via <code>setIcon</code> this method
	* will be called to generate the disabled and selected
	* <code>Icon</code>. If null is passed as <code>icon</code> this method
	* returns null.
	* <p>
	* Some look and feels might not render the disabled and selected Icon,
	* in which case they will ignore this.
	*
	* @param component JComponent that will display the Icon, may be null
	* @param icon Icon to generate disabled and selected icon from.
	* @return Disabled and Selected icon, or null if a suitable Icon can not
	*         be generated.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getDisabledSelectedIcon(component : javax.swing.JComponent, icon : javax.swing.Icon) : javax.swing.Icon;
	
	/**
	* Returns the control text font of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlTextColor()}.
	*
	* @return the control text font
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the sytem text font of the current theme. This is a
	* cover method for {@code getCurrentTheme().getSystemTextFont()}.
	*
	* @return the system text font
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getSystemTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the user text font of the current theme. This is a
	* cover method for {@code getCurrentTheme().getUserTextFont()}.
	*
	* @return the user text font
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getUserTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the menu text font of the current theme. This is a
	* cover method for {@code getCurrentTheme().getMenuTextFont()}.
	*
	* @return the menu text font
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getMenuTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the window title font of the current theme. This is a
	* cover method for {@code getCurrentTheme().getWindowTitleFont()}.
	*
	* @return the window title font
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWindowTitleFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the sub-text font of the current theme. This is a
	* cover method for {@code getCurrentTheme().getSubTextFont()}.
	*
	* @return the sub-text font
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getSubTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the desktop color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getDesktopColor()}.
	*
	* @return the desktop color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getDesktopColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the focus color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getFocusColor()}.
	*
	* @return the focus color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getFocusColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the white color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getWhite()}.
	*
	* @return the white color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWhite() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the black color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getBlack()}.
	*
	* @return the black color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getBlack() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControl()}.
	*
	* @return the control color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControl() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control shadow color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlShadow()}.
	*
	* @return the control shadow color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control dark shadow color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlDarkShadow()}.
	*
	* @return the control dark shadow color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlDarkShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control info color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlInfo()}.
	*
	* @return the control info color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlInfo() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control highlight color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlHighlight()}.
	*
	* @return the control highlight color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlHighlight() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control disabled color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlDisabled()}.
	*
	* @return the control disabled color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlDisabled() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getPrimaryControl()}.
	*
	* @return the primary control color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getPrimaryControl() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control shadow color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getPrimaryControlShadow()}.
	*
	* @return the primary control shadow color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getPrimaryControlShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control dark shadow color of the current
	* theme. This is a cover method for {@code
	* getCurrentTheme().getPrimaryControlDarkShadow()}.
	*
	* @return the primary control dark shadow color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getPrimaryControlDarkShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control info color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getPrimaryControlInfo()}.
	*
	* @return the primary control info color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getPrimaryControlInfo() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control highlight color of the current
	* theme. This is a cover method for {@code
	* getCurrentTheme().getPrimaryControlHighlight()}.
	*
	* @return the primary control highlight color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getPrimaryControlHighlight() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the system text color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getSystemTextColor()}.
	*
	* @return the system text color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getSystemTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control text color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getControlTextColor()}.
	*
	* @return the control text color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getControlTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the inactive control text color of the current theme. This is a
	* cover method for {@code
	* getCurrentTheme().getInactiveControlTextColor()}.
	*
	* @return the inactive control text color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getInactiveControlTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the inactive system text color of the current theme. This is a
	* cover method for {@code
	* getCurrentTheme().getInactiveSystemTextColor()}.
	*
	* @return the inactive system text color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getInactiveSystemTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the user text color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getUserTextColor()}.
	*
	* @return the user text color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getUserTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the text highlight color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getTextHighlightColor()}.
	*
	* @return the text highlight color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getTextHighlightColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the highlighted text color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getHighlightedTextColor()}.
	*
	* @return the highlighted text color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getHighlightedTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window background color of the current theme. This is a
	* cover method for {@code getCurrentTheme().getWindowBackground()}.
	*
	* @return the window background color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWindowBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title background color of the current
	* theme. This is a cover method for {@code
	* getCurrentTheme().getWindowTitleBackground()}.
	*
	* @return the window title background color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWindowTitleBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title foreground color of the current
	* theme. This is a cover method for {@code
	* getCurrentTheme().getWindowTitleForeground()}.
	*
	* @return the window title foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWindowTitleForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title inactive background color of the current
	* theme. This is a cover method for {@code
	* getCurrentTheme().getWindowTitleInactiveBackground()}.
	*
	* @return the window title inactive background color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWindowTitleInactiveBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title inactive foreground color of the current
	* theme. This is a cover method for {@code
	* getCurrentTheme().getWindowTitleInactiveForeground()}.
	*
	* @return the window title inactive foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getWindowTitleInactiveForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu background color of the current theme. This is
	* a cover method for {@code getCurrentTheme().getMenuBackground()}.
	*
	* @return the menu background color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getMenuBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu foreground color of the current theme. This is
	* a cover method for {@code getCurrentTheme().getMenuForeground()}.
	*
	* @return the menu foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getMenuForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu selected background color of the current theme. This is
	* a cover method for
	* {@code getCurrentTheme().getMenuSelectedBackground()}.
	*
	* @return the menu selected background color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getMenuSelectedBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu selected foreground color of the current theme. This is
	* a cover method for
	* {@code getCurrentTheme().getMenuSelectedForeground()}.
	*
	* @return the menu selected foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getMenuSelectedForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu disabled foreground color of the current theme. This is
	* a cover method for
	* {@code getCurrentTheme().getMenuDisabledForeground()}.
	*
	* @return the menu disabled foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getMenuDisabledForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the separator background color of the current theme. This is
	* a cover method for {@code getCurrentTheme().getSeparatorBackground()}.
	*
	* @return the separator background color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getSeparatorBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the separator foreground color of the current theme. This is
	* a cover method for {@code getCurrentTheme().getSeparatorForeground()}.
	*
	* @return the separator foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getSeparatorForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the accelerator foreground color of the current theme. This is
	* a cover method for {@code getCurrentTheme().getAcceleratorForeground()}.
	*
	* @return the separator accelerator foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getAcceleratorForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the accelerator selected foreground color of the
	* current theme. This is a cover method for {@code
	* getCurrentTheme().getAcceleratorSelectedForeground()}.
	*
	* @return the accelerator selected foreground color
	*
	* @see MetalTheme
	*/
	@:overload @:public @:static public static function getAcceleratorSelectedForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns a {@code LayoutStyle} implementing the Java look and feel
	* design guidelines as specified at
	* <a href="http://java.sun.com/products/jlf/ed2/book/HIG.Visual2.html">http://java.sun.com/products/jlf/ed2/book/HIG.Visual2.html</a>.
	*
	* @return LayoutStyle implementing the Java look and feel design
	*         guidelines
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getLayoutStyle() : javax.swing.LayoutStyle;
	
	
}
/**
* MetalLazyValue is a slimmed down version of <code>ProxyLaxyValue</code>.
* The code is duplicate so that it can get at the package private
* classes in metal.
*/
@:native('javax$swing$plaf$metal$MetalLookAndFeel$MetalLazyValue') @:internal extern class MetalLookAndFeel_MetalLazyValue implements javax.swing.UIDefaults.UIDefaults_LazyValue
{
	@:overload @:public public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
/**
* FontActiveValue redirects to the appropriate metal theme method.
*/
@:native('javax$swing$plaf$metal$MetalLookAndFeel$FontActiveValue') @:internal extern class MetalLookAndFeel_FontActiveValue implements javax.swing.UIDefaults.UIDefaults_ActiveValue
{
	@:overload @:public public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
@:native('javax$swing$plaf$metal$MetalLookAndFeel$AATextListener') @:internal extern class MetalLookAndFeel_AATextListener extends java.lang.ref.WeakReference<javax.swing.LookAndFeel> implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected private function updateUI() : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalLookAndFeel$MetalLayoutStyle') @:internal extern class MetalLookAndFeel_MetalLayoutStyle extends sun.swing.DefaultLayoutStyle
{
	@:overload @:public override public function getPreferredGap(component1 : javax.swing.JComponent, component2 : javax.swing.JComponent, type : javax.swing.LayoutStyle.LayoutStyle_ComponentPlacement, position : Int, parent : java.awt.Container) : Int;
	
	@:overload @:public override public function getContainerGap(component : javax.swing.JComponent, position : Int, parent : java.awt.Container) : Int;
	
	@:overload @:protected override private function getButtonGap(source : javax.swing.JComponent, target : javax.swing.JComponent, position : Int, offset : Int) : Int;
	
	
}
