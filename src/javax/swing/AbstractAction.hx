package javax.swing;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractAction implements javax.swing.Action implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Specifies whether action is enabled; the default is true.
	*/
	private var enabled : Bool;
	
	/**
	* Creates an {@code Action}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an {@code Action} with the specified name.
	*
	* @param name the name ({@code Action.NAME}) for the action; a
	*        value of {@code null} is ignored
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Creates an {@code Action} with the specified name and small icon.
	*
	* @param name the name ({@code Action.NAME}) for the action; a
	*        value of {@code null} is ignored
	* @param icon the small icon ({@code Action.SMALL_ICON}) for the action; a
	*        value of {@code null} is ignored
	*/
	@:overload public function new(name : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Gets the <code>Object</code> associated with the specified key.
	*
	* @param key a string containing the specified <code>key</code>
	* @return the binding <code>Object</code> stored with this key; if there
	*          are no keys, it will return <code>null</code>
	* @see Action#getValue
	*/
	@:overload public function getValue(key : String) : Dynamic;
	
	/**
	* Sets the <code>Value</code> associated with the specified key.
	*
	* @param key  the <code>String</code> that identifies the stored object
	* @param newValue the <code>Object</code> to store using this key
	* @see Action#putValue
	*/
	@:overload public function putValue(key : String, newValue : Dynamic) : Void;
	
	/**
	* Returns true if the action is enabled.
	*
	* @return true if the action is enabled, false otherwise
	* @see Action#isEnabled
	*/
	@:overload public function isEnabled() : Bool;
	
	/**
	* Sets whether the {@code Action} is enabled. The default is {@code true}.
	*
	* @param newValue  {@code true} to enable the action, {@code false} to
	*                  disable it
	* @see Action#setEnabled
	*/
	@:overload public function setEnabled(newValue : Bool) : Void;
	
	/**
	* Returns an array of <code>Object</code>s which are keys for
	* which values have been set for this <code>AbstractAction</code>,
	* or <code>null</code> if no keys have values set.
	* @return an array of key objects, or <code>null</code> if no
	*                  keys have values set
	* @since 1.3
	*/
	@:require(java3) @:overload public function getKeys() : java.NativeArray<Dynamic>;
	
	/**
	* If any <code>PropertyChangeListeners</code> have been registered, the
	* <code>changeSupport</code> field describes them.
	*/
	private var changeSupport : javax.swing.event.SwingPropertyChangeSupport;
	
	/**
	* Supports reporting bound property changes.  This method can be called
	* when a bound property has changed and it will send the appropriate
	* <code>PropertyChangeEvent</code> to any registered
	* <code>PropertyChangeListeners</code>.
	*/
	@:overload private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Adds a <code>PropertyChangeListener</code> to the listener list.
	* The listener is registered for all properties.
	* <p>
	* A <code>PropertyChangeEvent</code> will get fired in response to setting
	* a bound property, e.g. <code>setFont</code>, <code>setBackground</code>,
	* or <code>setForeground</code>.
	* Note that if the current component is inheriting its foreground,
	* background, or font from its container, then no event will be
	* fired in response to a change in the inherited property.
	*
	* @param listener  The <code>PropertyChangeListener</code> to be added
	*
	* @see Action#addPropertyChangeListener
	*/
	@:overload @:synchronized public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a <code>PropertyChangeListener</code> from the listener list.
	* This removes a <code>PropertyChangeListener</code> that was registered
	* for all properties.
	*
	* @param listener  the <code>PropertyChangeListener</code> to be removed
	*
	* @see Action#removePropertyChangeListener
	*/
	@:overload @:synchronized public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>PropertyChangeListener</code>s added
	* to this AbstractAction with addPropertyChangeListener().
	*
	* @return all of the <code>PropertyChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Clones the abstract action. This gives the clone
	* its own copy of the key/value list,
	* which is not handled for you by <code>Object.clone()</code>.
	**/
	@:overload private function clone() : Dynamic;
	
	/**
	* Invoked when an action occurs.
	*/
	@:overload @:public @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
