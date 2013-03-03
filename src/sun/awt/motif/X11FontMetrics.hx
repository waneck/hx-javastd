package sun.awt.motif;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class X11FontMetrics extends java.awt.FontMetrics
{
	/**
	* Calculate the metrics from the given WServer and font.
	*/
	@:overload @:public public function new(font : java.awt.Font) : Void;
	
	/**
	* Get leading
	*/
	@:overload @:public override public function getLeading() : Int;
	
	/**
	* Get ascent.
	*/
	@:overload @:public override public function getAscent() : Int;
	
	/**
	* Get descent
	*/
	@:overload @:public override public function getDescent() : Int;
	
	/**
	* Get height
	*/
	@:overload @:public override public function getHeight() : Int;
	
	/**
	* Get maxAscent
	*/
	@:overload @:public override public function getMaxAscent() : Int;
	
	/**
	* Get maxDescent
	*/
	@:overload @:public override public function getMaxDescent() : Int;
	
	/**
	* Get maxAdvance
	*/
	@:overload @:public override public function getMaxAdvance() : Int;
	
	/**
	* Return the width of the specified string in this Font.
	*/
	@:overload @:public override public function stringWidth(string : String) : Int;
	
	/**
	* Return the width of the specified char[] in this Font.
	*/
	@:overload @:public override public function charsWidth(chars : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	/**
	* Return the width of the specified byte[] in this Font.
	*/
	@:overload @:public @:native override public function bytesWidth(data : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Get the widths of the first 256 characters in the font.
	*/
	@:overload @:public override public function getWidths() : java.NativeArray<Int>;
	
	
}
