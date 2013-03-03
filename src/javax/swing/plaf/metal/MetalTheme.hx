package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* {@code MetalTheme} provides the color palette and fonts used by
* the Java Look and Feel.
* <p>
* {@code MetalTheme} is abstract, see {@code DefaultMetalTheme} and
* {@code OceanTheme} for concrete implementations.
* <p>
* {@code MetalLookAndFeel} maintains the current theme that the
* the {@code ComponentUI} implementations for metal use. Refer to
* {@link MetalLookAndFeel#setCurrentTheme
* MetalLookAndFeel.setCurrentTheme(MetalTheme)} for details on changing
* the current theme.
* <p>
* {@code MetalTheme} provides a number of public methods for getting
* colors. These methods are implemented in terms of a
* handful of protected abstract methods. A subclass need only override
* the protected abstract methods ({@code getPrimary1},
* {@code getPrimary2}, {@code getPrimary3}, {@code getSecondary1},
* {@code getSecondary2}, and {@code getSecondary3}); although a subclass
* may override the other public methods for more control over the set of
* colors that are used.
* <p>
* Concrete implementations of {@code MetalTheme} must return {@code non-null}
* values from all methods. While the behavior of returning {@code null} is
* not specified, returning {@code null} will result in incorrect behavior.
* <p>
* It is strongly recommended that subclasses return completely opaque colors.
* To do otherwise may result in rendering problems, such as visual garbage.
*
* @see DefaultMetalTheme
* @see OceanTheme
* @see MetalLookAndFeel#setCurrentTheme
*
* @author Steve Wilson
*/
extern class MetalTheme
{
	/**
	* Returns the name of this theme.
	*
	* @return the name of this theme
	*/
	@:overload @:public @:abstract public function getName() : String;
	
	/**
	* Returns the primary 1 color.
	*
	* @return the primary 1 color
	*/
	@:overload @:protected @:abstract private function getPrimary1() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary 2 color.
	*
	* @return the primary 2 color
	*/
	@:overload @:protected @:abstract private function getPrimary2() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary 3 color.
	*
	* @return the primary 3 color
	*/
	@:overload @:protected @:abstract private function getPrimary3() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 1 color.
	*
	* @return the secondary 1 color
	*/
	@:overload @:protected @:abstract private function getSecondary1() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 2 color.
	*
	* @return the secondary 2 color
	*/
	@:overload @:protected @:abstract private function getSecondary2() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 3 color.
	*
	* @return the secondary 3 color
	*/
	@:overload @:protected @:abstract private function getSecondary3() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control text font.
	*
	* @return the control text font
	*/
	@:overload @:public @:abstract public function getControlTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the system text font.
	*
	* @return the system text font
	*/
	@:overload @:public @:abstract public function getSystemTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the user text font.
	*
	* @return the user text font
	*/
	@:overload @:public @:abstract public function getUserTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the menu text font.
	*
	* @return the menu text font
	*/
	@:overload @:public @:abstract public function getMenuTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the window title font.
	*
	* @return the window title font
	*/
	@:overload @:public @:abstract public function getWindowTitleFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the sub-text font.
	*
	* @return the sub-text font
	*/
	@:overload @:public @:abstract public function getSubTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the white color. This returns opaque white
	* ({@code 0xFFFFFFFF}).
	*
	* @return the white color
	*/
	@:overload @:protected private function getWhite() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the black color. This returns opaque black
	* ({@code 0xFF000000}).
	*
	* @return the black color
	*/
	@:overload @:protected private function getBlack() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the focus color. This returns the value of
	* {@code getPrimary2()}.
	*
	* @return the focus color
	*/
	@:overload @:public public function getFocusColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the desktop color. This returns the value of
	* {@code getPrimary2()}.
	*
	* @return the desktop color
	*/
	@:overload @:public public function getDesktopColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control color. This returns the value of
	* {@code getSecondary3()}.
	*
	* @return the control color
	*/
	@:overload @:public public function getControl() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control shadow color. This returns
	* the value of {@code getSecondary2()}.
	*
	* @return the control shadow color
	*/
	@:overload @:public public function getControlShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control dark shadow color. This returns
	* the value of {@code getSecondary1()}.
	*
	* @return the control dark shadow color
	*/
	@:overload @:public public function getControlDarkShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control info color. This returns
	* the value of {@code getBlack()}.
	*
	* @return the control info color
	*/
	@:overload @:public public function getControlInfo() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control highlight color. This returns
	* the value of {@code getWhite()}.
	*
	* @return the control highlight color
	*/
	@:overload @:public public function getControlHighlight() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control disabled color. This returns
	* the value of {@code getSecondary2()}.
	*
	* @return the control disabled color
	*/
	@:overload @:public public function getControlDisabled() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control color. This returns
	* the value of {@code getPrimary3()}.
	*
	* @return the primary control color
	*/
	@:overload @:public public function getPrimaryControl() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control shadow color. This returns
	* the value of {@code getPrimary2()}.
	*
	* @return the primary control shadow color
	*/
	@:overload @:public public function getPrimaryControlShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control dark shadow color. This
	* returns the value of {@code getPrimary1()}.
	*
	* @return the primary control dark shadow color
	*/
	@:overload @:public public function getPrimaryControlDarkShadow() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control info color. This
	* returns the value of {@code getBlack()}.
	*
	* @return the primary control info color
	*/
	@:overload @:public public function getPrimaryControlInfo() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary control highlight color. This
	* returns the value of {@code getWhite()}.
	*
	* @return the primary control highlight color
	*/
	@:overload @:public public function getPrimaryControlHighlight() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the system text color. This returns the value of
	* {@code getBlack()}.
	*
	* @return the system text color
	*/
	@:overload @:public public function getSystemTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control text color. This returns the value of
	* {@code getControlInfo()}.
	*
	* @return the control text color
	*/
	@:overload @:public public function getControlTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the inactive control text color. This returns the value of
	* {@code getControlDisabled()}.
	*
	* @return the inactive control text color
	*/
	@:overload @:public public function getInactiveControlTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the inactive system text color. This returns the value of
	* {@code getSecondary2()}.
	*
	* @return the inactive system text color
	*/
	@:overload @:public public function getInactiveSystemTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the user text color. This returns the value of
	* {@code getBlack()}.
	*
	* @return the user text color
	*/
	@:overload @:public public function getUserTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the text highlight color. This returns the value of
	* {@code getPrimary3()}.
	*
	* @return the text highlight color
	*/
	@:overload @:public public function getTextHighlightColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the highlighted text color. This returns the value of
	* {@code getControlTextColor()}.
	*
	* @return the highlighted text color
	*/
	@:overload @:public public function getHighlightedTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window background color. This returns the value of
	* {@code getWhite()}.
	*
	* @return the window background color
	*/
	@:overload @:public public function getWindowBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title background color. This returns the value of
	* {@code getPrimary3()}.
	*
	* @return the window title background color
	*/
	@:overload @:public public function getWindowTitleBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title foreground color. This returns the value of
	* {@code getBlack()}.
	*
	* @return the window title foreground color
	*/
	@:overload @:public public function getWindowTitleForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title inactive background color. This
	* returns the value of {@code getSecondary3()}.
	*
	* @return the window title inactive background color
	*/
	@:overload @:public public function getWindowTitleInactiveBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the window title inactive foreground color. This
	* returns the value of {@code getBlack()}.
	*
	* @return the window title inactive foreground color
	*/
	@:overload @:public public function getWindowTitleInactiveForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu background color. This
	* returns the value of {@code getSecondary3()}.
	*
	* @return the menu background color
	*/
	@:overload @:public public function getMenuBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu foreground color. This
	* returns the value of {@code getBlack()}.
	*
	* @return the menu foreground color
	*/
	@:overload @:public public function getMenuForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu selected background color. This
	* returns the value of {@code getPrimary2()}.
	*
	* @return the menu selected background color
	*/
	@:overload @:public public function getMenuSelectedBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu selected foreground color. This
	* returns the value of {@code getBlack()}.
	*
	* @return the menu selected foreground color
	*/
	@:overload @:public public function getMenuSelectedForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu disabled foreground color. This
	* returns the value of {@code getSecondary2()}.
	*
	* @return the menu disabled foreground color
	*/
	@:overload @:public public function getMenuDisabledForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the separator background color. This
	* returns the value of {@code getWhite()}.
	*
	* @return the separator background color
	*/
	@:overload @:public public function getSeparatorBackground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the separator foreground color. This
	* returns the value of {@code getPrimary1()}.
	*
	* @return the separator foreground color
	*/
	@:overload @:public public function getSeparatorForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the accelerator foreground color. This
	* returns the value of {@code getPrimary1()}.
	*
	* @return the accelerator foreground color
	*/
	@:overload @:public public function getAcceleratorForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the accelerator selected foreground color. This
	* returns the value of {@code getBlack()}.
	*
	* @return the accelerator selected foreground color
	*/
	@:overload @:public public function getAcceleratorSelectedForeground() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Adds values specific to this theme to the defaults table. This method
	* is invoked when the look and feel defaults are obtained from
	* {@code MetalLookAndFeel}.
	* <p>
	* This implementation does nothing; it is provided for subclasses
	* that wish to customize the defaults table.
	*
	* @param table the {@code UIDefaults} to add the values to
	*
	* @see MetalLookAndFeel#getDefaults
	*/
	@:overload @:public public function addCustomEntriesToTable(table : javax.swing.UIDefaults) : Void;
	
	
}
