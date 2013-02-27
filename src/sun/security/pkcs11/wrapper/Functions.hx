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
* This class contains onyl static methods. It is the place for all functions
* that are used by several classes in this package.
*
* @author Karl Scheibelhofer <Karl.Scheibelhofer@iaik.at>
* @author Martin Schlaeffer <schlaeff@sbox.tugraz.at>
*/
extern class Functions
{
	/**
	* Converts a long value to a hexadecimal String of length 16. Includes
	* leading zeros if necessary.
	*
	* @param value The long value to be converted.
	* @return The hexadecimal string representation of the long value.
	*/
	@:overload public static function toFullHexString(value : haxe.Int64) : String;
	
	/**
	* Converts a int value to a hexadecimal String of length 8. Includes
	* leading zeros if necessary.
	*
	* @param value The int value to be converted.
	* @return The hexadecimal string representation of the int value.
	*/
	@:overload public static function toFullHexString(value : Int) : String;
	
	/**
	* converts a long value to a hexadecimal String
	*
	* @param value the long value to be converted
	* @return the hexadecimal string representation of the long value
	*/
	@:overload public static function toHexString(value : haxe.Int64) : String;
	
	/**
	* Converts a byte array to a hexadecimal String. Each byte is presented by
	* its two digit hex-code; 0x0A -> "0a", 0x00 -> "00". No leading "0x" is
	* included in the result.
	*
	* @param value the byte array to be converted
	* @return the hexadecimal string representation of the byte array
	*/
	@:overload public static function toHexString(value : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* converts a long value to a binary String
	*
	* @param value the long value to be converted
	* @return the binary string representation of the long value
	*/
	@:overload public static function toBinaryString(value : haxe.Int64) : String;
	
	/**
	* converts a byte array to a binary String
	*
	* @param value the byte array to be converted
	* @return the binary string representation of the byte array
	*/
	@:overload public static function toBinaryString(value : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* converts the long value flags to a SlotInfoFlag string
	*
	* @param flags the flags to be converted
	* @return the SlotInfoFlag string representation of the flags
	*/
	@:overload public static function slotInfoFlagsToString(flags : haxe.Int64) : String;
	
	/**
	* converts long value flags to a TokenInfoFlag string
	*
	* @param flags the flags to be converted
	* @return the TokenInfoFlag string representation of the flags
	*/
	@:overload public static function tokenInfoFlagsToString(flags : haxe.Int64) : String;
	
	/**
	* converts the long value flags to a SessionInfoFlag string
	*
	* @param flags the flags to be converted
	* @return the SessionInfoFlag string representation of the flags
	*/
	@:overload public static function sessionInfoFlagsToString(flags : haxe.Int64) : String;
	
	/**
	* converts the long value state to a SessionState string
	*
	* @param state the state to be converted
	* @return the SessionState string representation of the state
	*/
	@:overload public static function sessionStateToString(state : haxe.Int64) : String;
	
	/**
	* converts the long value flags to a MechanismInfoFlag string
	*
	* @param flags the flags to be converted
	* @return the MechanismInfoFlag string representation of the flags
	*/
	@:overload public static function mechanismInfoFlagsToString(flags : haxe.Int64) : String;
	
	@:overload public static function getId(idMap : java.util.Map<String, Null<Int>>, name : String) : haxe.Int64;
	
	@:overload public static function getMechanismName(id : haxe.Int64) : String;
	
	@:overload public static function getMechanismId(name : String) : haxe.Int64;
	
	@:overload public static function getKeyName(id : haxe.Int64) : String;
	
	@:overload public static function getKeyId(name : String) : haxe.Int64;
	
	@:overload public static function getAttributeName(id : haxe.Int64) : String;
	
	@:overload public static function getAttributeId(name : String) : haxe.Int64;
	
	@:overload public static function getObjectClassName(id : haxe.Int64) : String;
	
	@:overload public static function getObjectClassId(name : String) : haxe.Int64;
	
	/**
	* Check the given arrays for equalitiy. This method considers both arrays as
	* equal, if both are <code>null</code> or both have the same length and
	* contain exactly the same byte values.
	*
	* @param array1 The first array.
	* @param array2 The second array.
	* @return True, if both arrays are <code>null</code> or both have the same
	*         length and contain exactly the same byte values. False, otherwise.
	* @preconditions
	* @postconditions
	*/
	@:overload public static function equals(array1 : java.NativeArray<java.StdTypes.Int8>, array2 : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Check the given arrays for equalitiy. This method considers both arrays as
	* equal, if both are <code>null</code> or both have the same length and
	* contain exactly the same char values.
	*
	* @param array1 The first array.
	* @param array2 The second array.
	* @return True, if both arrays are <code>null</code> or both have the same
	*         length and contain exactly the same char values. False, otherwise.
	* @preconditions
	* @postconditions
	*/
	@:overload public static function equals(array1 : java.NativeArray<java.StdTypes.Char16>, array2 : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	/**
	* Check the given dates for equalitiy. This method considers both dates as
	* equal, if both are <code>null</code> or both contain exactly the same char
	* values.
	*
	* @param date1 The first date.
	* @param date2 The second date.
	* @return True, if both dates are <code>null</code> or both contain the same
	*         char values. False, otherwise.
	* @preconditions
	* @postconditions
	*/
	@:overload public static function equals(date1 : sun.security.pkcs11.wrapper.CK_DATE, date2 : sun.security.pkcs11.wrapper.CK_DATE) : Bool;
	
	/**
	* Calculate a hash code for the given byte array.
	*
	* @param array The byte array.
	* @return A hash code for the given array.
	* @preconditions
	* @postconditions
	*/
	@:overload public static function hashCode(array : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Calculate a hash code for the given char array.
	*
	* @param array The char array.
	* @return A hash code for the given array.
	* @preconditions
	* @postconditions
	*/
	@:overload public static function hashCode(array : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	/**
	* Calculate a hash code for the given date object.
	*
	* @param date The date object.
	* @return A hash code for the given date.
	* @preconditions
	* @postconditions
	*/
	@:overload public static function hashCode(date : sun.security.pkcs11.wrapper.CK_DATE) : Int;
	
	
}
@:native('sun$security$pkcs11$wrapper$Functions$Flags') @:internal extern class Functions_Flags
{
	
}
