package javax.swing.event;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class CaretEvent extends java.util.EventObject
{
	/**
	* Creates a new CaretEvent object.
	*
	* @param source the object responsible for the event
	*/
	@:overload public function new(source : Dynamic) : Void;
	
	/**
	* Fetches the location of the caret.
	*
	* @return the dot >= 0
	*/
	@:overload @:abstract public function getDot() : Int;
	
	/**
	* Fetches the location of other end of a logical
	* selection.  If there is no selection, this
	* will be the same as dot.
	*
	* @return the mark >= 0
	*/
	@:overload @:abstract public function getMark() : Int;
	
	
}
