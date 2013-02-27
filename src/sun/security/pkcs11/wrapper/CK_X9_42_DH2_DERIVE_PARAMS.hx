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
* class CK_X9_42_DH2_DERIVE_PARAMS provides the parameters to the
* CKM_X9_42_DH_HYBRID_DERIVE and CKM_X9_42_MQV_DERIVE mechanisms.<p>
* <B>PKCS#11 structure:</B>
* <PRE>
* typedef struct CK_X9_42_DH2_DERIVE_PARAMS {
*   CK_X9_42_DH_KDF_TYPE kdf;
*   CK_ULONG ulOtherInfoLen;
*   CK_BYTE_PTR pOtherInfo;
*   CK_ULONG ulPublicDataLen;
*   CK_BYTE_PTR pPublicData;
*   CK_ULONG ulPrivateDataLen;
*   CK_OBJECT_HANDLE hPrivateData;
*   CK_ULONG ulPublicDataLen2;
*   CK_BYTE_PTR pPublicData2;
* } CK_X9_42_DH2_DERIVE_PARAMS;
* </PRE>
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
*/
extern class CK_X9_42_DH2_DERIVE_PARAMS
{
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_X9_42_DH_KDF_TYPE kdf;
	* </PRE>
	*/
	public var kdf : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulOtherInfoLen;
	*   CK_BYTE_PTR pOtherInfo;
	* </PRE>
	*/
	public var pOtherInfo : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulPublicDataLen;
	*   CK_BYTE_PTR pPublicData;
	* </PRE>
	*/
	public var pPublicData : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulPrivateDataLen;
	* </PRE>
	*/
	public var ulPrivateDataLen : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_OBJECT_HANDLE hPrivateData;
	* </PRE>
	*/
	public var hPrivateData : haxe.Int64;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_ULONG ulPublicDataLen2;
	*   CK_BYTE_PTR pPublicData2;
	* </PRE>
	*/
	public var pPublicData2 : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the string representation of CK_PKCS5_PBKD2_PARAMS.
	*
	* @return the string representation of CK_PKCS5_PBKD2_PARAMS
	*/
	@:overload public function toString() : String;
	
	
}
