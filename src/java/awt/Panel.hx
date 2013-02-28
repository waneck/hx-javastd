package java.awt;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
* <code>Panel</code> is the simplest container class. A panel
* provides space in which an application can attach any other
* component, including other panels.
* <p>
* The default layout manager for a panel is the
* <code>FlowLayout</code> layout manager.
*
* @author      Sami Shaio
* @see     java.awt.FlowLayout
* @since   JDK1.0
*/
@:require(java0) extern class Panel extends java.awt.Container implements javax.accessibility.Accessible
{
	/**
	* Creates a new panel using the default layout manager.
	* The default layout manager for all panels is the
	* <code>FlowLayout</code> class.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new panel with the specified layout manager.
	* @param layout the layout manager for this panel.
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function new(layout : java.awt.LayoutManager) : Void;
	
	/**
	* Creates the Panel's peer.  The peer allows you to modify the
	* appearance of the panel without changing its functionality.
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Gets the AccessibleContext associated with this Panel.
	* For panels, the AccessibleContext takes the form of an
	* AccessibleAWTPanel.
	* A new AccessibleAWTPanel instance is created if necessary.
	*
	* @return an AccessibleAWTPanel that serves as the
	*         AccessibleContext of this Panel
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>Panel</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to panel user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Panel$AccessibleAWTPanel') extern class Panel_AccessibleAWTPanel extends java.awt.Container.Container_AccessibleAWTContainer
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
