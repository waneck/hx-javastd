package com.sun.tools.corba.se.idl.constExpr;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
/*
* COMPONENT_NAME: idl.parser
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
extern class Terminal extends com.sun.tools.corba.se.idl.constExpr.Expression
{
	/**
	* This class contains values.  Objects of this class are the terminal
	* nodes of an expression tree.
	* <b>
	* Note that there is a constructor for Double values, but not Float.
	* CORBA defines that all floating point expressions are evaluated as
	* double, and that the result is coerced back to float if necessary.
	* <b>
	* Note also that there is a constructor for long values, but not for
	* int or short.  CORBA defines that all integral expressions are evaluated
	* as unsigned long.  A CORBA long is a Java int.  There is no unsigned int
	* in Java, so the next larger type, long, is used.
	**/
	@:overload private function new(representation : String, charValue : Null<java.StdTypes.Char16>, isWide : Bool) : Void;
	
	@:overload private function new(representation : String, booleanValue : Null<Bool>) : Void;
	
	@:overload private function new(representation : String, bigIntegerValue : java.math.BigInteger) : Void;
	
	@:overload private function new(representation : String, longValue : Null<haxe.Int64>) : Void;
	
	@:overload private function new(representation : String, doubleValue : Null<Float>) : Void;
	
	@:overload private function new(stringValue : String, isWide : Bool) : Void;
	
	@:overload private function new(constReference : com.sun.tools.corba.se.idl.ConstEntry) : Void;
	
	@:overload override public function evaluate() : Dynamic;
	
	
}
