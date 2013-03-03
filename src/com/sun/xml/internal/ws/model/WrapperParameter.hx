package com.sun.xml.internal.ws.model;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WrapperParameter extends com.sun.xml.internal.ws.model.ParameterImpl
{
	/**
	* {@link ParameterImpl} that represents a wrapper,
	* which is a parameter that consists of multiple nested {@link ParameterImpl}s
	* within, which together form a body part.
	*
	* <p>
	* Java method parameters represented by nested {@link ParameterImpl}s will be
	* packed into a "wrapper bean" and it becomes the {@link ParameterImpl} for the
	* body.
	*
	* <p>
	* This parameter is only used for the {@link ParameterBinding#BODY} binding.
	* Other parameters that bind to other parts (such as headers or unbound)
	* will show up directly under {@link JavaMethod}.
	*
	* @author Vivek Pandey
	*/
	@:protected @:final private var wrapperChildren(default, null) : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>;
	
	@:overload @:public public function new(parent : com.sun.xml.internal.ws.model.JavaMethodImpl, typeRef : com.sun.xml.internal.bind.api.TypeReference, mode : Mode, index : Int) : Void;
	
	/**
	*
	* @deprecated
	*      Why are you calling a method that always return true?
	*/
	@:overload @:public override public function isWrapperStyle() : Bool;
	
	/**
	* @return Returns the wrapperChildren.
	*/
	@:overload @:public public function getWrapperChildren() : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>;
	
	/**
	* Adds a new child parameter.
	*
	* @param wrapperChild
	*/
	@:overload @:public public function addWrapperChild(wrapperChild : com.sun.xml.internal.ws.model.ParameterImpl) : Void;
	
	@:overload @:public public function clear() : Void;
	
	
}
