package javax.swing.text.html;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
* A view implementation to display an html list
*
* @author  Timothy Prinzing
*/
extern class ListView extends javax.swing.text.html.BlockView
{
	/**
	* Creates a new view that represents a list element.
	*
	* @param elem the element to create a view for
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Calculates the desired shape of the list.
	*
	* @return the desired span
	* @see View#getPreferredSpan
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Paints one of the children; called by paint().  By default
	* that is all it does, but a subclass can use this to paint
	* things relative to the child.
	*
	* @param g the graphics context
	* @param alloc the allocated region to render the child into
	* @param index the index of the child
	*/
	@:overload override private function paintChild(g : java.awt.Graphics, alloc : java.awt.Rectangle, index : Int) : Void;
	
	@:overload override private function setPropertiesFromAttributes() : Void;
	
	
}
