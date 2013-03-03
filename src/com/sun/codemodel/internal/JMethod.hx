package com.sun.codemodel.internal;
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
extern class JMethod extends com.sun.codemodel.internal.JGenerifiableImpl implements com.sun.codemodel.internal.JDeclaration implements com.sun.codemodel.internal.JAnnotatable implements com.sun.codemodel.internal.JDocCommentable
{
	/**
	* Add an exception to the list of exceptions that this
	* method may throw.
	*
	* @param exception
	*        Name of an exception that this method may throw
	*/
	@:overload @:public public function _throws(exception : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JMethod;
	
	@:overload @:public public function _throws(exception : Class<java.lang.Throwable>) : com.sun.codemodel.internal.JMethod;
	
	/**
	* Returns the list of variable of this method.
	*
	* @return List of parameters of this method. This list is not modifiable.
	*/
	@:overload @:public public function params() : java.util.List<com.sun.codemodel.internal.JVar>;
	
	/**
	* Add the specified variable to the list of parameters
	* for this method signature.
	*
	* @param type
	*        JType of the parameter being added
	*
	* @param name
	*        Name of the parameter being added
	*
	* @return New parameter variable
	*/
	@:overload @:public public function param(mods : Int, type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JVar;
	
	@:overload @:public public function param(type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JVar;
	
	@:overload @:public public function param(mods : Int, type : Class<Dynamic>, name : String) : com.sun.codemodel.internal.JVar;
	
	@:overload @:public public function param(type : Class<Dynamic>, name : String) : com.sun.codemodel.internal.JVar;
	
	/**
	* @see #varParam(JType, String)
	*/
	@:overload @:public public function varParam(type : Class<Dynamic>, name : String) : com.sun.codemodel.internal.JVar;
	
	/**
	* Add the specified variable argument to the list of parameters
	* for this method signature.
	*
	* @param type
	*      Type of the parameter being added.
	*
	* @param name
	*        Name of the parameter being added
	*
	* @return the variable parameter
	*
	* @throws IllegalStateException
	*      If this method is called twice.
	*      varargs in J2SE 1.5 can appear only once in the
	*      method signature.
	*/
	@:overload @:public public function varParam(type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JVar;
	
	/**
	* Adds an annotation to this variable.
	* @param clazz
	*          The annotation class to annotate the field with
	*/
	@:overload @:public public function annotate(clazz : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JAnnotationUse;
	
	/**
	* Adds an annotation to this variable.
	*
	* @param clazz
	*          The annotation class to annotate the field with
	*/
	@:overload @:public public function annotate(clazz : Class<java.lang.annotation.Annotation>) : com.sun.codemodel.internal.JAnnotationUse;
	
	@:overload @:public public function annotate2<W : com.sun.codemodel.internal.JAnnotationWriter<Dynamic>>(clazz : Class<W>) : W;
	
	@:overload @:public public function annotations() : java.util.Collection<com.sun.codemodel.internal.JAnnotationUse>;
	
	/**
	* Check if there are any varargs declared
	* for this method signature.
	*/
	@:overload @:public public function hasVarArgs() : Bool;
	
	@:overload @:public public function name() : String;
	
	/**
	* Changes the name of the method.
	*/
	@:overload @:public public function name(n : String) : Void;
	
	/**
	* Returns the return type.
	*/
	@:overload @:public public function type() : com.sun.codemodel.internal.JType;
	
	/**
	* Overrides the return type.
	*/
	@:overload @:public public function type(t : com.sun.codemodel.internal.JType) : Void;
	
	/**
	* Returns all the parameter types in an array.
	* @return
	*      If there's no parameter, an empty array will be returned.
	*/
	@:overload @:public public function listParamTypes() : java.NativeArray<com.sun.codemodel.internal.JType>;
	
	/**
	* Returns  the varags parameter type.
	* @return
	* If there's no vararg parameter type, null will be returned.
	*/
	@:overload @:public public function listVarParamType() : com.sun.codemodel.internal.JType;
	
	/**
	* Returns all the parameters in an array.
	* @return
	*      If there's no parameter, an empty array will be returned.
	*/
	@:overload @:public public function listParams() : java.NativeArray<com.sun.codemodel.internal.JVar>;
	
	/**
	* Returns the variable parameter
	* @return
	*      If there's no parameter, null will be returned.
	*/
	@:overload @:public public function listVarParam() : com.sun.codemodel.internal.JVar;
	
	/**
	* Returns true if the method has the specified signature.
	*/
	@:overload @:public public function hasSignature(argTypes : java.NativeArray<com.sun.codemodel.internal.JType>) : Bool;
	
	/**
	* Get the block that makes up body of this method
	*
	* @return Body of method
	*/
	@:overload @:public public function body() : com.sun.codemodel.internal.JBlock;
	
	/**
	* Specify the default value for this annotation member
	* @param value
	*           Default value for the annotation member
	*
	*/
	@:overload @:public public function declareDefaultValue(value : com.sun.codemodel.internal.JExpression) : Void;
	
	/**
	* Creates, if necessary, and returns the class javadoc for this
	* JDefinedClass
	*
	* @return JDocComment containing javadocs for this class
	*/
	@:overload @:public public function javadoc() : com.sun.codemodel.internal.JDocComment;
	
	@:overload @:public override public function declare(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	/**
	* @return
	*      the current modifiers of this method.
	*      Always return non-null valid object.
	*/
	@:overload @:public public function mods() : com.sun.codemodel.internal.JMods;
	
	/**
	* @deprecated use {@link #mods()}
	*/
	@:overload @:public public function getMods() : com.sun.codemodel.internal.JMods;
	
	@:overload @:protected override private function owner() : com.sun.codemodel.internal.JCodeModel;
	
	
}
