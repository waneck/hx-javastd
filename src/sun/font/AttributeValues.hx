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
	@:overload public function getFamily() : String;
	
	@:overload public function setFamily(f : String) : Void;
	
	@:overload public function getWeight() : Single;
	
	@:overload public function setWeight(f : Single) : Void;
	
	@:overload public function getWidth() : Single;
	
	@:overload public function setWidth(f : Single) : Void;
	
	@:overload public function getPosture() : Single;
	
	@:overload public function setPosture(f : Single) : Void;
	
	@:overload public function getSize() : Single;
	
	@:overload public function setSize(f : Single) : Void;
	
	@:overload public function getTransform() : java.awt.geom.AffineTransform;
	
	@:overload public function setTransform(f : java.awt.geom.AffineTransform) : Void;
	
	@:overload public function setTransform(f : java.awt.font.TransformAttribute) : Void;
	
	@:overload public function getSuperscript() : Int;
	
	@:overload public function setSuperscript(f : Int) : Void;
	
	@:overload public function getFont() : java.awt.Font;
	
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	@:overload public function getCharReplacement() : java.awt.font.GraphicAttribute;
	
	@:overload public function setCharReplacement(f : java.awt.font.GraphicAttribute) : Void;
	
	@:overload public function getForeground() : java.awt.Paint;
	
	@:overload public function setForeground(f : java.awt.Paint) : Void;
	
	@:overload public function getBackground() : java.awt.Paint;
	
	@:overload public function setBackground(f : java.awt.Paint) : Void;
	
	@:overload public function getUnderline() : Int;
	
	@:overload public function setUnderline(f : Int) : Void;
	
	@:overload public function getStrikethrough() : Bool;
	
	@:overload public function setStrikethrough(f : Bool) : Void;
	
	@:overload public function getRunDirection() : Int;
	
	@:overload public function setRunDirection(f : Int) : Void;
	
	@:overload public function getBidiEmbedding() : Int;
	
	@:overload public function setBidiEmbedding(f : Int) : Void;
	
	@:overload public function getJustification() : Single;
	
	@:overload public function setJustification(f : Single) : Void;
	
	@:overload public function getInputMethodHighlight() : Dynamic;
	
	@:overload public function setInputMethodHighlight(f : java.text.Annotation) : Void;
	
	@:overload public function setInputMethodHighlight(f : java.awt.im.InputMethodHighlight) : Void;
	
	@:overload public function getInputMethodUnderline() : Int;
	
	@:overload public function setInputMethodUnderline(f : Int) : Void;
	
	@:overload public function getSwapColors() : Bool;
	
	@:overload public function setSwapColors(f : Bool) : Void;
	
	@:overload public function getNumericShaping() : java.awt.font.NumericShaper;
	
	@:overload public function setNumericShaping(f : java.awt.font.NumericShaper) : Void;
	
	@:overload public function getKerning() : Int;
	
	@:overload public function setKerning(f : Int) : Void;
	
	@:overload public function getTracking() : Single;
	
	@:overload public function setTracking(f : Single) : Void;
	
	@:overload public function getLigatures() : Int;
	
	@:overload public function setLigatures(f : Int) : Void;
	
	@:overload public function getBaselineTransform() : java.awt.geom.AffineTransform;
	
	@:overload public function getCharTransform() : java.awt.geom.AffineTransform;
	
	@:overload public static function getMask(att : sun.font.EAttribute) : Int;
	
	@:overload public static function getMask(atts : java.NativeArray<sun.font.EAttribute>) : Int;
	
	public static var MASK_ALL(default, null) : Int;
	
	@:overload public function unsetDefault() : Void;
	
	@:overload public function defineAll(mask : Int) : Void;
	
	@:overload public function allDefined(mask : Int) : Bool;
	
	@:overload public function anyDefined(mask : Int) : Bool;
	
	@:overload public function anyNonDefault(mask : Int) : Bool;
	
	@:overload public function isDefined(a : sun.font.EAttribute) : Bool;
	
	@:overload public function isNonDefault(a : sun.font.EAttribute) : Bool;
	
	@:overload public function setDefault(a : sun.font.EAttribute) : Void;
	
	@:overload public function unset(a : sun.font.EAttribute) : Void;
	
	@:overload public function set(a : sun.font.EAttribute, src : AttributeValues) : Void;
	
	@:overload public function set(a : sun.font.EAttribute, o : Dynamic) : Void;
	
	@:overload public function get(a : sun.font.EAttribute) : Dynamic;
	
	@:overload public function merge(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : AttributeValues;
	
	@:overload public function merge(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>, mask : Int) : AttributeValues;
	
	@:overload public function merge(src : AttributeValues) : AttributeValues;
	
	@:overload public function merge(src : AttributeValues, mask : Int) : AttributeValues;
	
	@:overload public static function fromMap(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : AttributeValues;
	
	@:overload public static function fromMap(map : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>, mask : Int) : AttributeValues;
	
	@:overload public function toMap(fill : java.util.Map<java.awt.font.TextAttribute, Dynamic>) : java.util.Map<java.awt.font.TextAttribute, Dynamic>;
	
	@:overload public static function is16Hashtable(ht : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	@:overload public static function fromSerializableHashtable(ht : java.util.Hashtable<Dynamic, Dynamic>) : AttributeValues;
	
	@:overload public function toSerializableHashtable() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(rhs : Dynamic) : Bool;
	
	@:overload public function equals(rhs : AttributeValues) : Bool;
	
	@:overload public function clone() : AttributeValues;
	
	@:overload public function toString() : String;
	
	@:native('getJustification') @:overload public static function _getJustification(map : java.util.Map<Dynamic, Dynamic>) : Single;
	
	@:native('getNumericShaping') @:overload public static function _getNumericShaping(map : java.util.Map<Dynamic, Dynamic>) : java.awt.font.NumericShaper;
	
	/**
	* If this has an imHighlight, create copy of this with those attributes
	* applied to it.  Otherwise return this unchanged.
	*/
	@:overload public function applyIMHighlight() : AttributeValues;
	
	@:native('getBaselineTransform') @:overload public static function _getBaselineTransform(map : java.util.Map<Dynamic, Dynamic>) : java.awt.geom.AffineTransform;
	
	@:native('getCharTransform') @:overload public static function _getCharTransform(map : java.util.Map<Dynamic, Dynamic>) : java.awt.geom.AffineTransform;
	
	@:overload public function updateDerivedTransforms() : Void;
	
	@:overload public static function extractXRotation(tx : java.awt.geom.AffineTransform, andTranslation : Bool) : java.awt.geom.AffineTransform;
	
	@:overload public static function extractYRotation(tx : java.awt.geom.AffineTransform, andTranslation : Bool) : java.awt.geom.AffineTransform;
	
	
}
