package sun.awt.im;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class InputMethodAdapter implements java.awt.im.spi.InputMethod
{
	@:overload private function getClientComponent() : java.awt.Component;
	
	@:overload private function haveActiveClient() : Bool;
	
	/**
	* Informs the input method adapter about the component that has the AWT
	* focus if it's using the input context owning this adapter instance.
	*/
	@:overload private function setAWTFocussedComponent(component : java.awt.Component) : Void;
	
	/**
	* Returns whether host input methods can support below-the-spot input.
	* Returns false by default.
	*/
	@:overload private function supportsBelowTheSpot() : Bool;
	
	/**
	* Informs the input method adapter not to listen to the native events.
	* This method is called when a Java input method is active.
	*/
	@:overload private function stopListening() : Void;
	
	/**
	* Notifies client Window location or status changes
	*/
	@:overload public function notifyClientWindowChange(location : java.awt.Rectangle) : Void;
	
	/**
	* Starts reconvertion. An implementing host adapter has to override
	* this method if it can support reconvert().
	* @exception UnsupportedOperationException when the adapter does not override
	* the method.
	*/
	@:overload public function reconvert() : Void;
	
	/**
	* Disable the native input method. This method is provided for explicitly
	* turning off the native IM. The native IM is not turned off
	* when the native input method is deactivated. This method is
	* always called on AWT EDT. See details in bug 6226489.
	*/
	@:overload @:abstract public function disableInputMethod() : Void;
	
	/**
	* Returns a string with information about the native input method, or
	* null.
	*/
	@:overload @:abstract public function getNativeInputMethodInfo() : String;
	
	/**
	* Sets the input method context, which is used to dispatch input method
	* events to the client component and to request information from
	* the client component.
	* <p>
	* This method is called once immediately after instantiating this input
	* method.
	*
	* @param context the input method context for this input method
	* @exception NullPointerException if <code>context</code> is null
	*/
	@:overload public function setInputMethodContext(context : java.awt.im.spi.InputMethodContext) : Void;
	
	/**
	* Returns the current input locale. Might return null in exceptional cases.
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#getLocale InputContext.getLocale} and
	* <li>when switching from this input method to a different one through the
	*     user interface.
	* </ul>
	*
	* @return the current input locale, or null
	*/
	@:overload public function getLocale() : java.util.Locale;
	
	/**
	* Returns a control object from this input method, or null. A
	* control object provides methods that control the behavior of the
	* input method or obtain information from the input method. The type
	* of the object is an input method specific class. Clients have to
	* compare the result against known input method control object
	* classes and cast to the appropriate class to invoke the methods
	* provided.
	* <p>
	* This method is called by
	* {@link java.awt.im.InputContext#getInputMethodControlObject InputContext.getInputMethodControlObject}.
	*
	* @return a control object from this input method, or null
	*/
	@:overload public function getControlObject() : Dynamic;
	
	/**
	* Sets the subsets of the Unicode character set that this input method
	* is allowed to input. Null may be passed in to indicate that all
	* characters are allowed.
	* <p>
	* This method is called
	* <ul>
	* <li>immediately after instantiating this input method,
	* <li>when switching to this input method from a different one, and
	* <li>by {@link java.awt.im.InputContext#setCharacterSubsets InputContext.setCharacterSubsets}.
	* </ul>
	*
	* @param subsets the subsets of the Unicode character set from which
	* characters may be input
	*/
	@:overload public function setCharacterSubsets(subsets : java.NativeArray<java.lang.Character.Character_Subset>) : Void;
	
	/**
	* Dispatches the event to the input method. If input method support is
	* enabled for the focussed component, incoming events of certain types
	* are dispatched to the current input method for this component before
	* they are dispatched to the component's methods or event listeners.
	* The input method decides whether it needs to handle the event. If it
	* does, it also calls the event's <code>consume</code> method; this
	* causes the event to not get dispatched to the component's event
	* processing methods or event listeners.
	* <p>
	* Events are dispatched if they are instances of InputEvent or its
	* subclasses.
	* This includes instances of the AWT classes KeyEvent and MouseEvent.
	* <p>
	* This method is called by {@link java.awt.im.InputContext#dispatchEvent InputContext.dispatchEvent}.
	*
	* @param event the event being dispatched to the input method
	* @exception NullPointerException if <code>event</code> is null
	*/
	@:overload public function dispatchEvent(event : java.awt.AWTEvent) : Void;
	
	/**
	* Closes or hides all windows opened by this input method instance or
	* its class.
	* <p>
	* This method is called
	* <ul>
	* <li>before calling {@link #activate activate} on an instance of a different input
	*     method class,
	* <li>before calling {@link #dispose dispose} on this input method.
	* </ul>
	* The method is only called when the input method is inactive.
	*/
	@:overload public function hideWindows() : Void;
	
	/**
	* Releases the resources used by this input method.
	* In particular, the input method should dispose windows and close files that are no
	* longer needed.
	* <p>
	* This method is called by {@link java.awt.im.InputContext#dispose InputContext.dispose}.
	* <p>
	* The method is only called when the input method is inactive.
	* No method of this interface is called on this instance after dispose.
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Attempts to set the input locale. If the input method supports the
	* desired locale, it changes its behavior to support input for the locale
	* and returns true.
	* Otherwise, it returns false and does not change its behavior.
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#selectInputMethod InputContext.selectInputMethod},
	* <li>when switching to this input method through the user interface if the user
	*     specified a locale or if the previously selected input method's
	*     {@link java.awt.im.spi.InputMethod#getLocale getLocale} method
	*     returns a non-null value.
	* </ul>
	*
	* @param locale locale to input
	* @return whether the specified locale is supported
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Bool;
	
	/**
	* Determines whether this input method is enabled.
	* An input method that is enabled for composition interprets incoming
	* events for both composition and control purposes, while a
	* disabled input method does not interpret events for composition.
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#isCompositionEnabled InputContext.isCompositionEnabled} and
	* <li>when switching from this input method to a different one using the
	*     user interface or
	*     {@link java.awt.im.InputContext#selectInputMethod InputContext.selectInputMethod}.
	* </ul>
	*
	* @return <code>true</code> if this input method is enabled for
	* composition; <code>false</code> otherwise.
	* @throws UnsupportedOperationException if this input method does not
	* support checking whether it is enabled for composition
	* @see #setCompositionEnabled
	*/
	@:overload public function isCompositionEnabled() : Bool;
	
	/**
	* Activates the input method for immediate input processing.
	* <p>
	* If an input method provides its own windows, it should make sure
	* at this point that all necessary windows are open and visible.
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#dispatchEvent InputContext.dispatchEvent}
	*     when a client component receives a FOCUS_GAINED event,
	* <li>when switching to this input method from a different one using the
	*     user interface or
	*     {@link java.awt.im.InputContext#selectInputMethod InputContext.selectInputMethod}.
	* </ul>
	* The method is only called when the input method is inactive.
	* A newly instantiated input method is assumed to be inactive.
	*/
	@:overload public function activate() : Void;
	
	/**
	* Deactivates the input method.
	* The isTemporary argument has the same meaning as in
	* {@link java.awt.event.FocusEvent#isTemporary FocusEvent.isTemporary}.
	* <p>
	* If an input method provides its own windows, only windows that relate
	* to the current composition (such as a lookup choice window) should be
	* closed at this point.
	* It is possible that the input method will be immediately activated again
	* for a different client component, and closing and reopening more
	* persistent windows (such as a control panel) would create unnecessary
	* screen flicker.
	* Before an instance of a different input method class is activated,
	* {@link #hideWindows} is called on the current input method.
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#dispatchEvent InputContext.dispatchEvent}
	*     when a client component receives a FOCUS_LOST event,
	* <li>when switching from this input method to a different one using the
	*     user interface or
	*     {@link java.awt.im.InputContext#selectInputMethod InputContext.selectInputMethod},
	* <li>before {@link #removeNotify removeNotify} if the current client component is
	*     removed.
	* </ul>
	* The method is only called when the input method is active.
	*
	* @param isTemporary whether the focus change is temporary
	*/
	@:overload public function deactivate(isTemporary : Bool) : Void;
	
	/**
	* Notifies the input method that a client component has been
	* removed from its containment hierarchy, or that input method
	* support has been disabled for the component.
	* <p>
	* This method is called by {@link java.awt.im.InputContext#removeNotify InputContext.removeNotify}.
	* <p>
	* The method is only called when the input method is inactive.
	*/
	@:overload public function removeNotify() : Void;
	
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
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#endComposition InputContext.endComposition},
	* <li>by {@link java.awt.im.InputContext#dispatchEvent InputContext.dispatchEvent}
	*     when switching to a different client component
	* <li>when switching from this input method to a different one using the
	*     user interface or
	*     {@link java.awt.im.InputContext#selectInputMethod InputContext.selectInputMethod}.
	* </ul>
	*/
	@:overload public function endComposition() : Void;
	
	/**
	* Enables or disables this input method for composition,
	* depending on the value of the parameter <code>enable</code>.
	* <p>
	* An input method that is enabled for composition interprets incoming
	* events for both composition and control purposes, while a
	* disabled input method does not interpret events for composition.
	* Note however that events are passed on to the input method regardless
	* whether it is enabled or not, and that an input method that is disabled
	* for composition may still interpret events for control purposes,
	* including to enable or disable itself for composition.
	* <p>
	* For input methods provided by host operating systems, it is not always possible to
	* determine whether this operation is supported. For example, an input method may enable
	* composition only for some locales, and do nothing for other locales. For such input
	* methods, it is possible that this method does not throw
	* {@link java.lang.UnsupportedOperationException UnsupportedOperationException},
	* but also does not affect whether composition is enabled.
	* <p>
	* This method is called
	* <ul>
	* <li>by {@link java.awt.im.InputContext#setCompositionEnabled InputContext.setCompositionEnabled},
	* <li>when switching to this input method from a different one using the
	*     user interface or
	*     {@link java.awt.im.InputContext#selectInputMethod InputContext.selectInputMethod},
	*     if the previously selected input method's
	*     {@link java.awt.im.spi.InputMethod#isCompositionEnabled isCompositionEnabled}
	*     method returns without throwing an exception.
	* </ul>
	*
	* @param enable whether to enable the input method for composition
	* @throws UnsupportedOperationException if this input method does not
	* support the enabling/disabling operation
	* @see #isCompositionEnabled
	*/
	@:overload public function setCompositionEnabled(enable : Bool) : Void;
	
	
}
