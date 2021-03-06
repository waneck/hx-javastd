package sun.awt;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class X11InputMethodDescriptor implements java.awt.im.spi.InputMethodDescriptor
{
	@:overload @:public public function new() : Void;
	
	/**
	* @see java.awt.im.spi.InputMethodDescriptor#getAvailableLocales
	*/
	@:overload @:public public function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* @see java.awt.im.spi.InputMethodDescriptor#hasDynamicLocaleList
	*/
	@:overload @:public public function hasDynamicLocaleList() : Bool;
	
	/**
	* @see java.awt.im.spi.InputMethodDescriptor#getInputMethodDisplayName
	*/
	@:overload @:public @:synchronized public function getInputMethodDisplayName(inputLocale : java.util.Locale, displayLanguage : java.util.Locale) : String;
	
	/**
	* @see java.awt.im.spi.InputMethodDescriptor#getInputMethodIcon
	*/
	@:overload @:public public function getInputMethodIcon(inputLocale : java.util.Locale) : java.awt.Image;
	
	/**
	* @see java.awt.im.spi.InputMethodDescriptor#createInputMethod
	*/
	@:overload @:public @:abstract public function createInputMethod() : java.awt.im.spi.InputMethod;
	
	
}
