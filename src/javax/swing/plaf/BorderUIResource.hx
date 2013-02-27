package javax.swing.plaf;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class BorderUIResource implements javax.swing.border.Border implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public static function getEtchedBorderUIResource() : javax.swing.border.Border;
	
	@:overload public static function getLoweredBevelBorderUIResource() : javax.swing.border.Border;
	
	@:overload public static function getRaisedBevelBorderUIResource() : javax.swing.border.Border;
	
	@:overload public static function getBlackLineBorderUIResource() : javax.swing.border.Border;
	
	/**
	* Creates a UIResource border object which wraps
	* an existing Border instance.
	* @param delegate the border being wrapped
	*/
	@:overload public function new(delegate : javax.swing.border.Border) : Void;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$CompoundBorderUIResource') extern class BorderUIResource_CompoundBorderUIResource extends javax.swing.border.CompoundBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(outsideBorder : javax.swing.border.Border, insideBorder : javax.swing.border.Border) : Void;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$EmptyBorderUIResource') extern class BorderUIResource_EmptyBorderUIResource extends javax.swing.border.EmptyBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(top : Int, left : Int, bottom : Int, right : Int) : Void;
	
	@:overload public function new(insets : java.awt.Insets) : Void;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$LineBorderUIResource') extern class BorderUIResource_LineBorderUIResource extends javax.swing.border.LineBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(color : java.awt.Color) : Void;
	
	@:overload public function new(color : java.awt.Color, thickness : Int) : Void;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$BevelBorderUIResource') extern class BorderUIResource_BevelBorderUIResource extends javax.swing.border.BevelBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(bevelType : Int) : Void;
	
	@:overload public function new(bevelType : Int, highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
	@:overload public function new(bevelType : Int, highlightOuter : java.awt.Color, highlightInner : java.awt.Color, shadowOuter : java.awt.Color, shadowInner : java.awt.Color) : Void;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$EtchedBorderUIResource') extern class BorderUIResource_EtchedBorderUIResource extends javax.swing.border.EtchedBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new() : Void;
	
	@:overload public function new(etchType : Int) : Void;
	
	@:overload public function new(highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
	@:overload public function new(etchType : Int, highlight : java.awt.Color, shadow : java.awt.Color) : Void;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$MatteBorderUIResource') extern class BorderUIResource_MatteBorderUIResource extends javax.swing.border.MatteBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(top : Int, left : Int, bottom : Int, right : Int, color : java.awt.Color) : Void;
	
	@:overload public function new(top : Int, left : Int, bottom : Int, right : Int, tileIcon : javax.swing.Icon) : Void;
	
	@:overload public function new(tileIcon : javax.swing.Icon) : Void;
	
	
}
@:native('javax$swing$plaf$BorderUIResource$TitledBorderUIResource') extern class BorderUIResource_TitledBorderUIResource extends javax.swing.border.TitledBorder implements javax.swing.plaf.UIResource
{
	@:overload public function new(title : String) : Void;
	
	@:overload public function new(border : javax.swing.border.Border) : Void;
	
	@:overload public function new(border : javax.swing.border.Border, title : String) : Void;
	
	@:overload public function new(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int) : Void;
	
	@:overload public function new(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int, titleFont : java.awt.Font) : Void;
	
	@:overload public function new(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int, titleFont : java.awt.Font, titleColor : java.awt.Color) : Void;
	
	
}
