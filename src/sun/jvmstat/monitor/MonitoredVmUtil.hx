package sun.jvmstat.monitor;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Utility class proving concenience methods for extracting various
* information from an MonitoredVm object.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class MonitoredVmUtil
{
	/**
	* Return the Java Virtual Machine Version.
	*
	* @param vm the target MonitoredVm
	* @return String - contains the version of the target JVM or the
	*                  the string "Unknown" if the version cannot be
	*                  determined.
	*/
	@:overload @:public @:static public static function vmVersion(vm : sun.jvmstat.monitor.MonitoredVm) : String;
	
	/**
	* Return the command line for the target Java application.
	*
	* @param vm the target MonitoredVm
	* @return String - contains the command line of the target Java
	*                  application or the the string "Unknown" if the
	*                  command line cannot be determined.
	*/
	@:overload @:public @:static public static function commandLine(vm : sun.jvmstat.monitor.MonitoredVm) : String;
	
	/**
	* Return the arguments to the main class for the target Java application.
	* Returns the arguments to the main class. If the arguments can't be
	* found, the string "Unknown" is returned.
	*
	* @param vm the target MonitoredVm
	* @return String - contains the arguments to the main class for the
	*                  target Java application or the the string "Unknown"
	*                  if the command line cannot be determined.
	*/
	@:overload @:public @:static public static function mainArgs(vm : sun.jvmstat.monitor.MonitoredVm) : String;
	
	/**
	* Return the main class for the target Java application.
	* Returns the main class or the name of the jar file if the application
	* was started with the <em>-jar</em> option.
	*
	* @param vm the target MonitoredVm
	* @param fullPath include the full path to Jar file, where applicable
	* @return String - contains the main class of the target Java
	*                  application or the the string "Unknown" if the
	*                  command line cannot be determined.
	*/
	@:overload @:public @:static public static function mainClass(vm : sun.jvmstat.monitor.MonitoredVm, fullPath : Bool) : String;
	
	/**
	* Return the JVM arguments for the target Java application.
	*
	* @param vm the target MonitoredVm
	* @return String - contains the arguments passed to the JVM for the
	*                  target Java application or the the string "Unknown"
	*                  if the command line cannot be determined.
	*/
	@:overload @:public @:static public static function jvmArgs(vm : sun.jvmstat.monitor.MonitoredVm) : String;
	
	/**
	* Return the JVM flags for the target Java application.
	*
	* @param vm the target MonitoredVm
	* @return String - contains the flags passed to the JVM for the
	*                  target Java application or the the string "Unknown"
	*                  if the command line cannot be determined.
	*/
	@:overload @:public @:static public static function jvmFlags(vm : sun.jvmstat.monitor.MonitoredVm) : String;
	
	/**
	* Returns true if the VM supports attach-on-demand.
	*
	* @param vm the target MonitoredVm
	*/
	@:overload @:public @:static public static function isAttachable(vm : sun.jvmstat.monitor.MonitoredVm) : Bool;
	
	
}
