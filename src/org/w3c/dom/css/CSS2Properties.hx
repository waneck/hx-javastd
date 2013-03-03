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
	@:overload @:public public function getAzimuth() : String;
	
	/**
	*  See the azimuth property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setAzimuth(azimuth : String) : Void;
	
	/**
	*  See the background property definition in CSS2.
	*/
	@:overload @:public public function getBackground() : String;
	
	/**
	*  See the background property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBackground(background : String) : Void;
	
	/**
	*  See the background-attachment property definition in CSS2.
	*/
	@:overload @:public public function getBackgroundAttachment() : String;
	
	/**
	*  See the background-attachment property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBackgroundAttachment(backgroundAttachment : String) : Void;
	
	/**
	*  See the background-color property definition in CSS2.
	*/
	@:overload @:public public function getBackgroundColor() : String;
	
	/**
	*  See the background-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBackgroundColor(backgroundColor : String) : Void;
	
	/**
	*  See the background-image property definition in CSS2.
	*/
	@:overload @:public public function getBackgroundImage() : String;
	
	/**
	*  See the background-image property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBackgroundImage(backgroundImage : String) : Void;
	
	/**
	*  See the background-position property definition in CSS2.
	*/
	@:overload @:public public function getBackgroundPosition() : String;
	
	/**
	*  See the background-position property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBackgroundPosition(backgroundPosition : String) : Void;
	
	/**
	*  See the background-repeat property definition in CSS2.
	*/
	@:overload @:public public function getBackgroundRepeat() : String;
	
	/**
	*  See the background-repeat property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBackgroundRepeat(backgroundRepeat : String) : Void;
	
	/**
	*  See the border property definition in CSS2.
	*/
	@:overload @:public public function getBorder() : String;
	
	/**
	*  See the border property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorder(border : String) : Void;
	
	/**
	*  See the border-collapse property definition in CSS2.
	*/
	@:overload @:public public function getBorderCollapse() : String;
	
	/**
	*  See the border-collapse property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderCollapse(borderCollapse : String) : Void;
	
	/**
	*  See the border-color property definition in CSS2.
	*/
	@:overload @:public public function getBorderColor() : String;
	
	/**
	*  See the border-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderColor(borderColor : String) : Void;
	
	/**
	*  See the border-spacing property definition in CSS2.
	*/
	@:overload @:public public function getBorderSpacing() : String;
	
	/**
	*  See the border-spacing property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderSpacing(borderSpacing : String) : Void;
	
	/**
	*  See the border-style property definition in CSS2.
	*/
	@:overload @:public public function getBorderStyle() : String;
	
	/**
	*  See the border-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderStyle(borderStyle : String) : Void;
	
	/**
	*  See the border-top property definition in CSS2.
	*/
	@:overload @:public public function getBorderTop() : String;
	
	/**
	*  See the border-top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderTop(borderTop : String) : Void;
	
	/**
	*  See the border-right property definition in CSS2.
	*/
	@:overload @:public public function getBorderRight() : String;
	
	/**
	*  See the border-right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderRight(borderRight : String) : Void;
	
	/**
	*  See the border-bottom property definition in CSS2.
	*/
	@:overload @:public public function getBorderBottom() : String;
	
	/**
	*  See the border-bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderBottom(borderBottom : String) : Void;
	
	/**
	*  See the border-left property definition in CSS2.
	*/
	@:overload @:public public function getBorderLeft() : String;
	
	/**
	*  See the border-left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderLeft(borderLeft : String) : Void;
	
	/**
	*  See the border-top-color property definition in CSS2.
	*/
	@:overload @:public public function getBorderTopColor() : String;
	
	/**
	*  See the border-top-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderTopColor(borderTopColor : String) : Void;
	
	/**
	*  See the border-right-color property definition in CSS2.
	*/
	@:overload @:public public function getBorderRightColor() : String;
	
	/**
	*  See the border-right-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderRightColor(borderRightColor : String) : Void;
	
	/**
	*  See the border-bottom-color property definition in CSS2.
	*/
	@:overload @:public public function getBorderBottomColor() : String;
	
	/**
	*  See the border-bottom-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderBottomColor(borderBottomColor : String) : Void;
	
	/**
	*  See the border-left-color property definition in CSS2.
	*/
	@:overload @:public public function getBorderLeftColor() : String;
	
	/**
	*  See the border-left-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderLeftColor(borderLeftColor : String) : Void;
	
	/**
	*  See the border-top-style property definition in CSS2.
	*/
	@:overload @:public public function getBorderTopStyle() : String;
	
	/**
	*  See the border-top-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderTopStyle(borderTopStyle : String) : Void;
	
	/**
	*  See the border-right-style property definition in CSS2.
	*/
	@:overload @:public public function getBorderRightStyle() : String;
	
	/**
	*  See the border-right-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderRightStyle(borderRightStyle : String) : Void;
	
	/**
	*  See the border-bottom-style property definition in CSS2.
	*/
	@:overload @:public public function getBorderBottomStyle() : String;
	
	/**
	*  See the border-bottom-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderBottomStyle(borderBottomStyle : String) : Void;
	
	/**
	*  See the border-left-style property definition in CSS2.
	*/
	@:overload @:public public function getBorderLeftStyle() : String;
	
	/**
	*  See the border-left-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderLeftStyle(borderLeftStyle : String) : Void;
	
	/**
	*  See the border-top-width property definition in CSS2.
	*/
	@:overload @:public public function getBorderTopWidth() : String;
	
	/**
	*  See the border-top-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderTopWidth(borderTopWidth : String) : Void;
	
	/**
	*  See the border-right-width property definition in CSS2.
	*/
	@:overload @:public public function getBorderRightWidth() : String;
	
	/**
	*  See the border-right-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderRightWidth(borderRightWidth : String) : Void;
	
	/**
	*  See the border-bottom-width property definition in CSS2.
	*/
	@:overload @:public public function getBorderBottomWidth() : String;
	
	/**
	*  See the border-bottom-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderBottomWidth(borderBottomWidth : String) : Void;
	
	/**
	*  See the border-left-width property definition in CSS2.
	*/
	@:overload @:public public function getBorderLeftWidth() : String;
	
	/**
	*  See the border-left-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderLeftWidth(borderLeftWidth : String) : Void;
	
	/**
	*  See the border-width property definition in CSS2.
	*/
	@:overload @:public public function getBorderWidth() : String;
	
	/**
	*  See the border-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBorderWidth(borderWidth : String) : Void;
	
	/**
	*  See the bottom property definition in CSS2.
	*/
	@:overload @:public public function getBottom() : String;
	
	/**
	*  See the bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setBottom(bottom : String) : Void;
	
	/**
	*  See the caption-side property definition in CSS2.
	*/
	@:overload @:public public function getCaptionSide() : String;
	
	/**
	*  See the caption-side property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCaptionSide(captionSide : String) : Void;
	
	/**
	*  See the clear property definition in CSS2.
	*/
	@:overload @:public public function getClear() : String;
	
	/**
	*  See the clear property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setClear(clear : String) : Void;
	
	/**
	*  See the clip property definition in CSS2.
	*/
	@:overload @:public public function getClip() : String;
	
	/**
	*  See the clip property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setClip(clip : String) : Void;
	
	/**
	*  See the color property definition in CSS2.
	*/
	@:overload @:public public function getColor() : String;
	
	/**
	*  See the color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setColor(color : String) : Void;
	
	/**
	*  See the content property definition in CSS2.
	*/
	@:overload @:public public function getContent() : String;
	
	/**
	*  See the content property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setContent(content : String) : Void;
	
	/**
	*  See the counter-increment property definition in CSS2.
	*/
	@:overload @:public public function getCounterIncrement() : String;
	
	/**
	*  See the counter-increment property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCounterIncrement(counterIncrement : String) : Void;
	
	/**
	*  See the counter-reset property definition in CSS2.
	*/
	@:overload @:public public function getCounterReset() : String;
	
	/**
	*  See the counter-reset property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCounterReset(counterReset : String) : Void;
	
	/**
	*  See the cue property definition in CSS2.
	*/
	@:overload @:public public function getCue() : String;
	
	/**
	*  See the cue property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCue(cue : String) : Void;
	
	/**
	*  See the cue-after property definition in CSS2.
	*/
	@:overload @:public public function getCueAfter() : String;
	
	/**
	*  See the cue-after property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCueAfter(cueAfter : String) : Void;
	
	/**
	*  See the cue-before property definition in CSS2.
	*/
	@:overload @:public public function getCueBefore() : String;
	
	/**
	*  See the cue-before property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCueBefore(cueBefore : String) : Void;
	
	/**
	*  See the cursor property definition in CSS2.
	*/
	@:overload @:public public function getCursor() : String;
	
	/**
	*  See the cursor property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCursor(cursor : String) : Void;
	
	/**
	*  See the direction property definition in CSS2.
	*/
	@:overload @:public public function getDirection() : String;
	
	/**
	*  See the direction property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setDirection(direction : String) : Void;
	
	/**
	*  See the display property definition in CSS2.
	*/
	@:overload @:public public function getDisplay() : String;
	
	/**
	*  See the display property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setDisplay(display : String) : Void;
	
	/**
	*  See the elevation property definition in CSS2.
	*/
	@:overload @:public public function getElevation() : String;
	
	/**
	*  See the elevation property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setElevation(elevation : String) : Void;
	
	/**
	*  See the empty-cells property definition in CSS2.
	*/
	@:overload @:public public function getEmptyCells() : String;
	
	/**
	*  See the empty-cells property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setEmptyCells(emptyCells : String) : Void;
	
	/**
	*  See the float property definition in CSS2.
	*/
	@:overload @:public public function getCssFloat() : String;
	
	/**
	*  See the float property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setCssFloat(cssFloat : String) : Void;
	
	/**
	*  See the font property definition in CSS2.
	*/
	@:overload @:public public function getFont() : String;
	
	/**
	*  See the font property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFont(font : String) : Void;
	
	/**
	*  See the font-family property definition in CSS2.
	*/
	@:overload @:public public function getFontFamily() : String;
	
	/**
	*  See the font-family property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontFamily(fontFamily : String) : Void;
	
	/**
	*  See the font-size property definition in CSS2.
	*/
	@:overload @:public public function getFontSize() : String;
	
	/**
	*  See the font-size property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontSize(fontSize : String) : Void;
	
	/**
	*  See the font-size-adjust property definition in CSS2.
	*/
	@:overload @:public public function getFontSizeAdjust() : String;
	
	/**
	*  See the font-size-adjust property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontSizeAdjust(fontSizeAdjust : String) : Void;
	
	/**
	*  See the font-stretch property definition in CSS2.
	*/
	@:overload @:public public function getFontStretch() : String;
	
	/**
	*  See the font-stretch property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontStretch(fontStretch : String) : Void;
	
	/**
	*  See the font-style property definition in CSS2.
	*/
	@:overload @:public public function getFontStyle() : String;
	
	/**
	*  See the font-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontStyle(fontStyle : String) : Void;
	
	/**
	*  See the font-variant property definition in CSS2.
	*/
	@:overload @:public public function getFontVariant() : String;
	
	/**
	*  See the font-variant property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontVariant(fontVariant : String) : Void;
	
	/**
	*  See the font-weight property definition in CSS2.
	*/
	@:overload @:public public function getFontWeight() : String;
	
	/**
	*  See the font-weight property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFontWeight(fontWeight : String) : Void;
	
	/**
	*  See the height property definition in CSS2.
	*/
	@:overload @:public public function getHeight() : String;
	
	/**
	*  See the height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setHeight(height : String) : Void;
	
	/**
	*  See the left property definition in CSS2.
	*/
	@:overload @:public public function getLeft() : String;
	
	/**
	*  See the left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setLeft(left : String) : Void;
	
	/**
	*  See the letter-spacing property definition in CSS2.
	*/
	@:overload @:public public function getLetterSpacing() : String;
	
	/**
	*  See the letter-spacing property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setLetterSpacing(letterSpacing : String) : Void;
	
	/**
	*  See the line-height property definition in CSS2.
	*/
	@:overload @:public public function getLineHeight() : String;
	
	/**
	*  See the line-height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setLineHeight(lineHeight : String) : Void;
	
	/**
	*  See the list-style property definition in CSS2.
	*/
	@:overload @:public public function getListStyle() : String;
	
	/**
	*  See the list-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setListStyle(listStyle : String) : Void;
	
	/**
	*  See the list-style-image property definition in CSS2.
	*/
	@:overload @:public public function getListStyleImage() : String;
	
	/**
	*  See the list-style-image property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setListStyleImage(listStyleImage : String) : Void;
	
	/**
	*  See the list-style-position property definition in CSS2.
	*/
	@:overload @:public public function getListStylePosition() : String;
	
	/**
	*  See the list-style-position property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setListStylePosition(listStylePosition : String) : Void;
	
	/**
	*  See the list-style-type property definition in CSS2.
	*/
	@:overload @:public public function getListStyleType() : String;
	
	/**
	*  See the list-style-type property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setListStyleType(listStyleType : String) : Void;
	
	/**
	*  See the margin property definition in CSS2.
	*/
	@:overload @:public public function getMargin() : String;
	
	/**
	*  See the margin property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMargin(margin : String) : Void;
	
	/**
	*  See the margin-top property definition in CSS2.
	*/
	@:overload @:public public function getMarginTop() : String;
	
	/**
	*  See the margin-top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMarginTop(marginTop : String) : Void;
	
	/**
	*  See the margin-right property definition in CSS2.
	*/
	@:overload @:public public function getMarginRight() : String;
	
	/**
	*  See the margin-right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMarginRight(marginRight : String) : Void;
	
	/**
	*  See the margin-bottom property definition in CSS2.
	*/
	@:overload @:public public function getMarginBottom() : String;
	
	/**
	*  See the margin-bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMarginBottom(marginBottom : String) : Void;
	
	/**
	*  See the margin-left property definition in CSS2.
	*/
	@:overload @:public public function getMarginLeft() : String;
	
	/**
	*  See the margin-left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMarginLeft(marginLeft : String) : Void;
	
	/**
	*  See the marker-offset property definition in CSS2.
	*/
	@:overload @:public public function getMarkerOffset() : String;
	
	/**
	*  See the marker-offset property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMarkerOffset(markerOffset : String) : Void;
	
	/**
	*  See the marks property definition in CSS2.
	*/
	@:overload @:public public function getMarks() : String;
	
	/**
	*  See the marks property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMarks(marks : String) : Void;
	
	/**
	*  See the max-height property definition in CSS2.
	*/
	@:overload @:public public function getMaxHeight() : String;
	
	/**
	*  See the max-height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMaxHeight(maxHeight : String) : Void;
	
	/**
	*  See the max-width property definition in CSS2.
	*/
	@:overload @:public public function getMaxWidth() : String;
	
	/**
	*  See the max-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMaxWidth(maxWidth : String) : Void;
	
	/**
	*  See the min-height property definition in CSS2.
	*/
	@:overload @:public public function getMinHeight() : String;
	
	/**
	*  See the min-height property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMinHeight(minHeight : String) : Void;
	
	/**
	*  See the min-width property definition in CSS2.
	*/
	@:overload @:public public function getMinWidth() : String;
	
	/**
	*  See the min-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setMinWidth(minWidth : String) : Void;
	
	/**
	*  See the orphans property definition in CSS2.
	*/
	@:overload @:public public function getOrphans() : String;
	
	/**
	*  See the orphans property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setOrphans(orphans : String) : Void;
	
	/**
	*  See the outline property definition in CSS2.
	*/
	@:overload @:public public function getOutline() : String;
	
	/**
	*  See the outline property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setOutline(outline : String) : Void;
	
	/**
	*  See the outline-color property definition in CSS2.
	*/
	@:overload @:public public function getOutlineColor() : String;
	
	/**
	*  See the outline-color property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setOutlineColor(outlineColor : String) : Void;
	
	/**
	*  See the outline-style property definition in CSS2.
	*/
	@:overload @:public public function getOutlineStyle() : String;
	
	/**
	*  See the outline-style property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setOutlineStyle(outlineStyle : String) : Void;
	
	/**
	*  See the outline-width property definition in CSS2.
	*/
	@:overload @:public public function getOutlineWidth() : String;
	
	/**
	*  See the outline-width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setOutlineWidth(outlineWidth : String) : Void;
	
	/**
	*  See the overflow property definition in CSS2.
	*/
	@:overload @:public public function getOverflow() : String;
	
	/**
	*  See the overflow property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setOverflow(overflow : String) : Void;
	
	/**
	*  See the padding property definition in CSS2.
	*/
	@:overload @:public public function getPadding() : String;
	
	/**
	*  See the padding property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPadding(padding : String) : Void;
	
	/**
	*  See the padding-top property definition in CSS2.
	*/
	@:overload @:public public function getPaddingTop() : String;
	
	/**
	*  See the padding-top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPaddingTop(paddingTop : String) : Void;
	
	/**
	*  See the padding-right property definition in CSS2.
	*/
	@:overload @:public public function getPaddingRight() : String;
	
	/**
	*  See the padding-right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPaddingRight(paddingRight : String) : Void;
	
	/**
	*  See the padding-bottom property definition in CSS2.
	*/
	@:overload @:public public function getPaddingBottom() : String;
	
	/**
	*  See the padding-bottom property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPaddingBottom(paddingBottom : String) : Void;
	
	/**
	*  See the padding-left property definition in CSS2.
	*/
	@:overload @:public public function getPaddingLeft() : String;
	
	/**
	*  See the padding-left property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPaddingLeft(paddingLeft : String) : Void;
	
	/**
	*  See the page property definition in CSS2.
	*/
	@:overload @:public public function getPage() : String;
	
	/**
	*  See the page property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPage(page : String) : Void;
	
	/**
	*  See the page-break-after property definition in CSS2.
	*/
	@:overload @:public public function getPageBreakAfter() : String;
	
	/**
	*  See the page-break-after property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPageBreakAfter(pageBreakAfter : String) : Void;
	
	/**
	*  See the page-break-before property definition in CSS2.
	*/
	@:overload @:public public function getPageBreakBefore() : String;
	
	/**
	*  See the page-break-before property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPageBreakBefore(pageBreakBefore : String) : Void;
	
	/**
	*  See the page-break-inside property definition in CSS2.
	*/
	@:overload @:public public function getPageBreakInside() : String;
	
	/**
	*  See the page-break-inside property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPageBreakInside(pageBreakInside : String) : Void;
	
	/**
	*  See the pause property definition in CSS2.
	*/
	@:overload @:public public function getPause() : String;
	
	/**
	*  See the pause property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPause(pause : String) : Void;
	
	/**
	*  See the pause-after property definition in CSS2.
	*/
	@:overload @:public public function getPauseAfter() : String;
	
	/**
	*  See the pause-after property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPauseAfter(pauseAfter : String) : Void;
	
	/**
	*  See the pause-before property definition in CSS2.
	*/
	@:overload @:public public function getPauseBefore() : String;
	
	/**
	*  See the pause-before property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPauseBefore(pauseBefore : String) : Void;
	
	/**
	*  See the pitch property definition in CSS2.
	*/
	@:overload @:public public function getPitch() : String;
	
	/**
	*  See the pitch property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPitch(pitch : String) : Void;
	
	/**
	*  See the pitch-range property definition in CSS2.
	*/
	@:overload @:public public function getPitchRange() : String;
	
	/**
	*  See the pitch-range property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPitchRange(pitchRange : String) : Void;
	
	/**
	*  See the play-during property definition in CSS2.
	*/
	@:overload @:public public function getPlayDuring() : String;
	
	/**
	*  See the play-during property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPlayDuring(playDuring : String) : Void;
	
	/**
	*  See the position property definition in CSS2.
	*/
	@:overload @:public public function getPosition() : String;
	
	/**
	*  See the position property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setPosition(position : String) : Void;
	
	/**
	*  See the quotes property definition in CSS2.
	*/
	@:overload @:public public function getQuotes() : String;
	
	/**
	*  See the quotes property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setQuotes(quotes : String) : Void;
	
	/**
	*  See the richness property definition in CSS2.
	*/
	@:overload @:public public function getRichness() : String;
	
	/**
	*  See the richness property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setRichness(richness : String) : Void;
	
	/**
	*  See the right property definition in CSS2.
	*/
	@:overload @:public public function getRight() : String;
	
	/**
	*  See the right property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setRight(right : String) : Void;
	
	/**
	*  See the size property definition in CSS2.
	*/
	@:overload @:public public function getSize() : String;
	
	/**
	*  See the size property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setSize(size : String) : Void;
	
	/**
	*  See the speak property definition in CSS2.
	*/
	@:overload @:public public function getSpeak() : String;
	
	/**
	*  See the speak property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setSpeak(speak : String) : Void;
	
	/**
	*  See the speak-header property definition in CSS2.
	*/
	@:overload @:public public function getSpeakHeader() : String;
	
	/**
	*  See the speak-header property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setSpeakHeader(speakHeader : String) : Void;
	
	/**
	*  See the speak-numeral property definition in CSS2.
	*/
	@:overload @:public public function getSpeakNumeral() : String;
	
	/**
	*  See the speak-numeral property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setSpeakNumeral(speakNumeral : String) : Void;
	
	/**
	*  See the speak-punctuation property definition in CSS2.
	*/
	@:overload @:public public function getSpeakPunctuation() : String;
	
	/**
	*  See the speak-punctuation property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setSpeakPunctuation(speakPunctuation : String) : Void;
	
	/**
	*  See the speech-rate property definition in CSS2.
	*/
	@:overload @:public public function getSpeechRate() : String;
	
	/**
	*  See the speech-rate property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setSpeechRate(speechRate : String) : Void;
	
	/**
	*  See the stress property definition in CSS2.
	*/
	@:overload @:public public function getStress() : String;
	
	/**
	*  See the stress property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setStress(stress : String) : Void;
	
	/**
	*  See the table-layout property definition in CSS2.
	*/
	@:overload @:public public function getTableLayout() : String;
	
	/**
	*  See the table-layout property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTableLayout(tableLayout : String) : Void;
	
	/**
	*  See the text-align property definition in CSS2.
	*/
	@:overload @:public public function getTextAlign() : String;
	
	/**
	*  See the text-align property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTextAlign(textAlign : String) : Void;
	
	/**
	*  See the text-decoration property definition in CSS2.
	*/
	@:overload @:public public function getTextDecoration() : String;
	
	/**
	*  See the text-decoration property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTextDecoration(textDecoration : String) : Void;
	
	/**
	*  See the text-indent property definition in CSS2.
	*/
	@:overload @:public public function getTextIndent() : String;
	
	/**
	*  See the text-indent property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTextIndent(textIndent : String) : Void;
	
	/**
	*  See the text-shadow property definition in CSS2.
	*/
	@:overload @:public public function getTextShadow() : String;
	
	/**
	*  See the text-shadow property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTextShadow(textShadow : String) : Void;
	
	/**
	*  See the text-transform property definition in CSS2.
	*/
	@:overload @:public public function getTextTransform() : String;
	
	/**
	*  See the text-transform property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTextTransform(textTransform : String) : Void;
	
	/**
	*  See the top property definition in CSS2.
	*/
	@:overload @:public public function getTop() : String;
	
	/**
	*  See the top property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setTop(top : String) : Void;
	
	/**
	*  See the unicode-bidi property definition in CSS2.
	*/
	@:overload @:public public function getUnicodeBidi() : String;
	
	/**
	*  See the unicode-bidi property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setUnicodeBidi(unicodeBidi : String) : Void;
	
	/**
	*  See the vertical-align property definition in CSS2.
	*/
	@:overload @:public public function getVerticalAlign() : String;
	
	/**
	*  See the vertical-align property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setVerticalAlign(verticalAlign : String) : Void;
	
	/**
	*  See the visibility property definition in CSS2.
	*/
	@:overload @:public public function getVisibility() : String;
	
	/**
	*  See the visibility property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setVisibility(visibility : String) : Void;
	
	/**
	*  See the voice-family property definition in CSS2.
	*/
	@:overload @:public public function getVoiceFamily() : String;
	
	/**
	*  See the voice-family property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setVoiceFamily(voiceFamily : String) : Void;
	
	/**
	*  See the volume property definition in CSS2.
	*/
	@:overload @:public public function getVolume() : String;
	
	/**
	*  See the volume property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setVolume(volume : String) : Void;
	
	/**
	*  See the white-space property definition in CSS2.
	*/
	@:overload @:public public function getWhiteSpace() : String;
	
	/**
	*  See the white-space property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setWhiteSpace(whiteSpace : String) : Void;
	
	/**
	*  See the widows property definition in CSS2.
	*/
	@:overload @:public public function getWidows() : String;
	
	/**
	*  See the widows property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setWidows(widows : String) : Void;
	
	/**
	*  See the width property definition in CSS2.
	*/
	@:overload @:public public function getWidth() : String;
	
	/**
	*  See the width property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setWidth(width : String) : Void;
	
	/**
	*  See the word-spacing property definition in CSS2.
	*/
	@:overload @:public public function getWordSpacing() : String;
	
	/**
	*  See the word-spacing property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setWordSpacing(wordSpacing : String) : Void;
	
	/**
	*  See the z-index property definition in CSS2.
	*/
	@:overload @:public public function getZIndex() : String;
	
	/**
	*  See the z-index property definition in CSS2.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the new value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setZIndex(zIndex : String) : Void;
	
	
}
