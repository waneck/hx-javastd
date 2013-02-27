package com.sun.org.apache.xml.internal.security.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2008 The Apache Software Foundation.
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
extern class DigesterOutputStream extends java.io.ByteArrayOutputStream
{
	/**
	* @param mda
	*/
	@:overload public function new(mda : com.sun.org.apache.xml.internal.security.algorithms.MessageDigestAlgorithm) : Void;
	
	/** @inheritDoc */
	@:overload override public function write(arg0 : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload override public function write(arg0 : Int) : Void;
	
	/** @inheritDoc */
	@:overload override public function write(arg0 : java.NativeArray<java.StdTypes.Int8>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @return the digest value
	*/
	@:overload public function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
