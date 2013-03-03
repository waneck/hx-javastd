package java.beans;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MethodDescriptor extends java.beans.FeatureDescriptor
{
	/**
	* Constructs a <code>MethodDescriptor</code> from a
	* <code>Method</code>.
	*
	* @param method    The low-level method information.
	*/
	@:overload @:public public function new(method : java.lang.reflect.Method) : Void;
	
	/**
	* Constructs a <code>MethodDescriptor</code> from a
	* <code>Method</code> providing descriptive information for each
	* of the method's parameters.
	*
	* @param method    The low-level method information.
	* @param parameterDescriptors  Descriptive information for each of the
	*                          method's parameters.
	*/
	@:overload @:public public function new(method : java.lang.reflect.Method, parameterDescriptors : java.NativeArray<java.beans.ParameterDescriptor>) : Void;
	
	/**
	* Gets the method that this MethodDescriptor encapsualtes.
	*
	* @return The low-level description of the method
	*/
	@:overload @:public @:synchronized public function getMethod() : java.lang.reflect.Method;
	
	/**
	* Gets the ParameterDescriptor for each of this MethodDescriptor's
	* method's parameters.
	*
	* @return The locale-independent names of the parameters.  May return
	*          a null array if the parameter names aren't known.
	*/
	@:overload @:public public function getParameterDescriptors() : java.NativeArray<java.beans.ParameterDescriptor>;
	
	
}
