package javax.swing.event;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SwingPropertyChangeSupport extends java.beans.PropertyChangeSupport
{
	/**
	* Constructs a SwingPropertyChangeSupport object.
	*
	* @param sourceBean  The bean to be given as the source for any
	*        events.
	* @throws NullPointerException if {@code sourceBean} is
	*         {@code null}
	*/
	@:overload @:public public function new(sourceBean : Dynamic) : Void;
	
	/**
	* Constructs a SwingPropertyChangeSupport object.
	*
	* @param sourceBean the bean to be given as the source for any events
	* @param notifyOnEDT whether to notify listeners on the <i>Event
	*        Dispatch Thread</i> only
	*
	* @throws NullPointerException if {@code sourceBean} is
	*         {@code null}
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(sourceBean : Dynamic, notifyOnEDT : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>
	* If {@link #isNotifyOnEDT} is {@code true} and called off the
	* <i>Event Dispatch Thread</i> this implementation uses
	* {@code SwingUtilities.invokeLater} to send out the notification
	* on the <i>Event Dispatch Thread</i>. This ensures  listeners
	* are only ever notified on the <i>Event Dispatch Thread</i>.
	*
	* @throws NullPointerException if {@code evt} is
	*         {@code null}
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function firePropertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Returns {@code notifyOnEDT} property.
	*
	* @return {@code notifyOnEDT} property
	* @see #SwingPropertyChangeSupport(Object sourceBean, boolean notifyOnEDT)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:final public function isNotifyOnEDT() : Bool;
	
	
}
