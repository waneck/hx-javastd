package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class VirtualMachineImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.PathSearchingVirtualMachine implements com.sun.tools.jdi.ThreadListener
{
	public var sizeofFieldRef(default, null) : Int;
	
	public var sizeofMethodRef(default, null) : Int;
	
	public var sizeofObjectRef(default, null) : Int;
	
	public var sizeofClassRef(default, null) : Int;
	
	public var sizeofFrameRef(default, null) : Int;
	
	/*
	* ThreadListener implementation
	*/
	@:overload public function threadResumable(action : com.sun.tools.jdi.ThreadAction) : Bool;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function classesByName(className : String) : java.util.List<com.sun.jdi.ReferenceType>;
	
	@:overload public function allClasses() : java.util.List<com.sun.jdi.ReferenceType>;
	
	@:overload public function redefineClasses(classToBytes : java.util.Map<com.sun.jdi.ReferenceType, java.NativeArray<java.StdTypes.Int8>>) : Void;
	
	@:overload public function allThreads() : java.util.List<com.sun.jdi.ThreadReference>;
	
	@:overload public function topLevelThreadGroups() : java.util.List<com.sun.jdi.ThreadGroupReference>;
	
	@:overload public function suspend() : Void;
	
	@:overload public function resume() : Void;
	
	@:overload public function eventQueue() : com.sun.jdi.event.EventQueue;
	
	@:overload public function eventRequestManager() : com.sun.jdi.request.EventRequestManager;
	
	@:overload public function mirrorOf(value : Bool) : com.sun.jdi.BooleanValue;
	
	@:overload public function mirrorOf(value : java.StdTypes.Int8) : com.sun.jdi.ByteValue;
	
	@:overload public function mirrorOf(value : java.StdTypes.Char16) : com.sun.jdi.CharValue;
	
	@:overload public function mirrorOf(value : java.StdTypes.Int16) : com.sun.jdi.ShortValue;
	
	@:overload public function mirrorOf(value : Int) : com.sun.jdi.IntegerValue;
	
	@:overload public function mirrorOf(value : haxe.Int64) : com.sun.jdi.LongValue;
	
	@:overload public function mirrorOf(value : Single) : com.sun.jdi.FloatValue;
	
	@:overload public function mirrorOf(value : Float) : com.sun.jdi.DoubleValue;
	
	@:overload public function mirrorOf(value : String) : com.sun.jdi.StringReference;
	
	@:overload public function mirrorOfVoid() : com.sun.jdi.VoidValue;
	
	@:overload public function instanceCounts(classes : java.util.List<com.sun.jdi.ReferenceType>) : java.NativeArray<haxe.Int64>;
	
	@:overload public function dispose() : Void;
	
	@:overload public function exit(exitCode : Int) : Void;
	
	@:overload public function process() : java.lang.Process;
	
	@:overload public function description() : String;
	
	@:overload public function version() : String;
	
	@:overload public function name() : String;
	
	@:overload public function canWatchFieldModification() : Bool;
	
	@:overload public function canWatchFieldAccess() : Bool;
	
	@:overload public function canGetBytecodes() : Bool;
	
	@:overload public function canGetSyntheticAttribute() : Bool;
	
	@:overload public function canGetOwnedMonitorInfo() : Bool;
	
	@:overload public function canGetCurrentContendedMonitor() : Bool;
	
	@:overload public function canGetMonitorInfo() : Bool;
	
	@:overload public function canUseInstanceFilters() : Bool;
	
	@:overload public function canRedefineClasses() : Bool;
	
	@:overload public function canAddMethod() : Bool;
	
	@:overload public function canUnrestrictedlyRedefineClasses() : Bool;
	
	@:overload public function canPopFrames() : Bool;
	
	@:overload public function canGetMethodReturnValues() : Bool;
	
	@:overload public function canGetInstanceInfo() : Bool;
	
	@:overload public function canUseSourceNameFilters() : Bool;
	
	@:overload public function canForceEarlyReturn() : Bool;
	
	@:overload public function canBeModified() : Bool;
	
	@:overload public function canGetSourceDebugExtension() : Bool;
	
	@:overload public function canGetClassFileVersion() : Bool;
	
	@:overload public function canGetConstantPool() : Bool;
	
	@:overload public function canRequestVMDeathEvent() : Bool;
	
	@:overload public function canRequestMonitorEvents() : Bool;
	
	@:overload public function canGetMonitorFrameInfo() : Bool;
	
	@:overload public function setDebugTraceMode(traceFlags : Int) : Void;
	
	@:overload public function classPath() : java.util.List<String>;
	
	@:overload public function bootClassPath() : java.util.List<String>;
	
	@:overload public function baseDirectory() : String;
	
	@:overload public function setDefaultStratum(stratum : String) : Void;
	
	@:overload public function getDefaultStratum() : String;
	
	
}
@:native('com$sun$tools$jdi$VirtualMachineImpl$SoftObjectReference') @:internal extern class VirtualMachineImpl_SoftObjectReference extends java.lang.ref.SoftReference<com.sun.tools.jdi.ObjectReferenceImpl>
{
	
}
