package javax.swing;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ViewportLayout implements java.awt.LayoutManager implements java.io.Serializable
{
	/**
	* Adds the specified component to the layout. Not used by this class.
	* @param name the name of the component
	* @param c the the component to be added
	*/
	@:overload public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from the layout. Not used by
	* this class.
	* @param c the component to remove
	*/
	@:overload public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	/**
	* Returns the preferred dimensions for this layout given the components
	* in the specified target container.
	* @param parent the component which needs to be laid out
	* @return a <code>Dimension</code> object containing the
	*          preferred dimensions
	* @see #minimumLayoutSize
	*/
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum dimensions needed to layout the components
	* contained in the specified target container.
	*
	* @param parent the component which needs to be laid out
	* @return a <code>Dimension</code> object containing the minimum
	*          dimensions
	* @see #preferredLayoutSize
	*/
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Called by the AWT when the specified container needs to be laid out.
	*
	* @param parent  the container to lay out
	*
	* @exception AWTError  if the target isn't the container specified to the
	*                      <code>BoxLayout</code> constructor
	*/
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	
}
