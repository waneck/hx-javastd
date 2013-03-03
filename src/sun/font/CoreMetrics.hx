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
extern class CoreMetrics
{
	@:overload @:public public function new(ascent : Single, descent : Single, leading : Single, height : Single, baselineIndex : Int, baselineOffsets : java.NativeArray<Single>, strikethroughOffset : Single, strikethroughThickness : Single, underlineOffset : Single, underlineThickness : Single, ssOffset : Single, italicAngle : Single) : Void;
	
	@:overload @:public @:static public static function get(lm : java.awt.font.LineMetrics) : sun.font.CoreMetrics;
	
	@:overload @:public @:final public function hashCode() : Int;
	
	@:overload @:public @:final public function equals(rhs : Dynamic) : Bool;
	
	@:overload @:public @:final public function equals(rhs : sun.font.CoreMetrics) : Bool;
	
	@:overload @:public @:final public function effectiveBaselineOffset(fullOffsets : java.NativeArray<Single>) : Single;
	
	@:public @:final public var ascent(default, null) : Single;
	
	@:public @:final public var descent(default, null) : Single;
	
	@:public @:final public var leading(default, null) : Single;
	
	@:public @:final public var height(default, null) : Single;
	
	@:public @:final public var baselineIndex(default, null) : Int;
	
	@:public @:final public var baselineOffsets(default, null) : java.NativeArray<Single>;
	
	@:public @:final public var strikethroughOffset(default, null) : Single;
	
	@:public @:final public var strikethroughThickness(default, null) : Single;
	
	@:public @:final public var underlineOffset(default, null) : Single;
	
	@:public @:final public var underlineThickness(default, null) : Single;
	
	@:public @:final public var ssOffset(default, null) : Single;
	
	@:public @:final public var italicAngle(default, null) : Single;
	
	
}
