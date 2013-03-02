package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Metal's split pane divider
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
* @author Ralph kar
*/
@:internal extern class MetalSplitPaneDivider extends javax.swing.plaf.basic.BasicSplitPaneDivider
{
	@:overload public function new(ui : javax.swing.plaf.basic.BasicSplitPaneUI) : Void;
	
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Creates and return an instance of JButton that can be used to
	* collapse the left component in the metal split pane.
	*/
	@:overload private function createLeftOneTouchButton() : javax.swing.JButton;
	
	/**
	* Creates and return an instance of JButton that can be used to
	* collapse the right component in the metal split pane.
	*/
	@:overload private function createRightOneTouchButton() : javax.swing.JButton;
	
	
}
/**
* Used to layout a MetalSplitPaneDivider. Layout for the divider
* involves appropriately moving the left/right buttons around.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of MetalSplitPaneDivider.
*/
@:native('javax$swing$plaf$metal$MetalSplitPaneDivider$MetalDividerLayout') extern class MetalSplitPaneDivider_MetalDividerLayout implements java.awt.LayoutManager
{
	@:overload public function layoutContainer(c : java.awt.Container) : Void;
	
	@:overload public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload public function addLayoutComponent(string : String, c : java.awt.Component) : Void;
	
	
}
