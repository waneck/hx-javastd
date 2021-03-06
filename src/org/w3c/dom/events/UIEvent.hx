package org.w3c.dom.events;
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
extern interface UIEvent extends org.w3c.dom.events.Event
{
	/**
	* The <code>view</code> attribute identifies the <code>AbstractView</code>
	*  from which the event was generated.
	*/
	@:overload @:public public function getView() : org.w3c.dom.views.AbstractView;
	
	/**
	* Specifies some detail information about the <code>Event</code>,
	* depending on the type of event.
	*/
	@:overload @:public public function getDetail() : Int;
	
	/**
	* The <code>initUIEvent</code> method is used to initialize the value of
	* a <code>UIEvent</code> created through the <code>DocumentEvent</code>
	* interface. This method may only be called before the
	* <code>UIEvent</code> has been dispatched via the
	* <code>dispatchEvent</code> method, though it may be called multiple
	* times during that phase if necessary. If called multiple times, the
	* final invocation takes precedence.
	* @param typeArg Specifies the event type.
	* @param canBubbleArg Specifies whether or not the event can bubble.
	* @param cancelableArg Specifies whether or not the event's default
	*   action can be prevented.
	* @param viewArg Specifies the <code>Event</code>'s
	*   <code>AbstractView</code>.
	* @param detailArg Specifies the <code>Event</code>'s detail.
	*/
	@:overload @:public public function initUIEvent(typeArg : String, canBubbleArg : Bool, cancelableArg : Bool, viewArg : org.w3c.dom.views.AbstractView, detailArg : Int) : Void;
	
	
}
