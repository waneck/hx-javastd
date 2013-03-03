package com.sun.xml.internal.messaging.saaj;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class SOAPExceptionImpl extends javax.xml.soap.SOAPException
{
	/**
	* Constructs a <code>SOAPExceptionImpl</code> object with no
	* reason or embedded <code>Throwable</code> object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>SOAPExceptionImpl</code> object with the given
	* <code>String</code> as the reason for the exception being thrown.
	*
	* @param reason a description of what caused the exception
	*/
	@:overload @:public public function new(reason : String) : Void;
	
	/**
	* Constructs a <code>SOAPExceptionImpl</code> object with the given
	* <code>String</code> as the reason for the exception being thrown
	* and the given <code>Throwable</code> object as an embedded
	* exception.
	*
	* @param reason a description of what caused the exception
	* @param cause a <code>Throwable</code> object that is to
	*        be embedded in this <code>SOAPExceptionImpl</code> object
	*/
	@:overload @:public public function new(reason : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SOAPExceptionImpl</code> object initialized
	* with the given <code>Throwable</code> object.
	*/
	@:overload @:public public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Returns the detail message for this <code>SOAPExceptionImpl</code>
	* object.
	* <P>
	* If there is an embedded <code>Throwable</code> object, and if the
	* <code>SOAPExceptionImpl</code> object has no detail message of its
	* own, this method will return the detail message from the embedded
	* <code>Throwable</code> object.
	*
	* @return the error or warning message for this
	*         <code>SOAPExceptionImpl</code> or, if it has none, the
	*         message of the embedded <code>Throwable</code> object,
	*         if there is one
	*/
	@:overload @:public override public function getMessage() : String;
	
	/**
	* Returns the <code>Throwable</code> object embedded in this
	* <code>SOAPExceptionImpl</code> if there is one. Otherwise, this method
	* returns <code>null</code>.
	*
	* @return the embedded <code>Throwable</code> object or <code>null</code>
	*         if there is none
	*/
	@:overload @:public override public function getCause() : java.lang.Throwable;
	
	/**
	* Initializes the <code>cause</code> field of this <code>SOAPExceptionImpl</code>
	* object with the given <code>Throwable</code> object.
	* <P>
	* This method can be called at most once.  It is generally called from
	* within the constructor or immediately after the constructor has
	* returned a new <code>SOAPExceptionImpl</code> object.
	* If this <code>SOAPExceptionImpl</code> object was created with the
	* constructor {@link #SOAPExceptionImpl(Throwable)} or
	* {@link #SOAPExceptionImpl(String,Throwable)}, meaning that its
	* <code>cause</code> field already has a value, this method cannot be
	* called even once.
	*
	* @param  cause the <code>Throwable</code> object that caused this
	*         <code>SOAPExceptionImpl</code> object to be thrown.  The value of this
	*         parameter is saved for later retrieval by the
	*         {@link #getCause()} method.  A <tt>null</tt> value is
	*         permitted and indicates that the cause is nonexistent or
	*         unknown.
	* @return  a reference to this <code>SOAPExceptionImpl</code> instance
	* @throws IllegalArgumentException if <code>cause</code> is this
	*         <code>Throwable</code> object.  (A <code>Throwable</code> object
	*         cannot be its own cause.)
	* @throws IllegalStateException if this <code>SOAPExceptionImpl</code> object
	*         was created with {@link #SOAPExceptionImpl(Throwable)} or
	*         {@link #SOAPExceptionImpl(String,Throwable)}, or this
	*         method has already been called on this <code>SOAPExceptionImpl</code>
	*         object
	*/
	@:overload @:public @:synchronized override public function initCause(cause : java.lang.Throwable) : java.lang.Throwable;
	
	@:overload @:public override public function printStackTrace() : Void;
	
	@:overload @:public override public function printStackTrace(s : java.io.PrintStream) : Void;
	
	@:overload @:public override public function printStackTrace(s : java.io.PrintWriter) : Void;
	
	
}
