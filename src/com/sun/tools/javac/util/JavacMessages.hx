package com.sun.tools.javac.util;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JavacMessages implements com.sun.tools.javac.api.Messages
{
	/** The context key for the JavacMessages object. */
	@:public @:static @:final public static var messagesKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.util.JavacMessages>;
	
	/** Get the JavacMessages instance for this context. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.util.JavacMessages;
	
	@:overload @:public public function getCurrentLocale() : java.util.Locale;
	
	@:overload @:public public function setCurrentLocale(locale : java.util.Locale) : Void;
	
	/** Creates a JavacMessages object.
	*/
	@:overload @:public public function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Creates a JavacMessages object.
	* @param bundleName the name to identify the resource buundle of localized messages.
	*/
	@:overload @:public public function new(bundleName : String) : Void;
	
	/** Creates a JavacMessages object.
	* @param bundleName the name to identify the resource buundle of localized messages.
	*/
	@:overload @:public public function new(bundleName : String, locale : java.util.Locale) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function add(bundleName : String) : Void;
	
	@:overload @:public public function getBundles(locale : java.util.Locale) : com.sun.tools.javac.util.List<java.util.ResourceBundle>;
	
	/** Gets the localized string corresponding to a key, formatted with a set of args.
	*/
	@:overload @:public public function getLocalizedString(key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload @:public public function getLocalizedString(l : java.util.Locale, key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload @:public @:static public static function getDefaultBundle() : java.util.ResourceBundle;
	
	
}
