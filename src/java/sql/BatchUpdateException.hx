package java.sql;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BatchUpdateException extends java.sql.SQLException
{
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with a given
	* <code>reason</code>, <code>SQLState</code>, <code>vendorCode</code> and
	* <code>updateCounts</code>.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*
	* @param reason a description of the error
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode an exception code used by a particular
	* database vendor
	* @param updateCounts an array of <code>int</code>, with each element
	* indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(reason : String, SQLState : String, vendorCode : Int, updateCounts : java.NativeArray<Int>) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with a given
	* <code>reason</code>, <code>SQLState</code> and
	* <code>updateCounts</code>.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method. The vendor code
	* is initialized to 0.
	* <p>
	*
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param updateCounts an array of <code>int</code>, with each element
	* indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(reason : String, SQLState : String, updateCounts : java.NativeArray<Int>) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with a given
	* <code>reason</code> and <code>updateCounts</code>.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.  The
	* <code>SQLState</code> is initialized to <code>null</code>
	* and the vender code is initialized to 0.
	* <p>
	*
	*
	* @param reason a description of the exception
	* @param updateCounts an array of <code>int</code>, with each element
	* indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(reason : String, updateCounts : java.NativeArray<Int>) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with a given
	* <code>updateCounts</code>.
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method. The  <code>reason</code>
	* and <code>SQLState</code> are initialized to null and the vendor code
	* is initialized to 0.
	* <p>
	*
	* @param updateCounts an array of <code>int</code>, with each element
	* indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(updateCounts : java.NativeArray<Int>) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object.
	* The <code>reason</code>, <code>SQLState</code> and <code>updateCounts</code>
	*  are initialized to <code>null</code> and the vendor code is initialized to 0.
	* The <code>cause</code> is not initialized, and may subsequently be
	* initialized by a call to the
	* {@link Throwable#initCause(java.lang.Throwable)} method.
	* <p>
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with
	*  a given <code>cause</code>.
	* The <code>SQLState</code> and <code>updateCounts</code>
	* are initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	* The <code>reason</code>  is initialized to <code>null</code> if
	* <code>cause==null</code> or to <code>cause.toString()</code> if
	*  <code>cause!=null</code>.
	* @param cause the underlying reason for this <code>SQLException</code>
	* (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with a
	* given <code>cause</code> and <code>updateCounts</code>.
	* The <code>SQLState</code> is initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	* The <code>reason</code>  is initialized to <code>null</code> if
	* <code>cause==null</code> or to <code>cause.toString()</code> if
	* <code>cause!=null</code>.
	*
	* @param updateCounts an array of <code>int</code>, with each element
	* indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @param cause the underlying reason for this <code>SQLException</code>
	* (which is saved for later retrieval by the <code>getCause()</code> method); may be null indicating
	* the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(updateCounts : java.NativeArray<Int>, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with
	* a given <code>reason</code>, <code>cause</code>
	* and <code>updateCounts</code>. The <code>SQLState</code> is initialized
	* to <code>null</code> and the vendor code is initialized to 0.
	*
	* @param reason a description of the exception
	* @param updateCounts an array of <code>int</code>, with each element
	*indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating
	* the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, updateCounts : java.NativeArray<Int>, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with
	* a given <code>reason</code>, <code>SQLState</code>,<code>cause</code>, and
	* <code>updateCounts</code>. The vendor code is initialized to 0.
	*
	* @param reason a description of the exception
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param updateCounts an array of <code>int</code>, with each element
	* indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating
	* the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, SQLState : String, updateCounts : java.NativeArray<Int>, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a <code>BatchUpdateException</code> object initialized with
	* a given <code>reason</code>, <code>SQLState</code>, <code>vendorCode</code>
	* <code>cause</code> and <code>updateCounts</code>.
	*
	* @param reason a description of the error
	* @param SQLState an XOPEN or SQL:2003 code identifying the exception
	* @param vendorCode an exception code used by a particular
	* database vendor
	* @param updateCounts an array of <code>int</code>, with each element
	*indicating the update count, <code>Statement.SUCCESS_NO_INFO</code> or
	* <code>Statement.EXECUTE_FAILED</code> for each SQL command in
	* the batch for JDBC drivers that continue processing
	* after a command failure; an update count or
	* <code>Statement.SUCCESS_NO_INFO</code> for each SQL command in the batch
	* prior to the failure for JDBC drivers that stop processing after a command
	* failure
	* @param cause the underlying reason for this <code>SQLException</code> (which is saved for later retrieval by the <code>getCause()</code> method);
	* may be null indicating
	* the cause is non-existent or unknown.
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reason : String, SQLState : String, vendorCode : Int, updateCounts : java.NativeArray<Int>, cause : java.lang.Throwable) : Void;
	
	/**
	* Retrieves the update count for each update statement in the batch
	* update that executed successfully before this exception occurred.
	* A driver that implements batch updates may or may not continue to
	* process the remaining commands in a batch when one of the commands
	* fails to execute properly. If the driver continues processing commands,
	* the array returned by this method will have as many elements as
	* there are commands in the batch; otherwise, it will contain an
	* update count for each command that executed successfully before
	* the <code>BatchUpdateException</code> was thrown.
	*<P>
	* The possible return values for this method were modified for
	* the Java 2 SDK, Standard Edition, version 1.3.  This was done to
	* accommodate the new option of continuing to process commands
	* in a batch update after a <code>BatchUpdateException</code> object
	* has been thrown.
	*
	* @return an array of <code>int</code> containing the update counts
	* for the updates that were executed successfully before this error
	* occurred.  Or, if the driver continues to process commands after an
	* error, one of the following for every command in the batch:
	* <OL>
	* <LI>an update count
	*  <LI><code>Statement.SUCCESS_NO_INFO</code> to indicate that the command
	*     executed successfully but the number of rows affected is unknown
	*  <LI><code>Statement.EXECUTE_FAILED</code> to indicate that the command
	*     failed to execute successfully
	* </OL>
	* @since 1.3
	*/
	@:require(java3) @:overload public function getUpdateCounts() : java.NativeArray<Int>;
	
	
}
