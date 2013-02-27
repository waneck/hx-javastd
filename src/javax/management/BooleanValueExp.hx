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
* This class represents a boolean value. A BooleanValueExp may be
* used anywhere a ValueExp is required.
* @serial include
*
* @since 1.5
*/
@:require(java5) @:internal extern class BooleanValueExp extends javax.management.QueryEval implements javax.management.ValueExp
{
	/** Returns the  Boolean object representing the value of the BooleanValueExp object.*/
	@:overload public function getValue() : Null<Bool>;
	
	/**
	* Returns the string representing the object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Applies the ValueExp on a MBean.
	*
	* @param name The name of the MBean on which the ValueExp will be applied.
	*
	* @return  The <CODE>ValueExp</CODE>.
	*
	* @exception BadStringOperationException
	* @exception BadBinaryOpValueExpException
	* @exception BadAttributeValueExpException
	* @exception InvalidApplicationException
	*/
	@:overload public function apply(name : javax.management.ObjectName) : javax.management.ValueExp;
	
	@:overload override public function setMBeanServer(s : javax.management.MBeanServer) : Void;
	
	
}
