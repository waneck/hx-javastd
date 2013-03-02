package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicLabelUI extends javax.swing.plaf.LabelUI implements java.beans.PropertyChangeListener
{
	/**
	* The default <code>BasicLabelUI</code> instance. This field might
	* not be used. To change the default instance use a subclass which
	* overrides the <code>createUI</code> method, and place that class
	* name in defaults table under the key "LabelUI".
	*/
	private static var labelUI : javax.swing.plaf.basic.BasicLabelUI;
	
	/**
	* Forwards the call to SwingUtilities.layoutCompoundLabel().
	* This method is here so that a subclass could do Label specific
	* layout and to shorten the method name a little.
	*
	* @see SwingUtilities#layoutCompoundLabel
	*/
	@:overload private function layoutCL(label : javax.swing.JLabel, fontMetrics : java.awt.FontMetrics, text : String, icon : javax.swing.Icon, viewR : java.awt.Rectangle, iconR : java.awt.Rectangle, textR : java.awt.Rectangle) : String;
	
	/**
	* Paint clippedText at textX, textY with the labels foreground color.
	*
	* @see #paint
	* @see #paintDisabledText
	*/
	@:overload private function paintEnabledText(l : javax.swing.JLabel, g : java.awt.Graphics, s : String, textX : Int, textY : Int) : Void;
	
	/**
	* Paint clippedText at textX, textY with background.lighter() and then
	* shifted down and to the right by one pixel with background.darker().
	*
	* @see #paint
	* @see #paintEnabledText
	*/
	@:overload private function paintDisabledText(l : javax.swing.JLabel, g : java.awt.Graphics, s : String, textX : Int, textY : Int) : Void;
	
	/**
	* Paints the label text with the foreground color, if the label is opaque
	* then paints the entire background with the background color. The Label
	* text is drawn by {@link #paintEnabledText} or {@link #paintDisabledText}.
	* The locations of the label parts are computed by {@link #layoutCL}.
	*
	* @see #paintEnabledText
	* @see #paintDisabledText
	* @see #layoutCL
	*/
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* @return getPreferredSize(c)
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* @return getPreferredSize(c)
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults(c : javax.swing.JLabel) : Void;
	
	@:overload private function installListeners(c : javax.swing.JLabel) : Void;
	
	@:overload private function installComponents(c : javax.swing.JLabel) : Void;
	
	@:overload private function installKeyboardActions(l : javax.swing.JLabel) : Void;
	
	@:overload private function uninstallDefaults(c : javax.swing.JLabel) : Void;
	
	@:overload private function uninstallListeners(c : javax.swing.JLabel) : Void;
	
	@:overload private function uninstallComponents(c : javax.swing.JLabel) : Void;
	
	@:overload private function uninstallKeyboardActions(c : javax.swing.JLabel) : Void;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicLabelUI$Actions') @:internal extern class BasicLabelUI_Actions extends sun.swing.UIAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
