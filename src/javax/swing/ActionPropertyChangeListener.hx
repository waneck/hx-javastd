package javax.swing;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ActionPropertyChangeListener<T> implements java.beans.PropertyChangeListener implements java.io.Serializable
{
	@:overload public function new(c : T, a : javax.swing.Action) : Void;
	
	/**
	* PropertyChangeListener method.  If the target has been gc'ed this
	* will remove the <code>PropertyChangeListener</code> from the Action,
	* otherwise this will invoke actionPropertyChanged.
	*/
	@:overload @:final public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Invoked when a property changes on the Action and the target
	* still exists.
	*/
	@:overload @:abstract private function actionPropertyChanged(target : T, action : javax.swing.Action, e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function getTarget() : T;
	
	@:overload public function getAction() : javax.swing.Action;
	
	
}
@:native('javax$swing$ActionPropertyChangeListener$OwnedWeakReference') @:internal extern class ActionPropertyChangeListener_OwnedWeakReference<U> extends java.lang.ref.WeakReference<U>
{
	@:overload public function getOwner() : javax.swing.ActionPropertyChangeListener<Dynamic>;
	
	
}
