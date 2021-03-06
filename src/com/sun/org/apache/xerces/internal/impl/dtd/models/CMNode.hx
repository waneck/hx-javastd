package com.sun.org.apache.xerces.internal.impl.dtd.models;
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
/**
* A content model node.
*
* @xerces.internal
*
*/
extern class CMNode
{
	@:overload @:public public function new(type : Int) : Void;
	
	@:overload @:public @:abstract public function isNullable() : Bool;
	
	@:overload @:public @:final public function type() : Int;
	
	@:overload @:public @:final public function firstPos() : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet;
	
	@:overload @:public @:final public function lastPos() : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet;
	
	@:overload @:public @:final public function setMaxStates(maxStates : Int) : Void;
	
	/**
	* Allows the user to set arbitrary data on this content model
	* node. This is used by the a{n,m} optimization that runs
	* in constant space.
	*/
	@:overload @:public public function setUserData(userData : Dynamic) : Void;
	
	/**
	* Allows the user to get arbitrary data set on this content
	* model node. This is used by the a{n,m} optimization that runs
	* in constant space.
	*/
	@:overload @:public public function getUserData() : Dynamic;
	
	@:overload @:protected @:abstract private function calcFirstPos(toSet : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	@:overload @:protected @:abstract private function calcLastPos(toSet : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	
}
