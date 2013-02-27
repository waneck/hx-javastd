package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MetalBumps implements javax.swing.Icon
{
	private var xBumps : Int;
	
	private var yBumps : Int;
	
	private var topColor : java.awt.Color;
	
	private var shadowColor : java.awt.Color;
	
	private var backColor : java.awt.Color;
	
	private var buffer : BumpBuffer;
	
	/**
	* Creates MetalBumps of the specified size with the specified colors.
	* If <code>newBackColor</code> is null, the background will be
	* transparent.
	*/
	@:overload public function new(width : Int, height : Int, newTopColor : java.awt.Color, newShadowColor : java.awt.Color, newBackColor : java.awt.Color) : Void;
	
	@:overload public function setBumpArea(bumpArea : java.awt.Dimension) : Void;
	
	@:overload public function setBumpArea(width : Int, height : Int) : Void;
	
	@:overload public function setBumpColors(newTopColor : java.awt.Color, newShadowColor : java.awt.Color, newBackColor : java.awt.Color) : Void;
	
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:internal extern class BumpBuffer
{
	@:overload public function new(gc : java.awt.GraphicsConfiguration, aTopColor : java.awt.Color, aShadowColor : java.awt.Color, aBackColor : java.awt.Color) : Void;
	
	@:overload public function hasSameConfiguration(gc : java.awt.GraphicsConfiguration, aTopColor : java.awt.Color, aShadowColor : java.awt.Color, aBackColor : java.awt.Color) : Bool;
	
	/**
	* Returns the Image containing the bumps appropriate for the passed in
	* <code>GraphicsConfiguration</code>.
	*/
	@:overload public function getImage() : java.awt.Image;
	
	
}
