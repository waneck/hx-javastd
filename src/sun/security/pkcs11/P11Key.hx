package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class P11Key implements java.security.Key implements sun.security.util.Length
{
	@:overload @:final public function getAlgorithm() : String;
	
	@:overload @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload private function writeReplace() : Dynamic;
	
	@:overload public function toString() : String;
	
	/**
	* Return bit length of the key.
	*/
	@:overload public function length() : Int;
	
	/**
	* Returns the name of the primary encoding format of this key,
	* or null if this key does not support encoding.
	* The primary encoding format is
	* named in terms of the appropriate ASN.1 data format, if an
	* ASN.1 specification for this key exists.
	* For example, the name of the ASN.1 data format for public
	* keys is <I>SubjectPublicKeyInfo</I>, as
	* defined by the X.509 standard; in this case, the returned format is
	* <code>"X.509"</code>. Similarly,
	* the name of the ASN.1 data format for private keys is
	* <I>PrivateKeyInfo</I>,
	* as defined by the PKCS #8 standard; in this case, the returned format is
	* <code>"PKCS#8"</code>.
	*
	* @return the primary encoding format of the key.
	*/
	@:overload @:public public function getFormat() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11PrivateKey') @:internal extern class P11Key_P11PrivateKey extends sun.security.pkcs11.P11Key implements java.security.PrivateKey
{
	@:overload override public function getFormat() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11SecretKey') @:internal extern class P11Key_P11SecretKey extends sun.security.pkcs11.P11Key implements javax.crypto.SecretKey
{
	@:overload override public function getFormat() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11TlsMasterSecretKey') @:internal extern class P11Key_P11TlsMasterSecretKey extends sun.security.pkcs11.P11Key.P11Key_P11SecretKey implements sun.security.internal.interfaces.TlsMasterSecret
{
	@:overload public function getMajorVersion() : Int;
	
	@:overload public function getMinorVersion() : Int;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11RSAPrivateKey') @:internal extern class P11Key_P11RSAPrivateKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.RSAPrivateCrtKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getModulus() : java.math.BigInteger;
	
	@:overload public function getPublicExponent() : java.math.BigInteger;
	
	@:overload public function getPrivateExponent() : java.math.BigInteger;
	
	@:overload public function getPrimeP() : java.math.BigInteger;
	
	@:overload public function getPrimeQ() : java.math.BigInteger;
	
	@:overload public function getPrimeExponentP() : java.math.BigInteger;
	
	@:overload public function getPrimeExponentQ() : java.math.BigInteger;
	
	@:overload public function getCrtCoefficient() : java.math.BigInteger;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11RSAPrivateNonCRTKey') @:internal extern class P11Key_P11RSAPrivateNonCRTKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.RSAPrivateKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getModulus() : java.math.BigInteger;
	
	@:overload public function getPrivateExponent() : java.math.BigInteger;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11RSAPublicKey') @:internal extern class P11Key_P11RSAPublicKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.RSAPublicKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getModulus() : java.math.BigInteger;
	
	@:overload public function getPublicExponent() : java.math.BigInteger;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11DSAPublicKey') @:internal extern class P11Key_P11DSAPublicKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.DSAPublicKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getY() : java.math.BigInteger;
	
	@:overload public function getParams() : java.security.interfaces.DSAParams;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11DSAPrivateKey') @:internal extern class P11Key_P11DSAPrivateKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.DSAPrivateKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getX() : java.math.BigInteger;
	
	@:overload public function getParams() : java.security.interfaces.DSAParams;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11DHPrivateKey') @:internal extern class P11Key_P11DHPrivateKey extends sun.security.pkcs11.P11Key implements javax.crypto.interfaces.DHPrivateKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getX() : java.math.BigInteger;
	
	@:overload public function getParams() : javax.crypto.spec.DHParameterSpec;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11DHPublicKey') @:internal extern class P11Key_P11DHPublicKey extends sun.security.pkcs11.P11Key implements javax.crypto.interfaces.DHPublicKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getY() : java.math.BigInteger;
	
	@:overload public function getParams() : javax.crypto.spec.DHParameterSpec;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11ECPrivateKey') @:internal extern class P11Key_P11ECPrivateKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.ECPrivateKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getS() : java.math.BigInteger;
	
	@:overload public function getParams() : java.security.spec.ECParameterSpec;
	
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$P11Key$P11ECPublicKey') @:internal extern class P11Key_P11ECPublicKey extends sun.security.pkcs11.P11Key implements java.security.interfaces.ECPublicKey
{
	@:overload override public function getFormat() : String;
	
	@:overload public function getW() : java.security.spec.ECPoint;
	
	@:overload public function getParams() : java.security.spec.ECParameterSpec;
	
	@:overload override public function toString() : String;
	
	
}
@:internal extern class SessionKeyRef extends java.lang.ref.PhantomReference<sun.security.pkcs11.P11Key> implements java.lang.Comparable<sun.security.pkcs11.P11Key.SessionKeyRef>
{
	@:overload public function compareTo(other : sun.security.pkcs11.P11Key.SessionKeyRef) : Int;
	
	
}
