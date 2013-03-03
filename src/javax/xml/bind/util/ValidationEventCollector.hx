package javax.xml.bind.util;
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
extern class ValidationEventCollector implements javax.xml.bind.ValidationEventHandler
{
	/**
	* Return an array of ValidationEvent objects containing a copy of each of
	* the collected errors and warnings.
	*
	* @return
	*      a copy of all the collected errors and warnings or an empty array
	*      if there weren't any
	*/
	@:overload @:public public function getEvents() : java.NativeArray<javax.xml.bind.ValidationEvent>;
	
	/**
	* Clear all collected errors and warnings.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Returns true if this event collector contains at least one
	* ValidationEvent.
	*
	* @return true if this event collector contains at least one
	*         ValidationEvent, false otherwise
	*/
	@:overload @:public public function hasEvents() : Bool;
	
	@:overload @:public public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	
}
