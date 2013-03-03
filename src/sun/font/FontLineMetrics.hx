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
*
* (C) Copyright IBM Corp. 2003, All Rights Reserved
*
*/
extern class FontLineMetrics extends java.awt.font.LineMetrics implements java.lang.Cloneable
{
	/**
	* Metrics from a font for layout of characters along a line
	* and layout of set of lines.
	* This and CoreMetrics replace what was previously a private internal class of Font
	*/
	@:public public var numchars : Int;
	
	@:public @:final public var cm(default, null) : sun.font.CoreMetrics;
	
	@:public @:final public var frc(default, null) : java.awt.font.FontRenderContext;
	
	@:overload @:public public function new(numchars : Int, cm : sun.font.CoreMetrics, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload @:public @:final override public function getNumChars() : Int;
	
	@:overload @:public @:final override public function getAscent() : Single;
	
	@:overload @:public @:final override public function getDescent() : Single;
	
	@:overload @:public @:final override public function getLeading() : Single;
	
	@:overload @:public @:final override public function getHeight() : Single;
	
	@:overload @:public @:final override public function getBaselineIndex() : Int;
	
	@:overload @:public @:final override public function getBaselineOffsets() : java.NativeArray<Single>;
	
	@:overload @:public @:final override public function getStrikethroughOffset() : Single;
	
	@:overload @:public @:final override public function getStrikethroughThickness() : Single;
	
	@:overload @:public @:final override public function getUnderlineOffset() : Single;
	
	@:overload @:public @:final override public function getUnderlineThickness() : Single;
	
	@:overload @:public @:final public function hashCode() : Int;
	
	@:overload @:public @:final public function equals(rhs : Dynamic) : Bool;
	
	@:overload @:public @:final public function clone() : Dynamic;
	
	
}
