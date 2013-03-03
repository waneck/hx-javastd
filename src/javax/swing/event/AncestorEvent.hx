package javax.swing.event;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
* An event reported to a child component that originated from an
* ancestor in the component hierarchy.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Dave Moore
*/
extern class AncestorEvent extends java.awt.AWTEvent
{
	/**
	* An ancestor-component was added to the hierarchy of
	* visible objects (made visible), and is currently being displayed.
	*/
	@:public @:static @:final public static var ANCESTOR_ADDED(default, null) : Int;
	
	/**
	* An ancestor-component was removed from the hierarchy
	* of visible objects (hidden) and is no longer being displayed.
	*/
	@:public @:static @:final public static var ANCESTOR_REMOVED(default, null) : Int;
	
	/** An ancestor-component changed its position on the screen. */
	@:public @:static @:final public static var ANCESTOR_MOVED(default, null) : Int;
	
	/**
	* Constructs an AncestorEvent object to identify a change
	* in an ancestor-component's display-status.
	*
	* @param source          the JComponent that originated the event
	*                        (typically <code>this</code>)
	* @param id              an int specifying {@link #ANCESTOR_ADDED},
	*                        {@link #ANCESTOR_REMOVED} or {@link #ANCESTOR_MOVED}
	* @param ancestor        a Container object specifying the ancestor-component
	*                        whose display-status changed
	* @param ancestorParent  a Container object specifying the ancestor's parent
	*/
	@:overload @:public public function new(source : javax.swing.JComponent, id : Int, ancestor : java.awt.Container, ancestorParent : java.awt.Container) : Void;
	
	/**
	* Returns the ancestor that the event actually occurred on.
	*/
	@:overload @:public public function getAncestor() : java.awt.Container;
	
	/**
	* Returns the parent of the ancestor the event actually occurred on.
	* This is most interesting in an ANCESTOR_REMOVED event, as
	* the ancestor may no longer be in the component hierarchy.
	*/
	@:overload @:public public function getAncestorParent() : java.awt.Container;
	
	/**
	* Returns the component that the listener was added to.
	*/
	@:overload @:public public function getComponent() : javax.swing.JComponent;
	
	
}
