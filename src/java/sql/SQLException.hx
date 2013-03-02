package java.sql;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SQLException extends java.lang.Exception implements java.lang.Iterable<java.lang.Throwable>
{
	/**
	*  Constructs a <code>SQLException</code> object with a given
	* <code>reason</code>, <code>SQLState</code>  and
	* <code>vendorCode</code>.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode a database vendor-specific exception code
	*/
	@:overload public function new(reason : String, SQLState : String, vendorCode : Int) : Void;
	
	/**
	* Constructs a <code>SQLException</code> object with a given
	* <code>reason</code> and <code>SQLState</code>.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method. The vendor code
	* is initialized to 0.
	* <p>
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	*/
	@:overload public function new(reason : String, SQLState : String) : Void;
	
	/**
	*  Constructs a <code>SQLException</code> object with a given
	* <code>reason</code>. The  <code>SQLState</code>  is initialized to
	* <code>null</code> and the vender code is initialized to 0.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	* @param reason a description of the exception
	*/
	@:overload public function new(reason : String) : Void;
	
	/**
	* Constructs a <code>SQLException</code> object.
	* The <code>reason</code>, <code>SQLState</code> are initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*/
	@:overload public function new() : Void;
	
	/**
	*  Constructs a <code>SQLException</code> object with a given
	* <code>cause</code>.
	* The <code>SQLState</code> is initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	* The <code>reason</code>  is initialized to <code>null</code> if
	* <code>cause==null</code> or to <code>cause.toString()</code> if
	* <code>cause!=null</code>.
	* <p>
	* @param cause the underlying reason for this <code>SQLException</code>
	* (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLException</code> object with a given
	* <code>reason</code> and  <code>cause</code>.
	* The <code>SQLState</code> is  initialized to <code>null</code>
	* and the vendor code is initialized to 0.
	* <p>
	* @param reason a description of the exception.
	* @param cause the underlying reason for this <code>SQLException</code>
	* (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLException</code> object with a given
	* <code>reason</code>, <code>SQLState</code> and  <code>cause</code>.
	* The vendor code is initialized to 0.
	* <p>
	* @param reason a description of the exception.
	* @param sqlState an XOPEN or SQL:2003 code identifying the exception
	* @param cause the underlying reason for this <code>SQLException</code>
	* (which is saved for later retrieval by the
	* <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, sqlState : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLException</code> object with a given
	* <code>reason</code>, <code>SQLState</code>, <code>vendorCode</code>
	* and  <code>cause</code>.
	* <p>
	* @param reason a description of the exception
	* @param sqlState an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode a database vendor-specific exception code
	* @param cause the underlying reason for this <code>SQLException</code>
	* (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, sqlState : String, vendorCode : Int, cause : java.lang.Throwable) : Void;
	
	/**
	* Retrieves the SQLState for this <code>SQLException</code> object.
	*
	* @return the SQLState value
	*/
	@:overload public function getSQLState() : String;
	
	/**
	* Retrieves the vendor-specific exception code
	* for this <code>SQLException</code> object.
	*
	* @return the vendor's error code
	*/
	@:overload public function getErrorCode() : Int;
	
	/**
	* Retrieves the exception chained to this
	* <code>SQLException</code> object by setNextException(SQLException ex).
	*
	* @return the next <code>SQLException</code> object in the chain;
	*         <code>null</code> if there are none
	* @see #setNextException
	*/
	@:overload public function getNextException() : java.sql.SQLException;
	
	/**
	* Adds an <code>SQLException</code> object to the end of the chain.
	*
	* @param ex the new exception that will be added to the end of
	*            the <code>SQLException</code> chain
	* @see #getNextException
	*/
	@:overload public function setNextException(ex : java.sql.SQLException) : Void;
	
	/**
	* Returns an iterator over the chained SQLExceptions.  The iterator will
	* be used to iterate over each SQLException and its underlying cause
	* (if any).
	*
	* @return an iterator over the chained SQLExceptions and causes in the proper
	* order
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function iterator() : java.util.Iterator<java.lang.Throwable>;
	
	
}
