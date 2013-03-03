package com.sun.org.apache.bcel.internal.classfile;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
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
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
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
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class AccessFlags implements java.io.Serializable
{
	/**
	* Super class for all objects that have modifiers like private, final, ...
	* I.e. classes, fields, and methods.
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	*/
	@:protected private var access_flags : Int;
	
	@:overload @:public public function new() : Void;
	
	/**
	* @param a inital access flags
	*/
	@:overload @:public public function new(a : Int) : Void;
	
	/**
	* @return Access flags of the object aka. "modifiers".
	*/
	@:overload @:public @:final public function getAccessFlags() : Int;
	
	/**
	* @return Access flags of the object aka. "modifiers".
	*/
	@:overload @:public @:final public function getModifiers() : Int;
	
	/** Set access flags aka "modifiers".
	* @param access_flags Access flags of the object.
	*/
	@:overload @:public @:final public function setAccessFlags(access_flags : Int) : Void;
	
	/** Set access flags aka "modifiers".
	* @param access_flags Access flags of the object.
	*/
	@:overload @:public @:final public function setModifiers(access_flags : Int) : Void;
	
	@:overload @:public @:final public function isPublic(flag : Bool) : Void;
	
	@:overload @:public @:final public function isPublic() : Bool;
	
	@:overload @:public @:final public function isPrivate(flag : Bool) : Void;
	
	@:overload @:public @:final public function isPrivate() : Bool;
	
	@:overload @:public @:final public function isProtected(flag : Bool) : Void;
	
	@:overload @:public @:final public function isProtected() : Bool;
	
	@:overload @:public @:final public function isStatic(flag : Bool) : Void;
	
	@:overload @:public @:final public function isStatic() : Bool;
	
	@:overload @:public @:final public function isFinal(flag : Bool) : Void;
	
	@:overload @:public @:final public function isFinal() : Bool;
	
	@:overload @:public @:final public function isSynchronized(flag : Bool) : Void;
	
	@:overload @:public @:final public function isSynchronized() : Bool;
	
	@:overload @:public @:final public function isVolatile(flag : Bool) : Void;
	
	@:overload @:public @:final public function isVolatile() : Bool;
	
	@:overload @:public @:final public function isTransient(flag : Bool) : Void;
	
	@:overload @:public @:final public function isTransient() : Bool;
	
	@:overload @:public @:final public function isNative(flag : Bool) : Void;
	
	@:overload @:public @:final public function isNative() : Bool;
	
	@:overload @:public @:final public function isInterface(flag : Bool) : Void;
	
	@:overload @:public @:final public function isInterface() : Bool;
	
	@:overload @:public @:final public function isAbstract(flag : Bool) : Void;
	
	@:overload @:public @:final public function isAbstract() : Bool;
	
	@:overload @:public @:final public function isStrictfp(flag : Bool) : Void;
	
	@:overload @:public @:final public function isStrictfp() : Bool;
	
	
}
