package com.sun.org.apache.xml.internal.security.encryption;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  2003-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
/**
* <code>CipherValue</code> is the wrapper for cipher text.
*
* @author Axl Mattheus
*/
extern interface CipherValue
{
	/**
	* Resturns the Base 64 encoded, encrypted octets that is the
	* <code>CihperValue</code>.
	*
	* @return cipher value.
	*/
	@:overload public function getValue() : String;
	
	/**
	* Sets the Base 64 encoded, encrypted octets that is the
	* <code>CihperValue</code>.
	*
	* @param value the cipher value.
	*/
	@:overload public function setValue(value : String) : Void;
	
	
}
