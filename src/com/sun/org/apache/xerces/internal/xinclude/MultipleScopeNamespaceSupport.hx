package com.sun.org.apache.xerces.internal.xinclude;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2005 The Apache Software Foundation.
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
extern class MultipleScopeNamespaceSupport extends com.sun.org.apache.xerces.internal.util.NamespaceSupport
{
	/**
	* This implementation of NamespaceContext has the ability to maintain multiple
	* scopes of namespace/prefix bindings.  This is useful in situations when it is
	* not always appropriate for elements to inherit the namespace bindings of their
	* ancestors (such as included elements in XInclude).
	*
	* When searching for a URI to match a prefix, or a prefix to match a URI, it is
	* searched for in the current context, then the ancestors of the current context,
	* up to the beginning of the current scope.  Other scopes are not searched.
	*
	* @author Peter McCracken, IBM
	*
	*/
	@:protected private var fScope : java.NativeArray<Int>;
	
	@:protected private var fCurrentScope : Int;
	
	/**
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* @param context
	*/
	@:overload @:public public function new(context : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getAllPrefixes()
	*/
	@:overload @:public override public function getAllPrefixes() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function getScopeForContext(context : Int) : Int;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getPrefix(java.lang.String)
	*/
	@:overload @:public override public function getPrefix(uri : String) : String;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getURI(java.lang.String)
	*/
	@:overload @:public override public function getURI(prefix : String) : String;
	
	@:overload @:public public function getPrefix(uri : String, context : Int) : String;
	
	@:overload @:public public function getURI(prefix : String, context : Int) : String;
	
	@:overload @:public public function getPrefix(uri : String, start : Int, end : Int) : String;
	
	@:overload @:public public function getURI(prefix : String, start : Int, end : Int) : String;
	
	/**
	* Only resets the current scope -- all namespaces defined in lower scopes
	* remain valid after a call to reset.
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Begins a new scope.  None of the previous namespace bindings will be used,
	* until the new scope is popped with popScope()
	*/
	@:overload @:public public function pushScope() : Void;
	
	/**
	* Pops the current scope.  The namespace bindings from the new current scope
	* are then used for searching for namespaces and prefixes.
	*/
	@:overload @:public public function popScope() : Void;
	
	
}
