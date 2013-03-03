package java.security.cert;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CRLException extends java.security.GeneralSecurityException
{
	/**
	* Constructs a CRLException with no detail message. A
	* detail message is a String that describes this particular
	* exception.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a CRLException with the specified detail
	* message. A detail message is a String that describes this
	* particular exception.
	*
	* @param message the detail message.
	*/
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* Creates a <code>CRLException</code> with the specified
	* detail message and cause.
	*
	* @param message the detail message (which is saved for later retrieval
	*        by the {@link #getMessage()} method).
	* @param cause the cause (which is saved for later retrieval by the
	*        {@link #getCause()} method).  (A <tt>null</tt> value is permitted,
	*        and indicates that the cause is nonexistent or unknown.)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function new(message : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Creates a <code>CRLException</code> with the specified cause
	* and a detail message of <tt>(cause==null ? null : cause.toString())</tt>
	* (which typically contains the class and detail message of
	* <tt>cause</tt>).
	*
	* @param cause the cause (which is saved for later retrieval by the
	*        {@link #getCause()} method).  (A <tt>null</tt> value is permitted,
	*        and indicates that the cause is nonexistent or unknown.)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function new(cause : java.lang.Throwable) : Void;
	
	
}
