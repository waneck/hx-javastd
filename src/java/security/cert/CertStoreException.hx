package java.security.cert;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CertStoreException extends java.security.GeneralSecurityException
{
	/**
	* Creates a <code>CertStoreException</code> with <code>null</code> as
	* its detail message.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>CertStoreException</code> with the given detail
	* message. A detail message is a <code>String</code> that describes this
	* particular exception.
	*
	* @param msg the detail message
	*/
	@:overload @:public public function new(msg : String) : Void;
	
	/**
	* Creates a <code>CertStoreException</code> that wraps the specified
	* throwable. This allows any exception to be converted into a
	* <code>CertStoreException</code>, while retaining information about the
	* cause, which may be useful for debugging. The detail message is
	* set to (<code>cause==null ? null : cause.toString()</code>) (which
	* typically contains the class and detail message of cause).
	*
	* @param cause the cause (which is saved for later retrieval by the
	* {@link #getCause getCause()} method). (A <code>null</code> value is
	* permitted, and indicates that the cause is nonexistent or unknown.)
	*/
	@:overload @:public public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Creates a <code>CertStoreException</code> with the specified detail
	* message and cause.
	*
	* @param msg the detail message
	* @param cause the cause (which is saved for later retrieval by the
	* {@link #getCause getCause()} method). (A <code>null</code> value is
	* permitted, and indicates that the cause is nonexistent or unknown.)
	*/
	@:overload @:public public function new(msg : String, cause : java.lang.Throwable) : Void;
	
	
}
