package com.sun.org.apache.bcel.internal.generic;
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
extern class ReferenceType extends com.sun.org.apache.bcel.internal.generic.Type
{
	/**
	* Super class for object and array types.
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	*/
	@:overload private function new(t : java.StdTypes.Int8, s : String) : Void;
	
	/**
	* Return true iff this type is castable to another type t as defined in
	* the JVM specification.  The case where this is Type.NULL is not
	* defined (see the CHECKCAST definition in the JVM specification).
	* However, because e.g. CHECKCAST doesn't throw a
	* ClassCastException when casting a null reference to any Object,
	* true is returned in this case.
	*/
	@:overload public function isCastableTo(t : com.sun.org.apache.bcel.internal.generic.Type) : Bool;
	
	/**
	* Return true iff this is assignment compatible with another type t
	* as defined in the JVM specification; see the AASTORE definition
	* there.
	*/
	@:overload public function isAssignmentCompatibleWith(t : com.sun.org.apache.bcel.internal.generic.Type) : Bool;
	
	/**
	* This commutative operation returns the first common superclass (narrowest ReferenceType
	* referencing a class, not an interface).
	* If one of the types is a superclass of the other, the former is returned.
	* If "this" is Type.NULL, then t is returned.
	* If t is Type.NULL, then "this" is returned.
	* If "this" equals t ['this.equals(t)'] "this" is returned.
	* If "this" or t is an ArrayType, then Type.OBJECT is returned;
	* unless their dimensions match. Then an ArrayType of the same
	* number of dimensions is returned, with its basic type being the
	* first common super class of the basic types of "this" and t.
	* If "this" or t is a ReferenceType referencing an interface, then Type.OBJECT is returned.
	* If not all of the two classes' superclasses cannot be found, "null" is returned.
	* See the JVM specification edition 2, "4.9.2 The Bytecode Verifier".
	*/
	@:overload public function getFirstCommonSuperclass(t : ReferenceType) : ReferenceType;
	
	/**
	* This commutative operation returns the first common superclass (narrowest ReferenceType
	* referencing a class, not an interface).
	* If one of the types is a superclass of the other, the former is returned.
	* If "this" is Type.NULL, then t is returned.
	* If t is Type.NULL, then "this" is returned.
	* If "this" equals t ['this.equals(t)'] "this" is returned.
	* If "this" or t is an ArrayType, then Type.OBJECT is returned.
	* If "this" or t is a ReferenceType referencing an interface, then Type.OBJECT is returned.
	* If not all of the two classes' superclasses cannot be found, "null" is returned.
	* See the JVM specification edition 2, "4.9.2 The Bytecode Verifier".
	*
	* @deprecated use getFirstCommonSuperclass(ReferenceType t) which has
	*             slightly changed semantics.
	*/
	@:overload public function firstCommonSuperclass(t : ReferenceType) : ReferenceType;
	
	
}
