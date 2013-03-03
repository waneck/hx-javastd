package sun.tools.jconsole;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class BorderedComponent extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	@:overload @:public public function new(text : String) : Void;
	
	@:overload @:public public function new(text : String, comp : javax.swing.JComponent) : Void;
	
	@:overload @:public public function new(text : String, comp : javax.swing.JComponent, collapsible : Bool) : Void;
	
	@:overload @:public public function setComponent(comp : javax.swing.JComponent) : Void;
	
	@:overload @:public public function setValueLabel(str : String) : Void;
	
	@:overload @:public public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function doLayout() : Void;
	
	
}
@:native('sun$tools$jconsole$BorderedComponent$ArrowIcon') @:internal extern class BorderedComponent_ArrowIcon implements javax.swing.Icon
{
	@:overload @:public public function new(direction : Int, textLabel : javax.swing.JLabel) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* A subclass of <code>TitledBorder</code> which implements an arbitrary border
* with the addition of a JComponent (JLabel, JPanel, etc) in the
* default position.
* <p>
* If the border property value is not
* specified in the constuctor or by invoking the appropriate
* set method, the property value will be defined by the current
* look and feel, using the following property name in the
* Defaults Table:
* <ul>
* <li>&quot;TitledBorder.border&quot;
* </ul>
*/
@:native('sun$tools$jconsole$BorderedComponent$LabeledBorder') extern class BorderedComponent_LabeledBorder extends javax.swing.border.TitledBorder
{
	@:protected private var label : javax.swing.JComponent;
	
	/**
	* Creates a LabeledBorder instance.
	*
	* @param label  the label the border should display
	*/
	@:overload @:public public function new(label : javax.swing.JComponent) : Void;
	
	/**
	* Creates a LabeledBorder instance with the specified border
	* and an empty label.
	*
	* @param border  the border
	*/
	@:overload @:public public function new(border : javax.swing.border.Border) : Void;
	
	/**
	* Creates a LabeledBorder instance with the specified border and
	* label.
	*
	* @param border  the border
	* @param label  the label the border should display
	*/
	@:overload @:public public function new(border : javax.swing.border.Border, label : javax.swing.JComponent) : Void;
	
	/**
	* Paints the border for the specified component with the
	* specified position and size.
	* @param c the component for which this border is being painted
	* @param g the paint graphics
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the label of the labeled border.
	*/
	@:overload @:public public function getLabel() : javax.swing.JComponent;
	
	/**
	* Sets the title of the titled border.
	* param title the title for the border
	*/
	@:overload @:public public function setLabel(label : javax.swing.JComponent) : Void;
	
	/**
	* Returns the minimum dimensions this border requires
	* in order to fully display the border and title.
	* @param c the component where this border will be drawn
	*/
	@:overload @:public override public function getMinimumSize(c : java.awt.Component) : java.awt.Dimension;
	
	
}
@:native('sun$tools$jconsole$BorderedComponent$FocusBorder') extern class BorderedComponent_FocusBorder extends javax.swing.border.AbstractBorder implements java.awt.event.FocusListener
{
	@:overload @:public public function new(comp : java.awt.Component) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
