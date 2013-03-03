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
* class CK_SLOT_INFO provides information about a slot.<p>
* <B>PKCS#11 structure:</B>
* <PRE>
*  typedef struct CK_SLOT_INFO {&nbsp;&nbsp;
*    CK_UTF8CHAR slotDescription[64];&nbsp;&nbsp;
*    CK_UTF8CHAR manufacturerID[32];&nbsp;&nbsp;
*    CK_FLAGS flags;&nbsp;&nbsp;
*    CK_VERSION hardwareVersion;&nbsp;&nbsp;
*    CK_VERSION firmwareVersion;&nbsp;&nbsp;
*  } CK_SLOT_INFO;
* </PRE>
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
* @author Martin Schlaeffer <schlaeff@sbox.tugraz.at>
*/
extern class CK_SLOT_INFO
{
	/**
	* must be blank padded and only the first 64 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR slotDescription[64];
	* </PRE>
	*/
	@:public public var slotDescription : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* must be blank padded and only the first 32 chars will be used<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_UTF8CHAR manufacturerID[32];
	* </PRE>
	*/
	@:public public var manufacturerID : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_FLAGS flags;
	* </PRE>
	*/
	@:public public var flags : haxe.Int64;
	
	/**
	* version of hardware<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VERSION hardwareVersion;
	* </PRE>
	*/
	@:public public var hardwareVersion : sun.security.pkcs11.wrapper.CK_VERSION;
	
	/**
	* version of firmware<p>
	* <B>PKCS#11:</B>
	* <PRE>
	*   CK_VERSION firmwareVersion;
	* </PRE>
	*/
	@:public public var firmwareVersion : sun.security.pkcs11.wrapper.CK_VERSION;
	
	@:overload @:public public function new(slotDesc : java.NativeArray<java.StdTypes.Char16>, vendor : java.NativeArray<java.StdTypes.Char16>, flags : haxe.Int64, hwVer : sun.security.pkcs11.wrapper.CK_VERSION, fwVer : sun.security.pkcs11.wrapper.CK_VERSION) : Void;
	
	/**
	* Returns the string representation of CK_SLOT_INFO.
	*
	* @return the string representation of CK_SLOT_INFO
	*/
	@:overload @:public public function toString() : String;
	
	
}
