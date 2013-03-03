package com.sun.tools.javac.util;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** A table of all command-line options.
*  If an option has an argument, the option name is mapped to the argument.
*  If a set option has no argument, it is mapped to itself.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Options
{
	/** The context key for the options. */
	@:public @:static @:final public static var optionsKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.util.Options>;
	
	/** Get the Options instance for this context. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.util.Options;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* Get the value for an undocumented option.
	*/
	@:overload @:public public function get(name : String) : String;
	
	/**
	* Get the value for an option.
	*/
	@:overload @:public public function get(name : com.sun.tools.javac.main.OptionName) : String;
	
	/**
	* Get the boolean value for an option, patterned after Boolean.getBoolean,
	* essentially will return true, iff the value exists and is set to "true".
	*/
	@:overload @:public public function getBoolean(name : String) : Bool;
	
	/**
	* Get the boolean with a default value if the option is not set.
	*/
	@:overload @:public public function getBoolean(name : String, defaultValue : Bool) : Bool;
	
	/**
	* Check if the value for an undocumented option has been set.
	*/
	@:overload @:public public function isSet(name : String) : Bool;
	
	/**
	* Check if the value for an option has been set.
	*/
	@:overload @:public public function isSet(name : com.sun.tools.javac.main.OptionName) : Bool;
	
	/**
	* Check if the value for a choice option has been set to a specific value.
	*/
	@:overload @:public public function isSet(name : com.sun.tools.javac.main.OptionName, value : String) : Bool;
	
	/**
	* Check if the value for an undocumented option has not been set.
	*/
	@:overload @:public public function isUnset(name : String) : Bool;
	
	/**
	* Check if the value for an option has not been set.
	*/
	@:overload @:public public function isUnset(name : com.sun.tools.javac.main.OptionName) : Bool;
	
	/**
	* Check if the value for a choice option has not been set to a specific value.
	*/
	@:overload @:public public function isUnset(name : com.sun.tools.javac.main.OptionName, value : String) : Bool;
	
	@:overload @:public public function put(name : String, value : String) : Void;
	
	@:overload @:public public function put(name : com.sun.tools.javac.main.OptionName, value : String) : Void;
	
	@:overload @:public public function putAll(options : com.sun.tools.javac.util.Options) : Void;
	
	@:overload @:public public function remove(name : String) : Void;
	
	@:overload @:public public function keySet() : java.util.Set<String>;
	
	@:overload @:public public function size() : Int;
	
	/** Check for a lint suboption. */
	@:overload @:public public function lint(s : String) : Bool;
	
	
}
