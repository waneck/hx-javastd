package sun.swing;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class UIAction implements javax.swing.Action
{
	@:overload public function new(name : String) : Void;
	
	@:overload @:final public function getName() : String;
	
	@:overload public function getValue(key : String) : Dynamic;
	
	@:overload public function putValue(key : String, value : Dynamic) : Void;
	
	@:overload public function setEnabled(b : Bool) : Void;
	
	/**
	* Cover method for <code>isEnabled(null)</code>.
	*/
	@:overload @:final public function isEnabled() : Bool;
	
	/**
	* Subclasses that need to conditionalize the enabled state should
	* override this. Be aware that <code>sender</code> may be null.
	*
	* @param sender Widget enabled state is being asked for, may be null.
	*/
	@:overload public function isEnabled(sender : Dynamic) : Bool;
	
	@:overload public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Invoked when an action occurs.
	*/
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
