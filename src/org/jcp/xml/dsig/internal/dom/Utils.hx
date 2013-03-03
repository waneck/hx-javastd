package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: Utils.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class Utils
{
	@:overload @:public @:static public static function readBytesFromStream(is : java.io.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the ID from a same-document URI (ex: "#id")
	*/
	@:overload @:public @:static public static function parseIdFromSameDocumentURI(uri : String) : String;
	
	/**
	* Returns true if uri is a same-document URI, false otherwise.
	*/
	@:overload @:public @:static public static function sameDocumentURI(uri : String) : Bool;
	
	
}
