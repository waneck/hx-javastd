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
extern class JStatLogger
{
	@:overload public function new(monitoredVm : sun.jvmstat.monitor.MonitoredVm) : Void;
	
	/**
	* print the monitors that match the given monitor name pattern string.
	*/
	@:overload public function printNames(names : String, comparator : java.util.Comparator<sun.jvmstat.monitor.Monitor>, showUnsupported : Bool, out : java.io.PrintStream) : Void;
	
	/**
	* print name=value pairs for the given list of monitors.
	*/
	@:overload public function printSnapShot(names : String, comparator : java.util.Comparator<sun.jvmstat.monitor.Monitor>, verbose : Bool, showUnsupported : Bool, out : java.io.PrintStream) : Void;
	
	/**
	* print name=value pairs for the given list of monitors.
	*/
	@:overload public function printList(list : java.util.List<sun.jvmstat.monitor.Monitor>, verbose : Bool, showUnsupported : Bool, out : java.io.PrintStream) : Void;
	
	/**
	* method to for asynchronous termination of sampling loops
	*/
	@:overload public function stopLogging() : Void;
	
	/**
	* print samples according to the given format.
	*/
	@:overload public function logSamples(formatter : sun.tools.jstat.OutputFormatter, headerRate : Int, sampleInterval : Int, sampleCount : Int, out : java.io.PrintStream) : Void;
	
	
}
