package com.sun.tools.corba.se.idl.constExpr;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Expression
{
	/**
	* Compute the value of this expression.
	**/
	@:overload @:abstract public function evaluate() : Dynamic;
	
	/**
	* Set the value of this expression.
	**/
	@:overload public function value(value : Dynamic) : Void;
	
	/**
	* Get the value of this expression.
	**/
	@:overload public function value() : Dynamic;
	
	/**
	* Set the representation of this expression.
	**/
	@:overload public function rep(rep : String) : Void;
	
	/**
	* Get the representation of this expression.
	**/
	@:overload public function rep() : String;
	
	/**
	* Set the target type of this expression.
	**/
	@:overload public function type(type : String) : Void;
	
	/**
	* Get the target type of this expression.
	**/
	@:overload public function type() : String;
	
	/**
	* Return the default computation type for the given target type.
	**/
	@:overload private static function defaultType(targetType : String) : String;
	
	/**
	* Coerces a number to the target type of this expression.
	* @param  obj  The number to coerce.
	* @return  the value of number coerced to the (target) type of
	*  this expression.
	**/
	@:overload public function coerceToTarget(obj : Dynamic) : Dynamic;
	
	/**
	* Coerces an integral value (BigInteger) to its corresponding unsigned
	* representation, if the target type of this expression is unsigned.
	* @param b The BigInteger to be coerced.
	* @return the value of an integral type coerced to its corresponding
	*  unsigned integral type, if the target type of this expression is
	*  unsigned.
	**/
	@:overload private function toUnsignedTarget(b : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Coerces an integral value (BigInteger) to its corresponding signed
	* representation, if the target type of this expression is signed.
	* @param  b  The BigInteger to be coerced.
	* @return  the value of an integral type coerced to its corresponding
	*  signed integral type, if the target type of this expression is
	*  signed.
	**/
	@:overload private function toSignedTarget(b : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Return the unsigned value of a BigInteger.
	**/
	@:overload private function toUnsigned(b : java.math.BigInteger) : java.math.BigInteger;
	
	public static var negOne(default, null) : java.math.BigInteger;
	
	public static var zero(default, null) : java.math.BigInteger;
	
	public static var one(default, null) : java.math.BigInteger;
	
	public static var two(default, null) : java.math.BigInteger;
	
	public static var twoPow15(default, null) : java.math.BigInteger;
	
	public static var twoPow16(default, null) : java.math.BigInteger;
	
	public static var twoPow31(default, null) : java.math.BigInteger;
	
	public static var twoPow32(default, null) : java.math.BigInteger;
	
	public static var twoPow63(default, null) : java.math.BigInteger;
	
	public static var twoPow64(default, null) : java.math.BigInteger;
	
	public static var sMax(default, null) : java.math.BigInteger;
	
	public static var sMin(default, null) : java.math.BigInteger;
	
	public static var usMax(default, null) : java.math.BigInteger;
	
	public static var usMin(default, null) : java.math.BigInteger;
	
	public static var lMax(default, null) : java.math.BigInteger;
	
	public static var lMin(default, null) : java.math.BigInteger;
	
	public static var ulMax(default, null) : java.math.BigInteger;
	
	public static var ulMin(default, null) : java.math.BigInteger;
	
	public static var llMax(default, null) : java.math.BigInteger;
	
	public static var llMin(default, null) : java.math.BigInteger;
	
	public static var ullMax(default, null) : java.math.BigInteger;
	
	public static var ullMin(default, null) : java.math.BigInteger;
	
	
}
