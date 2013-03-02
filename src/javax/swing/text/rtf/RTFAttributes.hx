package javax.swing.text.rtf;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class RTFAttributes
{
	
}
/************************************************************************/
@:native('javax$swing$text$rtf$RTFAttributes$GenericAttribute') @:internal extern class RTFAttributes_GenericAttribute
{
	@:overload private function new(d : Int, s : Dynamic, r : String) : Void;
	
	@:overload public function domain() : Int;
	
	@:overload public function swingName() : Dynamic;
	
	@:overload public function rtfName() : String;
	
	@:overload public function write(source : javax.swing.text.AttributeSet, target : javax.swing.text.rtf.RTFGenerator, force : Bool) : Bool;
	
	@:overload public function writeValue(value : Dynamic, target : javax.swing.text.rtf.RTFGenerator, force : Bool) : Bool;
	
	
}
@:native('javax$swing$text$rtf$RTFAttributes$BooleanAttribute') @:internal extern class RTFAttributes_BooleanAttribute extends javax.swing.text.rtf.RTFAttributes.RTFAttributes_GenericAttribute implements javax.swing.text.rtf.RTFAttribute
{
	private static var True(default, null) : Null<Bool>;
	
	private static var False(default, null) : Null<Bool>;
	
	@:overload public function new(d : Int, s : Dynamic, r : String, ds : Bool, dr : Bool) : Void;
	
	@:overload public function new(d : Int, s : Dynamic, r : String) : Void;
	
	@:overload public function set(target : javax.swing.text.MutableAttributeSet) : Bool;
	
	@:overload public function set(target : javax.swing.text.MutableAttributeSet, parameter : Int) : Bool;
	
	@:overload public function setDefault(target : javax.swing.text.MutableAttributeSet) : Bool;
	
	@:overload override public function writeValue(o_value : Dynamic, target : javax.swing.text.rtf.RTFGenerator, force : Bool) : Bool;
	
	
}
@:native('javax$swing$text$rtf$RTFAttributes$AssertiveAttribute') @:internal extern class RTFAttributes_AssertiveAttribute extends javax.swing.text.rtf.RTFAttributes.RTFAttributes_GenericAttribute implements javax.swing.text.rtf.RTFAttribute
{
	@:overload public function new(d : Int, s : Dynamic, r : String) : Void;
	
	@:overload public function new(d : Int, s : Dynamic, r : String, v : Dynamic) : Void;
	
	@:overload public function new(d : Int, s : Dynamic, r : String, v : Int) : Void;
	
	@:overload public function set(target : javax.swing.text.MutableAttributeSet) : Bool;
	
	@:overload public function set(target : javax.swing.text.MutableAttributeSet, parameter : Int) : Bool;
	
	@:overload public function setDefault(target : javax.swing.text.MutableAttributeSet) : Bool;
	
	@:overload override public function writeValue(value : Dynamic, target : javax.swing.text.rtf.RTFGenerator, force : Bool) : Bool;
	
	
}
@:native('javax$swing$text$rtf$RTFAttributes$NumericAttribute') @:internal extern class RTFAttributes_NumericAttribute extends javax.swing.text.rtf.RTFAttributes.RTFAttributes_GenericAttribute implements javax.swing.text.rtf.RTFAttribute
{
	@:overload private function new(d : Int, s : Dynamic, r : String) : Void;
	
	@:overload public function new(d : Int, s : Dynamic, r : String, ds : Int, dr : Int) : Void;
	
	@:overload public function new(d : Int, s : Dynamic, r : String, ds : java.lang.Number, dr : Int, sc : Single) : Void;
	
	@:overload public static function NewTwips(d : Int, s : Dynamic, r : String, ds : Single, dr : Int) : javax.swing.text.rtf.RTFAttributes.RTFAttributes_NumericAttribute;
	
	@:overload public static function NewTwips(d : Int, s : Dynamic, r : String, dr : Int) : javax.swing.text.rtf.RTFAttributes.RTFAttributes_NumericAttribute;
	
	@:overload public function set(target : javax.swing.text.MutableAttributeSet) : Bool;
	
	@:overload public function set(target : javax.swing.text.MutableAttributeSet, parameter : Int) : Bool;
	
	@:overload public function setDefault(target : javax.swing.text.MutableAttributeSet) : Bool;
	
	@:overload override public function writeValue(o_value : Dynamic, target : javax.swing.text.rtf.RTFGenerator, force : Bool) : Bool;
	
	
}
