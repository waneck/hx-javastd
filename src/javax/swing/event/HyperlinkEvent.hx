package javax.swing.event;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class HyperlinkEvent extends java.util.EventObject
{
	/**
	* Creates a new object representing a hypertext link event.
	* The other constructor is preferred, as it provides more
	* information if a URL could not be formed.  This constructor
	* is primarily for backward compatibility.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param u the affected URL
	*/
	@:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, u : java.net.URL) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param u the affected URL.  This may be null if a valid URL
	*   could not be created.
	* @param desc the description of the link.  This may be useful
	*   when attempting to form a URL resulted in a MalformedURLException.
	*   The description provides the text used when attempting to form the
	*   URL.
	*/
	@:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, u : java.net.URL, desc : String) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param u the affected URL.  This may be null if a valid URL
	*   could not be created.
	* @param desc the description of the link.  This may be useful
	*   when attempting to form a URL resulted in a MalformedURLException.
	*   The description provides the text used when attempting to form the
	*   URL.
	* @param sourceElement Element in the Document representing the
	*   anchor
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, u : java.net.URL, desc : String, sourceElement : javax.swing.text.Element) : Void;
	
	/**
	* Creates a new object representing a hypertext link event.
	*
	* @param source the object responsible for the event
	* @param type the event type
	* @param u the affected URL.  This may be null if a valid URL
	*   could not be created.
	* @param desc the description of the link.  This may be useful
	*   when attempting to form a URL resulted in a MalformedURLException.
	*   The description provides the text used when attempting to form the
	*   URL.
	* @param sourceElement Element in the Document representing the
	*   anchor
	* @param inputEvent  InputEvent that triggered the hyperlink event
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(source : Dynamic, type : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType, u : java.net.URL, desc : String, sourceElement : javax.swing.text.Element, inputEvent : java.awt.event.InputEvent) : Void;
	
	/**
	* Gets the type of event.
	*
	* @return the type
	*/
	@:overload public function getEventType() : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType;
	
	/**
	* Get the description of the link as a string.
	* This may be useful if a URL can't be formed
	* from the description, in which case the associated
	* URL would be null.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* Gets the URL that the link refers to.
	*
	* @return the URL
	*/
	@:overload public function getURL() : java.net.URL;
	
	/**
	* Returns the <code>Element</code> that corresponds to the source of the
	* event. This will typically be an <code>Element</code> representing
	* an anchor. If a constructur that is used that does not specify a source
	* <code>Element</code>, or null was specified as the source
	* <code>Element</code>, this will return null.
	*
	* @return Element indicating source of event, or null
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSourceElement() : javax.swing.text.Element;
	
	/**
	* Returns the {@code InputEvent} that triggered the hyperlink event.
	* This will typically be a {@code MouseEvent}.  If a constructor is used
	* that does not specify an {@code InputEvent}, or @{code null}
	* was specified as the {@code InputEvent}, this returns {@code null}.
	*
	* @return  InputEvent that triggered the hyperlink event, or null
	* @since 1.7
	*/
	@:require(java7) @:overload public function getInputEvent() : java.awt.event.InputEvent;
	
	
}
/**
* Defines the ENTERED, EXITED, and ACTIVATED event types, along
* with their string representations, returned by toString().
*/
@:native('javax$swing$event$HyperlinkEvent$EventType') extern class HyperlinkEvent_EventType
{
	/**
	* Entered type.
	*/
	public static var ENTERED(default, null) : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType;
	
	/**
	* Exited type.
	*/
	public static var EXITED(default, null) : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType;
	
	/**
	* Activated type.
	*/
	public static var ACTIVATED(default, null) : javax.swing.event.HyperlinkEvent.HyperlinkEvent_EventType;
	
	/**
	* Converts the type to a string.
	*
	* @return the string
	*/
	@:overload public function toString() : String;
	
	
}
