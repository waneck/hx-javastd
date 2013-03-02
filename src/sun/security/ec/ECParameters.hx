package sun.security.ec;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class implements encoding and decoding of Elliptic Curve parameters
* as specified in RFC 3279.
*
* However, only named curves are currently supported.
*
* ASN.1 from RFC 3279 follows. Note that X9.62 (2005) has added some additional
* options.
*
* <pre>
*    EcpkParameters ::= CHOICE {
*      ecParameters  ECParameters,
*      namedCurve    OBJECT IDENTIFIER,
*      implicitlyCA  NULL }
*
*    ECParameters ::= SEQUENCE {
*       version   ECPVer,          -- version is always 1
*       fieldID   FieldID,         -- identifies the finite field over
*                                  -- which the curve is defined
*       curve     Curve,           -- coefficients a and b of the
*                                  -- elliptic curve
*       base      ECPoint,         -- specifies the base point P
*                                  -- on the elliptic curve
*       order     INTEGER,         -- the order n of the base point
*       cofactor  INTEGER OPTIONAL -- The integer h = #E(Fq)/n
*       }
*
*    ECPVer ::= INTEGER {ecpVer1(1)}
*
*    Curve ::= SEQUENCE {
*       a         FieldElement,
*       b         FieldElement,
*       seed      BIT STRING OPTIONAL }
*
*    FieldElement ::= OCTET STRING
*
*    ECPoint ::= OCTET STRING
* </pre>
*
* @since   1.6
* @author  Andreas Sterbenz
*/
@:require(java6) extern class ECParameters extends java.security.AlgorithmParametersSpi
{
	@:overload public function new() : Void;
	
	@:overload public static function decodePoint(data : java.NativeArray<java.StdTypes.Int8>, curve : java.security.spec.EllipticCurve) : java.security.spec.ECPoint;
	
	@:overload public static function encodePoint(point : java.security.spec.ECPoint, curve : java.security.spec.EllipticCurve) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function getNamedCurve(params : java.security.spec.ECParameterSpec) : sun.security.ec.NamedCurve;
	
	@:overload public static function getCurveName(params : java.security.spec.ECParameterSpec) : String;
	
	@:overload public static function encodeParameters(params : java.security.spec.ECParameterSpec) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function decodeParameters(params : java.NativeArray<java.StdTypes.Int8>) : java.security.spec.ECParameterSpec;
	
	@:overload private function engineInit(paramSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload private function engineInit(params : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload private function engineInit(params : java.NativeArray<java.StdTypes.Int8>, decodingMethod : String) : Void;
	
	@:overload private function engineGetParameterSpec<T : java.security.spec.AlgorithmParameterSpec>(spec : Class<T>) : T;
	
	@:overload private function engineGetEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineGetEncoded(encodingMethod : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function engineToString() : String;
	
	
}
