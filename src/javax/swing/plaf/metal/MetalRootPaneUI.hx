package javax.swing.plaf.metal;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Provides the metal look and feel implementation of <code>RootPaneUI</code>.
* <p>
* <code>MetalRootPaneUI</code> provides support for the
* <code>windowDecorationStyle</code> property of <code>JRootPane</code>.
* <code>MetalRootPaneUI</code> does this by way of installing a custom
* <code>LayoutManager</code>, a private <code>Component</code> to render
* the appropriate widgets, and a private <code>Border</code>. The
* <code>LayoutManager</code> is always installed, regardless of the value of
* the <code>windowDecorationStyle</code> property, but the
* <code>Border</code> and <code>Component</code> are only installed/added if
* the <code>windowDecorationStyle</code> is other than
* <code>JRootPane.NONE</code>.
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
* @author Terry Kellerman
* @since 1.4
*/
@:require(java4) extern class MetalRootPaneUI extends javax.swing.plaf.basic.BasicRootPaneUI
{
	/**
	* Creates a UI for a <code>JRootPane</code>.
	*
	* @param c the JRootPane the RootPaneUI will be created for
	* @return the RootPaneUI implementation for the passed in JRootPane
	*/
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Invokes supers implementation of <code>installUI</code> to install
	* the necessary state onto the passed in <code>JRootPane</code>
	* to render the metal look and feel implementation of
	* <code>RootPaneUI</code>. If
	* the <code>windowDecorationStyle</code> property of the
	* <code>JRootPane</code> is other than <code>JRootPane.NONE</code>,
	* this will add a custom <code>Component</code> to render the widgets to
	* <code>JRootPane</code>, as well as installing a custom
	* <code>Border</code> and <code>LayoutManager</code> on the
	* <code>JRootPane</code>.
	*
	* @param c the JRootPane to install state onto
	*/
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Invokes supers implementation to uninstall any of its state. This will
	* also reset the <code>LayoutManager</code> of the <code>JRootPane</code>.
	* If a <code>Component</code> has been added to the <code>JRootPane</code>
	* to render the window decoration style, this method will remove it.
	* Similarly, this will revert the Border and LayoutManager of the
	* <code>JRootPane</code> to what it was before <code>installUI</code>
	* was invoked.
	*
	* @param c the JRootPane to uninstall state from
	*/
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Invoked when a property changes. <code>MetalRootPaneUI</code> is
	* primarily interested in events originating from the
	* <code>JRootPane</code> it has been installed on identifying the
	* property <code>windowDecorationStyle</code>. If the
	* <code>windowDecorationStyle</code> has changed to a value other
	* than <code>JRootPane.NONE</code>, this will add a <code>Component</code>
	* to the <code>JRootPane</code> to render the window decorations, as well
	* as installing a <code>Border</code> on the <code>JRootPane</code>.
	* On the other hand, if the <code>windowDecorationStyle</code> has
	* changed to <code>JRootPane.NONE</code>, this will remove the
	* <code>Component</code> that has been added to the <code>JRootPane</code>
	* as well resetting the Border to what it was before
	* <code>installUI</code> was invoked.
	*
	* @param e A PropertyChangeEvent object describing the event source
	*          and the property that has changed.
	*/
	@:overload override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* A custom layout manager that is responsible for the layout of
* layeredPane, glassPane, menuBar and titlePane, if one has been
* installed.
*/
@:native('javax$swing$plaf$metal$MetalRootPaneUI$MetalRootLayout') @:internal extern class MetalRootPaneUI_MetalRootLayout implements java.awt.LayoutManager2
{
	/**
	* Returns the amount of space the layout would like to have.
	*
	* @param the Container for which this layout manager is being used
	* @return a Dimension object containing the layout's preferred size
	*/
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum amount of space the layout needs.
	*
	* @param the Container for which this layout manager is being used
	* @return a Dimension object containing the layout's minimum size
	*/
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum amount of space the layout can use.
	*
	* @param the Container for which this layout manager is being used
	* @return a Dimension object containing the layout's maximum size
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Instructs the layout manager to perform the layout for the specified
	* container.
	*
	* @param the Container for which this layout manager is being used
	*/
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	@:overload public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	@:overload public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	@:overload public function invalidateLayout(target : java.awt.Container) : Void;
	
	
}
/**
* MouseInputHandler is responsible for handling resize/moving of
* the Window. It sets the cursor directly on the Window when then
* mouse moves over a hot spot.
*/
@:native('javax$swing$plaf$metal$MetalRootPaneUI$MouseInputHandler') @:internal extern class MetalRootPaneUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload public function mousePressed(ev : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(ev : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(ev : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(ev : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(ev : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(ev : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseClicked(ev : java.awt.event.MouseEvent) : Void;
	
	
}
