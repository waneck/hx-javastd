package javax.management;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class is used by the query building mechanism for isInstanceOf expressions.
* @serial include
*
* @since 1.6
*/
@:require(java6) @:internal extern class InstanceOfQueryExp extends javax.management.QueryEval implements javax.management.QueryExp
{
	/**
	* Creates a new InstanceOfExp with a specific class name.
	* @param classNameValue The {@link StringValueExp} returning the name of
	*        the class of which selected MBeans should be instances.
	*/
	@:overload @:public public function new(classNameValue : javax.management.StringValueExp) : Void;
	
	/**
	* Returns the class name.
	* @returns The {@link StringValueExp} returning the name of
	*        the class of which selected MBeans should be instances.
	*/
	@:overload @:public public function getClassNameValue() : javax.management.StringValueExp;
	
	/**
	* Applies the InstanceOf on a MBean.
	*
	* @param name The name of the MBean on which the InstanceOf will be applied.
	*
	* @return  True if the MBean specified by the name is instance of the class.
	* @exception BadAttributeValueExpException
	* @exception InvalidApplicationException
	* @exception BadStringOperationException
	* @exception BadBinaryOpValueExpException
	*/
	@:overload @:public public function apply(name : javax.management.ObjectName) : Bool;
	
	/**
	* Returns a string representation of this InstanceOfQueryExp.
	* @return a string representation of this InstanceOfQueryExp.
	*/
	@:overload @:public public function toString() : String;
	
	
}
