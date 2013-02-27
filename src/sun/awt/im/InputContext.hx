package sun.awt.im;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class InputContext extends java.awt.im.InputContext implements java.awt.event.ComponentListener implements java.awt.event.WindowListener
{
	/**
	* Constructs an InputContext.
	*/
	@:overload override private function new() : Void;
	
	/**
	* @see java.awt.im.InputContext#selectInputMethod
	* @exception NullPointerException when the locale is null.
	*/
	@:overload @:synchronized override public function selectInputMethod(locale : java.util.Locale) : Bool;
	
	/**
	* @see java.awt.im.InputContext#getLocale
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	/**
	* @see java.awt.im.InputContext#setCharacterSubsets
	*/
	@:overload override public function setCharacterSubsets(subsets : java.NativeArray<java.lang.Character.Character_Subset>) : Void;
	
	/**
	* @see java.awt.im.InputContext#reconvert
	* @since 1.3
	* @exception UnsupportedOperationException when input method is null
	*/
	@:require(java3) @:overload @:synchronized override public function reconvert() : Void;
	
	/**
	* @see java.awt.im.InputContext#dispatchEvent
	*/
	@:overload override public function dispatchEvent(event : java.awt.AWTEvent) : Void;
	
	/**
	* @see java.awt.im.InputContext#removeNotify
	* @exception NullPointerException when the component is null.
	*/
	@:overload @:synchronized override public function removeNotify(component : java.awt.Component) : Void;
	
	/**
	* @see java.awt.im.InputContext#dispose
	* @exception IllegalStateException when the currentClientComponent is not null
	*/
	@:overload @:synchronized override public function dispose() : Void;
	
	/**
	* @see java.awt.im.InputContext#getInputMethodControlObject
	*/
	@:overload @:synchronized override public function getInputMethodControlObject() : Dynamic;
	
	/**
	* @see java.awt.im.InputContext#setCompositionEnabled(boolean)
	* @exception UnsupportedOperationException when input method is null
	*/
	@:overload override public function setCompositionEnabled(enable : Bool) : Void;
	
	/**
	* @see java.awt.im.InputContext#isCompositionEnabled
	* @exception UnsupportedOperationException when input method is null
	*/
	@:overload override public function isCompositionEnabled() : Bool;
	
	/**
	* @return a string with information about the current input method.
	* @exception UnsupportedOperationException when input method is null
	*/
	@:overload public function getInputMethodInfo() : String;
	
	/**
	* Turns off the native IM. The native IM is diabled when
	* the deactive method of InputMethod is called. It is
	* delayed until the active method is called on a different
	* peer component. This method is provided to explicitly disable
	* the native IM.
	*/
	@:overload public function disableNativeIM() : Void;
	
	/**
	* @see java.awt.im.InputContext#endComposition
	*/
	@:overload @:synchronized override public function endComposition() : Void;
	
	/*
	* ComponentListener and WindowListener implementation
	*/
	@:overload public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function windowOpened(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowClosed(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowIconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowDeiconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowActivated(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowDeactivated(e : java.awt.event.WindowEvent) : Void;
	
	
}
