package java.beans.beancontext;
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
extern interface BeanContextChild
{
	/**
	* <p>
	* Objects that implement this interface,
	* shall fire a java.beans.PropertyChangeEvent, with parameters:
	*
	* propertyName "beanContext", oldValue (the previous nesting
	* <code>BeanContext</code> instance, or <code>null</code>),
	* newValue (the current nesting
	* <code>BeanContext</code> instance, or <code>null</code>).
	* <p>
	* A change in the value of the nesting BeanContext property of this
	* BeanContextChild may be vetoed by throwing the appropriate exception.
	* </p>
	* @param bc The <code>BeanContext</code> with which
	* to associate this <code>BeanContextChild</code>.
	* @throws <code>PropertyVetoException</code> if the
	* addition of the specified <code>BeanContext</code> is refused.
	*/
	@:overload public function setBeanContext(bc : java.beans.beancontext.BeanContext) : Void;
	
	/**
	* Gets the <code>BeanContext</code> associated
	* with this <code>BeanContextChild</code>.
	* @return the <code>BeanContext</code> associated
	* with this <code>BeanContextChild</code>.
	*/
	@:overload public function getBeanContext() : java.beans.beancontext.BeanContext;
	
	/**
	* Adds a <code>PropertyChangeListener</code>
	* to this <code>BeanContextChild</code>
	* in order to receive a <code>PropertyChangeEvent</code>
	* whenever the specified property has changed.
	* @param name the name of the property to listen on
	* @param pcl the <code>PropertyChangeListener</code> to add
	*/
	@:overload public function addPropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a <code>PropertyChangeListener</code> from this
	* <code>BeanContextChild</code>  so that it no longer
	* receives <code>PropertyChangeEvents</code> when the
	* specified property is changed.
	*
	* @param name the name of the property that was listened on
	* @param pcl the <code>PropertyChangeListener</code> to remove
	*/
	@:overload public function removePropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Adds a <code>VetoableChangeListener</code> to
	* this <code>BeanContextChild</code>
	* to receive events whenever the specified property changes.
	* @param name the name of the property to listen on
	* @param vcl the <code>VetoableChangeListener</code> to add
	*/
	@:overload public function addVetoableChangeListener(name : String, vcl : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Removes a <code>VetoableChangeListener</code> from this
	* <code>BeanContextChild</code> so that it no longer receives
	* events when the specified property changes.
	* @param name the name of the property that was listened on.
	* @param vcl the <code>VetoableChangeListener</code> to remove.
	*/
	@:overload public function removeVetoableChangeListener(name : String, vcl : java.beans.VetoableChangeListener) : Void;
	
	
}
