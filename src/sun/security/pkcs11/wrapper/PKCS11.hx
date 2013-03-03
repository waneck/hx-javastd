package sun.security.pkcs11.wrapper;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* This is the default implementation of the PKCS11 interface. IT connects to
* the pkcs11wrapper.dll file, which is the native part of this library.
* The strange and awkward looking initialization was chosen to avoid calling
* loadLibrary from a static initialization block, because this would complicate
* the use in applets.
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
* @author Martin Schlaeffer <schlaeff@sbox.tugraz.at>
* @invariants (pkcs11ModulePath_ <> null)
*/
extern class PKCS11
{
	@:overload @:public @:static public static function loadNative() : Void;
	
	@:overload @:public @:static @:synchronized public static function getInstance(pkcs11ModulePath : String, functionList : String, pInitArgs : sun.security.pkcs11.wrapper.CK_C_INITIALIZE_ARGS, omitInitialize : Bool) : sun.security.pkcs11.wrapper.PKCS11;
	
	/**
	* C_Finalize indicates that an application is done with the
	* Cryptoki library
	* (General-purpose)
	*
	* @param pReserved is reserved. Should be NULL_PTR
	*         (PKCS#11 param: CK_VOID_PTR pReserved)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pReserved == null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_Finalize(pReserved : Dynamic) : Void;
	
	/**
	* C_GetInfo returns general information about Cryptoki.
	* (General-purpose)
	*
	* @return the information.
	*         (PKCS#11 param: CK_INFO_PTR pInfo)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetInfo() : sun.security.pkcs11.wrapper.CK_INFO;
	
	/**
	* C_GetSlotList obtains a list of slots in the system.
	* (Slot and token management)
	*
	* @param tokenPresent if true only Slot IDs with a token are returned
	*         (PKCS#11 param: CK_BBOOL tokenPresent)
	* @return a long array of slot IDs and number of Slot IDs
	*         (PKCS#11 param: CK_SLOT_ID_PTR pSlotList, CK_ULONG_PTR pulCount)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetSlotList(tokenPresent : Bool) : java.NativeArray<haxe.Int64>;
	
	/**
	* C_GetSlotInfo obtains information about a particular slot in
	* the system.
	* (Slot and token management)
	*
	* @param slotID the ID of the slot
	*         (PKCS#11 param: CK_SLOT_ID slotID)
	* @return the slot information
	*         (PKCS#11 param: CK_SLOT_INFO_PTR pInfo)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetSlotInfo(slotID : haxe.Int64) : sun.security.pkcs11.wrapper.CK_SLOT_INFO;
	
	/**
	* C_GetTokenInfo obtains information about a particular token
	* in the system.
	* (Slot and token management)
	*
	* @param slotID ID of the token's slot
	*         (PKCS#11 param: CK_SLOT_ID slotID)
	* @return the token information
	*         (PKCS#11 param: CK_TOKEN_INFO_PTR pInfo)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetTokenInfo(slotID : haxe.Int64) : sun.security.pkcs11.wrapper.CK_TOKEN_INFO;
	
	/**
	* C_GetMechanismList obtains a list of mechanism types
	* supported by a token.
	* (Slot and token management)
	*
	* @param slotID ID of the token's slot
	*         (PKCS#11 param: CK_SLOT_ID slotID)
	* @return a long array of mechanism types and number of mechanism types
	*         (PKCS#11 param: CK_MECHANISM_TYPE_PTR pMechanismList,
	*                         CK_ULONG_PTR pulCount)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetMechanismList(slotID : haxe.Int64) : java.NativeArray<haxe.Int64>;
	
	/**
	* C_GetMechanismInfo obtains information about a particular
	* mechanism possibly supported by a token.
	* (Slot and token management)
	*
	* @param slotID ID of the token's slot
	*         (PKCS#11 param: CK_SLOT_ID slotID)
	* @param type type of mechanism
	*         (PKCS#11 param: CK_MECHANISM_TYPE type)
	* @return the mechanism info
	*         (PKCS#11 param: CK_MECHANISM_INFO_PTR pInfo)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetMechanismInfo(slotID : haxe.Int64, type : haxe.Int64) : sun.security.pkcs11.wrapper.CK_MECHANISM_INFO;
	
	/**
	* C_OpenSession opens a session between an application and a
	* token.
	* (Session management)
	*
	* @param slotID the slot's ID
	*         (PKCS#11 param: CK_SLOT_ID slotID)
	* @param flags of CK_SESSION_INFO
	*         (PKCS#11 param: CK_FLAGS flags)
	* @param pApplication passed to callback
	*         (PKCS#11 param: CK_VOID_PTR pApplication)
	* @param Notify the callback function
	*         (PKCS#11 param: CK_NOTIFY Notify)
	* @return the session handle
	*         (PKCS#11 param: CK_SESSION_HANDLE_PTR phSession)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_OpenSession(slotID : haxe.Int64, flags : haxe.Int64, pApplication : Dynamic, Notify : sun.security.pkcs11.wrapper.CK_NOTIFY) : haxe.Int64;
	
	/**
	* C_CloseSession closes a session between an application and a
	* token.
	* (Session management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_CloseSession(hSession : haxe.Int64) : Void;
	
	/**
	* C_GetSessionInfo obtains information about the session.
	* (Session management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @return the session info
	*         (PKCS#11 param: CK_SESSION_INFO_PTR pInfo)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetSessionInfo(hSession : haxe.Int64) : sun.security.pkcs11.wrapper.CK_SESSION_INFO;
	
	/**
	* C_GetOperationState obtains the state of the cryptographic operation
	* in a session.
	* (Session management)
	*
	* @param hSession session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @return the state and the state length
	*         (PKCS#11 param: CK_BYTE_PTR pOperationState,
	*                         CK_ULONG_PTR pulOperationStateLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetOperationState(hSession : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C_SetOperationState restores the state of the cryptographic
	* operation in a session.
	* (Session management)
	*
	* @param hSession session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pOperationState the state and the state length
	*         (PKCS#11 param: CK_BYTE_PTR pOperationState,
	*                         CK_ULONG ulOperationStateLen)
	* @param hEncryptionKey en/decryption key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hEncryptionKey)
	* @param hAuthenticationKey sign/verify key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hAuthenticationKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_SetOperationState(hSession : haxe.Int64, pOperationState : java.NativeArray<java.StdTypes.Int8>, hEncryptionKey : haxe.Int64, hAuthenticationKey : haxe.Int64) : Void;
	
	/**
	* C_Login logs a user into a token.
	* (Session management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param userType the user type
	*         (PKCS#11 param: CK_USER_TYPE userType)
	* @param pPin the user's PIN and the length of the PIN
	*         (PKCS#11 param: CK_CHAR_PTR pPin, CK_ULONG ulPinLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_Login(hSession : haxe.Int64, userType : haxe.Int64, pPin : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* C_Logout logs a user out from a token.
	* (Session management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_Logout(hSession : haxe.Int64) : Void;
	
	/**
	* C_CreateObject creates a new object.
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pTemplate the object's template and number of attributes in
	*         template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @return the object's handle
	*         (PKCS#11 param: CK_OBJECT_HANDLE_PTR phObject)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_CreateObject(hSession : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	/**
	* C_CopyObject copies an object, creating a new object for the
	* copy.
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param hObject the object's handle
	*         (PKCS#11 param: CK_OBJECT_HANDLE hObject)
	* @param pTemplate the template for the new object and number of attributes
	*         in template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @return the handle of the copy
	*         (PKCS#11 param: CK_OBJECT_HANDLE_PTR phNewObject)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_CopyObject(hSession : haxe.Int64, hObject : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	/**
	* C_DestroyObject destroys an object.
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param hObject the object's handle
	*         (PKCS#11 param: CK_OBJECT_HANDLE hObject)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_DestroyObject(hSession : haxe.Int64, hObject : haxe.Int64) : Void;
	
	/**
	* C_GetAttributeValue obtains the value of one or more object
	* attributes. The template attributes also receive the values.
	* (Object management)
	* note: in PKCS#11 pTemplate and the result template are the same
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param hObject the object's handle
	*         (PKCS#11 param: CK_OBJECT_HANDLE hObject)
	* @param pTemplate specifies the attributes and number of attributes to get
	*                  The template attributes also receive the values.
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pTemplate <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_GetAttributeValue(hSession : haxe.Int64, hObject : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : Void;
	
	/**
	* C_SetAttributeValue modifies the value of one or more object
	* attributes
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param hObject the object's handle
	*         (PKCS#11 param: CK_OBJECT_HANDLE hObject)
	* @param pTemplate specifies the attributes and values to get; number of
	*         attributes in the template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pTemplate <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_SetAttributeValue(hSession : haxe.Int64, hObject : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : Void;
	
	/**
	* C_FindObjectsInit initializes a search for token and session
	* objects that match a template.
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pTemplate the object's attribute values to match and the number of
	*         attributes in search template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_FindObjectsInit(hSession : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : Void;
	
	/**
	* C_FindObjects continues a search for token and session
	* objects that match a template, obtaining additional object
	* handles.
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param ulMaxObjectCount the max. object handles to get
	*         (PKCS#11 param: CK_ULONG ulMaxObjectCount)
	* @return the object's handles and the actual number of objects returned
	*         (PKCS#11 param: CK_ULONG_PTR pulObjectCount)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_FindObjects(hSession : haxe.Int64, ulMaxObjectCount : haxe.Int64) : java.NativeArray<haxe.Int64>;
	
	/**
	* C_FindObjectsFinal finishes a search for token and session
	* objects.
	* (Object management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_FindObjectsFinal(hSession : haxe.Int64) : Void;
	
	/**
	* C_EncryptInit initializes an encryption operation.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the encryption mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hKey the handle of the encryption key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_EncryptInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	/**
	* C_Encrypt encrypts single-part data.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pData the data to get encrypted and the data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG ulDataLen)
	* @return the encrypted data and the encrypted data's length
	*         (PKCS#11 param: CK_BYTE_PTR pEncryptedData,
	*                         CK_ULONG_PTR pulEncryptedDataLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pData <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_Encrypt(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	/**
	* C_EncryptUpdate continues a multiple-part encryption
	* operation.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pPart the data part to get encrypted and the data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pPart, CK_ULONG ulPartLen)
	* @return the encrypted data part and the encrypted data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pEncryptedPart,
	CK_ULONG_PTR pulEncryptedPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pPart <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_EncryptUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	/**
	* C_EncryptFinal finishes a multiple-part encryption
	* operation.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @return the last encrypted data part and the last data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pLastEncryptedPart,
	CK_ULONG_PTR pulLastEncryptedPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_EncryptFinal(hSession : haxe.Int64, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	/**
	* C_DecryptInit initializes a decryption operation.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the decryption mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hKey the handle of the decryption key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_DecryptInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	/**
	* C_Decrypt decrypts encrypted data in a single part.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pEncryptedData the encrypted data to get decrypted and the
	*         encrypted data's length
	*         (PKCS#11 param: CK_BYTE_PTR pEncryptedData,
	*                         CK_ULONG ulEncryptedDataLen)
	* @return the decrypted data and the data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG_PTR pulDataLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pEncryptedPart <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_Decrypt(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	/**
	* C_DecryptUpdate continues a multiple-part decryption
	* operation.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pEncryptedPart the encrypted data part to get decrypted and the
	*         encrypted data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pEncryptedPart,
	*                         CK_ULONG ulEncryptedPartLen)
	* @return the decrypted data part and the data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pPart, CK_ULONG_PTR pulPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pEncryptedPart <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_DecryptUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	/**
	* C_DecryptFinal finishes a multiple-part decryption
	* operation.
	* (Encryption and decryption)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @return the last decrypted data part and the last data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pLastPart,
	*                         CK_ULONG_PTR pulLastPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_DecryptFinal(hSession : haxe.Int64, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	/**
	* C_DigestInit initializes a message-digesting operation.
	* (Message digesting)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the digesting mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_DigestInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM) : Void;
	
	/**
	* C_Digest digests data in a single part.
	* (Message digesting)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param data the data to get digested and the data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG ulDataLen)
	* @return the message digest and the length of the message digest
	*         (PKCS#11 param: CK_BYTE_PTR pDigest, CK_ULONG_PTR pulDigestLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (data <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_DigestSingle(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, digest : java.NativeArray<java.StdTypes.Int8>, digestOfs : Int, digestLen : Int) : Int;
	
	/**
	* C_DigestUpdate continues a multiple-part message-digesting
	* operation.
	* (Message digesting)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pPart the data to get digested and the data's length
	*         (PKCS#11 param: CK_BYTE_PTR pPart, CK_ULONG ulPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pPart <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_DigestUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : Void;
	
	/**
	* C_DigestKey continues a multi-part message-digesting
	* operation, by digesting the value of a secret key as part of
	* the data already digested.
	* (Message digesting)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param hKey the handle of the secret key to be digested
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_DigestKey(hSession : haxe.Int64, hKey : haxe.Int64) : Void;
	
	/**
	* C_DigestFinal finishes a multiple-part message-digesting
	* operation.
	* (Message digesting)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @return the message digest and the length of the message digest
	*         (PKCS#11 param: CK_BYTE_PTR pDigest, CK_ULONG_PTR pulDigestLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_DigestFinal(hSession : haxe.Int64, pDigest : java.NativeArray<java.StdTypes.Int8>, digestOfs : Int, digestLen : Int) : Int;
	
	/**
	* C_SignInit initializes a signature (private key encryption)
	* operation, where the signature is (will be) an appendix to
	* the data, and plaintext cannot be recovered from the
	* signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the signature mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hKey the handle of the signature key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_SignInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	/**
	* C_Sign signs (encrypts with private key) data in a single
	* part, where the signature is (will be) an appendix to the
	* data, and plaintext cannot be recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pData the data to sign and the data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG ulDataLen)
	* @return the signature and the signature's length
	*         (PKCS#11 param: CK_BYTE_PTR pSignature,
	*                         CK_ULONG_PTR pulSignatureLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pData <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_Sign(hSession : haxe.Int64, pData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C_SignUpdate continues a multiple-part signature operation,
	* where the signature is (will be) an appendix to the data,
	* and plaintext cannot be recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pPart the data part to sign and the data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pPart, CK_ULONG ulPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pPart <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_SignUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : Void;
	
	/**
	* C_SignFinal finishes a multiple-part signature operation,
	* returning the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @return the signature and the signature's length
	*         (PKCS#11 param: CK_BYTE_PTR pSignature,
	*                         CK_ULONG_PTR pulSignatureLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_SignFinal(hSession : haxe.Int64, expectedLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C_SignRecoverInit initializes a signature operation, where
	* the data can be recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the signature mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hKey the handle of the signature key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_SignRecoverInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	/**
	* C_SignRecover signs data in a single operation, where the
	* data can be recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pData the data to sign and the data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG ulDataLen)
	* @return the signature and the signature's length
	*         (PKCS#11 param: CK_BYTE_PTR pSignature,
	*                         CK_ULONG_PTR pulSignatureLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pData <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_SignRecover(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOufs : Int, outLen : Int) : Int;
	
	/**
	* C_VerifyInit initializes a verification operation, where the
	* signature is an appendix to the data, and plaintext cannot
	* cannot be recovered from the signature (e.g. DSA).
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the verification mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hKey the handle of the verification key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_VerifyInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	/**
	* C_Verify verifies a signature in a single-part operation,
	* where the signature is an appendix to the data, and plaintext
	* cannot be recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pData the signed data and the signed data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG ulDataLen)
	* @param pSignature the signature to verify and the signature's length
	*         (PKCS#11 param: CK_BYTE_PTR pSignature, CK_ULONG ulSignatureLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pData <> null) and (pSignature <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_Verify(hSession : haxe.Int64, pData : java.NativeArray<java.StdTypes.Int8>, pSignature : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* C_VerifyUpdate continues a multiple-part verification
	* operation, where the signature is an appendix to the data,
	* and plaintext cannot be recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pPart the signed data part and the signed data part's length
	*         (PKCS#11 param: CK_BYTE_PTR pPart, CK_ULONG ulPartLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pPart <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_VerifyUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : Void;
	
	/**
	* C_VerifyFinal finishes a multiple-part verification
	* operation, checking the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pSignature the signature to verify and the signature's length
	*         (PKCS#11 param: CK_BYTE_PTR pSignature, CK_ULONG ulSignatureLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pSignature <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_VerifyFinal(hSession : haxe.Int64, pSignature : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* C_VerifyRecoverInit initializes a signature verification
	* operation, where the data is recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the verification mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hKey the handle of the verification key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_VerifyRecoverInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	/**
	* C_VerifyRecover verifies a signature in a single-part
	* operation, where the data is recovered from the signature.
	* (Signing and MACing)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pSignature the signature to verify and the signature's length
	*         (PKCS#11 param: CK_BYTE_PTR pSignature, CK_ULONG ulSignatureLen)
	* @return the recovered data and the recovered data's length
	*         (PKCS#11 param: CK_BYTE_PTR pData, CK_ULONG_PTR pulDataLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pSignature <> null)
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_VerifyRecover(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOufs : Int, outLen : Int) : Int;
	
	/**
	* C_GenerateKey generates a secret key, creating a new key
	* object.
	* (Key management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the key generation mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param pTemplate the template for the new key and the number of
	*         attributes in the template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @return the handle of the new key
	*         (PKCS#11 param: CK_OBJECT_HANDLE_PTR phKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_GenerateKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	/**
	* C_GenerateKeyPair generates a public-key/private-key pair,
	* creating new key objects.
	* (Key management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the key generation mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param pPublicKeyTemplate the template for the new public key and the
	*         number of attributes in the template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pPublicKeyTemplate,
	*                         CK_ULONG ulPublicKeyAttributeCount)
	* @param pPrivateKeyTemplate the template for the new private key and the
	*         number of attributes in the template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pPrivateKeyTemplate
	*                         CK_ULONG ulPrivateKeyAttributeCount)
	* @return a long array with exactly two elements and the public key handle
	*         as the first element and the private key handle as the second
	*         element
	*         (PKCS#11 param: CK_OBJECT_HANDLE_PTR phPublicKey,
	*                         CK_OBJECT_HANDLE_PTR phPrivateKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pMechanism <> null)
	* @postconditions (result <> null) and (result.length == 2)
	*/
	@:overload @:public @:native public function C_GenerateKeyPair(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, pPublicKeyTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>, pPrivateKeyTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : java.NativeArray<haxe.Int64>;
	
	/**
	* C_WrapKey wraps (i.e., encrypts) a key.
	* (Key management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the wrapping mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hWrappingKey the handle of the wrapping key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hWrappingKey)
	* @param hKey the handle of the key to be wrapped
	*         (PKCS#11 param: CK_OBJECT_HANDLE hKey)
	* @return the wrapped key and the length of the wrapped key
	*         (PKCS#11 param: CK_BYTE_PTR pWrappedKey,
	*                         CK_ULONG_PTR pulWrappedKeyLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public @:native public function C_WrapKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hWrappingKey : haxe.Int64, hKey : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C_UnwrapKey unwraps (decrypts) a wrapped key, creating a new
	* key object.
	* (Key management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the unwrapping mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hUnwrappingKey the handle of the unwrapping key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hUnwrappingKey)
	* @param pWrappedKey the wrapped key to unwrap and the wrapped key's length
	*         (PKCS#11 param: CK_BYTE_PTR pWrappedKey, CK_ULONG ulWrappedKeyLen)
	* @param pTemplate the template for the new key and the number of
	*         attributes in the template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @return the handle of the unwrapped key
	*         (PKCS#11 param: CK_OBJECT_HANDLE_PTR phKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pWrappedKey <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_UnwrapKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hUnwrappingKey : haxe.Int64, pWrappedKey : java.NativeArray<java.StdTypes.Int8>, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	/**
	* C_DeriveKey derives a key from a base key, creating a new key
	* object.
	* (Key management)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pMechanism the key derivation mechanism
	*         (PKCS#11 param: CK_MECHANISM_PTR pMechanism)
	* @param hBaseKey the handle of the base key
	*         (PKCS#11 param: CK_OBJECT_HANDLE hBaseKey)
	* @param pTemplate the template for the new key and the number of
	*         attributes in the template
	*         (PKCS#11 param: CK_ATTRIBUTE_PTR pTemplate, CK_ULONG ulCount)
	* @return the handle of the derived key
	*         (PKCS#11 param: CK_OBJECT_HANDLE_PTR phKey)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public @:native public function C_DeriveKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hBaseKey : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	/**
	* C_SeedRandom mixes additional seed material into the token's
	* random number generator.
	* (Random number generation)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param pSeed the seed material and the seed material's length
	*         (PKCS#11 param: CK_BYTE_PTR pSeed, CK_ULONG ulSeedLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (pSeed <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_SeedRandom(hSession : haxe.Int64, pSeed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* C_GenerateRandom generates random data.
	* (Random number generation)
	*
	* @param hSession the session's handle
	*         (PKCS#11 param: CK_SESSION_HANDLE hSession)
	* @param RandomData receives the random data and the length of RandomData
	*         is the length of random data to be generated
	*         (PKCS#11 param: CK_BYTE_PTR pRandomData, CK_ULONG ulRandomLen)
	* @exception PKCS11Exception If function returns other value than CKR_OK.
	* @preconditions (randomData <> null)
	* @postconditions
	*/
	@:overload @:public @:native public function C_GenerateRandom(hSession : haxe.Int64, randomData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the string representation of this object.
	*
	* @return The string representation of object
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Calls disconnect() to cleanup the native part of the wrapper. Once this
	* method is called, this object cannot be used any longer. Any subsequent
	* call to a C_* method will result in a runtime exception.
	*
	* @exception Throwable If finalization fails.
	*/
	@:overload @:public public function finalize() : Void;
	
	
}
@:native('sun$security$pkcs11$wrapper$PKCS11$SynchronizedPKCS11') @:internal extern class PKCS11_SynchronizedPKCS11 extends sun.security.pkcs11.wrapper.PKCS11
{
	@:overload @:public @:synchronized override public function C_Finalize(pReserved : Dynamic) : Void;
	
	@:overload @:public @:synchronized override public function C_GetInfo() : sun.security.pkcs11.wrapper.CK_INFO;
	
	@:overload @:public @:synchronized override public function C_GetSlotList(tokenPresent : Bool) : java.NativeArray<haxe.Int64>;
	
	@:overload @:public @:synchronized override public function C_GetSlotInfo(slotID : haxe.Int64) : sun.security.pkcs11.wrapper.CK_SLOT_INFO;
	
	@:overload @:public @:synchronized override public function C_GetTokenInfo(slotID : haxe.Int64) : sun.security.pkcs11.wrapper.CK_TOKEN_INFO;
	
	@:overload @:public @:synchronized override public function C_GetMechanismList(slotID : haxe.Int64) : java.NativeArray<haxe.Int64>;
	
	@:overload @:public @:synchronized override public function C_GetMechanismInfo(slotID : haxe.Int64, type : haxe.Int64) : sun.security.pkcs11.wrapper.CK_MECHANISM_INFO;
	
	@:overload @:public @:synchronized override public function C_OpenSession(slotID : haxe.Int64, flags : haxe.Int64, pApplication : Dynamic, Notify : sun.security.pkcs11.wrapper.CK_NOTIFY) : haxe.Int64;
	
	@:overload @:public @:synchronized override public function C_CloseSession(hSession : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_GetSessionInfo(hSession : haxe.Int64) : sun.security.pkcs11.wrapper.CK_SESSION_INFO;
	
	@:overload @:public @:synchronized override public function C_Login(hSession : haxe.Int64, userType : haxe.Int64, pPin : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:public @:synchronized override public function C_Logout(hSession : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_CreateObject(hSession : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	@:overload @:public @:synchronized override public function C_CopyObject(hSession : haxe.Int64, hObject : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	@:overload @:public @:synchronized override public function C_DestroyObject(hSession : haxe.Int64, hObject : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_GetAttributeValue(hSession : haxe.Int64, hObject : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : Void;
	
	@:overload @:public @:synchronized override public function C_SetAttributeValue(hSession : haxe.Int64, hObject : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : Void;
	
	@:overload @:public @:synchronized override public function C_FindObjectsInit(hSession : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : Void;
	
	@:overload @:public @:synchronized override public function C_FindObjects(hSession : haxe.Int64, ulMaxObjectCount : haxe.Int64) : java.NativeArray<haxe.Int64>;
	
	@:overload @:public @:synchronized override public function C_FindObjectsFinal(hSession : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_EncryptInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_Encrypt(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_EncryptUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_EncryptFinal(hSession : haxe.Int64, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_DecryptInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_Decrypt(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_DecryptUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_DecryptFinal(hSession : haxe.Int64, directOut : haxe.Int64, out : java.NativeArray<java.StdTypes.Int8>, outOfs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_DigestInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM) : Void;
	
	@:overload @:public @:synchronized override public function C_DigestSingle(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, digest : java.NativeArray<java.StdTypes.Int8>, digestOfs : Int, digestLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_DigestUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : Void;
	
	@:overload @:public @:synchronized override public function C_DigestKey(hSession : haxe.Int64, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_DigestFinal(hSession : haxe.Int64, pDigest : java.NativeArray<java.StdTypes.Int8>, digestOfs : Int, digestLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_SignInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_Sign(hSession : haxe.Int64, pData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:synchronized override public function C_SignUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : Void;
	
	@:overload @:public @:synchronized override public function C_SignFinal(hSession : haxe.Int64, expectedLen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:synchronized override public function C_SignRecoverInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_SignRecover(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOufs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_VerifyInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_Verify(hSession : haxe.Int64, pData : java.NativeArray<java.StdTypes.Int8>, pSignature : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:synchronized override public function C_VerifyUpdate(hSession : haxe.Int64, directIn : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int) : Void;
	
	@:overload @:public @:synchronized override public function C_VerifyFinal(hSession : haxe.Int64, pSignature : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:synchronized override public function C_VerifyRecoverInit(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hKey : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized override public function C_VerifyRecover(hSession : haxe.Int64, _in : java.NativeArray<java.StdTypes.Int8>, inOfs : Int, inLen : Int, out : java.NativeArray<java.StdTypes.Int8>, outOufs : Int, outLen : Int) : Int;
	
	@:overload @:public @:synchronized override public function C_GenerateKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	@:overload @:public @:synchronized override public function C_GenerateKeyPair(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, pPublicKeyTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>, pPrivateKeyTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : java.NativeArray<haxe.Int64>;
	
	@:overload @:public @:synchronized override public function C_WrapKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hWrappingKey : haxe.Int64, hKey : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:synchronized override public function C_UnwrapKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hUnwrappingKey : haxe.Int64, pWrappedKey : java.NativeArray<java.StdTypes.Int8>, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	@:overload @:public @:synchronized override public function C_DeriveKey(hSession : haxe.Int64, pMechanism : sun.security.pkcs11.wrapper.CK_MECHANISM, hBaseKey : haxe.Int64, pTemplate : java.NativeArray<sun.security.pkcs11.wrapper.CK_ATTRIBUTE>) : haxe.Int64;
	
	@:overload @:public @:synchronized override public function C_SeedRandom(hSession : haxe.Int64, pSeed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:synchronized override public function C_GenerateRandom(hSession : haxe.Int64, randomData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
