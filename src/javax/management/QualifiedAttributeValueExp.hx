package javax.management;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
* <p>Represents attributes used as arguments to relational constraints,
* where the attribute must be in an MBean of a specified {@linkplain
* MBeanInfo#getClassName() class}. A QualifiedAttributeValueExp may be used
* anywhere a ValueExp is required.
*
* @serial include
*
* @since 1.5
*/
@:require(java5) @:internal extern class QualifiedAttributeValueExp extends javax.management.AttributeValueExp
{
	/**
	* Basic Constructor.
	* @deprecated see {@link AttributeValueExp#AttributeValueExp()}
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new QualifiedAttributeValueExp representing the specified object
	* attribute, named attr with class name className.
	*/
	@:overload public function new(className : String, attr : String) : Void;
	
	/**
	* Returns a string representation of the class name of the attribute.
	*/
	@:overload public function getAttrClassName() : String;
	
	/**
	* Applies the QualifiedAttributeValueExp to an MBean.
	*
	* @param name The name of the MBean on which the QualifiedAttributeValueExp will be applied.
	*
	* @return  The ValueExp.
	*
	* @exception BadStringOperationException
	* @exception BadBinaryOpValueExpException
	* @exception BadAttributeValueExpException
	* @exception InvalidApplicationException
	*/
	@:overload public function apply(name : javax.management.ObjectName) : javax.management.ValueExp;
	
	/**
	* Returns the string representing its value
	*/
	@:overload public function toString() : String;
	
	
}
