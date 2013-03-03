package com.sun.xml.internal.bind.v2.runtime;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Coordinator implements org.xml.sax.ErrorHandler implements javax.xml.bind.ValidationEventHandler
{
	@:overload @:public @:final public function putAdapter(c : Class<javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>, a : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>) : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>;
	
	/**
	* Gets the instance of the adapter.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public @:final public function getAdapter<T : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(key : Class<T>) : T;
	
	@:overload @:public public function containsAdapter<T : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<T>) : Bool;
	
	/**
	* When we set {@link #table} to null, record who did it.
	* This is for trouble-shooting a possible concurrency issue reported at:
	* http://forums.java.net/jive/thread.jspa?threadID=15132
	*/
	@:public public var guyWhoSetTheTableToNull : java.lang.Exception;
	
	/**
	* Associates this {@link Coordinator} with the current thread.
	* Should be called at the very beginning of the episode.
	*/
	@:overload @:protected @:final private function setThreadAffinity() : Void;
	
	/**
	* Dis-associate this {@link Coordinator} with the current thread.
	* Sohuld be called at the end of the episode to avoid memory leak.
	*/
	@:overload @:protected @:final private function resetThreadAffinity() : Void;
	
	/**
	* Called whenever an execution flow enters the realm of this {@link Coordinator}.
	*/
	@:overload @:protected @:final private function pushCoordinator() : Void;
	
	/**
	* Called whenever an execution flow exits the realm of this {@link Coordinator}.
	*/
	@:overload @:protected @:final private function popCoordinator() : Void;
	
	@:overload @:public @:static public static function _getInstance() : com.sun.xml.internal.bind.v2.runtime.Coordinator;
	
	/**
	* Gets the current location. Used for reporting the error source location.
	*/
	@:overload @:protected @:abstract private function getLocation() : javax.xml.bind.ValidationEventLocator;
	
	@:overload @:public @:final public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public @:final public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public @:final public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	@:public @:static public static var debugTableNPE : Bool;
	
	/**
	* Receive notification of a validation warning or error.
	*
	* The ValidationEvent will have a
	* {@link ValidationEventLocator ValidationEventLocator} embedded in it that
	* indicates where the error or warning occurred.
	*
	* <p>
	* If an unchecked runtime exception is thrown from this method, the JAXB
	* provider will treat it as if the method returned false and interrupt
	* the current unmarshal, validate, or marshal operation.
	*
	* @param event the encapsulated validation event information.  It is a
	* provider error if this parameter is null.
	* @return true if the JAXB Provider should attempt to continue the current
	*         unmarshal, validate, or marshal operation after handling this
	*         warning/error, false if the provider should terminate the current
	*         operation with the appropriate <tt>UnmarshalException</tt>,
	*         <tt>ValidationException</tt>, or <tt>MarshalException</tt>.
	* @throws IllegalArgumentException if the event object is null.
	*/
	@:overload @:public @:public public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	
}
