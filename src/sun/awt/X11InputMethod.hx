package sun.awt;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class X11InputMethod extends sun.awt.im.InputMethodAdapter
{
	@:protected private var clientComponentWindow : java.awt.Container;
	
	/**
	* Constructs an X11InputMethod instance. It initializes the XIM
	* environment if it's not done yet.
	*
	* @exception AWTException if XOpenIM() failed.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:protected private function finalize() : Void;
	
	@:overload @:protected @:abstract private function openXIM() : Bool;
	
	@:overload @:protected private function isDisposed() : Bool;
	
	@:overload @:protected @:abstract private function setXICFocus(peer : java.awt.peer.ComponentPeer, value : Bool, active : Bool) : Void;
	
	/**
	* Does nothing - this adapter doesn't use the input method context.
	*
	* @see java.awt.im.spi.InputMethod#setInputMethodContext
	*/
	@:overload @:public override public function setInputMethodContext(context : java.awt.im.spi.InputMethodContext) : Void;
	
	/**
	* Set locale to input. If input method doesn't support specified locale,
	* false will be returned and its behavior is not changed.
	*
	* @param lang locale to input
	* @return the true is returned when specified locale is supported.
	*/
	@:overload @:public override public function setLocale(lang : java.util.Locale) : Bool;
	
	/**
	* Returns current input locale.
	*/
	@:overload @:public override public function getLocale() : java.util.Locale;
	
	/**
	* Does nothing - XIM doesn't let you specify which characters you expect.
	*
	* @see java.awt.im.spi.InputMethod#setCharacterSubsets
	*/
	@:overload @:public override public function setCharacterSubsets(subsets : java.NativeArray<java.lang.Character.Character_Subset>) : Void;
	
	/**
	* Dispatch event to input method. InputContext dispatch event with this
	* method. Input method set consume flag if event is consumed in
	* input method.
	*
	* @param e event
	*/
	@:overload @:public override public function dispatchEvent(e : java.awt.AWTEvent) : Void;
	
	@:overload @:protected @:final private function resetXICifneeded() : Void;
	
	/**
	* Activate input method.
	*/
	@:overload @:public @:synchronized override public function activate() : Void;
	
	@:overload @:protected @:abstract private function createXIC() : Bool;
	
	/**
	* Deactivate input method.
	*/
	@:overload @:public @:synchronized override public function deactivate(isTemporary : Bool) : Void;
	
	/**
	* Explicitly disable the native IME. Native IME is not disabled when
	* deactivate is called.
	*/
	@:overload @:public override public function disableInputMethod() : Void;
	
	@:overload @:public override public function hideWindows() : Void;
	
	/**
	* @see java.awt.Toolkit#mapInputMethodHighlight
	*/
	@:overload @:public @:static public static function mapInputMethodHighlight(highlight : java.awt.im.InputMethodHighlight) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* @see sun.awt.im.InputMethodAdapter#setAWTFocussedComponent
	*/
	@:overload @:protected override private function setAWTFocussedComponent(component : java.awt.Component) : Void;
	
	/**
	* @see sun.awt.im.InputMethodAdapter#stopListening
	*/
	@:overload @:protected override private function stopListening() : Void;
	
	@:overload @:protected @:abstract private function getParent(client : java.awt.Component) : java.awt.Container;
	
	/**
	* Returns peer of the given client component. If the given client component
	* doesn't have peer, peer of the native container of the client is returned.
	*/
	@:overload @:protected @:abstract private function getPeer(client : java.awt.Component) : java.awt.peer.ComponentPeer;
	
	/**
	* Used to protect preedit data
	*/
	@:overload @:protected @:abstract private function awtLock() : Void;
	
	@:overload @:protected @:abstract private function awtUnlock() : Void;
	
	/*
	* Subclasses should override disposeImpl() instead of dispose(). Client
	* code should always invoke dispose(), never disposeImpl().
	*/
	@:overload @:protected @:synchronized private function disposeImpl() : Void;
	
	/**
	* Frees all X Window resources associated with this object.
	*
	* @see java.awt.im.spi.InputMethod#dispose
	*/
	@:overload @:public @:final override public function dispose() : Void;
	
	/**
	* Returns null.
	*
	* @see java.awt.im.spi.InputMethod#getControlObject
	*/
	@:overload @:public override public function getControlObject() : Dynamic;
	
	/**
	* @see java.awt.im.spi.InputMethod#removeNotify
	*/
	@:overload @:public @:synchronized override public function removeNotify() : Void;
	
	/**
	* @see java.awt.im.spi.InputMethod#setCompositionEnabled(boolean)
	*/
	@:overload @:public override public function setCompositionEnabled(enable : Bool) : Void;
	
	/**
	* @see java.awt.im.spi.InputMethod#isCompositionEnabled
	*/
	@:overload @:public override public function isCompositionEnabled() : Bool;
	
	/**
	* Ends any input composition that may currently be going on in this
	* context. Depending on the platform and possibly user preferences,
	* this may commit or delete uncommitted text. Any changes to the text
	* are communicated to the active component using an input method event.
	*
	* <p>
	* A text editing component may call this in a variety of situations,
	* for example, when the user moves the insertion point within the text
	* (but outside the composed text), or when the component's text is
	* saved to a file or copied to the clipboard.
	*
	*/
	@:overload @:public override public function endComposition() : Void;
	
	/**
	* Returns a string with information about the current input method server, or null.
	* On both Linux & SunOS, the value of environment variable XMODIFIERS is
	* returned if set. Otherwise, on SunOS, $HOME/.dtprofile will be parsed
	* to find out the language service engine (atok or wnn) since there is
	* no API in Xlib which returns the information of native
	* IM server or language service and we want to try our best to return as much
	* information as possible.
	*
	* Note: This method could return null on Linux if XMODIFIERS is not set properly or
	* if any IOException is thrown.
	* See man page of XSetLocaleModifiers(3X11) for the usgae of XMODIFIERS,
	* atok12setup(1) and wnn6setup(1) for the information written to
	* $HOME/.dtprofile when you run these two commands.
	*
	*/
	@:overload @:public override public function getNativeInputMethodInfo() : String;
	
	/*
	* Native methods
	*/
	@:overload @:protected @:native private function resetXIC() : String;
	
	
}
/**
* IntBuffer is an inner class that manipulates an int array and
* provides UNIX file io stream-like programming interfaces to
* access it. (An alternative would be to use ArrayList which may
* be too expensive for the work.)
*/
@:native('sun$awt$X11InputMethod$IntBuffer') @:internal extern class X11InputMethod_IntBuffer
{
	@:overload @:public public function toString() : String;
	
	
}
