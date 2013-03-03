package com.sun.org.apache.xerces.internal.xs.datatypes;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern interface XSDecimal
{
	/**
	* @return the <code>BigDecimal</code> representation of this object
	*/
	@:overload @:public public function getBigDecimal() : java.math.BigDecimal;
	
	/**
	* @return the <code>BigInteger</code> representation of this object
	* @exception NumberFormatException if the value cannot be represented as a <code>BigInteger</code>
	*/
	@:overload @:public public function getBigInteger() : java.math.BigInteger;
	
	/**
	* @return the long value representation of this object
	* @exception NumberFormatException if the value cannot be represented as a <code>long</code>
	*/
	@:overload @:public public function getLong() : haxe.Int64;
	
	/**
	* @return the int value representation of this object
	* @exception NumberFormatException if the value cannot be represented as a <code>int</code>
	*/
	@:overload @:public public function getInt() : Int;
	
	/**
	* @return the short value representation of this object
	* @exception NumberFormatException if the value cannot be represented as a <code>short</code>
	*/
	@:overload @:public public function getShort() : java.StdTypes.Int16;
	
	/**
	* @return the byte value representation of this object
	* @exception NumberFormatException if the value cannot be represented as a <code>byte</code>
	*/
	@:overload @:public public function getByte() : java.StdTypes.Int8;
	
	
}
