package java.sql;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* The subclass of {@link SQLException} thrown when the SQLState class value
* is '<i>28</i>', or under vendor-specified conditions. This indicates that
* the authorization credentials presented during connection establishment
* are not valid.
* <p>
* Please consult your driver vendor documentation for the vendor-specified
* conditions for which this <code>Exception</code> may be thrown.
* @since 1.6
*/
@:require(java6) extern class SQLInvalidAuthorizationSpecException extends java.sql.SQLNonTransientException
{
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object.
	* The <code>reason</code>, <code>SQLState</code> are initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	*  with a given <code>reason</code>. The <code>SQLState</code>
	* is initialized to <code>null</code> and the vender code is initialized
	* to 0.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	* @param reason a description of the exception
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(reason : String) : Void;
	
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	* with a given <code>reason</code> and <code>SQLState</code>.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method. The vendor code
	* is initialized to 0.
	* <p>
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(reason : String, SQLState : String) : Void;
	
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	* with a given <code>reason</code>, <code>SQLState</code>  and
	* <code>vendorCode</code>.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode a database vendor specific exception code
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(reason : String, SQLState : String, vendorCode : Int) : Void;
	
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	* with a given  <code>cause</code>.
	* The <code>SQLState</code> is initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	* The <code>reason</code>  is initialized to <code>null</code> if
	* <code>cause==null</code> or to <code>cause.toString()</code> if
	* <code>cause!=null</code>.
	* <p>
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	*  with a given
	* <code>reason</code> and  <code>cause</code>.
	* The <code>SQLState</code> is  initialized to <code>null</code>
	* and the vendor code is initialized to 0.
	* <p>
	* @param reason a description of the exception.
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(reason : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	*  with a given
	* <code>reason</code>, <code>SQLState</code> and  <code>cause</code>.
	* The vendor code is initialized to 0.
	* <p>
	* @param reason a description of the exception.
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code>  method); may be null indicating
	*     the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(reason : String, SQLState : String, cause : java.lang.Throwable) : Void;
	
	/**
	*  Constructs a <code>SQLInvalidAuthorizationSpecException</code> object
	* with a given
	* <code>reason</code>, <code>SQLState</code>, <code>vendorCode</code>
	* and  <code>cause</code>.
	* <p>
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode a database vendor-specific exception code
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(reason : String, SQLState : String, vendorCode : Int, cause : java.lang.Throwable) : Void;
	
	
}
