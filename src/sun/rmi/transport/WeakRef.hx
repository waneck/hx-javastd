package sun.rmi.transport;
/*
* Copyright (c) 1996, 2001, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WeakRef extends java.lang.ref.WeakReference<Dynamic>
{
	/**
	* Create a new WeakRef to the given object.
	*/
	@:overload public function new(obj : Dynamic) : Void;
	
	/**
	* Create a new WeakRef to the given object, registered with a queue.
	*/
	@:overload public function new(obj : Dynamic, q : java.lang.ref.ReferenceQueue<Dynamic>) : Void;
	
	/**
	* Pin the contained reference (make this a strong reference).
	*/
	@:overload @:synchronized public function pin() : Void;
	
	/**
	* Unpin the contained reference (make this a weak reference).
	*/
	@:overload @:synchronized public function unpin() : Void;
	
	/**
	* Always return the "identity" hash code of the original referent.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Return true if "obj" is this identical WeakRef object, or, if the
	* contained reference has not been cleared, if "obj" is another WeakRef
	* object with the identical non-null referent.  Otherwise, return false.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
