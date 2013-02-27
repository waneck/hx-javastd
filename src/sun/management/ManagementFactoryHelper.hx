package sun.management;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* ManagementFactoryHelper provides static factory methods to create
* instances of the management interface.
*/
extern class ManagementFactoryHelper
{
	@:overload @:synchronized public static function getClassLoadingMXBean() : java.lang.management.ClassLoadingMXBean;
	
	@:overload @:synchronized public static function getMemoryMXBean() : java.lang.management.MemoryMXBean;
	
	@:overload @:synchronized public static function getThreadMXBean() : java.lang.management.ThreadMXBean;
	
	@:overload @:synchronized public static function getRuntimeMXBean() : java.lang.management.RuntimeMXBean;
	
	@:overload @:synchronized public static function getCompilationMXBean() : java.lang.management.CompilationMXBean;
	
	@:overload @:synchronized public static function getOperatingSystemMXBean() : java.lang.management.OperatingSystemMXBean;
	
	@:overload public static function getMemoryPoolMXBeans() : java.util.List<java.lang.management.MemoryPoolMXBean>;
	
	@:overload public static function getMemoryManagerMXBeans() : java.util.List<java.lang.management.MemoryManagerMXBean>;
	
	@:overload public static function getGarbageCollectorMXBeans() : java.util.List<java.lang.management.GarbageCollectorMXBean>;
	
	@:overload public static function getPlatformLoggingMXBean() : java.lang.management.PlatformLoggingMXBean;
	
	@:overload @:synchronized public static function getBufferPoolMXBeans() : java.util.List<java.lang.management.BufferPoolMXBean>;
	
	@:overload @:synchronized public static function getDiagnosticMXBean() : com.sun.management.HotSpotDiagnosticMXBean;
	
	/**
	* This method is for testing only.
	*/
	@:overload @:synchronized public static function getHotspotRuntimeMBean() : sun.management.HotspotRuntimeMBean;
	
	/**
	* This method is for testing only.
	*/
	@:overload @:synchronized public static function getHotspotClassLoadingMBean() : sun.management.HotspotClassLoadingMBean;
	
	/**
	* This method is for testing only.
	*/
	@:overload @:synchronized public static function getHotspotThreadMBean() : sun.management.HotspotThreadMBean;
	
	/**
	* This method is for testing only.
	*/
	@:overload @:synchronized public static function getHotspotMemoryMBean() : sun.management.HotspotMemoryMBean;
	
	/**
	* This method is for testing only.
	*/
	@:overload @:synchronized public static function getHotspotCompilationMBean() : sun.management.HotspotCompilationMBean;
	
	@:overload public static function isThreadSuspended(state : Int) : Bool;
	
	@:overload public static function isThreadRunningNative(state : Int) : Bool;
	
	@:overload public static function toThreadState(state : Int) : java.lang.Thread.Thread_State;
	
	
}
@:native('sun$management$ManagementFactoryHelper$LoggingMXBean') @:internal extern interface ManagementFactoryHelper_LoggingMXBean extends java.lang.management.PlatformLoggingMXBean extends java.util.logging.LoggingMXBean
{
	
}
@:native('sun$management$ManagementFactoryHelper$PlatformLoggingImpl') @:internal extern class ManagementFactoryHelper_PlatformLoggingImpl implements ManagementFactoryHelper_LoggingMXBean
{
	@:overload public function getObjectName() : javax.management.ObjectName;
	
	@:overload public function getLoggerNames() : java.util.List<String>;
	
	@:overload public function getLoggerLevel(loggerName : String) : String;
	
	@:overload public function setLoggerLevel(loggerName : String, levelName : String) : Void;
	
	@:overload public function getParentLoggerName(loggerName : String) : String;
	
	
}
