package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 2000-2002 The Apache Software Foundation.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class NamespaceSupport implements com.sun.org.apache.xerces.internal.xni.NamespaceContext
{
	/**
	* Namespace binding information. This array is composed of a
	* series of tuples containing the namespace binding information:
	* &lt;prefix, uri&gt;. The default size can be set to anything
	* as long as it is a power of 2 greater than 1.
	*
	* @see #fNamespaceSize
	* @see #fContext
	*/
	@:protected private var fNamespace : java.NativeArray<String>;
	
	/** The top of the namespace information array. */
	@:protected private var fNamespaceSize : Int;
	
	/**
	* Context indexes. This array contains indexes into the namespace
	* information array. The index at the current context is the start
	* index of declared namespace bindings and runs to the size of the
	* namespace information array.
	*
	* @see #fNamespaceSize
	*/
	@:protected private var fContext : java.NativeArray<Int>;
	
	/** The current context. */
	@:protected private var fCurrentContext : Int;
	
	@:protected private var fPrefixes : java.NativeArray<String>;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a namespace context object and initializes it with
	* the prefixes declared in the specified context.
	*/
	@:overload @:public public function new(context : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#reset()
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#pushContext()
	*/
	@:overload @:public public function pushContext() : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#popContext()
	*/
	@:overload @:public public function popContext() : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#declarePrefix(String, String)
	*/
	@:overload @:public public function declarePrefix(prefix : String, uri : String) : Bool;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getURI(String)
	*/
	@:overload @:public public function getURI(prefix : String) : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getPrefix(String)
	*/
	@:overload @:public public function getPrefix(uri : String) : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getDeclaredPrefixCount()
	*/
	@:overload @:public public function getDeclaredPrefixCount() : Int;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getDeclaredPrefixAt(int)
	*/
	@:overload @:public public function getDeclaredPrefixAt(index : Int) : String;
	
	@:overload @:public public function getPrefixes() : java.util.Iterator<Dynamic>;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.NamespaceContext#getAllPrefixes()
	*/
	@:overload @:public public function getAllPrefixes() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function getPrefixes(uri : String) : java.util.Vector<Dynamic>;
	
	/**
	* Checks whether a binding or unbinding for
	* the given prefix exists in the context.
	*
	* @param prefix The prefix to look up.
	*
	* @return true if the given prefix exists in the context
	*/
	@:overload @:public public function containsPrefix(prefix : String) : Bool;
	
	/**
	* Checks whether a binding or unbinding for
	* the given prefix exists in the current context.
	*
	* @param prefix The prefix to look up.
	*
	* @return true if the given prefix exists in the current context
	*/
	@:overload @:public public function containsPrefixInCurrentContext(prefix : String) : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$util$NamespaceSupport$IteratorPrefixes') extern class NamespaceSupport_IteratorPrefixes implements java.util.Iterator<Dynamic>
{
	/**
	* Constructor for Prefixes.
	*/
	@:overload @:public public function new(prefixes : java.NativeArray<String>, size : Int) : Void;
	
	/**
	* @see java.util.Enumeration#hasMoreElements()
	*/
	@:overload @:public public function hasNext() : Bool;
	
	/**
	* @see java.util.Enumeration#nextElement()
	*/
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function remove() : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$util$NamespaceSupport$Prefixes') extern class NamespaceSupport_Prefixes implements java.util.Enumeration<Dynamic>
{
	/**
	* Constructor for Prefixes.
	*/
	@:overload @:public public function new(prefixes : java.NativeArray<String>, size : Int) : Void;
	
	/**
	* @see java.util.Enumeration#hasMoreElements()
	*/
	@:overload @:public public function hasMoreElements() : Bool;
	
	/**
	* @see java.util.Enumeration#nextElement()
	*/
	@:overload @:public public function nextElement() : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}
