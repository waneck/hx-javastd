package sun.management;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class VMManagementImpl implements sun.management.VMManagement
{
	@:overload @:public public function isCompilationTimeMonitoringSupported() : Bool;
	
	@:overload @:public public function isThreadContentionMonitoringSupported() : Bool;
	
	@:overload @:public public function isCurrentThreadCpuTimeSupported() : Bool;
	
	@:overload @:public public function isOtherThreadCpuTimeSupported() : Bool;
	
	@:overload @:public public function isBootClassPathSupported() : Bool;
	
	@:overload @:public public function isObjectMonitorUsageSupported() : Bool;
	
	@:overload @:public public function isSynchronizerUsageSupported() : Bool;
	
	@:overload @:public public function isThreadAllocatedMemorySupported() : Bool;
	
	@:overload @:public public function isGcNotificationSupported() : Bool;
	
	@:overload @:public @:native public function isThreadContentionMonitoringEnabled() : Bool;
	
	@:overload @:public @:native public function isThreadCpuTimeEnabled() : Bool;
	
	@:overload @:public @:native public function isThreadAllocatedMemoryEnabled() : Bool;
	
	@:overload @:public public function getLoadedClassCount() : Int;
	
	@:overload @:public @:native public function getTotalClassCount() : haxe.Int64;
	
	@:overload @:public @:native public function getUnloadedClassCount() : haxe.Int64;
	
	@:overload @:public @:native public function getVerboseClass() : Bool;
	
	@:overload @:public @:native public function getVerboseGC() : Bool;
	
	@:overload @:public public function getManagementVersion() : String;
	
	@:overload @:public public function getVmId() : String;
	
	@:overload @:public public function getVmName() : String;
	
	@:overload @:public public function getVmVendor() : String;
	
	@:overload @:public public function getVmVersion() : String;
	
	@:overload @:public public function getVmSpecName() : String;
	
	@:overload @:public public function getVmSpecVendor() : String;
	
	@:overload @:public public function getVmSpecVersion() : String;
	
	@:overload @:public public function getClassPath() : String;
	
	@:overload @:public public function getLibraryPath() : String;
	
	@:overload @:public public function getBootClassPath() : String;
	
	@:overload @:public @:synchronized public function getVmArguments() : java.util.List<String>;
	
	@:overload @:public @:native public function getVmArguments0() : java.NativeArray<String>;
	
	@:overload @:public @:native public function getStartupTime() : haxe.Int64;
	
	@:overload @:public @:native public function getAvailableProcessors() : Int;
	
	@:overload @:public public function getCompilerName() : String;
	
	@:overload @:public @:native public function getTotalCompileTime() : haxe.Int64;
	
	@:overload @:public @:native public function getTotalThreadCount() : haxe.Int64;
	
	@:overload @:public @:native public function getLiveThreadCount() : Int;
	
	@:overload @:public @:native public function getPeakThreadCount() : Int;
	
	@:overload @:public @:native public function getDaemonThreadCount() : Int;
	
	@:overload @:public public function getOsName() : String;
	
	@:overload @:public public function getOsArch() : String;
	
	@:overload @:public public function getOsVersion() : String;
	
	@:overload @:public @:native public function getSafepointCount() : haxe.Int64;
	
	@:overload @:public @:native public function getTotalSafepointTime() : haxe.Int64;
	
	@:overload @:public @:native public function getSafepointSyncTime() : haxe.Int64;
	
	@:overload @:public @:native public function getTotalApplicationNonStoppedTime() : haxe.Int64;
	
	@:overload @:public @:native public function getLoadedClassSize() : haxe.Int64;
	
	@:overload @:public @:native public function getUnloadedClassSize() : haxe.Int64;
	
	@:overload @:public @:native public function getClassLoadingTime() : haxe.Int64;
	
	@:overload @:public @:native public function getMethodDataSize() : haxe.Int64;
	
	@:overload @:public @:native public function getInitializedClassCount() : haxe.Int64;
	
	@:overload @:public @:native public function getClassInitializationTime() : haxe.Int64;
	
	@:overload @:public @:native public function getClassVerificationTime() : haxe.Int64;
	
	@:overload @:public public function getInternalCounters(pattern : String) : java.util.List<sun.management.counter.Counter>;
	
	
}
