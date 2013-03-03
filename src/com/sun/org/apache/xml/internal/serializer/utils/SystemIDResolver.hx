package com.sun.org.apache.xml.internal.serializer.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SystemIDResolver.java,v 1.1.4.1 2005/09/08 11:03:20 suresh_emailid Exp $
*/
extern class SystemIDResolver
{
	/**
	* Get an absolute URI from a given relative URI (local path).
	*
	* <p>The relative URI is a local filesystem path. The path can be
	* absolute or relative. If it is a relative path, it is resolved relative
	* to the system property "user.dir" if it is available; if not (i.e. in an
	* Applet perhaps which throws SecurityException) then we just return the
	* relative path. The space and backslash characters are also replaced to
	* generate a good absolute URI.</p>
	*
	* @param localPath The relative URI to resolve
	*
	* @return Resolved absolute URI
	*/
	@:overload @:public @:static public static function getAbsoluteURIFromRelative(localPath : String) : String;
	
	/**
	* Return true if the systemId denotes an absolute URI .
	*
	* @param systemId The systemId string
	* @return true if the systemId is an an absolute URI
	*/
	@:overload @:public @:static public static function isAbsoluteURI(systemId : String) : Bool;
	
	/**
	* Return true if the local path is an absolute path.
	*
	* @param systemId The path string
	* @return true if the path is absolute
	*/
	@:overload @:public @:static public static function isAbsolutePath(systemId : String) : Bool;
	
	/**
	* Take a SystemID string and try to turn it into a good absolute URI.
	*
	* @param systemId A URI string, which may be absolute or relative.
	*
	* @return The resolved absolute URI
	*/
	@:overload @:public @:static public static function getAbsoluteURI(systemId : String) : String;
	
	/**
	* Take a SystemID string and try to turn it into a good absolute URI.
	*
	* @param urlString SystemID string
	* @param base The URI string used as the base for resolving the systemID
	*
	* @return The resolved absolute URI
	* @throws TransformerException thrown if the string can't be turned into a URI.
	*/
	@:overload @:public @:static public static function getAbsoluteURI(urlString : String, base : String) : String;
	
	
}
