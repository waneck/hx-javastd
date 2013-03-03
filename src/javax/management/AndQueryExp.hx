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
* This class is used by the query building mechanism to represent conjunctions
* of relational expressions.
* @serial include
*
* @since 1.5
*/
@:require(java5) @:internal extern class AndQueryExp extends javax.management.QueryEval implements javax.management.QueryExp
{
	/**
	* Default constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new AndQueryExp with q1 and q2 QueryExp.
	*/
	@:overload @:public public function new(q1 : javax.management.QueryExp, q2 : javax.management.QueryExp) : Void;
	
	/**
	* Returns the left query expression.
	*/
	@:overload @:public public function getLeftExp() : javax.management.QueryExp;
	
	/**
	* Returns the right query expression.
	*/
	@:overload @:public public function getRightExp() : javax.management.QueryExp;
	
	/**
	* Applies the AndQueryExp on a MBean.
	*
	* @param name The name of the MBean on which the AndQueryExp will be applied.
	*
	* @return  True if the query was successfully applied to the MBean, false otherwise.
	*
	*
	* @exception BadStringOperationException The string passed to the method is invalid.
	* @exception BadBinaryOpValueExpException The expression passed to the method is invalid.
	* @exception BadAttributeValueExpException The attribute value passed to the method is invalid.
	* @exception InvalidApplicationException  An attempt has been made to apply a subquery expression to a
	* managed object or a qualified attribute expression to a managed object of the wrong class.
	*/
	@:overload @:public public function apply(name : javax.management.ObjectName) : Bool;
	
	/**
	* Returns a string representation of this AndQueryExp
	*/
	@:overload @:public public function toString() : String;
	
	
}
