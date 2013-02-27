package com.sun.xml.internal.fastinfoset.algorithm;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class BuiltInEncodingAlgorithmFactory
{
	public static var hexadecimalEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.HexadecimalEncodingAlgorithm;
	
	public static var base64EncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.BASE64EncodingAlgorithm;
	
	public static var booleanEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.BooleanEncodingAlgorithm;
	
	public static var shortEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.ShortEncodingAlgorithm;
	
	public static var intEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.IntEncodingAlgorithm;
	
	public static var longEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.LongEncodingAlgorithm;
	
	public static var floatEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.FloatEncodingAlgorithm;
	
	public static var doubleEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.DoubleEncodingAlgorithm;
	
	public static var uuidEncodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.algorithm.UUIDEncodingAlgorithm;
	
	@:overload public static function getAlgorithm(index : Int) : com.sun.xml.internal.fastinfoset.algorithm.BuiltInEncodingAlgorithm;
	
	
}
