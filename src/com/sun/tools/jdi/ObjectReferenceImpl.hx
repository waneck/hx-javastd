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
extern class ObjectReferenceImpl extends com.sun.tools.jdi.ValueImpl implements com.sun.jdi.ObjectReference implements com.sun.tools.jdi.VMListener
{
	@:overload private function newCache() : com.sun.tools.jdi.ObjectReferenceImpl.ObjectReferenceImpl_Cache;
	
	@:overload private function getCache() : com.sun.tools.jdi.ObjectReferenceImpl.ObjectReferenceImpl_Cache;
	
	@:overload private function invokableReferenceType(method : com.sun.jdi.Method) : com.sun.tools.jdi.ClassTypeImpl;
	
	@:overload private function description() : String;
	
	/*
	* VMListener implementation
	*/
	@:overload public function vmSuspended(action : com.sun.tools.jdi.VMAction) : Bool;
	
	@:overload public function vmNotSuspended(action : com.sun.tools.jdi.VMAction) : Bool;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload override public function type() : com.sun.jdi.Type;
	
	@:overload public function referenceType() : com.sun.jdi.ReferenceType;
	
	@:overload public function getValue(sig : com.sun.jdi.Field) : com.sun.jdi.Value;
	
	@:overload public function getValues(theFields : java.util.List<com.sun.jdi.Field>) : java.util.Map<com.sun.jdi.Field, com.sun.jdi.Value>;
	
	@:overload public function setValue(field : com.sun.jdi.Field, value : com.sun.jdi.Value) : Void;
	
	@:overload public function invokeMethod(threadIntf : com.sun.jdi.ThreadReference, methodIntf : com.sun.jdi.Method, origArguments : java.util.List<com.sun.jdi.Value>, options : Int) : com.sun.jdi.Value;
	
	/* leave synchronized to keep count accurate */
	@:overload @:synchronized public function disableCollection() : Void;
	
	/* leave synchronized to keep count accurate */
	@:overload @:synchronized public function enableCollection() : Void;
	
	@:overload public function isCollected() : Bool;
	
	@:overload public function uniqueID() : haxe.Int64;
	
	@:overload public function waitingThreads() : java.util.List<com.sun.jdi.ThreadReference>;
	
	@:overload public function owningThread() : com.sun.jdi.ThreadReference;
	
	@:overload public function entryCount() : Int;
	
	@:overload public function referringObjects(maxReferrers : haxe.Int64) : java.util.List<com.sun.jdi.ObjectReference>;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$ObjectReferenceImpl$Cache') extern class ObjectReferenceImpl_Cache
{
	
}
