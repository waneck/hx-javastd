package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SynthComboBoxUI extends javax.swing.plaf.basic.BasicComboBoxUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param c component to create UI object for
	* @return the UI object
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*
	* Overridden to ensure that ButtonHandler is created prior to any of
	* the other installXXX methods, since several of them reference
	* buttonHandler.
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createPopup() : javax.swing.plaf.basic.ComboPopup;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createRenderer() : javax.swing.ListCellRenderer<Dynamic>;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createEditor() : javax.swing.ComboBoxEditor;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function createArrowButton() : javax.swing.JButton;
	
	/**
	* Notifies this UI delegate to repaint the specified component.
	* This method paints the component background, then calls
	* the {@link #paint(SynthContext,Graphics)} method.
	*
	* <p>In general, this method does not need to be overridden by subclasses.
	* All Look and Feel rendering code should reside in the {@code paint} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload @:public override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component according to the Look and Feel.
	* <p>This method is not used by Synth Look and Feel.
	* Painting is handled by the {@link #paint(SynthContext,Graphics)} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload @:protected private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the currently selected item.
	*/
	@:overload @:public override public function paintCurrentValue(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	/**
	* Returns the default size of an empty display area of the combo box using
	* the current renderer and font.
	*
	* This method was overridden to use SynthComboBoxRenderer instead of
	* DefaultListCellRenderer as the default renderer when calculating the
	* size of the combo box. This is used in the case of the combo not having
	* any data.
	*
	* @return the size of an empty display area
	* @see #getDisplaySize
	*/
	@:overload @:protected override private function getDefaultSize() : java.awt.Dimension;
	
	
}
/**
* From BasicComboBoxRenderer v 1.18.
*
* Be aware that SynthFileChooserUIImpl relies on the fact that the default
* renderer installed on a Synth combo box is a JLabel. If this is changed,
* then an assert will fail in SynthFileChooserUIImpl
*/
@:native('javax$swing$plaf$synth$SynthComboBoxUI$SynthComboBoxRenderer') @:internal extern class SynthComboBoxUI_SynthComboBoxRenderer extends javax.swing.JLabel implements javax.swing.ListCellRenderer<Dynamic> implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getName() : String;
	
	@:overload @:public public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthComboBoxUI$SynthComboBoxEditor') @:internal extern class SynthComboBoxUI_SynthComboBoxEditor extends javax.swing.plaf.basic.BasicComboBoxEditor.BasicComboBoxEditor_UIResource
{
	@:overload @:public override public function createEditorComponent() : javax.swing.JTextField;
	
	
}
/**
* Handles all the logic for treating the combo as a button when it is
* not editable, and when shouldActLikeButton() is true. This class is a
* special ButtonModel, and installed on the arrowButton when appropriate.
* It also is installed as a mouse listener and mouse motion listener on
* the combo box. In this way, the state between the button and combo
* are in sync. Whenever one is "over" both are. Whenever one is pressed,
* both are.
*/
@:native('javax$swing$plaf$synth$SynthComboBoxUI$ButtonHandler') @:internal extern class SynthComboBoxUI_ButtonHandler extends javax.swing.DefaultButtonModel implements java.awt.event.MouseListener implements javax.swing.event.PopupMenuListener
{
	/**
	* @inheritDoc
	*
	* Ensures that isPressed() will return true if the combo is pressed,
	* or the arrowButton is pressed, <em>or</em> if the combo popup is
	* visible. This is the case because a combo box looks pressed when
	* the popup is visible, and so should the arrow button.
	*/
	@:overload @:public override public function isPressed() : Bool;
	
	/**
	* @inheritDoc
	*
	* Ensures that the armed state is in sync with the pressed state
	* if shouldActLikeButton is true. Without this method, the arrow
	* button will not look pressed when the popup is open, regardless
	* of the result of isPressed() alone.
	*/
	@:overload @:public override public function isArmed() : Bool;
	
	/**
	* @inheritDoc
	*
	* Ensures that isRollover() will return true if the combo is
	* rolled over, or the arrowButton is rolled over.
	*/
	@:overload @:public override public function isRollover() : Bool;
	
	/**
	* @inheritDoc
	*
	* Forwards pressed states to the internal "pressed" field
	*/
	@:overload @:public override public function setPressed(b : Bool) : Void;
	
	/**
	* @inheritDoc
	*
	* Forwards rollover states to the internal "over" field
	*/
	@:overload @:public override public function setRollover(b : Bool) : Void;
	
	@:overload @:public public function mouseEntered(mouseEvent : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(mouseEvent : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(mouseEvent : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(mouseEvent : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* @inheritDoc
	*
	* Ensures that the combo box is repainted when the popup is closed.
	* This avoids a bug where clicking off the combo wasn't causing a repaint,
	* and thus the combo box still looked pressed even when it was not.
	*
	* This bug was only noticed when acting as a button, but may be generally
	* present. If so, remove the if() block
	*/
	@:overload @:public public function popupMenuCanceled(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload @:public public function popupMenuWillBecomeVisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload @:public public function popupMenuWillBecomeInvisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	
}
/**
* Handler for repainting combo when editor component gains/looses focus
*/
@:native('javax$swing$plaf$synth$SynthComboBoxUI$EditorFocusHandler') @:internal extern class SynthComboBoxUI_EditorFocusHandler implements java.awt.event.FocusListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function unregister() : Void;
	
	/** Invoked when a component gains the keyboard focus. */
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/** Invoked when a component loses the keyboard focus. */
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Called when the combos editor changes
	*
	* @param evt A PropertyChangeEvent object describing the event source and
	*            the property that has changed.
	*/
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
