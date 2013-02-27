package javax.swing;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AncestorNotifier implements java.awt.event.ComponentListener implements java.beans.PropertyChangeListener implements java.io.Serializable
{
	/**
	* Notify all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @see EventListenerList
	*/
	@:overload private function fireAncestorAdded(source : javax.swing.JComponent, id : Int, ancestor : java.awt.Container, ancestorParent : java.awt.Container) : Void;
	
	/**
	* Notify all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @see EventListenerList
	*/
	@:overload private function fireAncestorRemoved(source : javax.swing.JComponent, id : Int, ancestor : java.awt.Container, ancestorParent : java.awt.Container) : Void;
	
	/**
	* Notify all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @see EventListenerList
	*/
	@:overload private function fireAncestorMoved(source : javax.swing.JComponent, id : Int, ancestor : java.awt.Container, ancestorParent : java.awt.Container) : Void;
	
	@:overload public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
