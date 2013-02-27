package sun.awt.X11;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class XTextFieldPeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.TextFieldPeer
{
	@:overload public function new(target : java.awt.TextField) : Void;
	
	@:overload override public function dispose() : Void;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function setEditable(editable : Bool) : Void;
	
	/**
	* @see java.awt.peer.ComponentPeer
	*/
	@:overload override public function setEnabled(enabled : Bool) : Void;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function getInputMethodRequests() : java.awt.im.InputMethodRequests;
	
	/**
	* @see java.awt.peer.TextFieldPeer
	*/
	@:overload public function setEchoChar(c : java.StdTypes.Char16) : Void;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function getSelectionStart() : Int;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function getSelectionEnd() : Int;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function getText() : String;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function setText(txt : String) : Void;
	
	@:overload private function setXAWTTextField(txt : String) : Bool;
	
	/**
	* to be implemented.
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function setCaretPosition(position : Int) : Void;
	
	/**
	* DEPRECATED
	* @see java.awt.peer.TextFieldPeer
	*/
	@:overload public function setEchoCharacter(c : java.StdTypes.Char16) : Void;
	
	@:overload override public function setBackground(c : java.awt.Color) : Void;
	
	@:overload override public function setForeground(c : java.awt.Color) : Void;
	
	@:overload override public function setFont(f : java.awt.Font) : Void;
	
	/**
	* DEPRECATED
	* @see java.awt.peer.TextFieldPeer
	*/
	@:overload public function preferredSize(cols : Int) : java.awt.Dimension;
	
	/**
	* Deselects the the highlighted text.
	*/
	@:overload public function deselect() : Void;
	
	/**
	* to be implemented.
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function getCaretPosition() : Int;
	
	/**
	* @see java.awt.peer.TextComponentPeer
	*/
	@:overload public function select(s : Int, e : Int) : Void;
	
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload public function getPreferredSize(cols : Int) : java.awt.Dimension;
	
	@:overload public function getMinimumSize(cols : Int) : java.awt.Dimension;
	
	@:overload override public function isFocusable() : Bool;
	
	@:overload public function action(when : haxe.Int64, modifiers : Int) : Void;
	
	@:overload private function disposeImpl() : Void;
	
	@:overload override public function repaint() : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload override public function print(g : java.awt.Graphics) : Void;
	
	@:overload override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload override public function handleJavaMouseEvent(mouseEvent : java.awt.event.MouseEvent) : Void;
	
	/**
	* DEPRECATED
	*/
	@:overload override public function minimumSize() : java.awt.Dimension;
	
	/**
	* DEPRECATED
	*/
	@:overload public function minimumSize(cols : Int) : java.awt.Dimension;
	
	@:overload override public function setVisible(b : Bool) : Void;
	
	@:overload override public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload public function getIndexAtPoint(x : Int, y : Int) : Int;
	
	@:overload public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	@:overload public function filterEvents(mask : haxe.Int64) : haxe.Int64;
	
	
}
/*  To be fully implemented in a future release

int oldSelectionStart;
int oldSelectionEnd;

public native int getIndexAtPoint(int x, int y);
public native Rectangle getCharacterBounds(int i);
public native long filterEvents(long mask);

/**
* Handle a change in the text selection endpoints
* (Note: could be simply a change in the caret location)
*
public void selectionValuesChanged(int start, int end) {
return;  // Need to write implemetation of this.
}
*/
@:native('sun$awt$X11$XTextFieldPeer$AWTTextFieldUI') @:internal extern class XTextFieldPeer_AWTTextFieldUI extends com.sun.java.swing.plaf.motif.MotifPasswordFieldUI
{
	@:overload override private function getPropertyPrefix() : String;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override private function installKeyboardActions() : Void;
	
	@:overload override private function createCaret() : javax.swing.text.Caret;
	
	
}
@:native('sun$awt$X11$XTextFieldPeer$XAWTCaret') @:internal extern class XTextFieldPeer_XAWTCaret extends javax.swing.text.DefaultCaret
{
	@:overload override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload override public function setSelectionVisible(vis : Bool) : Void;
	
	
}
@:native('sun$awt$X11$XTextFieldPeer$XAWTTextField') @:internal extern class XTextFieldPeer_XAWTTextField extends javax.swing.JPasswordField implements java.awt.event.ActionListener implements javax.swing.event.DocumentListener
{
	@:overload public function new(text : String, peer : sun.awt.X11.XComponentPeer, parent : java.awt.Container) : Void;
	
	@:overload public function actionPerformed(actionEvent : java.awt.event.ActionEvent) : Void;
	
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload override public function getPeer() : java.awt.peer.ComponentPeer;
	
	@:overload public function repaintNow() : Void;
	
	@:overload override public function getGraphics() : java.awt.Graphics;
	
	@:overload override public function updateUI() : Void;
	
	@:overload override public function hasFocus() : Bool;
	
	@:overload public function processInputMethodEventImpl(e : java.awt.event.InputMethodEvent) : Void;
	
	@:overload public function processMouseEventImpl(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function processMouseMotionEventImpl(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function setTransferHandler(newHandler : javax.swing.TransferHandler) : Void;
	
	@:overload override public function setEchoChar(c : java.StdTypes.Char16) : Void;
	
	
}
