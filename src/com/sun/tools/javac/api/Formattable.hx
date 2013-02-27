package com.sun.tools.javac.api;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface Formattable
{
	/**
	* Used to obtain a localized String representing the object accordingly
	* to a given locale
	*
	* @param locale locale in which the object's representation is to be rendered
	* @param messages messages object used for localization
	* @return a locale-dependent string representing the object
	*/
	@:overload public function toString(locale : java.util.Locale, messages : com.sun.tools.javac.api.Messages) : String;
	
	/**
	* Retrieve a pretty name of this object's kind
	* @return a string representing the object's kind
	*/
	@:overload public function getKind() : String;
	
	
}
@:native('com$sun$tools$javac$api$Formattable$LocalizedString') @:internal extern class Formattable_LocalizedString implements Formattable
{
	@:overload public function new(key : String) : Void;
	
	@:overload public function toString(l : java.util.Locale, messages : com.sun.tools.javac.api.Messages) : String;
	
	@:overload public function getKind() : String;
	
	@:overload public function toString() : String;
	
	
}
