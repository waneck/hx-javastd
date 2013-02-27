package com.sun.codemodel.internal;
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
extern class JAnnotationUse extends com.sun.codemodel.internal.JAnnotationValue
{
	@:overload public function getAnnotationClass() : com.sun.codemodel.internal.JClass;
	
	@:overload public function getAnnotationMembers() : java.util.Map<String, com.sun.codemodel.internal.JAnnotationValue>;
	
	/**
	* Adds a member value pair to this annotation
	*
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The boolean value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : Bool) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The byte member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : java.StdTypes.Int8) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The char member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : java.StdTypes.Char16) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The double member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : Float) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The float member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : Single) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The long member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : haxe.Int64) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The short member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : java.StdTypes.Int16) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The int member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : Int) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The String member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : String) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* For adding class values as param
	* @see #param(String, Class)
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The annotation class which is member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function annotationParam(name : String, value : Class<java.lang.annotation.Annotation>) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The enum class which is member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : java.lang.Enum<Dynamic>) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The JEnumConstant which is member value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : com.sun.codemodel.internal.JEnumConstant) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation
	*  This can be used for e.g to specify
	* <pre>
	*        &#64;XmlCollectionItem(type=Integer.class);
	* <pre>
	* For adding a value of Class<? extends Annotation>
	* @link
	* #annotationParam(java.lang.String, java.lang.Class<? extends java.lang.annotation.Annotation>)
	* @param name
	*        The simple name for this annotation param
	*
	* @param value
	*        The class type of the param
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*
	*
	*/
	@:overload public function param(name : String, value : Class<Dynamic>) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation based on the
	* type represented by the given JType
	*
	* @param name The simple name for this annotation param
	* @param type the JType representing the actual type
	* @return The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*/
	@:overload public function param(name : String, type : com.sun.codemodel.internal.JType) : JAnnotationUse;
	
	/**
	* Adds a member value pair to this annotation.
	* @param name
	*        The simple name for this annotation
	*
	* @param value
	*        The JExpression which provides the contant value for this annotation
	* @return
	*         The JAnnotationUse. More member value pairs can
	*         be added to it using the same or the overloaded methods.
	*
	*/
	@:overload public function param(name : String, value : com.sun.codemodel.internal.JExpression) : JAnnotationUse;
	
	/**
	* Adds a member value pair which is of type array to this annotation
	* @param name
	*        The simple name for this annotation
	*
	* @return
	*         The JAnnotationArrayMember. For adding array values
	*         @see JAnnotationArrayMember
	*
	*/
	@:overload public function paramArray(name : String) : com.sun.codemodel.internal.JAnnotationArrayMember;
	
	/**
	* This can be used to add annotations inside annotations
	* for e.g  &#64;XmlCollection(values= &#64;XmlCollectionItem(type=Foo.class))
	* @param clazz
	*         The annotation class to be included
	* @return
	*     The JAnnotationUse that can be used as a member within this JAnnotationUse
	* @deprecated
	*      use {@link JAnnotationArrayMember#annotate}
	*/
	@:overload public function annotate(clazz : Class<java.lang.annotation.Annotation>) : JAnnotationUse;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
