package org.w3c.dom.css;
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
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface CSS2Properties
{
	/**
	*  See the azimuth property definition in CSS2.
	*/
	@:overload public function getAzimuth() : String;
	
	/**
	*  See the azimuth property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setAzimuth(azimuth : String) : Void;
	
	/**
	*  See the background property definition in CSS2.
	*/
	@:overload public function getBackground() : String;
	
	/**
	*  See the background property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBackground(background : String) : Void;
	
	/**
	*  See the background-attachment property definition in CSS2.
	*/
	@:overload public function getBackgroundAttachment() : String;
	
	/**
	*  See the background-attachment property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBackgroundAttachment(backgroundAttachment : String) : Void;
	
	/**
	*  See the background-color property definition in CSS2.
	*/
	@:overload public function getBackgroundColor() : String;
	
	/**
	*  See the background-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBackgroundColor(backgroundColor : String) : Void;
	
	/**
	*  See the background-image property definition in CSS2.
	*/
	@:overload public function getBackgroundImage() : String;
	
	/**
	*  See the background-image property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBackgroundImage(backgroundImage : String) : Void;
	
	/**
	*  See the background-position property definition in CSS2.
	*/
	@:overload public function getBackgroundPosition() : String;
	
	/**
	*  See the background-position property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBackgroundPosition(backgroundPosition : String) : Void;
	
	/**
	*  See the background-repeat property definition in CSS2.
	*/
	@:overload public function getBackgroundRepeat() : String;
	
	/**
	*  See the background-repeat property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBackgroundRepeat(backgroundRepeat : String) : Void;
	
	/**
	*  See the border property definition in CSS2.
	*/
	@:overload public function getBorder() : String;
	
	/**
	*  See the border property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorder(border : String) : Void;
	
	/**
	*  See the border-collapse property definition in CSS2.
	*/
	@:overload public function getBorderCollapse() : String;
	
	/**
	*  See the border-collapse property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderCollapse(borderCollapse : String) : Void;
	
	/**
	*  See the border-color property definition in CSS2.
	*/
	@:overload public function getBorderColor() : String;
	
	/**
	*  See the border-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderColor(borderColor : String) : Void;
	
	/**
	*  See the border-spacing property definition in CSS2.
	*/
	@:overload public function getBorderSpacing() : String;
	
	/**
	*  See the border-spacing property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderSpacing(borderSpacing : String) : Void;
	
	/**
	*  See the border-style property definition in CSS2.
	*/
	@:overload public function getBorderStyle() : String;
	
	/**
	*  See the border-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderStyle(borderStyle : String) : Void;
	
	/**
	*  See the border-top property definition in CSS2.
	*/
	@:overload public function getBorderTop() : String;
	
	/**
	*  See the border-top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderTop(borderTop : String) : Void;
	
	/**
	*  See the border-right property definition in CSS2.
	*/
	@:overload public function getBorderRight() : String;
	
	/**
	*  See the border-right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderRight(borderRight : String) : Void;
	
	/**
	*  See the border-bottom property definition in CSS2.
	*/
	@:overload public function getBorderBottom() : String;
	
	/**
	*  See the border-bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderBottom(borderBottom : String) : Void;
	
	/**
	*  See the border-left property definition in CSS2.
	*/
	@:overload public function getBorderLeft() : String;
	
	/**
	*  See the border-left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderLeft(borderLeft : String) : Void;
	
	/**
	*  See the border-top-color property definition in CSS2.
	*/
	@:overload public function getBorderTopColor() : String;
	
	/**
	*  See the border-top-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderTopColor(borderTopColor : String) : Void;
	
	/**
	*  See the border-right-color property definition in CSS2.
	*/
	@:overload public function getBorderRightColor() : String;
	
	/**
	*  See the border-right-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderRightColor(borderRightColor : String) : Void;
	
	/**
	*  See the border-bottom-color property definition in CSS2.
	*/
	@:overload public function getBorderBottomColor() : String;
	
	/**
	*  See the border-bottom-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderBottomColor(borderBottomColor : String) : Void;
	
	/**
	*  See the border-left-color property definition in CSS2.
	*/
	@:overload public function getBorderLeftColor() : String;
	
	/**
	*  See the border-left-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderLeftColor(borderLeftColor : String) : Void;
	
	/**
	*  See the border-top-style property definition in CSS2.
	*/
	@:overload public function getBorderTopStyle() : String;
	
	/**
	*  See the border-top-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderTopStyle(borderTopStyle : String) : Void;
	
	/**
	*  See the border-right-style property definition in CSS2.
	*/
	@:overload public function getBorderRightStyle() : String;
	
	/**
	*  See the border-right-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderRightStyle(borderRightStyle : String) : Void;
	
	/**
	*  See the border-bottom-style property definition in CSS2.
	*/
	@:overload public function getBorderBottomStyle() : String;
	
	/**
	*  See the border-bottom-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderBottomStyle(borderBottomStyle : String) : Void;
	
	/**
	*  See the border-left-style property definition in CSS2.
	*/
	@:overload public function getBorderLeftStyle() : String;
	
	/**
	*  See the border-left-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderLeftStyle(borderLeftStyle : String) : Void;
	
	/**
	*  See the border-top-width property definition in CSS2.
	*/
	@:overload public function getBorderTopWidth() : String;
	
	/**
	*  See the border-top-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderTopWidth(borderTopWidth : String) : Void;
	
	/**
	*  See the border-right-width property definition in CSS2.
	*/
	@:overload public function getBorderRightWidth() : String;
	
	/**
	*  See the border-right-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderRightWidth(borderRightWidth : String) : Void;
	
	/**
	*  See the border-bottom-width property definition in CSS2.
	*/
	@:overload public function getBorderBottomWidth() : String;
	
	/**
	*  See the border-bottom-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderBottomWidth(borderBottomWidth : String) : Void;
	
	/**
	*  See the border-left-width property definition in CSS2.
	*/
	@:overload public function getBorderLeftWidth() : String;
	
	/**
	*  See the border-left-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderLeftWidth(borderLeftWidth : String) : Void;
	
	/**
	*  See the border-width property definition in CSS2.
	*/
	@:overload public function getBorderWidth() : String;
	
	/**
	*  See the border-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBorderWidth(borderWidth : String) : Void;
	
	/**
	*  See the bottom property definition in CSS2.
	*/
	@:overload public function getBottom() : String;
	
	/**
	*  See the bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setBottom(bottom : String) : Void;
	
	/**
	*  See the caption-side property definition in CSS2.
	*/
	@:overload public function getCaptionSide() : String;
	
	/**
	*  See the caption-side property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCaptionSide(captionSide : String) : Void;
	
	/**
	*  See the clear property definition in CSS2.
	*/
	@:overload public function getClear() : String;
	
	/**
	*  See the clear property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setClear(clear : String) : Void;
	
	/**
	*  See the clip property definition in CSS2.
	*/
	@:overload public function getClip() : String;
	
	/**
	*  See the clip property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setClip(clip : String) : Void;
	
	/**
	*  See the color property definition in CSS2.
	*/
	@:overload public function getColor() : String;
	
	/**
	*  See the color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setColor(color : String) : Void;
	
	/**
	*  See the content property definition in CSS2.
	*/
	@:overload public function getContent() : String;
	
	/**
	*  See the content property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setContent(content : String) : Void;
	
	/**
	*  See the counter-increment property definition in CSS2.
	*/
	@:overload public function getCounterIncrement() : String;
	
	/**
	*  See the counter-increment property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCounterIncrement(counterIncrement : String) : Void;
	
	/**
	*  See the counter-reset property definition in CSS2.
	*/
	@:overload public function getCounterReset() : String;
	
	/**
	*  See the counter-reset property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCounterReset(counterReset : String) : Void;
	
	/**
	*  See the cue property definition in CSS2.
	*/
	@:overload public function getCue() : String;
	
	/**
	*  See the cue property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCue(cue : String) : Void;
	
	/**
	*  See the cue-after property definition in CSS2.
	*/
	@:overload public function getCueAfter() : String;
	
	/**
	*  See the cue-after property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCueAfter(cueAfter : String) : Void;
	
	/**
	*  See the cue-before property definition in CSS2.
	*/
	@:overload public function getCueBefore() : String;
	
	/**
	*  See the cue-before property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCueBefore(cueBefore : String) : Void;
	
	/**
	*  See the cursor property definition in CSS2.
	*/
	@:overload public function getCursor() : String;
	
	/**
	*  See the cursor property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCursor(cursor : String) : Void;
	
	/**
	*  See the direction property definition in CSS2.
	*/
	@:overload public function getDirection() : String;
	
	/**
	*  See the direction property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setDirection(direction : String) : Void;
	
	/**
	*  See the display property definition in CSS2.
	*/
	@:overload public function getDisplay() : String;
	
	/**
	*  See the display property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setDisplay(display : String) : Void;
	
	/**
	*  See the elevation property definition in CSS2.
	*/
	@:overload public function getElevation() : String;
	
	/**
	*  See the elevation property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setElevation(elevation : String) : Void;
	
	/**
	*  See the empty-cells property definition in CSS2.
	*/
	@:overload public function getEmptyCells() : String;
	
	/**
	*  See the empty-cells property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setEmptyCells(emptyCells : String) : Void;
	
	/**
	*  See the float property definition in CSS2.
	*/
	@:overload public function getCssFloat() : String;
	
	/**
	*  See the float property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setCssFloat(cssFloat : String) : Void;
	
	/**
	*  See the font property definition in CSS2.
	*/
	@:overload public function getFont() : String;
	
	/**
	*  See the font property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFont(font : String) : Void;
	
	/**
	*  See the font-family property definition in CSS2.
	*/
	@:overload public function getFontFamily() : String;
	
	/**
	*  See the font-family property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontFamily(fontFamily : String) : Void;
	
	/**
	*  See the font-size property definition in CSS2.
	*/
	@:overload public function getFontSize() : String;
	
	/**
	*  See the font-size property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontSize(fontSize : String) : Void;
	
	/**
	*  See the font-size-adjust property definition in CSS2.
	*/
	@:overload public function getFontSizeAdjust() : String;
	
	/**
	*  See the font-size-adjust property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontSizeAdjust(fontSizeAdjust : String) : Void;
	
	/**
	*  See the font-stretch property definition in CSS2.
	*/
	@:overload public function getFontStretch() : String;
	
	/**
	*  See the font-stretch property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontStretch(fontStretch : String) : Void;
	
	/**
	*  See the font-style property definition in CSS2.
	*/
	@:overload public function getFontStyle() : String;
	
	/**
	*  See the font-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontStyle(fontStyle : String) : Void;
	
	/**
	*  See the font-variant property definition in CSS2.
	*/
	@:overload public function getFontVariant() : String;
	
	/**
	*  See the font-variant property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontVariant(fontVariant : String) : Void;
	
	/**
	*  See the font-weight property definition in CSS2.
	*/
	@:overload public function getFontWeight() : String;
	
	/**
	*  See the font-weight property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setFontWeight(fontWeight : String) : Void;
	
	/**
	*  See the height property definition in CSS2.
	*/
	@:overload public function getHeight() : String;
	
	/**
	*  See the height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setHeight(height : String) : Void;
	
	/**
	*  See the left property definition in CSS2.
	*/
	@:overload public function getLeft() : String;
	
	/**
	*  See the left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setLeft(left : String) : Void;
	
	/**
	*  See the letter-spacing property definition in CSS2.
	*/
	@:overload public function getLetterSpacing() : String;
	
	/**
	*  See the letter-spacing property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setLetterSpacing(letterSpacing : String) : Void;
	
	/**
	*  See the line-height property definition in CSS2.
	*/
	@:overload public function getLineHeight() : String;
	
	/**
	*  See the line-height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setLineHeight(lineHeight : String) : Void;
	
	/**
	*  See the list-style property definition in CSS2.
	*/
	@:overload public function getListStyle() : String;
	
	/**
	*  See the list-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setListStyle(listStyle : String) : Void;
	
	/**
	*  See the list-style-image property definition in CSS2.
	*/
	@:overload public function getListStyleImage() : String;
	
	/**
	*  See the list-style-image property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setListStyleImage(listStyleImage : String) : Void;
	
	/**
	*  See the list-style-position property definition in CSS2.
	*/
	@:overload public function getListStylePosition() : String;
	
	/**
	*  See the list-style-position property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setListStylePosition(listStylePosition : String) : Void;
	
	/**
	*  See the list-style-type property definition in CSS2.
	*/
	@:overload public function getListStyleType() : String;
	
	/**
	*  See the list-style-type property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setListStyleType(listStyleType : String) : Void;
	
	/**
	*  See the margin property definition in CSS2.
	*/
	@:overload public function getMargin() : String;
	
	/**
	*  See the margin property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMargin(margin : String) : Void;
	
	/**
	*  See the margin-top property definition in CSS2.
	*/
	@:overload public function getMarginTop() : String;
	
	/**
	*  See the margin-top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMarginTop(marginTop : String) : Void;
	
	/**
	*  See the margin-right property definition in CSS2.
	*/
	@:overload public function getMarginRight() : String;
	
	/**
	*  See the margin-right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMarginRight(marginRight : String) : Void;
	
	/**
	*  See the margin-bottom property definition in CSS2.
	*/
	@:overload public function getMarginBottom() : String;
	
	/**
	*  See the margin-bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMarginBottom(marginBottom : String) : Void;
	
	/**
	*  See the margin-left property definition in CSS2.
	*/
	@:overload public function getMarginLeft() : String;
	
	/**
	*  See the margin-left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMarginLeft(marginLeft : String) : Void;
	
	/**
	*  See the marker-offset property definition in CSS2.
	*/
	@:overload public function getMarkerOffset() : String;
	
	/**
	*  See the marker-offset property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMarkerOffset(markerOffset : String) : Void;
	
	/**
	*  See the marks property definition in CSS2.
	*/
	@:overload public function getMarks() : String;
	
	/**
	*  See the marks property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMarks(marks : String) : Void;
	
	/**
	*  See the max-height property definition in CSS2.
	*/
	@:overload public function getMaxHeight() : String;
	
	/**
	*  See the max-height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMaxHeight(maxHeight : String) : Void;
	
	/**
	*  See the max-width property definition in CSS2.
	*/
	@:overload public function getMaxWidth() : String;
	
	/**
	*  See the max-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMaxWidth(maxWidth : String) : Void;
	
	/**
	*  See the min-height property definition in CSS2.
	*/
	@:overload public function getMinHeight() : String;
	
	/**
	*  See the min-height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMinHeight(minHeight : String) : Void;
	
	/**
	*  See the min-width property definition in CSS2.
	*/
	@:overload public function getMinWidth() : String;
	
	/**
	*  See the min-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setMinWidth(minWidth : String) : Void;
	
	/**
	*  See the orphans property definition in CSS2.
	*/
	@:overload public function getOrphans() : String;
	
	/**
	*  See the orphans property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setOrphans(orphans : String) : Void;
	
	/**
	*  See the outline property definition in CSS2.
	*/
	@:overload public function getOutline() : String;
	
	/**
	*  See the outline property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setOutline(outline : String) : Void;
	
	/**
	*  See the outline-color property definition in CSS2.
	*/
	@:overload public function getOutlineColor() : String;
	
	/**
	*  See the outline-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setOutlineColor(outlineColor : String) : Void;
	
	/**
	*  See the outline-style property definition in CSS2.
	*/
	@:overload public function getOutlineStyle() : String;
	
	/**
	*  See the outline-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setOutlineStyle(outlineStyle : String) : Void;
	
	/**
	*  See the outline-width property definition in CSS2.
	*/
	@:overload public function getOutlineWidth() : String;
	
	/**
	*  See the outline-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setOutlineWidth(outlineWidth : String) : Void;
	
	/**
	*  See the overflow property definition in CSS2.
	*/
	@:overload public function getOverflow() : String;
	
	/**
	*  See the overflow property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setOverflow(overflow : String) : Void;
	
	/**
	*  See the padding property definition in CSS2.
	*/
	@:overload public function getPadding() : String;
	
	/**
	*  See the padding property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPadding(padding : String) : Void;
	
	/**
	*  See the padding-top property definition in CSS2.
	*/
	@:overload public function getPaddingTop() : String;
	
	/**
	*  See the padding-top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPaddingTop(paddingTop : String) : Void;
	
	/**
	*  See the padding-right property definition in CSS2.
	*/
	@:overload public function getPaddingRight() : String;
	
	/**
	*  See the padding-right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPaddingRight(paddingRight : String) : Void;
	
	/**
	*  See the padding-bottom property definition in CSS2.
	*/
	@:overload public function getPaddingBottom() : String;
	
	/**
	*  See the padding-bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPaddingBottom(paddingBottom : String) : Void;
	
	/**
	*  See the padding-left property definition in CSS2.
	*/
	@:overload public function getPaddingLeft() : String;
	
	/**
	*  See the padding-left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPaddingLeft(paddingLeft : String) : Void;
	
	/**
	*  See the page property definition in CSS2.
	*/
	@:overload public function getPage() : String;
	
	/**
	*  See the page property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPage(page : String) : Void;
	
	/**
	*  See the page-break-after property definition in CSS2.
	*/
	@:overload public function getPageBreakAfter() : String;
	
	/**
	*  See the page-break-after property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPageBreakAfter(pageBreakAfter : String) : Void;
	
	/**
	*  See the page-break-before property definition in CSS2.
	*/
	@:overload public function getPageBreakBefore() : String;
	
	/**
	*  See the page-break-before property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPageBreakBefore(pageBreakBefore : String) : Void;
	
	/**
	*  See the page-break-inside property definition in CSS2.
	*/
	@:overload public function getPageBreakInside() : String;
	
	/**
	*  See the page-break-inside property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPageBreakInside(pageBreakInside : String) : Void;
	
	/**
	*  See the pause property definition in CSS2.
	*/
	@:overload public function getPause() : String;
	
	/**
	*  See the pause property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPause(pause : String) : Void;
	
	/**
	*  See the pause-after property definition in CSS2.
	*/
	@:overload public function getPauseAfter() : String;
	
	/**
	*  See the pause-after property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPauseAfter(pauseAfter : String) : Void;
	
	/**
	*  See the pause-before property definition in CSS2.
	*/
	@:overload public function getPauseBefore() : String;
	
	/**
	*  See the pause-before property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPauseBefore(pauseBefore : String) : Void;
	
	/**
	*  See the pitch property definition in CSS2.
	*/
	@:overload public function getPitch() : String;
	
	/**
	*  See the pitch property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPitch(pitch : String) : Void;
	
	/**
	*  See the pitch-range property definition in CSS2.
	*/
	@:overload public function getPitchRange() : String;
	
	/**
	*  See the pitch-range property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPitchRange(pitchRange : String) : Void;
	
	/**
	*  See the play-during property definition in CSS2.
	*/
	@:overload public function getPlayDuring() : String;
	
	/**
	*  See the play-during property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPlayDuring(playDuring : String) : Void;
	
	/**
	*  See the position property definition in CSS2.
	*/
	@:overload public function getPosition() : String;
	
	/**
	*  See the position property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setPosition(position : String) : Void;
	
	/**
	*  See the quotes property definition in CSS2.
	*/
	@:overload public function getQuotes() : String;
	
	/**
	*  See the quotes property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setQuotes(quotes : String) : Void;
	
	/**
	*  See the richness property definition in CSS2.
	*/
	@:overload public function getRichness() : String;
	
	/**
	*  See the richness property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setRichness(richness : String) : Void;
	
	/**
	*  See the right property definition in CSS2.
	*/
	@:overload public function getRight() : String;
	
	/**
	*  See the right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setRight(right : String) : Void;
	
	/**
	*  See the size property definition in CSS2.
	*/
	@:overload public function getSize() : String;
	
	/**
	*  See the size property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setSize(size : String) : Void;
	
	/**
	*  See the speak property definition in CSS2.
	*/
	@:overload public function getSpeak() : String;
	
	/**
	*  See the speak property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setSpeak(speak : String) : Void;
	
	/**
	*  See the speak-header property definition in CSS2.
	*/
	@:overload public function getSpeakHeader() : String;
	
	/**
	*  See the speak-header property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setSpeakHeader(speakHeader : String) : Void;
	
	/**
	*  See the speak-numeral property definition in CSS2.
	*/
	@:overload public function getSpeakNumeral() : String;
	
	/**
	*  See the speak-numeral property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setSpeakNumeral(speakNumeral : String) : Void;
	
	/**
	*  See the speak-punctuation property definition in CSS2.
	*/
	@:overload public function getSpeakPunctuation() : String;
	
	/**
	*  See the speak-punctuation property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setSpeakPunctuation(speakPunctuation : String) : Void;
	
	/**
	*  See the speech-rate property definition in CSS2.
	*/
	@:overload public function getSpeechRate() : String;
	
	/**
	*  See the speech-rate property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setSpeechRate(speechRate : String) : Void;
	
	/**
	*  See the stress property definition in CSS2.
	*/
	@:overload public function getStress() : String;
	
	/**
	*  See the stress property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setStress(stress : String) : Void;
	
	/**
	*  See the table-layout property definition in CSS2.
	*/
	@:overload public function getTableLayout() : String;
	
	/**
	*  See the table-layout property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTableLayout(tableLayout : String) : Void;
	
	/**
	*  See the text-align property definition in CSS2.
	*/
	@:overload public function getTextAlign() : String;
	
	/**
	*  See the text-align property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTextAlign(textAlign : String) : Void;
	
	/**
	*  See the text-decoration property definition in CSS2.
	*/
	@:overload public function getTextDecoration() : String;
	
	/**
	*  See the text-decoration property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTextDecoration(textDecoration : String) : Void;
	
	/**
	*  See the text-indent property definition in CSS2.
	*/
	@:overload public function getTextIndent() : String;
	
	/**
	*  See the text-indent property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTextIndent(textIndent : String) : Void;
	
	/**
	*  See the text-shadow property definition in CSS2.
	*/
	@:overload public function getTextShadow() : String;
	
	/**
	*  See the text-shadow property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTextShadow(textShadow : String) : Void;
	
	/**
	*  See the text-transform property definition in CSS2.
	*/
	@:overload public function getTextTransform() : String;
	
	/**
	*  See the text-transform property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTextTransform(textTransform : String) : Void;
	
	/**
	*  See the top property definition in CSS2.
	*/
	@:overload public function getTop() : String;
	
	/**
	*  See the top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setTop(top : String) : Void;
	
	/**
	*  See the unicode-bidi property definition in CSS2.
	*/
	@:overload public function getUnicodeBidi() : String;
	
	/**
	*  See the unicode-bidi property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setUnicodeBidi(unicodeBidi : String) : Void;
	
	/**
	*  See the vertical-align property definition in CSS2.
	*/
	@:overload public function getVerticalAlign() : String;
	
	/**
	*  See the vertical-align property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setVerticalAlign(verticalAlign : String) : Void;
	
	/**
	*  See the visibility property definition in CSS2.
	*/
	@:overload public function getVisibility() : String;
	
	/**
	*  See the visibility property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setVisibility(visibility : String) : Void;
	
	/**
	*  See the voice-family property definition in CSS2.
	*/
	@:overload public function getVoiceFamily() : String;
	
	/**
	*  See the voice-family property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setVoiceFamily(voiceFamily : String) : Void;
	
	/**
	*  See the volume property definition in CSS2.
	*/
	@:overload public function getVolume() : String;
	
	/**
	*  See the volume property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setVolume(volume : String) : Void;
	
	/**
	*  See the white-space property definition in CSS2.
	*/
	@:overload public function getWhiteSpace() : String;
	
	/**
	*  See the white-space property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setWhiteSpace(whiteSpace : String) : Void;
	
	/**
	*  See the widows property definition in CSS2.
	*/
	@:overload public function getWidows() : String;
	
	/**
	*  See the widows property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setWidows(widows : String) : Void;
	
	/**
	*  See the width property definition in CSS2.
	*/
	@:overload public function getWidth() : String;
	
	/**
	*  See the width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setWidth(width : String) : Void;
	
	/**
	*  See the word-spacing property definition in CSS2.
	*/
	@:overload public function getWordSpacing() : String;
	
	/**
	*  See the word-spacing property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setWordSpacing(wordSpacing : String) : Void;
	
	/**
	*  See the z-index property definition in CSS2.
	*/
	@:overload public function getZIndex() : String;
	
	/**
	*  See the z-index property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload public function setZIndex(zIndex : String) : Void;
	
	
}
