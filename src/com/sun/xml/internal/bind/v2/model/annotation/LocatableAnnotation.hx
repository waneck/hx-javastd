package com.sun.xml.internal.bind.v2.model.annotation;
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
extern class LocatableAnnotation implements java.lang.reflect.InvocationHandler implements com.sun.xml.internal.bind.v2.model.annotation.Locatable implements com.sun.xml.internal.bind.v2.runtime.Location
{
	/**
	* Wraps the annotation into a proxy so that the returned object will also implement
	* {@link Locatable}.
	*/
	@:overload public static function create<A : java.lang.annotation.Annotation>(annotation : A, parentSourcePos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}