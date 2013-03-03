package javax.swing;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DelegatingDefaultFocusManager extends javax.swing.DefaultFocusManager
{
	@:overload @:public override public function processKeyEvent(focusedComponent : java.awt.Component, e : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public override public function focusNextComponent(aComponent : java.awt.Component) : Void;
	
	@:overload @:public override public function focusPreviousComponent(aComponent : java.awt.Component) : Void;
	
	@:overload @:public override public function getFocusOwner() : java.awt.Component;
	
	@:overload @:public override public function clearGlobalFocusOwner() : Void;
	
	@:overload @:public override public function getPermanentFocusOwner() : java.awt.Component;
	
	@:overload @:public override public function getFocusedWindow() : java.awt.Window;
	
	@:overload @:public override public function getActiveWindow() : java.awt.Window;
	
	@:overload @:public override public function getDefaultFocusTraversalPolicy() : java.awt.FocusTraversalPolicy;
	
	@:overload @:public override public function setDefaultFocusTraversalPolicy(defaultPolicy : java.awt.FocusTraversalPolicy) : Void;
	
	@:overload @:public override public function setDefaultFocusTraversalKeys(id : Int, keystrokes : java.util.Set<java.awt.AWTKeyStroke>) : Void;
	
	@:overload @:public override public function getDefaultFocusTraversalKeys(id : Int) : java.util.Set<java.awt.AWTKeyStroke>;
	
	@:overload @:public override public function getCurrentFocusCycleRoot() : java.awt.Container;
	
	@:overload @:public override public function setGlobalCurrentFocusCycleRoot(newFocusCycleRoot : java.awt.Container) : Void;
	
	@:overload @:public override public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public override public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public override public function addPropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public override public function removePropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public override public function addVetoableChangeListener(listener : java.beans.VetoableChangeListener) : Void;
	
	@:overload @:public override public function removeVetoableChangeListener(listener : java.beans.VetoableChangeListener) : Void;
	
	@:overload @:public override public function addVetoableChangeListener(propertyName : String, listener : java.beans.VetoableChangeListener) : Void;
	
	@:overload @:public override public function removeVetoableChangeListener(propertyName : String, listener : java.beans.VetoableChangeListener) : Void;
	
	@:overload @:public override public function addKeyEventDispatcher(dispatcher : java.awt.KeyEventDispatcher) : Void;
	
	@:overload @:public override public function removeKeyEventDispatcher(dispatcher : java.awt.KeyEventDispatcher) : Void;
	
	@:overload @:public override public function dispatchEvent(e : java.awt.AWTEvent) : Bool;
	
	@:overload @:public override public function dispatchKeyEvent(e : java.awt.event.KeyEvent) : Bool;
	
	@:overload @:public override public function upFocusCycle(aComponent : java.awt.Component) : Void;
	
	@:overload @:public override public function downFocusCycle(aContainer : java.awt.Container) : Void;
	
	
}
