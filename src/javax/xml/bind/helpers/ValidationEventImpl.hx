package javax.xml.bind.helpers;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ValidationEventImpl implements javax.xml.bind.ValidationEvent
{
	/**
	* Create a new ValidationEventImpl.
	*
	* @param _severity The severity value for this event.  Must be one of
	* ValidationEvent.WARNING, ValidationEvent.ERROR, or
	* ValidationEvent.FATAL_ERROR
	* @param _message The text message for this event - may be null.
	* @param _locator The locator object for this event - may be null.
	* @throws IllegalArgumentException if an illegal severity field is supplied
	*/
	@:overload @:public public function new(_severity : Int, _message : String, _locator : javax.xml.bind.ValidationEventLocator) : Void;
	
	/**
	* Create a new ValidationEventImpl.
	*
	* @param _severity The severity value for this event.  Must be one of
	* ValidationEvent.WARNING, ValidationEvent.ERROR, or
	* ValidationEvent.FATAL_ERROR
	* @param _message The text message for this event - may be null.
	* @param _locator The locator object for this event - may be null.
	* @param _linkedException An optional linked exception that may provide
	* additional information about the event - may be null.
	* @throws IllegalArgumentException if an illegal severity field is supplied
	*/
	@:overload @:public public function new(_severity : Int, _message : String, _locator : javax.xml.bind.ValidationEventLocator, _linkedException : java.lang.Throwable) : Void;
	
	@:overload @:public public function getSeverity() : Int;
	
	/**
	* Set the severity field of this event.
	*
	* @param _severity Must be one of ValidationEvent.WARNING,
	* ValidationEvent.ERROR, or ValidationEvent.FATAL_ERROR.
	* @throws IllegalArgumentException if an illegal severity field is supplied
	*/
	@:overload @:public public function setSeverity(_severity : Int) : Void;
	
	@:overload @:public public function getMessage() : String;
	
	/**
	* Set the message field of this event.
	*
	* @param _message String message - may be null.
	*/
	@:overload @:public public function setMessage(_message : String) : Void;
	
	@:overload @:public public function getLinkedException() : java.lang.Throwable;
	
	/**
	* Set the linked exception field of this event.
	*
	* @param _linkedException Optional linked exception - may be null.
	*/
	@:overload @:public public function setLinkedException(_linkedException : java.lang.Throwable) : Void;
	
	@:overload @:public public function getLocator() : javax.xml.bind.ValidationEventLocator;
	
	/**
	* Set the locator object for this event.
	*
	* @param _locator The locator - may be null.
	*/
	@:overload @:public public function setLocator(_locator : javax.xml.bind.ValidationEventLocator) : Void;
	
	/**
	* Returns a string representation of this object in a format
	* helpful to debugging.
	*
	* @see Object#equals(Object)
	*/
	@:overload @:public public function toString() : String;
	
	
}
