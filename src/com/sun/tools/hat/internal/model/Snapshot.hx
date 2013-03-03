package com.sun.tools.hat.internal.model;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/*
* The Original Code is HAT. The Initial Developer of the
* Original Code is Bill Foote, with contributions from others
* at JavaSoft/Sun.
*/
extern class Snapshot
{
	/**
	* Represents a snapshot of the Java objects in the VM at one instant.
	* This is the top-level "model" object read out of a single .hprof or .bod
	* file.
	*/
	@:public @:static public static var SMALL_ID_MASK : haxe.Int64;
	
	@:public @:static @:final public static var EMPTY_BYTE_ARRAY(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function new(buf : com.sun.tools.hat.internal.parser.ReadBuffer) : Void;
	
	@:overload @:public public function setSiteTrace(obj : com.sun.tools.hat.internal.model.JavaHeapObject, _trace : com.sun.tools.hat.internal.model.StackTrace) : Void;
	
	@:overload @:public public function getSiteTrace(obj : com.sun.tools.hat.internal.model.JavaHeapObject) : com.sun.tools.hat.internal.model.StackTrace;
	
	@:overload @:public public function setNewStyleArrayClass(value : Bool) : Void;
	
	@:overload @:public public function isNewStyleArrayClass() : Bool;
	
	@:overload @:public public function setIdentifierSize(size : Int) : Void;
	
	@:overload @:public public function getIdentifierSize() : Int;
	
	@:overload @:public public function getMinimumObjectSize() : Int;
	
	@:overload @:public public function addHeapObject(id : haxe.Int64, ho : com.sun.tools.hat.internal.model.JavaHeapObject) : Void;
	
	@:overload @:public public function addRoot(r : com.sun.tools.hat.internal.model.Root) : Void;
	
	@:overload @:public public function addClass(id : haxe.Int64, c : com.sun.tools.hat.internal.model.JavaClass) : Void;
	
	/**
	* @return true iff it's possible that some JavaThing instances might
	*          isNew set
	*
	* @see JavaThing.isNew()
	*/
	@:overload @:public public function getHasNewSet() : Bool;
	
	/**
	* Called after reading complete, to initialize the structure
	*/
	@:overload @:public public function resolve(calculateRefs : Bool) : Void;
	
	@:overload @:public public function markNewRelativeTo(baseline : com.sun.tools.hat.internal.model.Snapshot) : Void;
	
	@:overload @:public public function getThings() : java.util.Enumeration<com.sun.tools.hat.internal.model.JavaHeapObject>;
	
	@:overload @:public public function findThing(id : haxe.Int64) : com.sun.tools.hat.internal.model.JavaHeapObject;
	
	@:overload @:public public function findThing(id : String) : com.sun.tools.hat.internal.model.JavaHeapObject;
	
	@:overload @:public public function findClass(name : String) : com.sun.tools.hat.internal.model.JavaClass;
	
	/**
	* Return an Iterator of all of the classes in this snapshot.
	**/
	@:overload @:public public function getClasses() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getClassesArray() : java.NativeArray<com.sun.tools.hat.internal.model.JavaClass>;
	
	@:overload @:public @:synchronized public function getFinalizerObjects() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function getRoots() : java.util.Enumeration<com.sun.tools.hat.internal.model.Root>;
	
	@:overload @:public public function getRootsArray() : java.NativeArray<com.sun.tools.hat.internal.model.Root>;
	
	@:overload @:public public function getRootAt(i : Int) : com.sun.tools.hat.internal.model.Root;
	
	@:overload @:public public function rootsetReferencesTo(target : com.sun.tools.hat.internal.model.JavaHeapObject, includeWeak : Bool) : java.NativeArray<com.sun.tools.hat.internal.model.ReferenceChain>;
	
	@:overload @:public public function getUnresolvedObjectsOK() : Bool;
	
	@:overload @:public public function setUnresolvedObjectsOK(v : Bool) : Void;
	
	@:overload @:public public function getWeakReferenceClass() : com.sun.tools.hat.internal.model.JavaClass;
	
	@:overload @:public public function getReferentFieldIndex() : Int;
	
	@:overload @:public public function getNullThing() : com.sun.tools.hat.internal.model.JavaThing;
	
	@:overload @:public public function setReachableExcludes(e : com.sun.tools.hat.internal.model.ReachableExcludes) : Void;
	
	@:overload @:public public function getReachableExcludes() : com.sun.tools.hat.internal.model.ReachableExcludes;
	
	
}
@:native('com$sun$tools$hat$internal$model$Snapshot$MyVisitor') @:internal extern class Snapshot_MyVisitor extends com.sun.tools.hat.internal.model.AbstractJavaHeapObjectVisitor
{
	@:overload @:public override public function visit(other : com.sun.tools.hat.internal.model.JavaHeapObject) : Void;
	
	
}
