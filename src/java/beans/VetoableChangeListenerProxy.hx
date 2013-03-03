package java.beans;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class VetoableChangeListenerProxy extends java.util.EventListenerProxy<java.beans.VetoableChangeListener> implements java.beans.VetoableChangeListener
{
	/**
	* Constructor which binds the {@code VetoableChangeListener}
	* to a specific property.
	*
	* @param propertyName  the name of the property to listen on
	* @param listener      the listener object
	*/
	@:overload @:public public function new(propertyName : String, listener : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Forwards the property change event to the listener delegate.
	*
	* @param event  the property change event
	*
	* @exception PropertyVetoException if the recipient wishes the property
	*                                  change to be rolled back
	*/
	@:overload @:public public function vetoableChange(event : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Returns the name of the named property associated with the listener.
	*
	* @return the name of the named property associated with the listener
	*/
	@:overload @:public public function getPropertyName() : String;
	
	
}
