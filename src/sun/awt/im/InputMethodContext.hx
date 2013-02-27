package sun.awt.im;
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
extern class InputMethodContext extends sun.awt.im.InputContext implements java.awt.im.spi.InputMethodContext
{
	/**
	* Constructs an InputMethodContext.
	*/
	@:overload public function new() : Void;
	
	@:overload public function dispatchInputMethodEvent(id : Int, text : java.text.AttributedCharacterIterator, committedCharacterCount : Int, caret : java.awt.font.TextHitInfo, visiblePosition : java.awt.font.TextHitInfo) : Void;
	
	@:overload override public function dispatchEvent(event : java.awt.AWTEvent) : Void;
	
	/**
	* Calls the current client component's implementation of getTextLocation.
	*/
	@:overload public function getTextLocation(offset : java.awt.font.TextHitInfo) : java.awt.Rectangle;
	
	/**
	* Calls the current client component's implementation of getLocationOffset.
	*/
	@:overload public function getLocationOffset(x : Int, y : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Calls the current client component's implementation of getInsertPositionOffset.
	*/
	@:overload public function getInsertPositionOffset() : Int;
	
	/**
	* Calls the current client component's implementation of getCommittedText.
	*/
	@:overload public function getCommittedText(beginIndex : Int, endIndex : Int, attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	/**
	* Calls the current client component's implementation of getCommittedTextLength.
	*/
	@:overload public function getCommittedTextLength() : Int;
	
	/**
	* Calls the current client component's implementation of cancelLatestCommittedText.
	*/
	@:overload public function cancelLatestCommittedText(attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	/**
	* Calls the current client component's implementation of getSelectedText.
	*/
	@:overload public function getSelectedText(attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	@:overload public function createInputMethodWindow(title : String, attachToInputContext : Bool) : java.awt.Window;
	
	@:overload public function createInputMethodJFrame(title : String, attachToInputContext : Bool) : javax.swing.JFrame;
	
	/**
	* @see java.awt.im.spi.InputMethodContext#enableClientWindowNotification
	*/
	@:overload override public function enableClientWindowNotification(inputMethod : java.awt.im.spi.InputMethod, enable : Bool) : Void;
	
	
}
