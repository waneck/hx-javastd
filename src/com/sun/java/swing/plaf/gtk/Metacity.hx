package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
*/
@:internal extern class Metacity implements javax.swing.plaf.synth.SynthConstants
{
	@:overload @:protected private function new(themeName : String) : Void;
	
	@:overload @:public @:static public static function getTitlePaneLayout() : java.awt.LayoutManager;
	
	@:overload @:protected private function drawButton(frame_style : org.w3c.dom.Node, _function : String, state : String, g : java.awt.Graphics, w : Int, h : Int, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function tileImage(g : java.awt.Graphics, image : java.awt.Image, x0 : Int, y0 : Int, w : Int, h : Int, alphas : java.NativeArray<Single>) : Void;
	
	@:overload @:protected private function getImage(key : String, c : java.awt.Color) : java.awt.Image;
	
	@:overload @:protected private function getImage(key : String) : java.awt.Image;
	
	@:overload @:protected @:static private static function findChild(parent : javax.swing.JComponent, name : String) : javax.swing.JComponent;
	
	@:overload @:protected private function getFrameGeometry() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:protected private function setFrameGeometry(titlePane : javax.swing.JComponent, gm : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload @:protected private function getInt(key : String) : Int;
	
	@:overload @:protected private function getBoolean(key : String, fallback : Bool) : Bool;
	
	@:overload @:protected private function drawArc(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawLine(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawRectangle(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawTile(node : org.w3c.dom.Node, g : java.awt.Graphics, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function drawTint(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawTitle(node : org.w3c.dom.Node, g : java.awt.Graphics, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function calculateButtonSize(titlePane : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function calculateTitleArea(jif : javax.swing.JInternalFrame) : java.awt.Rectangle;
	
	@:overload @:protected private function calculateTitleTextWidth(g : java.awt.Graphics, jif : javax.swing.JInternalFrame) : Int;
	
	@:overload @:protected private function setClip(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawGTKArrow(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawGTKBox(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawGTKVLine(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawGradient(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawImage(node : org.w3c.dom.Node, g : java.awt.Graphics) : Void;
	
	@:overload @:protected private function drawIcon(node : org.w3c.dom.Node, g : java.awt.Graphics, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function drawInclude(node : org.w3c.dom.Node, g : java.awt.Graphics, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function draw(draw_ops : org.w3c.dom.Node, g : java.awt.Graphics, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function drawPiece(frame_style : org.w3c.dom.Node, g : java.awt.Graphics, position : String, x : Int, y : Int, width : Int, height : Int, jif : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected @:static private static function logError(themeName : String, ex : java.lang.Exception) : Void;
	
	@:overload @:protected @:static private static function logError(themeName : String, msg : String) : Void;
	
	@:overload @:protected @:static private static function getXMLDoc(xmlFile : java.net.URL) : org.w3c.dom.Document;
	
	@:overload @:protected private function getNodesByName(parent : org.w3c.dom.Node, name : String) : java.NativeArray<org.w3c.dom.Node>;
	
	@:overload @:protected private function getNode(tagName : String, attrs : java.NativeArray<String>) : org.w3c.dom.Node;
	
	@:overload @:protected private function getNode(parent : org.w3c.dom.Node, name : String, attrs : java.NativeArray<String>) : org.w3c.dom.Node;
	
	@:overload @:protected private function getNode(nodes : org.w3c.dom.NodeList, name : String, attrs : java.NativeArray<String>) : org.w3c.dom.Node;
	
	@:overload @:protected private function getStringAttr(node : org.w3c.dom.Node, name : String) : String;
	
	@:overload @:protected private function getStringAttr(attrs : org.w3c.dom.NamedNodeMap, name : String) : String;
	
	@:overload @:protected private function getBooleanAttr(node : org.w3c.dom.Node, name : String, fallback : Bool) : Bool;
	
	@:overload @:protected private function getIntAttr(node : org.w3c.dom.Node, name : String, fallback : Int) : Int;
	
	@:overload @:protected private function getFloatAttr(node : org.w3c.dom.Node, name : String, fallback : Single) : Single;
	
	@:overload @:protected private function parseColor(str : String) : java.awt.Color;
	
	@:overload @:protected private function parseColor2(str : String) : java.awt.Color;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$Privileged') @:internal extern class Metacity_Privileged implements java.security.PrivilegedAction<Dynamic>
{
	@:overload @:public public function doPrivileged(type : Int, arg : Dynamic) : Dynamic;
	
	@:overload @:public public function run() : Dynamic;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$ColorizeImageFilter') @:internal extern class Metacity_ColorizeImageFilter extends java.awt.image.RGBImageFilter
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setColor(color : java.awt.Color) : Void;
	
	@:overload @:public public function colorize(fromImage : java.awt.Image, c : java.awt.Color) : java.awt.Image;
	
	@:overload @:public override public function filterRGB(x : Int, y : Int, rgb : Int) : Int;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$TitlePaneLayout') extern class Metacity_TitlePaneLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$ArithmeticExpressionEvaluator') @:internal extern class Metacity_ArithmeticExpressionEvaluator
{
	@:overload @:public public function expression() : Single;
	
	@:overload @:public public function getTermValue() : Single;
	
	@:overload @:public public function getFactorValue() : Single;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$PeekableStringTokenizer') @:internal extern class Metacity_PeekableStringTokenizer extends java.util.StringTokenizer
{
	@:overload @:public public function new(str : String, delim : String, returnDelims : Bool) : Void;
	
	@:overload @:public public function peek() : String;
	
	@:overload @:public override public function hasMoreTokens() : Bool;
	
	@:overload @:public override public function nextToken() : String;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$RoundRectClipShape') @:internal extern class Metacity_RoundRectClipShape extends java.awt.geom.RectangularShape
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(x : Int, y : Int, w : Int, h : Int, arcw : Int, arch : Int, corners : Int) : Void;
	
	@:overload @:public public function setRoundedRect(x : Int, y : Int, w : Int, h : Int, arcw : Int, arch : Int, corners : Int) : Void;
	
	@:overload @:public override public function getX() : Float;
	
	@:overload @:public override public function getY() : Float;
	
	@:overload @:public override public function getWidth() : Float;
	
	@:overload @:public override public function getHeight() : Float;
	
	@:overload @:public public function getArcWidth() : Float;
	
	@:overload @:public public function getArcHeight() : Float;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	@:overload @:public public function getCornerFlags() : Int;
	
	@:overload @:public override public function setFrame(x : Float, y : Float, w : Float, h : Float) : Void;
	
	@:overload @:public override public function contains(x : Float, y : Float) : Bool;
	
	@:overload @:public override public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	@:overload @:public override public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	@:overload @:public override public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$Metacity$RoundRectClipShape$RoundishRectIterator') @:internal extern class Metacity_RoundRectClipShape_RoundishRectIterator implements java.awt.geom.PathIterator
{
	@:overload @:public public function getWindingRule() : Int;
	
	@:overload @:public public function isDone() : Bool;
	
	@:overload @:public public function next() : Void;
	
	@:overload @:public public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload @:public public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	
}
