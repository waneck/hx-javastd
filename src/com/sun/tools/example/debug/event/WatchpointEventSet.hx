package com.sun.tools.example.debug.event;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
extern class WatchpointEventSet extends com.sun.tools.example.debug.event.LocatableEventSet
{
	/**
	* Returns the field that is about to be accessed/modified.
	*
	* @return a {@link Field} which mirrors the field
	* in the target VM.
	*/
	@:overload @:public public function getField() : com.sun.jdi.Field;
	
	/**
	* Returns the object whose field is about to be accessed/modified.
	* Return null is the access is to a static field.
	*
	* @return a {@link ObjectReference} which mirrors the event's
	* object in the target VM.
	*/
	@:overload @:public public function getObject() : com.sun.jdi.ObjectReference;
	
	/**
	* Current value of the field.
	*/
	@:overload @:public public function getValueCurrent() : com.sun.jdi.Value;
	
	
}
