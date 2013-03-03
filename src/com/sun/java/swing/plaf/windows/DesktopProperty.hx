package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 2001, 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* Wrapper for a value from the desktop. The value is lazily looked up, and
* can be accessed using the <code>UIManager.ActiveValue</code> method
* <code>createValue</code>. If the underlying desktop property changes this
* will force the UIs to update all known Frames. You can invoke
* <code>invalidate</code> to force the value to be fetched again.
*
*/
//// NOTE: Don't rely on this class staying in this location. It is likely
//// to move to a different package in the future.
extern class DesktopProperty implements javax.swing.UIDefaults.UIDefaults_ActiveValue
{
	/**
	* Creates a DesktopProperty.
	*
	* @param key Key used in looking up desktop value.
	* @param fallback Value used if desktop property is null.
	*/
	@:overload @:public public function new(key : String, fallback : Dynamic) : Void;
	
	/**
	* UIManager.LazyValue method, returns the value from the desktop
	* or the fallback value if the desktop value is null.
	*/
	@:overload @:public public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	/**
	* Returns the value from the desktop.
	*/
	@:overload @:protected private function getValueFromDesktop() : Dynamic;
	
	/**
	* Returns the value to use if the desktop property is null.
	*/
	@:overload @:protected private function getDefaultValue() : Dynamic;
	
	/**
	* Invalidates the current value.
	*
	* @param laf the LookAndFeel this DesktopProperty was created with
	*/
	@:overload @:public public function invalidate(laf : javax.swing.LookAndFeel) : Void;
	
	/**
	* Invalides the current value so that the next invocation of
	* <code>createValue</code> will ask for the property again.
	*/
	@:overload @:public public function invalidate() : Void;
	
	/**
	* Requests that all components in the GUI hierarchy be updated
	* to reflect dynamic changes in this look&feel.  This update occurs
	* by uninstalling and re-installing the UI objects. Requests are
	* batched and collapsed into a single update pass because often
	* many desktop properties will change at once.
	*/
	@:overload @:protected private function updateUI() : Void;
	
	/**
	* Configures the value as appropriate for a defaults property in
	* the UIDefaults table.
	*/
	@:overload @:protected private function configureValue(value : Dynamic) : Dynamic;
	
	/**
	* Returns the key used to lookup the desktop properties value.
	*/
	@:overload @:protected private function getKey() : String;
	
	
}
/**
* As there is typically only one Toolkit, the PropertyChangeListener
* is handled via a WeakReference so as not to pin down the
* DesktopProperty.
*/
@:native('com$sun$java$swing$plaf$windows$DesktopProperty$WeakPCL') @:internal extern class DesktopProperty_WeakPCL extends java.lang.ref.WeakReference<com.sun.java.swing.plaf.windows.DesktopProperty> implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	
}
