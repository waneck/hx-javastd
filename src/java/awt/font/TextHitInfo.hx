package java.awt.font;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996 - 1997, All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998, All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by Taligent, Inc., a wholly-owned subsidiary
* of IBM. These materials are provided under terms of a License
* Agreement between Taligent and Sun. This technology is protected
* by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class TextHitInfo
{
	/**
	* Returns the index of the character hit.
	* @return the index of the character hit.
	*/
	@:overload @:public public function getCharIndex() : Int;
	
	/**
	* Returns <code>true</code> if the leading edge of the character was
	* hit.
	* @return <code>true</code> if the leading edge of the character was
	* hit; <code>false</code> otherwise.
	*/
	@:overload @:public public function isLeadingEdge() : Bool;
	
	/**
	* Returns the insertion index.  This is the character index if
	* the leading edge of the character was hit, and one greater
	* than the character index if the trailing edge was hit.
	* @return the insertion index.
	*/
	@:overload @:public public function getInsertionIndex() : Int;
	
	/**
	* Returns the hash code.
	* @return the hash code of this <code>TextHitInfo</code>, which is
	* also the <code>charIndex</code> of this <code>TextHitInfo</code>.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns <code>true</code> if the specified <code>Object</code> is a
	* <code>TextHitInfo</code> and equals this <code>TextHitInfo</code>.
	* @param obj the <code>Object</code> to test for equality
	* @return <code>true</code> if the specified <code>Object</code>
	* equals this <code>TextHitInfo</code>; <code>false</code> otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns <code>true</code> if the specified <code>TextHitInfo</code>
	* has the same <code>charIndex</code> and <code>isLeadingEdge</code>
	* as this <code>TextHitInfo</code>.  This is not the same as having
	* the same insertion offset.
	* @param hitInfo a specified <code>TextHitInfo</code>
	* @return <code>true</code> if the specified <code>TextHitInfo</code>
	* has the same <code>charIndex</code> and <code>isLeadingEdge</code>
	* as this <code>TextHitInfo</code>.
	*/
	@:overload @:public public function equals(hitInfo : java.awt.font.TextHitInfo) : Bool;
	
	/**
	* Returns a <code>String</code> representing the hit for debugging
	* use only.
	* @return a <code>String</code> representing this
	* <code>TextHitInfo</code>.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Creates a <code>TextHitInfo</code> on the leading edge of the
	* character at the specified <code>charIndex</code>.
	* @param charIndex the index of the character hit
	* @return a <code>TextHitInfo</code> on the leading edge of the
	* character at the specified <code>charIndex</code>.
	*/
	@:overload @:public @:static public static function leading(charIndex : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Creates a hit on the trailing edge of the character at
	* the specified <code>charIndex</code>.
	* @param charIndex the index of the character hit
	* @return a <code>TextHitInfo</code> on the trailing edge of the
	* character at the specified <code>charIndex</code>.
	*/
	@:overload @:public @:static public static function trailing(charIndex : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Creates a <code>TextHitInfo</code> at the specified offset,
	* associated with the character before the offset.
	* @param offset an offset associated with the character before
	* the offset
	* @return a <code>TextHitInfo</code> at the specified offset.
	*/
	@:overload @:public @:static public static function beforeOffset(offset : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Creates a <code>TextHitInfo</code> at the specified offset,
	* associated with the character after the offset.
	* @param offset an offset associated with the character after
	* the offset
	* @return a <code>TextHitInfo</code> at the specified offset.
	*/
	@:overload @:public @:static public static function afterOffset(offset : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Creates a <code>TextHitInfo</code> on the other side of the
	* insertion point.  This <code>TextHitInfo</code> remains unchanged.
	* @return a <code>TextHitInfo</code> on the other side of the
	* insertion point.
	*/
	@:overload @:public public function getOtherHit() : java.awt.font.TextHitInfo;
	
	/**
	* Creates a <code>TextHitInfo</code> whose character index is offset
	* by <code>delta</code> from the <code>charIndex</code> of this
	* <code>TextHitInfo</code>. This <code>TextHitInfo</code> remains
	* unchanged.
	* @param delta the value to offset this <code>charIndex</code>
	* @return a <code>TextHitInfo</code> whose <code>charIndex</code> is
	* offset by <code>delta</code> from the <code>charIndex</code> of
	* this <code>TextHitInfo</code>.
	*/
	@:overload @:public public function getOffsetHit(delta : Int) : java.awt.font.TextHitInfo;
	
	
}
