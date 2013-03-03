package com.sun.javadoc;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* Represents a method or constructor of a java class.
*
* @since 1.2
* @author Robert Field
*/
@:require(java2) extern interface ExecutableMemberDoc extends com.sun.javadoc.MemberDoc
{
	/**
	* Return exceptions this method or constructor throws.
	* If the type of the exception is a type variable, return the
	* <code>ClassDoc</code> of its erasure.
	*
	* <p> <i>The <code>thrownExceptions</code> method cannot
	* accommodate certain generic type constructs.  The
	* <code>thrownExceptionTypes</code> method should be used
	* instead.</i>
	*
	* @return an array of ClassDoc[] representing the exceptions
	*         thrown by this method.
	* @see #thrownExceptionTypes
	*/
	@:overload public function thrownExceptions() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return exceptions this method or constructor throws.
	*
	* @return an array representing the exceptions thrown by this method.
	*         Each array element is either a <code>ClassDoc</code> or a
	*         <code>TypeVariable</code>.
	* @since 1.5
	*/
	@:require(java5) @:overload public function thrownExceptionTypes() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return true if this method is native
	*/
	@:overload public function isNative() : Bool;
	
	/**
	* Return true if this method is synchronized
	*/
	@:overload public function isSynchronized() : Bool;
	
	/**
	* Return true if this method was declared to take a variable number
	* of arguments.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isVarArgs() : Bool;
	
	/**
	* Get argument information.
	*
	* @see Parameter
	*
	* @return an array of Parameter, one element per argument
	* in the order the arguments are present.
	*/
	@:overload public function parameters() : java.NativeArray<com.sun.javadoc.Parameter>;
	
	/**
	* Return the throws tags in this method.
	*
	* @return an array of ThrowTag containing all <code>&#64exception</code>
	* and <code>&#64throws</code> tags.
	*/
	@:overload public function throwsTags() : java.NativeArray<com.sun.javadoc.ThrowsTag>;
	
	/**
	* Return the param tags in this method, excluding the type
	* parameter tags.
	*
	* @return an array of ParamTag containing all <code>&#64param</code> tags
	* corresponding to the parameters of this method.
	*/
	@:overload public function paramTags() : java.NativeArray<com.sun.javadoc.ParamTag>;
	
	/**
	* Return the type parameter tags in this method.
	*
	* @return an array of ParamTag containing all <code>&#64param</code> tags
	* corresponding to the type parameters of this method.
	* @since 1.5
	*/
	@:require(java5) @:overload public function typeParamTags() : java.NativeArray<com.sun.javadoc.ParamTag>;
	
	/**
	* Get the signature. It is the parameter list, type is qualified.
	*      For instance, for a method <code>mymethod(String x, int y)</code>,
	*      it will return <code>(java.lang.String,int)</code>.
	*/
	@:overload public function signature() : String;
	
	/**
	* get flat signature.  all types are not qualified.
	*      return a String, which is the flat signiture of this member.
	*      It is the parameter list, type is not qualified.
	*      For instance, for a method <code>mymethod(String x, int y)</code>,
	*      it will return <code>(String, int)</code>.
	*/
	@:overload public function flatSignature() : String;
	
	/**
	* Return the formal type parameters of this method or constructor.
	* Return an empty array if this method or constructor is not generic.
	*
	* @return the formal type parameters of this method or constructor.
	* @since 1.5
	*/
	@:require(java5) @:overload public function typeParameters() : java.NativeArray<com.sun.javadoc.TypeVariable>;
	
	
}
