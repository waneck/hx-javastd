package sun.awt;
/*
* Copyright (c) 1996, Oracle and/or its affiliates. All rights reserved.
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
* Extends the FlowLayout class to support both vertical and horizontal
* layout of components.  Orientation can be changed dynamically after
* creation by calling either of the methods @method orientHorizontally or
* @method orientVertically.  Separate values for alignment, vertical gap,
* and horizontal gap can be specified for horizontal and vertical
* orientation.
*
* @author Terry Cline
*/
extern class OrientableFlowLayout extends java.awt.FlowLayout
{
	/**
	* The horizontal orientation constant.
	*/
	@:public @:static @:final public static var HORIZONTAL(default, null) : Int;
	
	/**
	* The vertical orientation constant.
	*/
	@:public @:static @:final public static var VERTICAL(default, null) : Int;
	
	/**
	* The top vertical alignment constant.
	*/
	@:public @:static @:final public static var TOP(default, null) : Int;
	
	/**
	* The bottom vertical alignment constant.
	*/
	@:public @:static @:final public static var BOTTOM(default, null) : Int;
	
	/**
	* Constructs a new flow layout with a horizontal orientation and
	* centered alignment.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new flow layout with the specified orientation and
	* a centered alignment.
	*
	* @param orientation the orientation, one of HORIZONTAL or VERTICAL.
	*/
	@:overload @:public public function new(orientation : Int) : Void;
	
	/**
	* Constructs a new flow layout with the specified orientation and
	* alignment.
	*
	* @param orientation the orientation, one of HORIZONTAL or VERTICAL.
	* @param hAlign the horizontal alignment, one of LEFT, CENTER, or RIGHT.
	* @param vAlign the vertical alignment, one of TOP, CENTER, or BOTTOM.
	*/
	@:overload @:public public function new(orientation : Int, hAlign : Int, vAlign : Int) : Void;
	
	/**
	* Constructs a new flow layout with the specified orientation,
	* alignment, and gap values.
	*
	* @param orientation the orientation, one of HORIZONTAL or VERTICAL.
	* @param hAlign the horizontal alignment, one of LEFT, CENTER, or RIGHT.
	* @param vAlign the vertical alignment, one of TOP, CENTER, or BOTTOM.
	* @param hHGap the horizontal gap between components in HORIZONTAL.
	* @param hVGap the vertical gap between components in HORIZONTAL.
	* @param vHGap the horizontal gap between components in VERTICAL.
	* @param vVGap the vertical gap between components in VERTICAL.
	*/
	@:overload @:public public function new(orientation : Int, hAlign : Int, vAlign : Int, hHGap : Int, hVGap : Int, vHGap : Int, vVGap : Int) : Void;
	
	/**
	* Set the layout's current orientation to horizontal.
	*/
	@:overload @:public @:synchronized public function orientHorizontally() : Void;
	
	/**
	* Set the layout's current orientation to vertical.
	*/
	@:overload @:public @:synchronized public function orientVertically() : Void;
	
	/**
	* Returns the preferred dimensions for this layout given the
	* components in the specified target container.
	*
	* @param target the component which needs to be laid out.
	* @see Container
	* @see FlowLayout
	* @see #minimumLayoutSize
	*/
	@:overload @:public override public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum dimensions needed to layout the components
	* contained in the specified target container.
	*
	* @param target the component which needs to be laid out.
	* @see #preferredLayoutSize.
	*/
	@:overload @:public override public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Lays out the container.  This method will reshape the
	* components in the target to satisfy the constraints of the
	* layout.
	*
	* @param target the specified component being laid out.
	* @see Container.
	*/
	@:overload @:public override public function layoutContainer(target : java.awt.Container) : Void;
	
	/**
	* Returns the String representation of this layout's values.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
