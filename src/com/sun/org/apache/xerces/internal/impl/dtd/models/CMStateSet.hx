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
* This class is a very simple bitset class. The DFA content model code needs
* to support a bit set, but the java BitSet class is way, way overkill. Our
* bitset never needs to be expanded after creation, hash itself, etc...
*
* Since the vast majority of content models will never require more than 64
* bits, and since allocation of anything in Java is expensive, this class
* provides a hybrid implementation that uses two ints for instances that use
* 64 bits or fewer. It has a byte array reference member which will only be
* used if more than 64 bits are required.
*
* Note that the code that uses this class will never perform operations
* on sets of different sizes, so that check does not have to be made here.
*
* @xerces.internal
*
*/
//// made this class public so it can be accessed by
//// the XS content models from the schema package -neilg.
extern class CMStateSet
{
	@:overload @:public public function new(bitCount : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:final public function intersection(setToAnd : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	@:overload @:public @:final public function getBit(bitToGet : Int) : Bool;
	
	@:overload @:public @:final public function isEmpty() : Bool;
	
	@:overload @:public @:final public function union(setToOr : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	@:overload @:public @:final public function setBit(bitToSet : Int) : Void;
	
	@:overload @:public @:final public function setTo(srcSet : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	@:overload @:public @:final public function zeroBits() : Void;
	
	/* Optimization(Jan, 2001) */
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
