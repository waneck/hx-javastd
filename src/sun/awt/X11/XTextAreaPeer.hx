package sun.awt.X11;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XTextAreaPeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.TextAreaPeer
{
	/* FIXME  */
	@:overload @:public public function filterEvents(mask : haxe.Int64) : haxe.Int64;
	
	/* FIXME   */
	@:overload @:public public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	@:overload @:public public function getIndexAtPoint(x : Int, y : Int) : Int;
	
	@:overload @:public override public function dispose() : Void;
	
	/*
	* The method overrides one from XComponentPeer
	* If ignoreSubComponents=={@code true} it calls super.
	* If ignoreSubComponents=={@code false} it uses the XTextArea machinery
	* to change cursor appropriately. In particular it changes the cursor to
	* default if over scrollbars.
	*/
	@:overload @:public override public function pSetCursor(cursor : java.awt.Cursor, ignoreSubComponents : Bool) : Void;
	
	/**
	* Compute minimum size.
	*/
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public public function getPreferredSize(rows : Int, cols : Int) : java.awt.Dimension;
	
	/**
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function getMinimumSize(rows : Int, cols : Int) : java.awt.Dimension;
	
	@:overload @:public override public function isFocusable() : Bool;
	
	@:overload @:public override public function setVisible(b : Bool) : Void;
	
	@:overload @:public override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Paint the component
	* this method is called when the repaint instruction has been used
	*/
	@:overload @:public override public function repaint() : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload @:public override public function handlesWheelScrolling() : Bool;
	
	@:overload @:public public function handleJavaMouseEvent(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function select(s : Int, e : Int) : Void;
	
	@:overload @:public override public function setBackground(c : java.awt.Color) : Void;
	
	@:overload @:public override public function setForeground(c : java.awt.Color) : Void;
	
	@:overload @:public override public function setFont(f : java.awt.Font) : Void;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function setEditable(editable : Bool) : Void;
	
	/**
	* @see java.awt.peer.ComponentPeer
	*/
	@:overload @:public override public function setEnabled(enabled : Bool) : Void;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function getInputMethodRequests() : java.awt.im.InputMethodRequests;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function getSelectionStart() : Int;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function getSelectionEnd() : Int;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function getText() : String;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function setText(txt : String) : Void;
	
	@:overload @:protected private function setTextImpl(txt : String) : Bool;
	
	/**
	* insert the text "txt on position "pos" in the array lines
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function insert(txt : String, p : Int) : Void;
	
	/**
	* replace the text between the position "s" and "e" with "txt"
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function replaceRange(txt : String, s : Int, e : Int) : Void;
	
	/**
	* to be implemented.
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function setCaretPosition(position : Int) : Void;
	
	/**
	* to be implemented.
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload @:public public function getCaretPosition() : Int;
	
	/**
	* DEPRECATED
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function insertText(txt : String, pos : Int) : Void;
	
	/**
	* DEPRECATED
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function replaceText(txt : String, start : Int, end : Int) : Void;
	
	/**
	* DEPRECATED
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function minimumSize(rows : Int, cols : Int) : java.awt.Dimension;
	
	/**
	* DEPRECATED
	* @see java.awt.peer.TextAreaPeer
	*/
	@:overload @:public public function preferredSize(rows : Int, cols : Int) : java.awt.Dimension;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$AWTTextAreaUI') @:internal extern class XTextAreaPeer_AWTTextAreaUI extends com.sun.java.swing.plaf.motif.MotifTextAreaUI
{
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected override private function installKeyboardActions() : Void;
	
	@:overload @:protected override private function createCaret() : javax.swing.text.Caret;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$XAWTCaret') @:internal extern class XTextAreaPeer_XAWTCaret extends javax.swing.text.DefaultCaret
{
	@:overload @:public override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public override public function setSelectionVisible(vis : Bool) : Void;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$XAWTScrollBarButton') @:internal extern class XTextAreaPeer_XAWTScrollBarButton extends javax.swing.plaf.basic.BasicArrowButton
{
	@:overload @:public public function new(direction : Int) : Void;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize() : java.awt.Dimension;
	
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$XAWTScrollBarUI') @:internal extern class XTextAreaPeer_XAWTScrollBarUI extends javax.swing.plaf.basic.BasicScrollBarUI
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function installDefaults() : Void;
	
	@:overload @:protected override private function configureScrollBarColors() : Void;
	
	@:overload @:protected override private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload @:protected override private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload @:public public function getDecreaseButton() : javax.swing.JButton;
	
	@:overload @:public public function getIncreaseButton() : javax.swing.JButton;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function paintThumb(g : java.awt.Graphics, c : javax.swing.JComponent, thumbBounds : java.awt.Rectangle) : Void;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$AWTTextArea') @:internal extern class XTextAreaPeer_AWTTextArea extends javax.swing.JTextArea implements javax.swing.event.DocumentListener
{
	@:overload @:public public function new(text : String, peer : sun.awt.X11.XTextAreaPeer) : Void;
	
	@:overload @:public public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload @:public public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload @:public public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload @:public override public function hasFocus() : Bool;
	
	@:overload @:public public function repaintNow() : Void;
	
	@:overload @:public public function processMouseEventPublic(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function processMouseMotionEventPublic(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function processInputMethodEventPublic(e : java.awt.event.InputMethodEvent) : Void;
	
	@:overload @:public override public function updateUI() : Void;
	
	@:overload @:public override public function setTransferHandler(newHandler : javax.swing.TransferHandler) : Void;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$XAWTScrollPaneUI') @:internal extern class XTextAreaPeer_XAWTScrollPaneUI extends javax.swing.plaf.basic.BasicScrollPaneUI
{
	@:overload @:protected override private function installListeners(scrollPane : javax.swing.JScrollPane) : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function uninstallListeners(scrollPane : javax.swing.JScrollPane) : Void;
	
	@:overload @:protected override private function installDefaults(scrollpane : javax.swing.JScrollPane) : Void;
	
	@:overload @:protected override private function uninstallDefaults(c : javax.swing.JScrollPane) : Void;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$AWTTextPane') @:internal extern class XTextAreaPeer_AWTTextPane extends javax.swing.JScrollPane implements java.awt.event.FocusListener
{
	@:overload @:public public function new(jt : javax.swing.JTextArea, xwin : sun.awt.X11.XWindow, parent : java.awt.Container) : Void;
	
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function getRealParent() : java.awt.Window;
	
	@:overload @:public override public function getPeer() : java.awt.peer.ComponentPeer;
	
	@:overload @:public override public function updateUI() : Void;
	
	@:overload @:public override public function createVerticalScrollBar() : javax.swing.JScrollBar;
	
	@:overload @:public override public function createHorizontalScrollBar() : javax.swing.JScrollBar;
	
	@:overload @:public public function getTextArea() : javax.swing.JTextArea;
	
	@:overload @:public override public function getGraphics() : java.awt.Graphics;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$AWTTextPane$XAWTScrollBar') @:internal extern class XTextAreaPeer_AWTTextPane_XAWTScrollBar extends javax.swing.JScrollPane.JScrollPane_ScrollBar
{
	@:overload @:public public function new(i : Int) : Void;
	
	@:overload @:public override public function updateUI() : Void;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$BevelBorder') @:internal extern class XTextAreaPeer_BevelBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new(isRaised : Bool, darkShadow : java.awt.Color, lightShadow : java.awt.Color) : Void;
	
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload @:public public function isOpaque(c : java.awt.Component) : Bool;
	
	
}
@:native('sun$awt$X11$XTextAreaPeer$JavaMouseEventHandler') @:internal extern class XTextAreaPeer_JavaMouseEventHandler
{
	
}
@:native('sun$awt$X11$XTextAreaPeer$JavaMouseEventHandler$Pointer') @:internal extern class XTextAreaPeer_JavaMouseEventHandler_Pointer
{
	
}
@:native('sun$awt$X11$XTextAreaPeer$JavaMouseEventHandler$Pointer$Type') extern enum XTextAreaPeer_JavaMouseEventHandler_Pointer_Type
{
	NONE;
	TEXT;
	BAR;
	BUTTON;
	
}

