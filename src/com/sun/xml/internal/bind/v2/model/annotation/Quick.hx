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
extern class Quick implements java.lang.annotation.Annotation implements com.sun.xml.internal.bind.v2.model.annotation.Locatable implements com.sun.xml.internal.bind.v2.runtime.Location
{
	@:overload private function new(upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Void;
	
	/**
	* Gets the annotation object that this object is wrapping.
	*/
	@:overload @:abstract private function getAnnotation() : java.lang.annotation.Annotation;
	
	/**
	* Factory method to create a new instance of the same kind.
	* A {@link Quick} object also works as a factory of itself
	*/
	@:overload @:abstract private function newInstance(upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, core : java.lang.annotation.Annotation) : Quick;
	
	@:overload @:final public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:final public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:final public function toString() : String;
	
	/**
	* Returns the annotation type of this annotation.
	*/
	@:overload public function annotationType() : Class<Annotation>;
	
	
}
