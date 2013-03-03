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
extern class XIncludeNamespaceSupport extends com.sun.org.apache.xerces.internal.xinclude.MultipleScopeNamespaceSupport
{
	/**
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* @param context
	*/
	@:overload @:public public function new(context : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	/**
	* Pushes a new context onto the stack.
	*/
	@:overload @:public override public function pushContext() : Void;
	
	/**
	* This method is used to set a context invalid for XInclude namespace processing.
	* Any context defined by an &lt;include&gt; or &lt;fallback&gt; element is not
	* valid for processing the include parent's [in-scope namespaces]. Thus, contexts
	* defined by these elements are set to invalid by the XInclude processor using
	* this method.
	*/
	@:overload @:public public function setContextInvalid() : Void;
	
	/**
	* This returns the namespace URI which was associated with the given pretext, in
	* the context that existed at the include parent of the current element.  The
	* include parent is the last element, before the current one, which was not set
	* to an invalid context using setContextInvalid()
	*
	* @param prefix the prefix of the desired URI
	* @return the URI corresponding to the prefix in the context of the include parent
	*/
	@:overload @:public public function getURIFromIncludeParent(prefix : String) : String;
	
	
}
