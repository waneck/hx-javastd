package com.sun.org.apache.xalan.internal.xsltc.cmdline.getopt;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: GetOpt.java,v 1.2.4.1 2005/08/31 11:46:04 pvedula Exp $
*/
extern class GetOpt
{
	/**
* GetOpt is a Java equivalent to the C getopt() library function
* discussed in man page getopt(3C). It provides command line
* parsing for Java applications. It supports the most rules of the
* command line standard (see man page intro(1)) including stacked
* options such as '-sxm' (which is equivalent to -s -x -m); it
* handles special '--' option that signifies the end of options.
* Additionally this implementation of getopt will check for
* mandatory arguments to options such as in the case of
* '-d <file>' it will throw a MissingOptArgException if the
* option argument '<file>' is not included on the commandline.
* getopt(3C) does not check for this.
	* @author G Todd Miller
*/
	@:overload @:public public function new(args : java.NativeArray<String>, optString : String) : Void;
	
	/**
	* debugging routine to print out all options collected
	*/
	@:overload @:public public function printOptions() : Void;
	
	/**
	* gets the next option found in the commandline. Distinguishes
	* between two bad cases, one case is when an illegal option
	* is found, and then other case is when an option takes an
	* argument but no argument was found for that option.
	* If the option found was not declared in the optString, then
	* an IllegalArgumentException will be thrown (case 1).
	* If the next option found has been declared to take an argument,
	* and no such argument exists, then a MissingOptArgException
	* is thrown (case 2).
	* @param none
	* @return int - the next option found.
	* @throws IllegalArgumentException, MissingOptArgException.
	*/
	@:overload @:public public function getNextOption() : Int;
	
	/**
	* gets the argument for the current parsed option. For example,
	* in case of '-d <file>', if current option parsed is 'd' then
	* getOptionArg() would return '<file>'.
	* @return String - argument for current parsed option.
	* @param none
	*/
	@:overload @:public public function getOptionArg() : String;
	
	/**
	* gets list of the commandline arguments. For example, in command
	* such as 'cmd -s -d file file2 file3 file4'  with the usage
	* 'cmd [-s] [-d <file>] <file>...', getCmdArgs() would return
	* the list {file2, file3, file4}.
	* @return String[] - list of command arguments that may appear
	*                    after options and option arguments.
	* @params none
	*/
	@:overload @:public public function getCmdArgs() : java.NativeArray<String>;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$cmdline$getopt$GetOpt$Option') @:internal extern class GetOpt_Option
{
	@:overload @:public public function new(argLetter : java.StdTypes.Char16) : Void;
	
	@:overload @:public public function setArg(arg : String) : Void;
	
	@:overload @:public public function hasArg() : Bool;
	
	@:overload @:public public function getArgLetter() : java.StdTypes.Char16;
	
	@:overload @:public public function getArgument() : String;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$cmdline$getopt$GetOpt$OptionMatcher') @:internal extern class GetOpt_OptionMatcher
{
	@:overload @:public public function new(optString : String) : Void;
	
	@:overload @:public public function match(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:public public function hasArg(c : java.StdTypes.Char16) : Bool;
	
	
}
