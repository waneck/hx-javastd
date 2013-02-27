package sun.security.pkcs11.wrapper;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This interface holds constants of the PKCS#11 v2.11 standard.
* This is mainly the content of the 'pkcs11t.h' header file.
*
* Mapping of primitiv data types to Java types:
* <pre>
*   TRUE .......................................... true
*   FALSE ......................................... false
*   CK_BYTE ....................................... byte
*   CK_CHAR ....................................... char
*   CK_UTF8CHAR ................................... char
*   CK_BBOOL ...................................... boolean
*   CK_ULONG ...................................... long
*   CK_LONG ....................................... long
*   CK_FLAGS ...................................... long
*   CK_NOTIFICATION ............................... long
*   CK_SLOT_ID .................................... long
*   CK_SESSION_HANDLE ............................. long
*   CK_USER_TYPE .................................. long
*   CK_SESSION_HANDLE ............................. long
*   CK_STATE ...................................... long
*   CK_OBJECT_HANDLE .............................. long
*   CK_OBJECT_CLASS ............................... long
*   CK_HW_FEATURE_TYPE ............................ long
*   CK_KEY_TYPE ................................... long
*   CK_CERTIFICATE_TYPE ........................... long
*   CK_ATTRIBUTE_TYPE ............................. long
*   CK_VOID_PTR ................................... Object[]
*   CK_BYTE_PTR ................................... byte[]
*   CK_CHAR_PTR ................................... char[]
*   CK_UTF8CHAR_PTR ............................... char[]
*   CK_MECHANISM_TYPE ............................. long
*   CK_RV ......................................... long
*   CK_RSA_PKCS_OAEP_MGF_TYPE ..................... long
*   CK_RSA_PKCS_OAEP_SOURCE_TYPE .................. long
*   CK_RC2_PARAMS ................................. long
*   CK_MAC_GENERAL_PARAMS ......................... long
*   CK_EXTRACT_PARAMS ............................. long
*   CK_PKCS5_PBKD2_PSEUDO_RANDOM_FUNCTION_TYPE .... long
*   CK_PKCS5_PBKDF2_SALT_SOURCE_TYPE .............. long
*   CK_EC_KDF_TYPE ................................ long
*   CK_X9_42_DH_KDF_TYPE .......................... long
* </pre>
*
* @author <a href="mailto:Karl.Scheibelhofer@iaik.at"> Karl Scheibelhofer </a>
* @invariants
*/
extern interface PKCS11Constants
{
	
}
