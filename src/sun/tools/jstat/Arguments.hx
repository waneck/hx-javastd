package sun.tools.jstat;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Arguments
{
	@:overload @:public @:static public static function printUsage(ps : java.io.PrintStream) : Void;
	
	@:overload @:public public function new(args : java.NativeArray<String>) : Void;
	
	@:overload @:public public function comparator() : java.util.Comparator<sun.jvmstat.monitor.Monitor>;
	
	@:overload @:public public function isHelp() : Bool;
	
	@:overload @:public public function isList() : Bool;
	
	@:overload @:public public function isSnap() : Bool;
	
	@:overload @:public public function isOptions() : Bool;
	
	@:overload @:public public function isVerbose() : Bool;
	
	@:overload @:public public function printConstants() : Bool;
	
	@:overload @:public public function isConstantsOnly() : Bool;
	
	@:overload @:public public function printStrings() : Bool;
	
	@:overload @:public public function showUnsupported() : Bool;
	
	@:overload @:public public function headerRate() : Int;
	
	@:overload @:public public function counterNames() : String;
	
	@:overload @:public public function vmId() : sun.jvmstat.monitor.VmIdentifier;
	
	@:overload @:public public function vmIdString() : String;
	
	@:overload @:public public function sampleInterval() : Int;
	
	@:overload @:public public function sampleCount() : Int;
	
	@:overload @:public public function isTimestamp() : Bool;
	
	@:overload @:public public function isSpecialOption() : Bool;
	
	@:overload @:public public function specialOption() : String;
	
	@:overload @:public public function optionFormat() : sun.tools.jstat.OptionFormat;
	
	@:overload @:public public function optionsSources() : java.util.List<java.net.URL>;
	
	
}
