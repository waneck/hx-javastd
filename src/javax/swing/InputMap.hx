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
extern class InputMap implements java.io.Serializable
{
	/**
	* Creates an <code>InputMap</code> with no parent and no mappings.
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets this <code>InputMap</code>'s parent.
	*
	* @param map  the <code>InputMap</code> that is the parent of this one
	*/
	@:overload public function setParent(map : InputMap) : Void;
	
	/**
	* Gets this <code>InputMap</code>'s parent.
	*
	* @return map  the <code>InputMap</code> that is the parent of this one,
	*              or null if this <code>InputMap</code> has no parent
	*/
	@:overload public function getParent() : InputMap;
	
	/**
	* Adds a binding for <code>keyStroke</code> to <code>actionMapKey</code>.
	* If <code>actionMapKey</code> is null, this removes the current binding
	* for <code>keyStroke</code>.
	*/
	@:overload public function put(keyStroke : javax.swing.KeyStroke, actionMapKey : Dynamic) : Void;
	
	/**
	* Returns the binding for <code>keyStroke</code>, messaging the
	* parent <code>InputMap</code> if the binding is not locally defined.
	*/
	@:overload public function get(keyStroke : javax.swing.KeyStroke) : Dynamic;
	
	/**
	* Removes the binding for <code>key</code> from this
	* <code>InputMap</code>.
	*/
	@:overload public function remove(key : javax.swing.KeyStroke) : Void;
	
	/**
	* Removes all the mappings from this <code>InputMap</code>.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns the <code>KeyStroke</code>s that are bound in this <code>InputMap</code>.
	*/
	@:overload public function keys() : java.NativeArray<javax.swing.KeyStroke>;
	
	/**
	* Returns the number of <code>KeyStroke</code> bindings.
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns an array of the <code>KeyStroke</code>s defined in this
	* <code>InputMap</code> and its parent. This differs from <code>keys()</code> in that
	* this method includes the keys defined in the parent.
	*/
	@:overload public function allKeys() : java.NativeArray<javax.swing.KeyStroke>;
	
	
}
