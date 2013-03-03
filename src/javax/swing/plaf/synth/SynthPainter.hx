package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2005, Oracle and/or its affiliates. All rights reserved.
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
* <code>SynthPainter</code> is used for painting portions of
* <code>JComponent</code>s. At a minimum each <code>JComponent</code>
* has two paint methods: one for the border and one for the background. Some
* <code>JComponent</code>s have more than one <code>Region</code>, and as
* a consequence more paint methods.
* <p>
* Instances of <code>SynthPainter</code> are obtained from the
* {@link javax.swing.plaf.synth.SynthStyle#getPainter} method.
* <p>
* You typically supply a <code>SynthPainter</code> by way of Synth's
* <a href="doc-files/synthFileFormat.html">file</a> format. The following
* example registers a painter for all <code>JButton</code>s that will
* render the image <code>myImage.png</code>:
* <pre>
*  &lt;style id="buttonStyle">
*    &lt;imagePainter path="myImage.png" sourceInsets="2 2 2 2"
*                  paintCenter="true" stretch="true"/>
*    &lt;insets top="2" bottom="2" left="2" right="2"/>
*  &lt;/style>
*  &lt;bind style="buttonStyle" type="REGION" key="button"/>
*</pre>
* <p>
* <code>SynthPainter</code> is abstract in so far as it does no painting,
* all the methods
* are empty. While none of these methods are typed to throw an exception,
* subclasses can assume that valid arguments are passed in, and if not
* they can throw a <code>NullPointerException</code> or
* <code>IllegalArgumentException</code> in response to invalid arguments.
*
* @since 1.5
* @author Scott Violet
*/
@:require(java5) extern class SynthPainter
{
	/**
	* Paints the background of an arrow button. Arrow buttons are created by
	* some components, such as <code>JScrollBar</code>.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintArrowButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of an arrow button. Arrow buttons are created by
	* some components, such as <code>JScrollBar</code>.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintArrowButtonBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the foreground of an arrow button. This method is responsible
	* for drawing a graphical representation of a direction, typically
	* an arrow. Arrow buttons are created by
	* some components, such as <code>JScrollBar</code>
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param direction One of SwingConstants.NORTH, SwingConstants.SOUTH
	*                  SwingConstants.EAST or SwingConstants.WEST
	*/
	@:overload @:public public function paintArrowButtonForeground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, direction : Int) : Void;
	
	/**
	* Paints the background of a button.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a button.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintButtonBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a check box menu item.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintCheckBoxMenuItemBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a check box menu item.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintCheckBoxMenuItemBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a check box.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintCheckBoxBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a check box.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintCheckBoxBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a color chooser.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintColorChooserBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a color chooser.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintColorChooserBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a combo box.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintComboBoxBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a combo box.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintComboBoxBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a desktop icon.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintDesktopIconBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a desktop icon.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintDesktopIconBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a desktop pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintDesktopPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a desktop pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintDesktopPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of an editor pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintEditorPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of an editor pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintEditorPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a file chooser.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintFileChooserBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a file chooser.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintFileChooserBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a formatted text field.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintFormattedTextFieldBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a formatted text field.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintFormattedTextFieldBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of an internal frame title pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintInternalFrameTitlePaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of an internal frame title pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintInternalFrameTitlePaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of an internal frame.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintInternalFrameBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of an internal frame.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintInternalFrameBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a label.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintLabelBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a label.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintLabelBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a list.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintListBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a list.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintListBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a menu bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintMenuBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a menu bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintMenuBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a menu item.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintMenuItemBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a menu item.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintMenuItemBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a menu.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintMenuBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a menu.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintMenuBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of an option pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintOptionPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of an option pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintOptionPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a panel.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintPanelBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a panel.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintPanelBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a password field.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintPasswordFieldBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a password field.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintPasswordFieldBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a popup menu.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintPopupMenuBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a popup menu.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintPopupMenuBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a progress bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintProgressBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a progress bar. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation one of <code>JProgressBar.HORIZONTAL</code> or
	*                    <code>JProgressBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintProgressBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of a progress bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintProgressBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a progress bar. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation one of <code>JProgressBar.HORIZONTAL</code> or
	*                    <code>JProgressBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintProgressBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the foreground of a progress bar. is responsible for
	* providing an indication of the progress of the progress bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation one of <code>JProgressBar.HORIZONTAL</code> or
	*                    <code>JProgressBar.VERTICAL</code>
	*/
	@:overload @:public public function paintProgressBarForeground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a radio button menu item.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintRadioButtonMenuItemBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a radio button menu item.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintRadioButtonMenuItemBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a radio button.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintRadioButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a radio button.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintRadioButtonBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a root pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintRootPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a root pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintRootPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a scrollbar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintScrollBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a scrollbar. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation Orientation of the JScrollBar, one of
	*                    <code>JScrollBar.HORIZONTAL</code> or
	*                    <code>JScrollBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintScrollBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of a scrollbar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintScrollBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a scrollbar. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation Orientation of the JScrollBar, one of
	*                    <code>JScrollBar.HORIZONTAL</code> or
	*                    <code>JScrollBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintScrollBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the thumb of a scrollbar. The thumb provides
	* a graphical indication as to how much of the Component is visible in a
	* <code>JScrollPane</code>.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation Orientation of the JScrollBar, one of
	*                    <code>JScrollBar.HORIZONTAL</code> or
	*                    <code>JScrollBar.VERTICAL</code>
	*/
	@:overload @:public public function paintScrollBarThumbBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the thumb of a scrollbar. The thumb provides
	* a graphical indication as to how much of the Component is visible in a
	* <code>JScrollPane</code>.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation Orientation of the JScrollBar, one of
	*                    <code>JScrollBar.HORIZONTAL</code> or
	*                    <code>JScrollBar.VERTICAL</code>
	*/
	@:overload @:public public function paintScrollBarThumbBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the track of a scrollbar. The track contains
	* the thumb.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintScrollBarTrackBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the track of a scrollbar. The track contains
	* the thumb. This implementation invokes the method of the same name without
	* the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation Orientation of the JScrollBar, one of
	*                    <code>JScrollBar.HORIZONTAL</code> or
	*                    <code>JScrollBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintScrollBarTrackBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the track of a scrollbar. The track contains
	* the thumb.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintScrollBarTrackBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the track of a scrollbar. The track contains
	* the thumb. This implementation invokes the method of the same name without
	* the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation Orientation of the JScrollBar, one of
	*                    <code>JScrollBar.HORIZONTAL</code> or
	*                    <code>JScrollBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintScrollBarTrackBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a scroll pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintScrollPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a scroll pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintScrollPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a separator.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSeparatorBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a separator. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSeparator.HORIZONTAL</code> or
	*                           <code>JSeparator.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSeparatorBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of a separator.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSeparatorBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a separator. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSeparator.HORIZONTAL</code> or
	*                           <code>JSeparator.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSeparatorBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the foreground of a separator.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSeparator.HORIZONTAL</code> or
	*                           <code>JSeparator.VERTICAL</code>
	*/
	@:overload @:public public function paintSeparatorForeground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a slider.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSliderBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a slider. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSlider.HORIZONTAL</code> or
	*                           <code>JSlider.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSliderBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of a slider.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSliderBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a slider. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSlider.HORIZONTAL</code> or
	*                           <code>JSlider.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSliderBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the thumb of a slider.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSlider.HORIZONTAL</code> or
	*                           <code>JSlider.VERTICAL</code>
	*/
	@:overload @:public public function paintSliderThumbBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the thumb of a slider.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSlider.HORIZONTAL</code> or
	*                           <code>JSlider.VERTICAL</code>
	*/
	@:overload @:public public function paintSliderThumbBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the track of a slider.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSliderTrackBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the track of a slider. This implementation invokes
	* the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSlider.HORIZONTAL</code> or
	*                           <code>JSlider.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSliderTrackBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the track of a slider.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSliderTrackBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the track of a slider. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSlider.HORIZONTAL</code> or
	*                           <code>JSlider.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSliderTrackBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a spinner.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSpinnerBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a spinner.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSpinnerBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the divider of a split pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSplitPaneDividerBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the divider of a split pane. This implementation
	* invokes the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                           <code>JSplitPane.VERTICAL_SPLIT</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintSplitPaneDividerBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the foreground of the divider of a split pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                           <code>JSplitPane.VERTICAL_SPLIT</code>
	*/
	@:overload @:public public function paintSplitPaneDividerForeground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the divider, when the user is dragging the divider, of a
	* split pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                           <code>JSplitPane.VERTICAL_SPLIT</code>
	*/
	@:overload @:public public function paintSplitPaneDragDivider(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a split pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSplitPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a split pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintSplitPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTabbedPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTabbedPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the area behind the tabs of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTabbedPaneTabAreaBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the area behind the tabs of a tabbed pane.
	* This implementation invokes the method of the same name without the
	* orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JTabbedPane.TOP</code>,
	*                    <code>JTabbedPane.LEFT</code>,
	*                    <code>JTabbedPane.BOTTOM</code>, or
	*                    <code>JTabbedPane.RIGHT</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintTabbedPaneTabAreaBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the area behind the tabs of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTabbedPaneTabAreaBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the area behind the tabs of a tabbed pane. This
	* implementation invokes the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JTabbedPane.TOP</code>,
	*                    <code>JTabbedPane.LEFT</code>,
	*                    <code>JTabbedPane.BOTTOM</code>, or
	*                    <code>JTabbedPane.RIGHT</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintTabbedPaneTabAreaBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a tab of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param tabIndex Index of tab being painted.
	*/
	@:overload @:public public function paintTabbedPaneTabBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, tabIndex : Int) : Void;
	
	/**
	* Paints the background of a tab of a tabbed pane. This implementation
	* invokes the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param tabIndex Index of tab being painted.
	* @param orientation One of <code>JTabbedPane.TOP</code>,
	*                    <code>JTabbedPane.LEFT</code>,
	*                    <code>JTabbedPane.BOTTOM</code>, or
	*                    <code>JTabbedPane.RIGHT</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintTabbedPaneTabBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, tabIndex : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of a tab of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param tabIndex Index of tab being painted.
	*/
	@:overload @:public public function paintTabbedPaneTabBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, tabIndex : Int) : Void;
	
	/**
	* Paints the border of a tab of a tabbed pane. This implementation invokes
	* the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param tabIndex Index of tab being painted.
	* @param orientation One of <code>JTabbedPane.TOP</code>,
	*                    <code>JTabbedPane.LEFT</code>,
	*                    <code>JTabbedPane.BOTTOM</code>, or
	*                    <code>JTabbedPane.RIGHT</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintTabbedPaneTabBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, tabIndex : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the area that contains the content of the
	* selected tab of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTabbedPaneContentBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the area that contains the content of the
	* selected tab of a tabbed pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTabbedPaneContentBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the header of a table.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTableHeaderBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the header of a table.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTableHeaderBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a table.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTableBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a table.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTableBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a text area.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTextAreaBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a text area.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTextAreaBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a text pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTextPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a text pane.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTextPaneBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a text field.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTextFieldBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a text field.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTextFieldBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a toggle button.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToggleButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a toggle button.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToggleButtonBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a tool bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a tool bar. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JToolBar.HORIZONTAL</code> or
	*                           <code>JToolBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintToolBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of a tool bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a tool bar. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JToolBar.HORIZONTAL</code> or
	*                           <code>JToolBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintToolBarBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the tool bar's content area.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolBarContentBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the tool bar's content area. This implementation
	* invokes the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JToolBar.HORIZONTAL</code> or
	*                           <code>JToolBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintToolBarContentBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the content area of a tool bar.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolBarContentBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the content area of a tool bar. This implementation
	* invokes the method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JToolBar.HORIZONTAL</code> or
	*                           <code>JToolBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintToolBarContentBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of the window containing the tool bar when it
	* has been detached from its primary frame.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolBarDragWindowBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the window containing the tool bar when it
	* has been detached from its primary frame. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JToolBar.HORIZONTAL</code> or
	*                           <code>JToolBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintToolBarDragWindowBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the border of the window containing the tool bar when it
	* has been detached from it's primary frame.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolBarDragWindowBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the window containing the tool bar when it
	* has been detached from it's primary frame. This implementation invokes the
	* method of the same name without the orientation.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	* @param orientation One of <code>JToolBar.HORIZONTAL</code> or
	*                           <code>JToolBar.VERTICAL</code>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function paintToolBarDragWindowBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	/**
	* Paints the background of a tool tip.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolTipBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a tool tip.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintToolTipBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of a tree.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTreeBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a tree.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTreeBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the row containing a cell in a tree.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTreeCellBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of the row containing a cell in a tree.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTreeCellBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the focus indicator for a cell in a tree when it has focus.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintTreeCellFocus(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the background of the viewport.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintViewportBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the border of a viewport.
	*
	* @param context SynthContext identifying the <code>JComponent</code> and
	*        <code>Region</code> to paint to
	* @param g <code>Graphics</code> to paint to
	* @param x X coordinate of the area to paint to
	* @param y Y coordinate of the area to paint to
	* @param w Width of the area to paint to
	* @param h Height of the area to paint to
	*/
	@:overload @:public public function paintViewportBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
