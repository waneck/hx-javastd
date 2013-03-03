package com.sun.beans.editors;
/*
* Copyright (c) 2006, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class EnumEditor implements java.beans.PropertyEditor
{
	@:overload @:public public function new(type : Class<Dynamic>) : Void;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function setValue(value : Dynamic) : Void;
	
	@:overload @:public public function getAsText() : String;
	
	@:overload @:public public function setAsText(text : String) : Void;
	
	@:overload @:public public function getTags() : java.NativeArray<String>;
	
	@:overload @:public public function getJavaInitializationString() : String;
	
	@:overload @:public public function isPaintable() : Bool;
	
	@:overload @:public public function paintValue(gfx : java.awt.Graphics, box : java.awt.Rectangle) : Void;
	
	@:overload @:public public function supportsCustomEditor() : Bool;
	
	@:overload @:public public function getCustomEditor() : java.awt.Component;
	
	@:overload @:public public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	
}
