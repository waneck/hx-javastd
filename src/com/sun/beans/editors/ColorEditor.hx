package com.sun.beans.editors;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ColorEditor extends java.awt.Panel implements java.beans.PropertyEditor
{
	@:overload public function new() : Void;
	
	@:overload public function setValue(o : Dynamic) : Void;
	
	@:overload override public function preferredSize() : java.awt.Dimension;
	
	@:overload public function keyUp(e : java.awt.Event, key : Int) : Bool;
	
	@:overload public function setAsText(s : String) : Void;
	
	@:overload public function action(e : java.awt.Event, arg : Dynamic) : Bool;
	
	@:overload public function getJavaInitializationString() : String;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function isPaintable() : Bool;
	
	@:overload public function paintValue(gfx : java.awt.Graphics, box : java.awt.Rectangle) : Void;
	
	@:overload public function getAsText() : String;
	
	@:overload public function getTags() : java.NativeArray<String>;
	
	@:overload public function getCustomEditor() : java.awt.Component;
	
	@:overload public function supportsCustomEditor() : Bool;
	
	@:overload override public function addPropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	@:overload public function removePropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	
}
