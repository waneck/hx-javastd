package sun.awt;
/*
* Copyright (c) 1995, Oracle and/or its affiliates. All rights reserved.
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
* A vertical 'bag' of Components.  Allocates space for each Component from
* top to bottom.
*
* @author      Herb Jellinek
*/
extern class VerticalBagLayout implements java.awt.LayoutManager
{
	/**
	* Constructs a new VerticalBagLayout.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a VerticalBagLayout with the specified gaps.
	* @param vgap the vertical gap
	*/
	@:overload @:public public function new(vgap : Int) : Void;
	
	/**
	* Adds the specified named component to the layout.
	* @param name the String name
	* @param comp the component to be added
	*/
	@:overload @:public public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from the layout.
	* @param comp the component to be removed
	*/
	@:overload @:public public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Returns the minimum dimensions needed to lay out the components
	* contained in the specified target container.
	* @param target the Container on which to do the layout
	* @see Container
	* @see #preferredLayoutSize
	*/
	@:overload @:public public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the preferred dimensions for this layout given the components
	* in the specified target container.
	* @param target the component which needs to be laid out
	* @see Container
	* @see #minimumLayoutSize
	*/
	@:overload @:public public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Lays out the specified container. This method will actually reshape the
	* components in the specified target container in order to satisfy the
	* constraints of the VerticalBagLayout object.
	* @param target the component being laid out
	* @see Container
	*/
	@:overload @:public public function layoutContainer(target : java.awt.Container) : Void;
	
	/**
	* Returns the String representation of this VerticalBagLayout's values.
	*/
	@:overload @:public public function toString() : String;
	
	
}
