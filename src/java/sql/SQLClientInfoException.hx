package java.sql;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SQLClientInfoException extends java.sql.SQLException
{
	/**
	* Constructs a <code>SQLClientInfoException</code>  Object.
	* The <code>reason</code>,
	* <code>SQLState</code>, and failedProperties list are initialized to
	* <code> null</code> and the vendor code is initialized to 0.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new() : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given <code>failedProperties</code>.
	* The <code>reason</code> and <code>SQLState</code> are initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with
	* a given <code>cause</code> and <code>failedProperties</code>.
	*
	* The <code>reason</code>  is initialized to <code>null</code> if
	* <code>cause==null</code> or to <code>cause.toString()</code> if
	* <code>cause!=null</code> and the vendor code is initialized to 0.
	*
	* <p>
	*
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* @param cause                                     the (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given <code>reason</code> and <code>failedProperties</code>.
	* The <code>SQLState</code> is initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	*
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*
	* @param reason                            a description of the exception
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given <code>reason</code>, <code>cause</code> and
	* <code>failedProperties</code>.
	* The  <code>SQLState</code> is initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	* <p>
	*
	* @param reason                            a description of the exception
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* @param cause                                     the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given  <code>reason</code>, <code>SQLState</code>  and
	* <code>failedProperties</code>.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method. The vendor code
	* is initialized to 0.
	* <p>
	*
	* @param reason                            a description of the exception
	* @param SQLState                          an XOPEN or SQL:2003 code identifying the exception
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, SQLState : String, failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given  <code>reason</code>, <code>SQLState</code>, <code>cause</code>
	* and <code>failedProperties</code>.  The vendor code is initialized to 0.
	* <p>
	*
	* @param reason                            a description of the exception
	* @param SQLState                          an XOPEN or SQL:2003 code identifying the exception
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* @param cause                                     the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, SQLState : String, failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given  <code>reason</code>, <code>SQLState</code>,
	* <code>vendorCode</code>  and <code>failedProperties</code>.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*
	* @param reason                            a description of the exception
	* @param SQLState                          an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode                        a database vendor-specific exception code
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, SQLState : String, vendorCode : Int, failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>) : Void;
	
	/**
	* Constructs a <code>SQLClientInfoException</code> object initialized with a
	* given  <code>reason</code>, <code>SQLState</code>,
	* <code>cause</code>, <code>vendorCode</code> and
	* <code>failedProperties</code>.
	* <p>
	*
	* @param reason                            a description of the exception
	* @param SQLState                          an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode                        a database vendor-specific exception code
	* @param failedProperties          A Map containing the property values that could not
	*                                  be set.  The keys in the Map
	*                                  contain the names of the client info
	*                                  properties that could not be set and
	*                                  the values contain one of the reason codes
	*                                  defined in <code>ClientInfoStatus</code>
	* @param cause                     the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	*     the cause is non-existent or unknown.
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, SQLState : String, vendorCode : Int, failedProperties : java.util.Map<String, java.sql.ClientInfoStatus>, cause : java.lang.Throwable) : Void;
	
	/**
	* Returns the list of client info properties that could not be set.  The
	* keys in the Map  contain the names of the client info
	* properties that could not be set and the values contain one of the
	* reason codes defined in <code>ClientInfoStatus</code>
	* <p>
	*
	* @return Map list containing the client info properties that could
	* not be set
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload public function getFailedProperties() : java.util.Map<String, java.sql.ClientInfoStatus>;
	
	
}
