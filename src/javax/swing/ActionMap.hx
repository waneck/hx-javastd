package javax.swing;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ActionMap implements java.io.Serializable
{
	/**
	* Creates an <code>ActionMap</code> with no parent and no mappings.
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets this <code>ActionMap</code>'s parent.
	*
	* @param map  the <code>ActionMap</code> that is the parent of this one
	*/
	@:overload public function setParent(map : ActionMap) : Void;
	
	/**
	* Returns this <code>ActionMap</code>'s parent.
	*
	* @return the <code>ActionMap</code> that is the parent of this one,
	*         or null if this <code>ActionMap</code> has no parent
	*/
	@:overload public function getParent() : ActionMap;
	
	/**
	* Adds a binding for <code>key</code> to <code>action</code>.
	* If <code>action</code> is null, this removes the current binding
	* for <code>key</code>.
	* <p>In most instances, <code>key</code> will be
	* <code>action.getValue(NAME)</code>.
	*/
	@:overload public function put(key : Dynamic, action : javax.swing.Action) : Void;
	
	/**
	* Returns the binding for <code>key</code>, messaging the
	* parent <code>ActionMap</code> if the binding is not locally defined.
	*/
	@:overload public function get(key : Dynamic) : javax.swing.Action;
	
	/**
	* Removes the binding for <code>key</code> from this <code>ActionMap</code>.
	*/
	@:overload public function remove(key : Dynamic) : Void;
	
	/**
	* Removes all the mappings from this <code>ActionMap</code>.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns the <code>Action</code> names that are bound in this <code>ActionMap</code>.
	*/
	@:overload public function keys() : java.NativeArray<Dynamic>;
	
	/**
	* Returns the number of bindings in this {@code ActionMap}.
	*
	* @return the number of bindings in this {@code ActionMap}
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns an array of the keys defined in this <code>ActionMap</code> and
	* its parent. This method differs from <code>keys()</code> in that
	* this method includes the keys defined in the parent.
	*/
	@:overload public function allKeys() : java.NativeArray<Dynamic>;
	
	
}
