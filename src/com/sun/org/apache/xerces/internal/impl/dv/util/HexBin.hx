package com.sun.org.apache.xerces.internal.impl.dv.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* format validation
*
* This class encodes/decodes hexadecimal data
*
* @xerces.internal
*
* @author Jeffrey Rodriguez
*/
extern class HexBin
{
	/**
	* Encode a byte array to hex string
	*
	* @param binaryData array of byte to encode
	* @return return encoded string
	*/
	@:overload public static function encode(binaryData : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Decode hex string to a byte array
	*
	* @param encoded encoded string
	* @return return array of byte to encode
	*/
	@:overload public static function decode(encoded : String) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
