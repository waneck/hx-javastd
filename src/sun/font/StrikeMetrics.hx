package sun.font;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class StrikeMetrics
{
	/* These are font metrics: they are in user space, not device space.
	* Hence they are not truly "strike" metrics. However it is convenient to
	* treat them as such since we need to have a scaler context to obtain them
	* and also to cache them. The old implementation obtained a C++ strike object
	* that matched the Font TX + pt size only. It was wasteful of strike objects.
	* This new implementation still has separate StrikeMetrics for 2 fonts that
	* are really the same but are used in different device transforms, but at
	* least it doesn't create a whole new strike just to get the metrics for
	* a strike in a transformed graphics.
	* So these metrics do not take into account the device transform. They
	* are considered inherent properties of the font. Hence it may be that we
	* should use the device transform to obtain the most accurate metrics, but
	* typically 1.1 APIs do not provide for this. So some APIs may want to
	* ignore the dev. tx and others may want to use it, and then apply an
	* inverse transform. For now we ignore the dev. tx.
	* "Font" metrics are representative of a typical glyph in the font.
	* Generally speaking these values are the choice of the font designer and
	* are stored in the font, from which we retrieve the values. They do
	* not necessarily equate to the maximum bounds of all glyphs in the font.
	* Note that the ascent fields are typically a -ve value as we use a top-left
	* origin user space, and text is positioned relative to its baseline.
	*/
	@:public public var ascentX : Single;
	
	@:public public var ascentY : Single;
	
	@:public public var descentX : Single;
	
	@:public public var descentY : Single;
	
	@:public public var baselineX : Single;
	
	@:public public var baselineY : Single;
	
	@:public public var leadingX : Single;
	
	@:public public var leadingY : Single;
	
	@:public public var maxAdvanceX : Single;
	
	@:public public var maxAdvanceY : Single;
	
	@:overload @:public public function getAscent() : Single;
	
	@:overload @:public public function getDescent() : Single;
	
	@:overload @:public public function getLeading() : Single;
	
	@:overload @:public public function getMaxAdvance() : Single;
	
	@:overload @:public public function toString() : String;
	
	
}
