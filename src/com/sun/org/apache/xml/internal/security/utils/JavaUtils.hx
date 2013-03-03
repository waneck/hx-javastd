package com.sun.org.apache.xml.internal.security.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
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
extern class JavaUtils
{
	/**
	* Method getBytesFromFile
	*
	* @param fileName
	* @return the bytes readed from the file
	*
	* @throws FileNotFoundException
	* @throws IOException
	*/
	@:overload @:public @:static public static function getBytesFromFile(fileName : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method writeBytesToFilename
	*
	* @param filename
	* @param bytes
	*/
	@:overload @:public @:static public static function writeBytesToFilename(filename : String, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* This method reads all bytes from the given InputStream till EOF and
	* returns them as a byte array.
	*
	* @param inputStream
	* @return the bytes readed from the stream
	*
	* @throws FileNotFoundException
	* @throws IOException
	*/
	@:overload @:public @:static public static function getBytesFromStream(inputStream : java.io.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
