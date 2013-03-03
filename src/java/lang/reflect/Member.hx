package java.lang.reflect;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Member is an interface that reflects identifying information about
* a single member (a field or a method) or a constructor.
*
* @see java.lang.Class
* @see Field
* @see Method
* @see Constructor
*
* @author Nakul Saraiya
*/
extern interface Member
{
	/**
	* Returns the Class object representing the class or interface
	* that declares the member or constructor represented by this Member.
	*
	* @return an object representing the declaring class of the
	* underlying member
	*/
	@:overload @:public public function getDeclaringClass() : Class<Dynamic>;
	
	/**
	* Returns the simple name of the underlying member or constructor
	* represented by this Member.
	*
	* @return the simple name of the underlying member
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the Java language modifiers for the member or
	* constructor represented by this Member, as an integer.  The
	* Modifier class should be used to decode the modifiers in
	* the integer.
	*
	* @return the Java language modifiers for the underlying member
	* @see Modifier
	*/
	@:overload @:public public function getModifiers() : Int;
	
	/**
	* Returns {@code true} if this member was introduced by
	* the compiler; returns {@code false} otherwise.
	*
	* @return true if and only if this member was introduced by
	* the compiler.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isSynthetic() : Bool;
	
	
}
