package sun.font;
/*
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
*
*/
/*
* (C) Copyright IBM Corp. 1999-2003, All Rights Reserved
*
*/
/**
* This class handles underlining, strikethrough, and foreground and
* background styles on text.  Clients simply acquire instances
* of this class and hand them off to ExtendedTextLabels or GraphicComponents.
*/
extern class Decoration
{
	/**
	* Return a Decoration which does nothing.
	*/
	@:overload public static function getPlainDecoration() : sun.font.Decoration;
	
	@:overload public static function getDecoration(values : sun.font.AttributeValues) : sun.font.Decoration;
	
	/**
	* Return a Decoration appropriate for the the given Map.
	* @param attributes the Map used to determine the Decoration
	*/
	@:overload public static function getDecoration(attributes : java.util.Map<Dynamic, Dynamic>) : sun.font.Decoration;
	
	@:overload public function drawTextAndDecorations(label : sun.font.Decoration.Decoration_Label, g2d : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload public function getVisualBounds(label : sun.font.Decoration.Decoration_Label) : java.awt.geom.Rectangle2D;
	
	@:overload public function getCharVisualBounds(label : sun.font.Decoration.Decoration_Label, index : Int) : java.awt.geom.Rectangle2D;
	
	
}
/**
* This interface is implemented by clients that use Decoration.
* Unfortunately, interface methods have to public;  ideally these
* would be package-private.
*/
@:native('sun$font$Decoration$Label') extern interface Decoration_Label
{
	@:overload public function getCoreMetrics() : sun.font.CoreMetrics;
	
	@:overload public function getLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function handleDraw(g2d : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload public function handleGetCharVisualBounds(index : Int) : java.awt.geom.Rectangle2D;
	
	@:overload public function handleGetVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function handleGetOutline(x : Single, y : Single) : java.awt.Shape;
	
	
}
@:native('sun$font$Decoration$DecorationImpl') @:internal extern class Decoration_DecorationImpl extends sun.font.Decoration
{
	@:overload public function equals(rhs : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload override public function drawTextAndDecorations(label : sun.font.Decoration.Decoration_Label, g2d : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload override public function getVisualBounds(label : sun.font.Decoration.Decoration_Label) : java.awt.geom.Rectangle2D;
	
	@:overload public function toString() : String;
	
	
}
