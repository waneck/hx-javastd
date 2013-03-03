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
	@:public @:final public var sizeofFieldRef(default, null) : Int;
	
	@:public @:final public var sizeofMethodRef(default, null) : Int;
	
	@:public @:final public var sizeofObjectRef(default, null) : Int;
	
	@:public @:final public var sizeofClassRef(default, null) : Int;
	
	@:public @:final public var sizeofFrameRef(default, null) : Int;
	
	/*
	* ThreadListener implementation
	*/
	@:overload @:public public function threadResumable(action : com.sun.tools.jdi.ThreadAction) : Bool;
	
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	@:overload @:public public function classesByName(className : String) : java.util.List<com.sun.jdi.ReferenceType>;
	
	@:overload @:public public function allClasses() : java.util.List<com.sun.jdi.ReferenceType>;
	
	@:overload @:public public function redefineClasses(classToBytes : java.util.Map<com.sun.jdi.ReferenceType, java.NativeArray<java.StdTypes.Int8>>) : Void;
	
	@:overload @:public public function allThreads() : java.util.List<com.sun.jdi.ThreadReference>;
	
	@:overload @:public public function topLevelThreadGroups() : java.util.List<com.sun.jdi.ThreadGroupReference>;
	
	@:overload @:public public function suspend() : Void;
	
	@:overload @:public public function resume() : Void;
	
	@:overload @:public public function eventQueue() : com.sun.jdi.event.EventQueue;
	
	@:overload @:public public function eventRequestManager() : com.sun.jdi.request.EventRequestManager;
	
	@:overload @:public public function mirrorOf(value : Bool) : com.sun.jdi.BooleanValue;
	
	@:overload @:public public function mirrorOf(value : java.StdTypes.Int8) : com.sun.jdi.ByteValue;
	
	@:overload @:public public function mirrorOf(value : java.StdTypes.Char16) : com.sun.jdi.CharValue;
	
	@:overload @:public public function mirrorOf(value : java.StdTypes.Int16) : com.sun.jdi.ShortValue;
	
	@:overload @:public public function mirrorOf(value : Int) : com.sun.jdi.IntegerValue;
	
	@:overload @:public public function mirrorOf(value : haxe.Int64) : com.sun.jdi.LongValue;
	
	@:overload @:public public function mirrorOf(value : Single) : com.sun.jdi.FloatValue;
	
	@:overload @:public public function mirrorOf(value : Float) : com.sun.jdi.DoubleValue;
	
	@:overload @:public public function mirrorOf(value : String) : com.sun.jdi.StringReference;
	
	@:overload @:public public function mirrorOfVoid() : com.sun.jdi.VoidValue;
	
	@:overload @:public public function instanceCounts(classes : java.util.List<com.sun.jdi.ReferenceType>) : java.NativeArray<haxe.Int64>;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function exit(exitCode : Int) : Void;
	
	@:overload @:public public function process() : java.lang.Process;
	
	@:overload @:public public function description() : String;
	
	@:overload @:public public function version() : String;
	
	@:overload @:public public function name() : String;
	
	@:overload @:public public function canWatchFieldModification() : Bool;
	
	@:overload @:public public function canWatchFieldAccess() : Bool;
	
	@:overload @:public public function canGetBytecodes() : Bool;
	
	@:overload @:public public function canGetSyntheticAttribute() : Bool;
	
	@:overload @:public public function canGetOwnedMonitorInfo() : Bool;
	
	@:overload @:public public function canGetCurrentContendedMonitor() : Bool;
	
	@:overload @:public public function canGetMonitorInfo() : Bool;
	
	@:overload @:public public function canUseInstanceFilters() : Bool;
	
	@:overload @:public public function canRedefineClasses() : Bool;
	
	@:overload @:public public function canAddMethod() : Bool;
	
	@:overload @:public public function canUnrestrictedlyRedefineClasses() : Bool;
	
	@:overload @:public public function canPopFrames() : Bool;
	
	@:overload @:public public function canGetMethodReturnValues() : Bool;
	
	@:overload @:public public function canGetInstanceInfo() : Bool;
	
	@:overload @:public public function canUseSourceNameFilters() : Bool;
	
	@:overload @:public public function canForceEarlyReturn() : Bool;
	
	@:overload @:public public function canBeModified() : Bool;
	
	@:overload @:public public function canGetSourceDebugExtension() : Bool;
	
	@:overload @:public public function canGetClassFileVersion() : Bool;
	
	@:overload @:public public function canGetConstantPool() : Bool;
	
	@:overload @:public public function canRequestVMDeathEvent() : Bool;
	
	@:overload @:public public function canRequestMonitorEvents() : Bool;
	
	@:overload @:public public function canGetMonitorFrameInfo() : Bool;
	
	@:overload @:public public function setDebugTraceMode(traceFlags : Int) : Void;
	
	@:overload @:public public function classPath() : java.util.List<String>;
	
	@:overload @:public public function bootClassPath() : java.util.List<String>;
	
	@:overload @:public public function baseDirectory() : String;
	
	@:overload @:public public function setDefaultStratum(stratum : String) : Void;
	
	@:overload @:public public function getDefaultStratum() : String;
	
	
}
@:native('com$sun$tools$jdi$VirtualMachineImpl$SoftObjectReference') @:internal extern class VirtualMachineImpl_SoftObjectReference extends java.lang.ref.SoftReference<com.sun.tools.jdi.ObjectReferenceImpl>
{
	
}
