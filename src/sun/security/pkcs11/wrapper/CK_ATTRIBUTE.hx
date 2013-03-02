package sun.security.pkcs11.wrapper;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
*/
/* Copyright  (c) 2002 Graz University of Technology. All rights reserved.
*
* Redistribution and use in  source and binary forms, with or without
* modification, are permitted  provided that the following conditions are met:
*
* 1. Redistributions of  source code must retain the above copyright notice,
*    this list of conditions and the following disclaimer.
*
* 2. Redistributions in  binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* 3. The end-user documentation included with the redistribution, if any, must
*    include the following acknowledgment:
*
*    "This product includes software developed by IAIK of Graz University of
*     Technology."
*
*    Alternately, this acknowledgment may appear in the software itself, if
*    and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Graz University of Technology" and "IAIK of Graz University of
*    Technology" must not be used to endorse or promote products derived from
*    this software without prior written permission.
*
* 5. Products derived from this software may not be called
*    "IAIK PKCS Wrapper", nor may "IAIK" appear in their name, without prior
*    written permission of Graz University of Technology.
*
*  THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESSED OR IMPLIED
*  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
*  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
*  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE LICENSOR BE
*  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
*  OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
*  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
*  OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
*  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
*  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
*  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
*  POSSIBILITY  OF SUCH DAMAGE.
*/
/**
* class CK_ATTRIBUTE includes the type, value and length of an attribute.<p>
* <B>PKCS#11 structure:</B>
* <PRE>
* typedef struct CK_ATTRIBUTE {&nbsp;&nbsp;
*   CK_ATTRIBUTE_TYPE type;&nbsp;&nbsp;
*   CK_VOID_PTR pValue;&nbsp;&nbsp;
*   CK_ULONG ulValueLen;
* } CK_ATTRIBUTE;
* </PRE>
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
* @author Martin Schlaeffer <schlaeff@sbox.tugraz.at>
*/
extern class CK_ATTRIBUTE
{
	public static var TOKEN_FALSE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var SENSITIVE_FALSE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var EXTRACTABLE_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var ENCRYPT_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var DECRYPT_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var WRAP_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var UNWRAP_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var SIGN_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var VERIFY_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var SIGN_RECOVER_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var VERIFY_RECOVER_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var DERIVE_TRUE(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var ENCRYPT_NULL(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var DECRYPT_NULL(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var WRAP_NULL(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	public static var UNWRAP_NULL(default, null) : sun.security.pkcs11.wrapper.CK_ATTRIBUTE;
	
	@:overload public function new() : Void;
	
	@:overload public function new(type : haxe.Int64) : Void;
	
	@:overload public function new(type : haxe.Int64, pValue : Dynamic) : Void;
	
	@:overload public function new(type : haxe.Int64, value : Bool) : Void;
	
	@:overload public function new(type : haxe.Int64, value : haxe.Int64) : Void;
	
	@:overload public function new(type : haxe.Int64, value : java.math.BigInteger) : Void;
	
	@:overload public function getBigInteger() : java.math.BigInteger;
	
	@:overload public function getBoolean() : Bool;
	
	@:overload public function getCharArray() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getLong() : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ATTRIBUTE_TYPE type;
	* </PRE>
	*/
	public var type : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VOID_PTR pValue;
	*   CK_ULONG ulValueLen;
	* </PRE>
	*/
	public var pValue : Dynamic;
	
	/**
	* Returns the string representation of CK_ATTRIBUTE.
	*
	* @return the string representation of CK_ATTRIBUTE
	*/
	@:overload public function toString() : String;
	
	
}
