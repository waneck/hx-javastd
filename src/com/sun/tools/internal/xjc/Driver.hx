package com.sun.tools.internal.xjc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Driver
{
	/**
	* Command Line Interface of XJC.
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Performs schema compilation and prints the status/error into the
	* specified PrintStream.
	*
	* <p>
	* This method could be used to trigger XJC from other tools,
	* such as Ant or IDE.
	*
	* @param    args
	*      specified command line parameters. If there is an error
	*      in the parameters, {@link BadCommandLineException} will
	*      be thrown.
	* @param    status
	*      Status report of the compilation will be sent to this object.
	*      Useful to update users so that they will know something is happening.
	*      Only ignorable messages should be sent to this stream.
	*
	*      This parameter can be null to suppress messages.
	*
	* @param    out
	*      Various non-ignorable output (error messages, etc)
	*      will go to this stream.
	*
	* @return
	*      If the compiler runs successfully, this method returns 0.
	*      All non-zero values indicate an error. The error message
	*      will be sent to the specified PrintStream.
	*/
	@:overload @:public @:static public static function run(args : java.NativeArray<String>, status : java.io.PrintStream, out : java.io.PrintStream) : Int;
	
	/**
	* Performs schema compilation and prints the status/error into the
	* specified PrintStream.
	*
	* <p>
	* This method could be used to trigger XJC from other tools,
	* such as Ant or IDE.
	*
	* @param    args
	*        specified command line parameters. If there is an error
	*        in the parameters, {@link BadCommandLineException} will
	*        be thrown.
	* @param    listener
	*      Receives messages from XJC reporting progress/errors.
	*
	* @return
	*      If the compiler runs successfully, this method returns 0.
	*      All non-zero values indicate an error. The error message
	*      will be sent to the specified PrintStream.
	*/
	@:overload @:public @:static public static function run(args : java.NativeArray<String>, listener : com.sun.tools.internal.xjc.XJCListener) : Int;
	
	@:overload @:public @:static public static function getBuildID() : String;
	
	/**
	* Prints the usage screen and exits the process.
	*
	* @param opts
	*      If the parsing of options have started, set a partly populated
	*      {@link Options} object.
	*/
	@:overload @:public @:static public static function usage(opts : com.sun.tools.internal.xjc.Options, privateUsage : Bool) : Void;
	
	
}
/**
* Operation mode.
*/
@:native('com$sun$tools$internal$xjc$Driver$Mode') privateextern enum Driver_Mode
{
	CODE;
	SIGNATURE;
	FOREST;
	DRYRUN;
	ZIP;
	GBIND;
	
}

/**
* Command-line arguments processor.
*
* <p>
* This class contains options that only make sense
* for the command line interface.
*/
@:native('com$sun$tools$internal$xjc$Driver$OptionsEx') @:internal extern class Driver_OptionsEx extends com.sun.tools.internal.xjc.Options
{
	/** Operation mode. */
	@:protected private var mode : com.sun.tools.internal.xjc.Driver.Driver_Mode;
	
	/** A switch that determines the behavior in the BGM mode. */
	@:public public var noNS : Bool;
	
	/** Parse XJC-specific options. */
	@:overload @:public override public function parseArgument(args : java.NativeArray<String>, i : Int) : Int;
	
	
}
/**
* Used to signal that we've finished processing.
*/
@:native('com$sun$tools$internal$xjc$Driver$WeAreDone') @:internal extern class Driver_WeAreDone extends com.sun.tools.internal.xjc.BadCommandLineException
{
	
}
