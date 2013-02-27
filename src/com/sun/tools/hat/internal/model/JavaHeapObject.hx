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
extern class JavaHeapObject extends com.sun.tools.hat.internal.model.JavaThing
{
	@:overload @:abstract public function getClazz() : com.sun.tools.hat.internal.model.JavaClass;
	
	@:overload @:abstract override public function getSize() : Int;
	
	@:overload @:abstract public function getId() : haxe.Int64;
	
	/**
	* Do any initialization this thing needs after its data is read in.
	* Subclasses that override this should call super.resolve().
	*/
	@:overload public function resolve(snapshot : com.sun.tools.hat.internal.model.Snapshot) : Void;
	
	/**
	* @return the id of this thing as hex string
	*/
	@:overload public function getIdString() : String;
	
	@:overload override public function toString() : String;
	
	/**
	* @return the StackTrace of the point of allocation of this object,
	*          or null if unknown
	*/
	@:overload public function getAllocatedFrom() : com.sun.tools.hat.internal.model.StackTrace;
	
	@:overload public function isNew() : Bool;
	
	/**
	* Tell the visitor about all of the objects we refer to
	*/
	@:overload public function visitReferencedObjects(v : com.sun.tools.hat.internal.model.JavaHeapObjectVisitor) : Void;
	
	/**
	* If the rootset includes this object, return a Root describing one
	* of the reasons why.
	*/
	@:overload public function getRoot() : com.sun.tools.hat.internal.model.Root;
	
	/**
	* Tell who refers to us.
	*
	* @return an Enumeration of JavaHeapObject instances
	*/
	@:overload public function getReferers() : java.util.Enumeration<Dynamic>;
	
	/**
	* Given other, which the caller promises is in referers, determines if
	* the reference is only a weak reference.
	*/
	@:overload public function refersOnlyWeaklyTo(ss : com.sun.tools.hat.internal.model.Snapshot, other : com.sun.tools.hat.internal.model.JavaThing) : Bool;
	
	/**
	* Describe the reference that this thing has to target.  This will only
	* be called if target is in the array returned by getChildrenForRootset.
	*/
	@:overload public function describeReferenceTo(target : com.sun.tools.hat.internal.model.JavaThing, ss : com.sun.tools.hat.internal.model.Snapshot) : String;
	
	@:overload override public function isHeapAllocated() : Bool;
	
	
}
