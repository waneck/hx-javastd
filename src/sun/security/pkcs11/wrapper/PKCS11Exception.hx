package sun.security.pkcs11.wrapper;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This is the superclass of all checked exceptions used by this package. An
* exception of this class indicates that a function call to the underlying
* PKCS#11 module returned a value not equal to CKR_OK. The application can get
* the returned value by calling getErrorCode(). A return value not equal to
* CKR_OK is the only reason for such an exception to be thrown.
* PKCS#11 defines the meaning of an error-code, which may depend on the
* context in which the error occurs.
*
* @author <a href="mailto:Karl.Scheibelhofer@iaik.at"> Karl Scheibelhofer </a>
* @invariants
*/
extern class PKCS11Exception extends java.lang.Exception
{
	/**
	* The code of the error which was the reason for this exception.
	*/
	@:protected private var errorCode_ : haxe.Int64;
	
	/**
	* Constructor taking the error code as defined for the CKR_* constants
	* in PKCS#11.
	*/
	@:overload @:public public function new(errorCode : haxe.Int64) : Void;
	
	/**
	* This method gets the corresponding text error message from
	* a property file. If this file is not available, it returns the error
	* code as a hex-string.
	*
	* @return The message or the error code; e.g. "CKR_DEVICE_ERROR" or
	*         "0x00000030".
	* @preconditions
	* @postconditions (result <> null)
	*/
	@:overload @:public override public function getMessage() : String;
	
	/**
	* Returns the PKCS#11 error code.
	*
	* @return The error code; e.g. 0x00000030.
	* @preconditions
	* @postconditions
	*/
	@:overload @:public public function getErrorCode() : haxe.Int64;
	
	
}
