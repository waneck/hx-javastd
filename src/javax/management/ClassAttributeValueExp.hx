package javax.management;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ClassAttributeValueExp extends javax.management.AttributeValueExp
{
	/**
	* Basic Constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Applies the ClassAttributeValueExp on an MBean. Returns the name of
	* the Java implementation class of the MBean.
	*
	* @param name The name of the MBean on which the ClassAttributeValueExp will be applied.
	*
	* @return  The ValueExp.
	*
	* @exception BadAttributeValueExpException
	* @exception InvalidApplicationException
	*/
	@:overload @:public override public function apply(name : javax.management.ObjectName) : javax.management.ValueExp;
	
	/**
	* Returns the string "Class" representing its value
	*/
	@:overload @:public override public function toString() : String;
	
	@:overload @:protected private function getValue(name : javax.management.ObjectName) : Dynamic;
	
	
}
