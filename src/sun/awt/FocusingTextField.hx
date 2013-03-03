package sun.awt;
/*
* Copyright (c) 1995, Oracle and/or its affiliates. All rights reserved.
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
/**
* FocusingTextField: a subclass of java.awt.TextField that handles moving the
* input focus from field to field, as when the user hits 'return.'
*
* @author Herb Jellinek
*/
extern class FocusingTextField extends java.awt.TextField
{
	/**
	* Create a FocusingTextField.
	* @param cols number of columns of text.
	*/
	@:overload @:public public function new(cols : Int) : Void;
	
	/**
	* Create a FocusingTextField.
	* @param cols number of columns of text.
	* @param willSelect if true, will select all contents of field when
	* focus is gained.
	*/
	@:overload @:public public function new(cols : Int, willSelect : Bool) : Void;
	
	@:overload @:public public function setWillSelect(will : Bool) : Void;
	
	@:overload @:public public function getWillSelect() : Bool;
	
	/**
	* Call this to set the next field to receive the input focus.
	* @param next the next TextField in order - can be null.
	*/
	@:overload @:public public function setNextField(next : java.awt.TextField) : Void;
	
	/**
	* We got the focus.  If willSelect is true, select everything.
	*/
	@:overload @:public override public function gotFocus(e : java.awt.Event, arg : Dynamic) : Bool;
	
	/**
	* We lost the focus.  If willSelect is true, deselect everything.
	*/
	@:overload @:public override public function lostFocus(e : java.awt.Event, arg : Dynamic) : Bool;
	
	/**
	* Pass the focus to the next guy, if any.
	*/
	@:overload @:public override public function nextFocus() : Void;
	
	
}
