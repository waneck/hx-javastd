package sun.security.pkcs11.wrapper;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* class CK_TOKEN_INFO provides information about a token.<p>
* <B>PKCS#11 structure:</B>
* <PRE>
* typedef struct CK_TOKEN_INFO {&nbsp;&nbsp;
*   CK_UTF8CHAR label[32];&nbsp;&nbsp;
*   CK_UTF8CHAR manufacturerID[32];&nbsp;&nbsp;
*   CK_UTF8CHAR model[16];&nbsp;&nbsp;
*   CK_CHAR serialNumber[16];&nbsp;&nbsp;
*   CK_FLAGS flags;&nbsp;&nbsp;
*   CK_ULONG ulMaxSessionCount;&nbsp;&nbsp;
*   CK_ULONG ulSessionCount;&nbsp;&nbsp;
*   CK_ULONG ulMaxRwSessionCount;&nbsp;&nbsp;
*   CK_ULONG ulRwSessionCount;&nbsp;&nbsp;
*   CK_ULONG ulMaxPinLen;&nbsp;&nbsp;
*   CK_ULONG ulMinPinLen;&nbsp;&nbsp;
*   CK_ULONG ulTotalPublicMemory;&nbsp;&nbsp;
*   CK_ULONG ulFreePublicMemory;&nbsp;&nbsp;
*   CK_ULONG ulTotalPrivateMemory;&nbsp;&nbsp;
*   CK_ULONG ulFreePrivateMemory;&nbsp;&nbsp;
*   CK_VERSION hardwareVersion;&nbsp;&nbsp;
*   CK_VERSION firmwareVersion;&nbsp;&nbsp;
*   CK_CHAR utcTime[16];&nbsp;&nbsp;
* } CK_TOKEN_INFO;
* &nbsp;&nbsp;
* </PRE>
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
* @author Martin Schlaeffer <schlaeff@sbox.tugraz.at>
*/
extern class CK_TOKEN_INFO
{
	/**
	* must be blank padded and only the first 32 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR label[32];
	* </PRE>
	*/
	public var label : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* must be blank padded and only the first 32 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR manufacturerID[32];
	* </PRE>
	*/
	public var manufacturerID : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* must be blank padded and only the first 16 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR model[16];
	* </PRE>
	*/
	public var model : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* must be blank padded and only the first 16 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_CHAR serialNumber[16];
	* </PRE>
	*/
	public var serialNumber : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_FLAGS flags;
	* </PRE>
	*/
	public var flags : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulMaxSessionCount;
	* </PRE>
	*/
	public var ulMaxSessionCount : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulSessionCount;
	* </PRE>
	*/
	public var ulSessionCount : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulMaxRwSessionCount;
	* </PRE>
	*/
	public var ulMaxRwSessionCount : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulRwSessionCount;
	* </PRE>
	*/
	public var ulRwSessionCount : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulMaxPinLen;
	* </PRE>
	*/
	public var ulMaxPinLen : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulMinPinLen;
	* </PRE>
	*/
	public var ulMinPinLen : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulTotalPublicMemory;
	* </PRE>
	*/
	public var ulTotalPublicMemory : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulFreePublicMemory;
	* </PRE>
	*/
	public var ulFreePublicMemory : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulTotalPrivateMemory;
	* </PRE>
	*/
	public var ulTotalPrivateMemory : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulFreePrivateMemory;
	* </PRE>
	*/
	public var ulFreePrivateMemory : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VERSION hardwareVersion;
	* </PRE>
	*/
	public var hardwareVersion : sun.security.pkcs11.wrapper.CK_VERSION;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VERSION firmwareVersion;
	* </PRE>
	*/
	public var firmwareVersion : sun.security.pkcs11.wrapper.CK_VERSION;
	
	/**
	* only the first 16 chars will be used
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_CHAR utcTime[16];
	* </PRE>
	*/
	public var utcTime : java.NativeArray<java.StdTypes.Char16>;
	
	/* time */
	@:overload public function new(label : java.NativeArray<java.StdTypes.Char16>, vendor : java.NativeArray<java.StdTypes.Char16>, model : java.NativeArray<java.StdTypes.Char16>, serialNo : java.NativeArray<java.StdTypes.Char16>, flags : haxe.Int64, sessionMax : haxe.Int64, session : haxe.Int64, rwSessionMax : haxe.Int64, rwSession : haxe.Int64, pinLenMax : haxe.Int64, pinLenMin : haxe.Int64, totalPubMem : haxe.Int64, freePubMem : haxe.Int64, totalPrivMem : haxe.Int64, freePrivMem : haxe.Int64, hwVer : sun.security.pkcs11.wrapper.CK_VERSION, fwVer : sun.security.pkcs11.wrapper.CK_VERSION, utcTime : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Returns the string representation of CK_TOKEN_INFO.
	*
	* @return the string representation of CK_TOKEN_INFO
	*/
	@:overload public function toString() : String;
	
	
}
