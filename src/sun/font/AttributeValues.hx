package sun.font;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
/*
*
* (C) Copyright IBM Corp. 2005 - All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by IBM. These materials are provided
* under terms of a License Agreement between IBM and Sun.
* This technology is protected by multiple US and International
* patents. This notice and attribution to IBM may not be removed.
*/
extern class AttributeValues implements java.lang.Cloneable
{
	@:overload @:public public function getFamily() : String;
	
	@:overload @:public public function setFamily(f : String) : Void;
	
	@:overload @:public public function getWeight() : Single;
	
	@:overload @:public public function setWeight(f : Single) : Void;
	
	@:overload @:public public function getWidth() : Single;
	
	@:overload @:public public function setWidth(f : Single) : Void;
	
	@:overload @:public public function getPosture() : Single;
	
	@:overload @:public public function setPosture(f : Single) : Void;
	
	@:overload @:public public function getSize() : Single;
	
	@:overload @:public public function setSize(f : Single) : Void;
	
	@:overload @:public public function getTransform() : java.awt.geom.AffineTransform;
	
	@:overload @:public public function setTransform(f : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:public public function setTransform(f : java.awt.font.TransformAttribute) : Void;
	
	@:overload @:public public function getSuperscript() : Int;
	
	@:overload @:public public function setSuperscript(f : Int) : Void;
	
	@:overload @:public public function getFont() : java.awt.Font;
	
	@:overload @:public public function setFont(f : java.awt.Font) : Void;
	
	@:overload @:public public function getCharReplacement() : java.awt.font.GraphicAttribute;
	
	@:overload @:public public function setCharReplacement(f : java.awt.font.GraphicAttribute) : Void;
	
	@:overload @:public public function getForeground() : java.awt.Paint;
	
	@:overload @:public public function setForeground(f : java.awt.Paint) : Void;
	
	@:overload @:public public function getBackground() : java.awt.Paint;
	
	@:overload @:public public function setBackground(f : java.awt.Paint) : Void;
	
	@:overload @:public public function getUnderline() : Int;
	
	@:overload @:public public function setUnderline(f : Int) : Void;
	
	@:overload @:public public function getStrikethrough() : Bool;
	
	@:overload @:public public function setStrikethrough(f : Bool) : Void;
	
	@:overload @:public public function getRunDirection() : Int;
	
	@:overload @:public public function setRunDirection(f : Int) : Void;
	
	@:overload @:public public function getBidiEmbedding() : Int;
	
	@:overload @:public public function setBidiEmbedding(f : Int) : Void;
	
	@:overload @:public public function getJustification() : Single;
	
	@:overload @:public public function setJustification(f : Single) : Void;
	
	@:overload @:public public function getInputMethodHighlight() : Dynamic;
	
	@:overload @:public public function setInputMethodHighlight(f : java.text.Annotation) : Void;
	
	@:overload @:public public function setInputMethodHighlight(f : java.awt.im.InputMethodHighlight) : Void;
	
	@:overload @:public public function getInputMethodUnderline() : Int;
	
	@:overload @:public public function setInputMethodUnderline(f : Int) : Void;
	
	@:overload @:public public function getSwapColors() : Bool;
	
	@:overload @:public public function setSwapColors(f : Bool) : Void;
	
	@:overload @:public public function getNumericShaping() : java.awt.font.NumericShaper;
	
	@:overload @:public public function setNumericShaping(f : java.awt.font.NumericShaper) : Void;
	
	@:overload @:public public function getKerning() : Int;
	
	@:overload @:public public function setKerning(f : Int) : Void;
	
	@:overload @:public public function getTracking() : Single;
	
	@:overload @:public public function setTracking(f : Single) : Void;
	
	@:overload @:public public function getLigatures() : Int;
	
	@:overload @:public public function setLigatures(f : Int) : Void;
	
	@:overload @:public public function getBaselineTransform() : java.awt.geom.AffineTransform;
	
	@:overload @:public public function getCharTransform() : java.awt.geom.AffineTransform;
	
	@:overload @:public @:static public static function getMask(att : sun.font.EAttribute) : Int;
	
	@:overload @:public @:static public static function getMask(atts : java.NativeArray<sun.font.EAttribute>) : Int;
	
	@:public @:static @:final public static var MASK_ALL(default, null) : Int;
	
	@:overload @:public public function unsetDefault() : Void;
	
	@:overload @:public public function defineAll(mask : Int) : Void;
	
	@:overload @:public public function allDefined(mask : Int) : Bool;
	
	@:overload @:public public function anyDefined(mask : Int) : Bool;
	
	@:overload @:public public function anyNonDefault(mask : Int) : Bool;
	
	@:overload @:public public function isDefined(a : sun.font.EAttribute) : Bool;
	
	@:overload @:public public function isNonDefault(a : sun.font.EAttribute) : Bool;
	
	@:overload @:public public function setDefault(a : sun.font.EAttribute) : Void;
	
	@:overload @:public public function unset(a : sun.font.EAttribute) : Void;
	
	@:overload @:public public function set(a : sun.font.EAttribute, src : sun.font.AttributeValues) : Void;
	
	@:overload @:public public function set(a : sun.font.EAttribute, o : Dynamic) : Void;
	
	@:overload @:public public function get(a : sun.font.EAttribute) : Dynamic;
	
	@:overload @:public public function merge(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : sun.font.AttributeValues;
	
	@:overload @:public public function merge(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>, mask : Int) : sun.font.AttributeValues;
	
	@:overload @:public public function merge(src : sun.font.AttributeValues) : sun.font.AttributeValues;
	
	@:overload @:public public function merge(src : sun.font.AttributeValues, mask : Int) : sun.font.AttributeValues;
	
	@:overload @:public @:static public static function fromMap(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : sun.font.AttributeValues;
	
	@:overload @:public @:static public static function fromMap(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>, mask : Int) : sun.font.AttributeValues;
	
	@:overload @:public public function toMap(fill : java.util.Map<java.awt.font.TextAttribute, Dynamic>) : java.util.Map<java.awt.font.TextAttribute, Dynamic>;
	
	@:overload @:public @:static public static function is16Hashtable(ht : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload @:public @:static public static function fromSerializableHashtable(ht : java.util.Hashtable<Dynamic, Dynamic>) : sun.font.AttributeValues;
	
	@:overload @:public public function toSerializableHashtable() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(rhs : Dynamic) : Bool;
	
	@:overload @:public public function equals(rhs : sun.font.AttributeValues) : Bool;
	
	@:overload @:public public function clone() : sun.font.AttributeValues;
	
	@:overload @:public public function toString() : String;
	
	@:native('getJustification') @:overload @:public @:static public static function _getJustification(map : java.util.Map<Dynamic, Dynamic>) : Single;
	
	@:native('getNumericShaping') @:overload @:public @:static public static function _getNumericShaping(map : java.util.Map<Dynamic, Dynamic>) : java.awt.font.NumericShaper;
	
	/**
	* If this has an imHighlight, create copy of this with those attributes
	* applied to it.  Otherwise return this unchanged.
	*/
	@:overload @:public public function applyIMHighlight() : sun.font.AttributeValues;
	
	@:native('getBaselineTransform') @:overload @:public @:static public static function _getBaselineTransform(map : java.util.Map<Dynamic, Dynamic>) : java.awt.geom.AffineTransform;
	
	@:native('getCharTransform') @:overload @:public @:static public static function _getCharTransform(map : java.util.Map<Dynamic, Dynamic>) : java.awt.geom.AffineTransform;
	
	@:overload @:public public function updateDerivedTransforms() : Void;
	
	@:overload @:public @:static public static function extractXRotation(tx : java.awt.geom.AffineTransform, andTranslation : Bool) : java.awt.geom.AffineTransform;
	
	@:overload @:public @:static public static function extractYRotation(tx : java.awt.geom.AffineTransform, andTranslation : Bool) : java.awt.geom.AffineTransform;
	
	
}
