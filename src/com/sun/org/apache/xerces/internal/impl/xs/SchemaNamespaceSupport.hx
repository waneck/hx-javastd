package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern class SchemaNamespaceSupport extends com.sun.org.apache.xerces.internal.util.NamespaceSupport
{
	/**
	* This class customizes the behaviour of the util.NamespaceSupport
	* class in order to easily implement some features that we need for
	* efficient schema handling.  It will not be generally useful.
	*
	* @xerces.internal
	*
	* @author Neil Graham, IBM
	*
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(nSupport : SchemaNamespaceSupport) : Void;
	
	/**
	* This method takes a set of Strings, as stored in a
	* NamespaceSupport object, and "fools" the object into thinking
	* that this is one unified context.  This is meant to be used in
	* conjunction with things like local elements, whose declarations
	* may be deeply nested but which for all practical purposes may
	* be regarded as being one level below the global <schema>
	* element--at least with regard to namespace declarations.
	* It's worth noting that the context from which the strings are
	* being imported had better be using the same SymbolTable.
	*/
	@:overload public function setEffectiveContext(namespaceDecls : java.NativeArray<String>) : Void;
	
	/**
	* This method returns an array of Strings, as would be stored in
	* a NamespaceSupport object.  This array contains all
	* declarations except those at the global level.
	*/
	@:overload public function getEffectiveLocalContext() : java.NativeArray<String>;
	
	@:overload public function makeGlobal() : Void;
	
	
}
