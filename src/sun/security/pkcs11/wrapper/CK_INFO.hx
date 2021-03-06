package sun.security.pkcs11.wrapper;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
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
* class  CK_INFO provides general information about Cryptoki.<p>
* <B>PKCS#11 structure:</B>
* <PRE>
*  typedef struct CK_INFO {&nbsp;&nbsp;
*    CK_VERSION cryptokiVersion;&nbsp;&nbsp;
*    CK_UTF8CHAR manufacturerID[32];&nbsp;&nbsp;
*    CK_FLAGS flags;&nbsp;&nbsp;
*    CK_UTF8CHAR libraryDescription[32];&nbsp;&nbsp;
*    CK_VERSION libraryVersion;&nbsp;&nbsp;
*  } CK_INFO;
* </PRE>
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
* @author Martin Schlaeffer <schlaeff@sbox.tugraz.at>
*/
extern class CK_INFO
{
	/**
	* Cryptoki interface version number<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VERSION cryptokiVersion;
	* </PRE>
	*/
	@:public public var cryptokiVersion : sun.security.pkcs11.wrapper.CK_VERSION;
	
	/**
	* ID of the Cryptoki library manufacturer. must be blank
	* padded - only the first 32 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR manufacturerID[32];
	* </PRE>
	*/
	@:public public var manufacturerID : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* bit flags reserved for future versions. must be zero<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_FLAGS flags;
	* </PRE>
	*/
	@:public public var flags : haxe.Int64;
	
	/**
	* must be blank padded - only the first 32 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR libraryDescription[32];
	* </PRE>
	*/
	@:public public var libraryDescription : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Cryptoki library version number<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VERSION libraryVersion;
	* </PRE>
	*/
	@:public public var libraryVersion : sun.security.pkcs11.wrapper.CK_VERSION;
	
	@:overload @:public public function new(cryptoVer : sun.security.pkcs11.wrapper.CK_VERSION, vendor : java.NativeArray<java.StdTypes.Char16>, flags : haxe.Int64, libDesc : java.NativeArray<java.StdTypes.Char16>, libVer : sun.security.pkcs11.wrapper.CK_VERSION) : Void;
	
	/**
	* Returns the string representation of CK_INFO.
	*
	* @return the string representation of CK_INFO
	*/
	@:overload @:public public function toString() : String;
	
	
}
