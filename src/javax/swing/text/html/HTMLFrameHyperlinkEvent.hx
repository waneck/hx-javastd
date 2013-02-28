package javax.swing.text.html;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class HTMLFrameHyperlinkEvent extends javax.swing.event.HyperlinkEvent
{
	/**
	* Creates a new object representing a html frame
	* hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param targetURL the affected URL
	* @param targetFrame the Frame to display the document in
	*/
	@:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, targetURL : java.net.URL, targetFrame : String) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param targetURL the affected URL
	* @param desc a description
	* @param targetFrame the Frame to display the document in
	*/
	@:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, targetURL : java.net.URL, desc : String, targetFrame : String) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param targetURL the affected URL
	* @param sourceElement the element that corresponds to the source
	*                      of the event
	* @param targetFrame the Frame to display the document in
	*/
	@:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, targetURL : java.net.URL, sourceElement : javax.swing.text.Element, targetFrame : String) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param targetURL the affected URL
	* @param desc a desription
	* @param sourceElement the element that corresponds to the source
	*                      of the event
	* @param targetFrame the Frame to display the document in
	*/
	@:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, targetURL : java.net.URL, desc : String, sourceElement : javax.swing.text.Element, targetFrame : String) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param targetURL the affected URL
	* @param desc a desription
	* @param sourceElement the element that corresponds to the source
	*                      of the event
	* @param inputEvent  InputEvent that triggered the hyperlink event
	* @param targetFrame the Frame to display the document in
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, targetURL : java.net.URL, desc : String, sourceElement : javax.swing.text.Element, inputEvent : java.awt.event.InputEvent, targetFrame : String) : Void;
	
	/**
	* returns the target for the link.
	*/
	@:overload public function getTarget() : String;
	
	
}
