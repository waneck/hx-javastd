package javax.swing.tree;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultTreeCellRenderer extends javax.swing.JLabel implements javax.swing.tree.TreeCellRenderer
{
	/** Is the value currently selected. */
	@:protected private var selected : Bool;
	
	/** True if has focus. */
	@:protected private var hasFocus : Bool;
	
	/** Icon used to show non-leaf nodes that aren't expanded. */
	@:transient @:protected private var closedIcon : javax.swing.Icon;
	
	/** Icon used to show leaf nodes. */
	@:transient @:protected private var leafIcon : javax.swing.Icon;
	
	/** Icon used to show non-leaf nodes that are expanded. */
	@:transient @:protected private var openIcon : javax.swing.Icon;
	
	/** Color to use for the foreground for selected nodes. */
	@:protected private var textSelectionColor : java.awt.Color;
	
	/** Color to use for the foreground for non-selected nodes. */
	@:protected private var textNonSelectionColor : java.awt.Color;
	
	/** Color to use for the background when a node is selected. */
	@:protected private var backgroundSelectionColor : java.awt.Color;
	
	/** Color to use for the background when the node isn't selected. */
	@:protected private var backgroundNonSelectionColor : java.awt.Color;
	
	/** Color to use for the focus indicator when the node has focus. */
	@:protected private var borderSelectionColor : java.awt.Color;
	
	/**
	* Creates a {@code DefaultTreeCellRenderer}. Icons and text color are
	* determined from the {@code UIManager}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* {@inheritDoc}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the default icon, for the current laf, that is used to
	* represent non-leaf nodes that are expanded.
	*/
	@:overload @:public public function getDefaultOpenIcon() : javax.swing.Icon;
	
	/**
	* Returns the default icon, for the current laf, that is used to
	* represent non-leaf nodes that are not expanded.
	*/
	@:overload @:public public function getDefaultClosedIcon() : javax.swing.Icon;
	
	/**
	* Returns the default icon, for the current laf, that is used to
	* represent leaf nodes.
	*/
	@:overload @:public public function getDefaultLeafIcon() : javax.swing.Icon;
	
	/**
	* Sets the icon used to represent non-leaf nodes that are expanded.
	*/
	@:overload @:public public function setOpenIcon(newIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon used to represent non-leaf nodes that are expanded.
	*/
	@:overload @:public public function getOpenIcon() : javax.swing.Icon;
	
	/**
	* Sets the icon used to represent non-leaf nodes that are not expanded.
	*/
	@:overload @:public public function setClosedIcon(newIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon used to represent non-leaf nodes that are not
	* expanded.
	*/
	@:overload @:public public function getClosedIcon() : javax.swing.Icon;
	
	/**
	* Sets the icon used to represent leaf nodes.
	*/
	@:overload @:public public function setLeafIcon(newIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon used to represent leaf nodes.
	*/
	@:overload @:public public function getLeafIcon() : javax.swing.Icon;
	
	/**
	* Sets the color the text is drawn with when the node is selected.
	*/
	@:overload @:public public function setTextSelectionColor(newColor : java.awt.Color) : Void;
	
	/**
	* Returns the color the text is drawn with when the node is selected.
	*/
	@:overload @:public public function getTextSelectionColor() : java.awt.Color;
	
	/**
	* Sets the color the text is drawn with when the node isn't selected.
	*/
	@:overload @:public public function setTextNonSelectionColor(newColor : java.awt.Color) : Void;
	
	/**
	* Returns the color the text is drawn with when the node isn't selected.
	*/
	@:overload @:public public function getTextNonSelectionColor() : java.awt.Color;
	
	/**
	* Sets the color to use for the background if node is selected.
	*/
	@:overload @:public public function setBackgroundSelectionColor(newColor : java.awt.Color) : Void;
	
	/**
	* Returns the color to use for the background if node is selected.
	*/
	@:overload @:public public function getBackgroundSelectionColor() : java.awt.Color;
	
	/**
	* Sets the background color to be used for non selected nodes.
	*/
	@:overload @:public public function setBackgroundNonSelectionColor(newColor : java.awt.Color) : Void;
	
	/**
	* Returns the background color to be used for non selected nodes.
	*/
	@:overload @:public public function getBackgroundNonSelectionColor() : java.awt.Color;
	
	/**
	* Sets the color to use for the border.
	*/
	@:overload @:public public function setBorderSelectionColor(newColor : java.awt.Color) : Void;
	
	/**
	* Returns the color the border is drawn.
	*/
	@:overload @:public public function getBorderSelectionColor() : java.awt.Color;
	
	/**
	* Subclassed to map <code>FontUIResource</code>s to null. If
	* <code>font</code> is null, or a <code>FontUIResource</code>, this
	* has the effect of letting the font of the JTree show
	* through. On the other hand, if <code>font</code> is non-null, and not
	* a <code>FontUIResource</code>, the font becomes <code>font</code>.
	*/
	@:overload @:public override public function setFont(font : java.awt.Font) : Void;
	
	/**
	* Gets the font of this component.
	* @return this component's font; if a font has not been set
	* for this component, the font of its parent is returned
	*/
	@:overload @:public override public function getFont() : java.awt.Font;
	
	/**
	* Subclassed to map <code>ColorUIResource</code>s to null. If
	* <code>color</code> is null, or a <code>ColorUIResource</code>, this
	* has the effect of letting the background color of the JTree show
	* through. On the other hand, if <code>color</code> is non-null, and not
	* a <code>ColorUIResource</code>, the background becomes
	* <code>color</code>.
	*/
	@:overload @:public override public function setBackground(color : java.awt.Color) : Void;
	
	/**
	* Configures the renderer based on the passed in components.
	* The value is set from messaging the tree with
	* <code>convertValueToText</code>, which ultimately invokes
	* <code>toString</code> on <code>value</code>.
	* The foreground color is set based on the selection and the icon
	* is set based on the <code>leaf</code> and <code>expanded</code>
	* parameters.
	*/
	@:overload @:public public function getTreeCellRendererComponent(tree : javax.swing.JTree, value : Dynamic, sel : Bool, expanded : Bool, leaf : Bool, row : Int, hasFocus : Bool) : java.awt.Component;
	
	/**
	* Paints the value.  The background is filled based on selected.
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Overrides <code>JComponent.getPreferredSize</code> to
	* return slightly wider preferred size value.
	*/
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function validate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function invalidate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function revalidate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function repaint(r : java.awt.Rectangle) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function repaint() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:protected override private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : java.StdTypes.Int8, newValue : java.StdTypes.Int8) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : java.StdTypes.Char16, newValue : java.StdTypes.Char16) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : java.StdTypes.Int16, newValue : java.StdTypes.Int16) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : Int, newValue : Int) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : haxe.Int64, newValue : haxe.Int64) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : Single, newValue : Single) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : Float, newValue : Float) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload @:public override public function firePropertyChange(propertyName : String, oldValue : Bool, newValue : Bool) : Void;
	
	
}
