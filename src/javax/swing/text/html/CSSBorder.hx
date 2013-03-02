package javax.swing.text.html;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CSSBorder extends javax.swing.border.AbstractBorder
{
	/* The javax.swing.border.Border methods.  */
	@:overload public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
/* Border painters.  */
@:native('javax$swing$text$html$CSSBorder$BorderPainter') @:internal extern interface CSSBorder_BorderPainter
{
	/**
	* The painter should paint the border as if it were at the top and the
	* coordinates of the NW corner of the interior area is (0, 0).  The
	* caller is responsible for the appropriate affine transformations.
	*
	* Clip is set by the caller to the exact border shape so it's safe to
	* simply draw into the shape's bounding rectangle.
	*/
	@:overload public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
/**
* Painter for the "none" and "hidden" CSS border styles.
*/
@:native('javax$swing$text$html$CSSBorder$NullPainter') @:internal extern class CSSBorder_NullPainter implements javax.swing.text.html.CSSBorder.CSSBorder_BorderPainter
{
	@:overload public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
/**
* Painter for the "solid" CSS border style.
*/
@:native('javax$swing$text$html$CSSBorder$SolidPainter') @:internal extern class CSSBorder_SolidPainter implements javax.swing.text.html.CSSBorder.CSSBorder_BorderPainter
{
	@:overload public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
/**
* Defines a method for painting strokes in the specified direction using
* the given length and color patterns.
*/
@:native('javax$swing$text$html$CSSBorder$StrokePainter') @:internal extern class CSSBorder_StrokePainter implements javax.swing.text.html.CSSBorder.CSSBorder_BorderPainter
{
	
}
/**
* Painter for the "double" CSS border style.
*/
@:native('javax$swing$text$html$CSSBorder$DoublePainter') @:internal extern class CSSBorder_DoublePainter extends javax.swing.text.html.CSSBorder.CSSBorder_StrokePainter
{
	@:overload override public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
/**
* Painter for the "dotted" and "dashed" CSS border styles.
*/
@:native('javax$swing$text$html$CSSBorder$DottedDashedPainter') @:internal extern class CSSBorder_DottedDashedPainter extends javax.swing.text.html.CSSBorder.CSSBorder_StrokePainter
{
	@:overload override public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
/**
* Painter that defines colors for "shadow" and "light" border sides.
*/
@:native('javax$swing$text$html$CSSBorder$ShadowLightPainter') @:internal extern class CSSBorder_ShadowLightPainter extends javax.swing.text.html.CSSBorder.CSSBorder_StrokePainter
{
	
}
/**
* Painter for the "groove" and "ridge" CSS border styles.
*/
@:native('javax$swing$text$html$CSSBorder$GrooveRidgePainter') @:internal extern class CSSBorder_GrooveRidgePainter extends javax.swing.text.html.CSSBorder.CSSBorder_ShadowLightPainter
{
	@:overload override public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
/**
* Painter for the "inset" and "outset" CSS border styles.
*/
@:native('javax$swing$text$html$CSSBorder$InsetOutsetPainter') @:internal extern class CSSBorder_InsetOutsetPainter extends javax.swing.text.html.CSSBorder.CSSBorder_ShadowLightPainter
{
	@:overload override public function paint(shape : java.awt.Polygon, g : java.awt.Graphics, color : java.awt.Color, side : Int) : Void;
	
	
}
