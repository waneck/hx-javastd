package sun.swing;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultLayoutStyle extends javax.swing.LayoutStyle
{
	@:overload public static function getInstance() : javax.swing.LayoutStyle;
	
	@:overload public function getPreferredGap(component1 : javax.swing.JComponent, component2 : javax.swing.JComponent, type : javax.swing.LayoutStyle.LayoutStyle_ComponentPlacement, position : Int, parent : java.awt.Container) : Int;
	
	@:overload public function getContainerGap(component : javax.swing.JComponent, position : Int, parent : java.awt.Container) : Int;
	
	/**
	* Returns true if the classes identify a JLabel and a non-JLabel
	* along the horizontal axis.
	*/
	@:overload private function isLabelAndNonlabel(c1 : javax.swing.JComponent, c2 : javax.swing.JComponent, position : Int) : Bool;
	
	/**
	* For some look and feels check boxs and radio buttons typically
	* don't paint the border, yet they have padding for a border.  Look
	* and feel guidelines generally don't include this space.  Use
	* this method to subtract this space from the specified
	* components.
	*
	* @param source First component
	* @param target Second component
	* @param position Position doing layout along.
	* @param offset Ideal offset, not including border/margin
	* @return offset - border/margin around the component.
	*/
	@:overload private function getButtonGap(source : javax.swing.JComponent, target : javax.swing.JComponent, position : Int, offset : Int) : Int;
	
	/**
	* For some look and feels check boxs and radio buttons typically
	* don't paint the border, yet they have padding for a border.  Look
	* and feel guidelines generally don't include this space.  Use
	* this method to subtract this space from the specified
	* components.
	*
	* @param source Component
	* @param position Position doing layout along.
	* @param offset Ideal offset, not including border/margin
	* @return offset - border/margin around the component.
	*/
	@:overload private function getButtonGap(source : javax.swing.JComponent, position : Int, offset : Int) : Int;
	
	/**
	* If <code>c</code> is a check box or radio button, and the border is
	* not painted this returns the inset along the specified axis.
	*/
	@:overload public function getButtonGap(c : javax.swing.JComponent, position : Int) : Int;
	
	@:overload private function flipDirection(position : Int) : Int;
	
	/**
	* Returns the amount to indent the specified component if it's
	* a JCheckBox or JRadioButton.  If the component is not a JCheckBox or
	* JRadioButton, 0 will be returned.
	*/
	@:overload private function getIndent(c : javax.swing.JComponent, position : Int) : Int;
	
	
}
