package com.sun.org.apache.xerces.internal.impl.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2002 The Apache Software Foundation.  All rights
* reserved.
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
extern class XMLSimpleType
{
	/** TYPE_CDATA */
	@:public @:static @:final public static var TYPE_CDATA(default, null) : java.StdTypes.Int16;
	
	/** TYPE_ENTITY */
	@:public @:static @:final public static var TYPE_ENTITY(default, null) : java.StdTypes.Int16;
	
	/** TYPE_ENUMERATION */
	@:public @:static @:final public static var TYPE_ENUMERATION(default, null) : java.StdTypes.Int16;
	
	/** TYPE_ID */
	@:public @:static @:final public static var TYPE_ID(default, null) : java.StdTypes.Int16;
	
	/** TYPE_IDREF */
	@:public @:static @:final public static var TYPE_IDREF(default, null) : java.StdTypes.Int16;
	
	/** TYPE_NMTOKEN */
	@:public @:static @:final public static var TYPE_NMTOKEN(default, null) : java.StdTypes.Int16;
	
	/** TYPE_NOTATION */
	@:public @:static @:final public static var TYPE_NOTATION(default, null) : java.StdTypes.Int16;
	
	/** TYPE_NAMED */
	@:public @:static @:final public static var TYPE_NAMED(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_DEFAULT */
	@:public @:static @:final public static var DEFAULT_TYPE_DEFAULT(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_FIXED */
	@:public @:static @:final public static var DEFAULT_TYPE_FIXED(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_IMPLIED */
	@:public @:static @:final public static var DEFAULT_TYPE_IMPLIED(default, null) : java.StdTypes.Int16;
	
	/** DEFAULT_TYPE_REQUIRED */
	@:public @:static @:final public static var DEFAULT_TYPE_REQUIRED(default, null) : java.StdTypes.Int16;
	
	/** type */
	@:public public var type : java.StdTypes.Int16;
	
	/** name */
	@:public public var name : String;
	
	/** enumeration */
	@:public public var enumeration : java.NativeArray<String>;
	
	/** list */
	@:public public var list : Bool;
	
	/** defaultType */
	@:public public var defaultType : java.StdTypes.Int16;
	
	/** defaultValue */
	@:public public var defaultValue : String;
	
	/** non-normalized defaultValue */
	@:public public var nonNormalizedDefaultValue : String;
	
	/** datatypeValidator */
	@:public public var datatypeValidator : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/**
	* setValues
	*
	* @param type
	* @param name
	* @param enumeration
	* @param list
	* @param defaultType
	* @param defaultValue
	* @param nonNormalizedDefaultValue
	* @param datatypeValidator
	*/
	@:overload @:public public function setValues(type : java.StdTypes.Int16, name : String, enumeration : java.NativeArray<String>, list : Bool, defaultType : java.StdTypes.Int16, defaultValue : String, nonNormalizedDefaultValue : String, datatypeValidator : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator) : Void;
	
	/** Set values. */
	@:overload @:public public function setValues(simpleType : com.sun.org.apache.xerces.internal.impl.dtd.XMLSimpleType) : Void;
	
	/**
	* clear
	*/
	@:overload @:public public function clear() : Void;
	
	
}
