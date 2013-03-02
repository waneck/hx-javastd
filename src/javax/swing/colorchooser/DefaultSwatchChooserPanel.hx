package javax.swing.colorchooser;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* The standard color swatch chooser.
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
* @author Steve Wilson
*/
@:internal extern class DefaultSwatchChooserPanel extends javax.swing.colorchooser.AbstractColorChooserPanel
{
	@:overload public function new() : Void;
	
	@:overload override public function getDisplayName() : String;
	
	/**
	* Provides a hint to the look and feel as to the
	* <code>KeyEvent.VK</code> constant that can be used as a mnemonic to
	* access the panel. A return value <= 0 indicates there is no mnemonic.
	* <p>
	* The return value here is a hint, it is ultimately up to the look
	* and feel to honor the return value in some meaningful way.
	* <p>
	* This implementation looks up the value from the default
	* <code>ColorChooser.swatchesMnemonic</code>, or if it
	* isn't available (or not an <code>Integer</code>) returns -1.
	* The lookup for the default is done through the <code>UIManager</code>:
	* <code>UIManager.get("ColorChooser.swatchesMnemonic");</code>.
	*
	* @return KeyEvent.VK constant identifying the mnemonic; <= 0 for no
	*         mnemonic
	* @see #getDisplayedMnemonicIndex
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getMnemonic() : Int;
	
	/**
	* Provides a hint to the look and feel as to the index of the character in
	* <code>getDisplayName</code> that should be visually identified as the
	* mnemonic. The look and feel should only use this if
	* <code>getMnemonic</code> returns a value > 0.
	* <p>
	* The return value here is a hint, it is ultimately up to the look
	* and feel to honor the return value in some meaningful way. For example,
	* a look and feel may wish to render each
	* <code>AbstractColorChooserPanel</code> in a <code>JTabbedPane</code>,
	* and further use this return value to underline a character in
	* the <code>getDisplayName</code>.
	* <p>
	* This implementation looks up the value from the default
	* <code>ColorChooser.rgbDisplayedMnemonicIndex</code>, or if it
	* isn't available (or not an <code>Integer</code>) returns -1.
	* The lookup for the default is done through the <code>UIManager</code>:
	* <code>UIManager.get("ColorChooser.swatchesDisplayedMnemonicIndex");</code>.
	*
	* @return Character index to render mnemonic for; -1 to provide no
	*                   visual identifier for this panel.
	* @see #getMnemonic
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getDisplayedMnemonicIndex() : Int;
	
	@:overload override public function getSmallDisplayIcon() : javax.swing.Icon;
	
	@:overload override public function getLargeDisplayIcon() : javax.swing.Icon;
	
	/**
	* The background color, foreground color, and font are already set to the
	* defaults from the defaults table before this method is called.
	*/
	@:overload override public function installChooserPanel(enclosingChooser : javax.swing.JColorChooser) : Void;
	
	@:overload override private function buildChooser() : Void;
	
	@:overload override public function uninstallChooserPanel(enclosingChooser : javax.swing.JColorChooser) : Void;
	
	@:overload override public function updateChooser() : Void;
	
	
}
@:native('javax$swing$colorchooser$DefaultSwatchChooserPanel$RecentSwatchListener') @:internal extern class DefaultSwatchChooserPanel_RecentSwatchListener extends java.awt.event.MouseAdapter implements java.io.Serializable
{
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$colorchooser$DefaultSwatchChooserPanel$MainSwatchListener') @:internal extern class DefaultSwatchChooserPanel_MainSwatchListener extends java.awt.event.MouseAdapter implements java.io.Serializable
{
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:internal extern class SwatchPanel extends javax.swing.JPanel
{
	private var colors : java.NativeArray<java.awt.Color>;
	
	private var swatchSize : java.awt.Dimension;
	
	private var numSwatches : java.awt.Dimension;
	
	private var gap : java.awt.Dimension;
	
	@:overload public function new() : Void;
	
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload private function initValues() : Void;
	
	@:overload public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload private function initColors() : Void;
	
	@:overload public function getToolTipText(e : java.awt.event.MouseEvent) : String;
	
	@:overload public function getColorForLocation(x : Int, y : Int) : java.awt.Color;
	
	
}
@:internal extern class RecentSwatchPanel extends javax.swing.colorchooser.DefaultSwatchChooserPanel.SwatchPanel
{
	@:overload override private function initValues() : Void;
	
	@:overload override private function initColors() : Void;
	
	@:overload public function setMostRecentColor(c : java.awt.Color) : Void;
	
	
}
@:internal extern class MainSwatchPanel extends javax.swing.colorchooser.DefaultSwatchChooserPanel.SwatchPanel
{
	@:overload override private function initValues() : Void;
	
	@:overload override private function initColors() : Void;
	
	
}
