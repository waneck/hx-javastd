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
* This class is used by the query-building mechanism to represent binary
* relations.
* @serial include
*
* @since 1.5
*/
@:require(java5) @:internal extern class MatchQueryExp extends javax.management.QueryEval implements javax.management.QueryExp
{
	/**
	* Basic Constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new MatchQueryExp where the specified AttributeValueExp matches
	* the specified pattern StringValueExp.
	*/
	@:overload public function new(a : javax.management.AttributeValueExp, s : javax.management.StringValueExp) : Void;
	
	/**
	* Returns the attribute of the query.
	*/
	@:overload public function getAttribute() : javax.management.AttributeValueExp;
	
	/**
	* Returns the pattern of the query.
	*/
	@:overload public function getPattern() : String;
	
	/**
	* Applies the MatchQueryExp on a MBean.
	*
	* @param name The name of the MBean on which the MatchQueryExp will be applied.
	*
	* @return  True if the query was successfully applied to the MBean, false otherwise.
	*
	* @exception BadStringOperationException
	* @exception BadBinaryOpValueExpException
	* @exception BadAttributeValueExpException
	* @exception InvalidApplicationException
	*/
	@:overload public function apply(name : javax.management.ObjectName) : Bool;
	
	/**
	* Returns the string representing the object
	*/
	@:overload public function toString() : String;
	
	
}
