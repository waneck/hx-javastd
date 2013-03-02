package com.sun.java.swing.plaf.gtk;
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
/**
* A color chooser panel mimicking that of GTK's: a color wheel showing
* hue and a triangle that varies saturation and brightness.
*
* @author Scott Violet
*/
@:internal extern class GTKColorChooserPanel extends javax.swing.colorchooser.AbstractColorChooserPanel implements javax.swing.event.ChangeListener
{
	/**
	* Returns a user presentable description of this GTKColorChooserPane.
	*/
	@:overload override public function getDisplayName() : String;
	
	/**
	* Returns the mnemonic to use with <code>getDisplayName</code>.
	*/
	@:overload override public function getMnemonic() : Int;
	
	/**
	* Character to underline that represents the mnemonic.
	*/
	@:overload override public function getDisplayedMnemonicIndex() : Int;
	
	@:overload override public function getSmallDisplayIcon() : javax.swing.Icon;
	
	@:overload override public function getLargeDisplayIcon() : javax.swing.Icon;
	
	@:overload override public function uninstallChooserPanel(enclosingChooser : javax.swing.JColorChooser) : Void;
	
	/**
	* Builds and configures the widgets for the GTKColorChooserPanel.
	*/
	@:overload override private function buildChooser() : Void;
	
	/**
	* Refreshes the display from the model.
	*/
	@:overload override public function updateChooser() : Void;
	
	@:overload public function getColor() : java.awt.Color;
	
	/**
	* ChangeListener method, updates the necessary display widgets.
	*/
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Class responsible for rendering a color wheel and color triangle.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKColorChooserPanel$ColorTriangle') @:internal extern class GTKColorChooserPanel_ColorTriangle extends javax.swing.JPanel
{
	@:overload public function new() : Void;
	
	/**
	* Resets the selected color.
	*/
	@:overload public function setColor(h : Single, s : Single, b : Single) : Void;
	
	/**
	* Returns the selected color.
	*/
	@:overload public function getColor() : java.awt.Color;
	
	@:overload override private function processEvent(e : java.awt.AWTEvent) : Void;
	
	@:overload public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
/**
* Action class used for colors.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKColorChooserPanel$ColorAction') @:internal extern class GTKColorChooserPanel_ColorAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKColorChooserPanel$OpaqueLabel') @:internal extern class GTKColorChooserPanel_OpaqueLabel extends javax.swing.JLabel
{
	@:overload public function isOpaque() : Bool;
	
	
}
