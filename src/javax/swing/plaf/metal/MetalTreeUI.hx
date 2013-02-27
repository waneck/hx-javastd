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
* The metal look and feel implementation of <code>TreeUI</code>.
* <p>
* <code>MetalTreeUI</code> allows for configuring how to
* visually render the spacing and delineation between nodes. The following
* hints are supported:
*
* <table summary="Descriptions of supported hints: Angled, Horizontal, and None">
*  <tr>
*    <th><p align="left">Angled</p></th>
*    <td>A line is drawn connecting the child to the parent. For handling
*          of the root node refer to
*          {@link javax.swing.JTree#setRootVisible} and
*          {@link javax.swing.JTree#setShowsRootHandles}.
*    </td>
*  </tr>
*  <tr>
*     <th><p align="left">Horizontal</p></th>
*     <td>A horizontal line is drawn dividing the children of the root node.</td>
*  </tr>
*  <tr>
*      <th><p align="left">None</p></th>
*      <td>Do not draw any visual indication between nodes.</td>
*  </tr>
* </table>
*
* <p>
* As it is typically impratical to obtain the <code>TreeUI</code> from
* the <code>JTree</code> and cast to an instance of <code>MetalTreeUI</code>
* you enable this property via the client property
* <code>JTree.lineStyle</code>. For example, to switch to
* <code>Horizontal</code> style you would do:
* <code>tree.putClientProperty("JTree.lineStyle", "Horizontal");</code>
* <p>
* The default is <code>Angled</code>.
*
* @author Tom Santos
* @author Steve Wilson (value add stuff)
*/
extern class MetalTreeUI extends javax.swing.plaf.basic.BasicTreeUI
{
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new() : Void;
	
	@:overload override private function getHorizontalLegBuffer() : Int;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/** this function converts between the string passed into the client property
	* and the internal representation (currently and int)
	*
	*/
	@:overload private function decodeLineStyle(lineStyleFlag : Dynamic) : Void;
	
	@:overload private function isLocationInExpandControl(row : Int, rowLevel : Int, mouseX : Int, mouseY : Int) : Bool;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload private function paintHorizontalSeparators(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload override private function paintVerticalPartOfLeg(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, path : javax.swing.tree.TreePath) : Void;
	
	@:overload override private function paintHorizontalPartOfLeg(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, bounds : java.awt.Rectangle, path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Void;
	
	
}
/** This class listens for changes in line style */
@:native('javax$swing$plaf$metal$MetalTreeUI$LineListener') @:internal extern class MetalTreeUI_LineListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
