package com.sun.tools.javac.main;
/*
* Copyright (c) 2006, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface JavacOption
{
	/**
	* TODO: describe com.sun.tools.javac.main.JavacOption
	*
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own
	* risk.  This code and its internal interfaces are subject to change
	* or deletion without notice.</b></p>
	*/
	@:overload public function getKind() : JavacOption_OptionKind;
	
	/** Does this option take a (separate) operand?
	*  @return true if this option takes a separate operand
	*/
	@:overload public function hasArg() : Bool;
	
	/** Does argument string match option pattern?
	*  @param arg   the command line argument string
	*  @return true if {@code arg} matches this option
	*/
	@:overload public function matches(arg : String) : Bool;
	
	/** Process an option with an argument.
	*  @param options the accumulated set of analyzed options
	*  @param option  the option to be processed
	*  @param arg     the arg for the option to be processed
	*  @return true if an error was detected
	*/
	@:overload public function process(options : com.sun.tools.javac.util.Options, option : String, arg : String) : Bool;
	
	/** Process the option with no argument.
	*  @param options the accumulated set of analyzed options
	*  @param option  the option to be processed
	*  @return true if an error was detected
	*/
	@:overload public function process(options : com.sun.tools.javac.util.Options, option : String) : Bool;
	
	@:overload public function getName() : com.sun.tools.javac.main.OptionName;
	
	
}
@:native('com$sun$tools$javac$main$JavacOption$OptionKind') extern enum JavacOption_OptionKind
{
	NORMAL;
	EXTENDED;
	HIDDEN;
	
}

@:native('com$sun$tools$javac$main$JavacOption$ChoiceKind') extern enum JavacOption_ChoiceKind
{
	ONEOF;
	ANYOF;
	
}

/** This class represents an option recognized by the main program
*/
@:native('com$sun$tools$javac$main$JavacOption$Option') @:internal extern class JavacOption_Option implements JavacOption
{
	@:overload public function toString() : String;
	
	@:overload public function hasArg() : Bool;
	
	@:overload public function matches(option : String) : Bool;
	
	/** Process the option (with arg). Return true if error detected.
	*/
	@:overload public function process(options : com.sun.tools.javac.util.Options, option : String, arg : String) : Bool;
	
	/** Process the option (without arg). Return true if error detected.
	*/
	@:overload public function process(options : com.sun.tools.javac.util.Options, option : String) : Bool;
	
	@:overload public function getKind() : JavacOption_OptionKind;
	
	@:overload public function getName() : com.sun.tools.javac.main.OptionName;
	
	
}
/** A nonstandard or extended (-X) option
*/
@:native('com$sun$tools$javac$main$JavacOption$XOption') @:internal extern class JavacOption_XOption extends JavacOption_Option
{
	@:overload override public function getKind() : JavacOption_OptionKind;
	
	
}
/** A hidden (implementor) option
*/
@:native('com$sun$tools$javac$main$JavacOption$HiddenOption') @:internal extern class JavacOption_HiddenOption extends JavacOption_Option
{
	@:overload override public function getKind() : JavacOption_OptionKind;
	
	
}
