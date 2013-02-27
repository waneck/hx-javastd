package java.awt.peer;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface TextComponentPeer extends java.awt.peer.ComponentPeer
{
	/**
	* Sets if the text component should be editable or not.
	*
	* @param editable {@code true} for editable text components,
	*        {@code false} for non-editable text components
	*
	* @see TextComponent#setEditable(boolean)
	*/
	@:overload public function setEditable(editable : Bool) : Void;
	
	/**
	* Returns the current content of the text component.
	*
	* @return the current content of the text component
	*
	* @see TextComponent#getText()
	*/
	@:overload public function getText() : String;
	
	/**
	* Sets the content for the text component.
	*
	* @param l the content to set
	*
	* @see TextComponent#setText(String)
	*/
	@:overload public function setText(l : String) : Void;
	
	/**
	* Returns the start index of the current selection.
	*
	* @return the start index of the current selection
	*
	* @see TextComponent#getSelectionStart()
	*/
	@:overload public function getSelectionStart() : Int;
	
	/**
	* Returns the end index of the current selection.
	*
	* @return the end index of the current selection
	*
	* @see TextComponent#getSelectionEnd()
	*/
	@:overload public function getSelectionEnd() : Int;
	
	/**
	* Selects an area of the text component.
	*
	* @param selStart the start index of the new selection
	* @param selEnd the end index of the new selection
	*
	* @see TextComponent#select(int, int)
	*/
	@:overload public function select(selStart : Int, selEnd : Int) : Void;
	
	/**
	* Sets the caret position of the text component.
	*
	* @param pos the caret position to set
	*
	* @see TextComponent#setCaretPosition(int)
	*/
	@:overload public function setCaretPosition(pos : Int) : Void;
	
	/**
	* Returns the current caret position.
	*
	* @return the current caret position
	*
	* @see TextComponent#getCaretPosition()
	*/
	@:overload public function getCaretPosition() : Int;
	
	/**
	* Returns the input method requests.
	*
	* @return the input method requests
	*/
	@:overload public function getInputMethodRequests() : java.awt.im.InputMethodRequests;
	
	
}
