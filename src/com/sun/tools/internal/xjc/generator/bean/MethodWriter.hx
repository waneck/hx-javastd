package com.sun.tools.internal.xjc.generator.bean;
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
/*
* Use is subject to the license terms.
*/
extern class MethodWriter
{
	/**
	* The back-end may or may not generate the content interface
	* separately from the implementation class. If so, a method
	* needs to be declared on both the interface and the implementation class.
	* <p>
	* This class hides those details and allow callers to declare
	* methods just once.
	*
	* @author Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	private var codeModel(default, null) : com.sun.codemodel.internal.JCodeModel;
	
	@:overload private function new(context : com.sun.tools.internal.xjc.outline.ClassOutline) : Void;
	
	/**
	* Declares a method in both the interface and the implementation.
	*
	* @return
	*      JMethod object that represents a newly declared method
	*      on the implementation class.
	*/
	@:overload @:abstract public function declareMethod(returnType : com.sun.codemodel.internal.JType, methodName : String) : com.sun.codemodel.internal.JMethod;
	
	@:overload @:final public function declareMethod(returnType : Class<Dynamic>, methodName : String) : com.sun.codemodel.internal.JMethod;
	
	/**
	* To generate javadoc for the previously declared method, use this method
	* to obtain a {@link JDocComment} object. This may return a value
	* different from declareMethod().javadoc().
	*/
	@:overload @:abstract public function javadoc() : com.sun.codemodel.internal.JDocComment;
	
	/**
	* Adds a parameter to the previously declared method.
	*
	* @return
	*      JVar object that represents a newly added parameter
	*      on the implementation class.
	*/
	@:overload @:abstract public function addParameter(type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JVar;
	
	@:overload @:final public function addParameter(type : Class<Dynamic>, name : String) : com.sun.codemodel.internal.JVar;
	
	
}
