package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Scope<BeanT, PropT, ItemT, PackT>
{
	/**
	* Holds the information about packing scope.
	*
	* <p>
	* When no packing is started yet, all the fields should be set to null.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public @:final public var context(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	/**
	* Returns true if this scope object is filled by a packing in progress.
	*/
	@:overload @:public public function hasStarted() : Bool;
	
	/**
	* Initializes all the fields to null.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Finishes up the current packing in progress (if any) and
	* resets this object.
	*/
	@:overload @:public public function finish() : Void;
	
	/**
	* Adds a new item to this packing scope.
	*/
	@:overload @:public public function add(acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>, lister : com.sun.xml.internal.bind.v2.runtime.reflect.Lister<BeanT, PropT, ItemT, PackT>, value : ItemT) : Void;
	
	/**
	* Starts the packing scope, without adding any item.
	*
	* This allows us to return an empty pack, thereby allowing the user
	* to distinguish empty array vs null array.
	*/
	@:overload @:public public function start(acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>, lister : com.sun.xml.internal.bind.v2.runtime.reflect.Lister<BeanT, PropT, ItemT, PackT>) : Void;
	
	
}
