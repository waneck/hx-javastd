package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: NamespaceMappings.java,v 1.2.4.1 2005/09/15 08:15:19 suresh_emailid Exp $
*/
extern class NamespaceMappings
{
	/**
	* Default constructor
	* @see java.lang.Object#Object()
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Use a namespace prefix to lookup a namespace URI.
	*
	* @param prefix String the prefix of the namespace
	* @return the URI corresponding to the prefix
	*/
	@:overload @:public public function lookupNamespace(prefix : String) : String;
	
	/**
	* Given a namespace uri, and the namespaces mappings for the
	* current element, return the current prefix for that uri.
	*
	* @param uri the namespace URI to be search for
	* @return an existing prefix that maps to the given URI, null if no prefix
	* maps to the given namespace URI.
	*/
	@:overload @:public public function lookupPrefix(uri : String) : String;
	
	/**
	* Generate a new namespace prefix ( ns0, ns1 ...) not used before
	* @return String a new namespace prefix ( ns0, ns1, ns2 ...)
	*/
	@:overload @:public public function generateNextPrefix() : String;
	
	/**
	* This method makes a clone of this object.
	*
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
@:native('com$sun$org$apache$xml$internal$serializer$NamespaceMappings$MappingRecord') @:internal extern class NamespaceMappings_MappingRecord
{
	
}
