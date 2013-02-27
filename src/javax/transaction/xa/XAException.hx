package javax.transaction.xa;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
* The XAException is thrown by the Resource Manager (RM) to inform the
* Transaction Manager of an error encountered by the involved transaction.
*
*/
extern class XAException extends java.lang.Exception
{
	/**
	* The error code with which to create the SystemException.
	*
	* @serial The error code for the exception
	*/
	public var errorCode : Int;
	
	/**
	* Create an XAException.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create an XAException with a given string.
	*
	* @param s The <code>String</code> object containing the exception
	*          message.
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Create an XAException with a given error code.
	*
	* @param errcode The error code identifying the exception.
	*/
	@:overload public function new(errcode : Int) : Void;
	
	/**
	* The inclusive lower bound of the rollback codes.
	*/
	public static var XA_RBBASE(default, null) : Int;
	
	/**
	* Indicates that the rollback was caused by an unspecified reason.
	*/
	public static var XA_RBROLLBACK(default, null) : Int;
	
	/**
	* Indicates that the rollback was caused by a communication failure.
	*/
	public static var XA_RBCOMMFAIL(default, null) : Int;
	
	/**
	* A deadlock was detected.
	*/
	public static var XA_RBDEADLOCK(default, null) : Int;
	
	/**
	* A condition that violates the integrity of the resource was detected.
	*/
	public static var XA_RBINTEGRITY(default, null) : Int;
	
	/**
	* The resource manager rolled back the transaction branch for a reason
	* not on this list.
	*/
	public static var XA_RBOTHER(default, null) : Int;
	
	/**
	* A protocol error occurred in the resource manager.
	*/
	public static var XA_RBPROTO(default, null) : Int;
	
	/**
	* A transaction branch took too long.
	*/
	public static var XA_RBTIMEOUT(default, null) : Int;
	
	/**
	* May retry the transaction branch.
	*/
	public static var XA_RBTRANSIENT(default, null) : Int;
	
	/**
	* The inclusive upper bound of the rollback error code.
	*/
	public static var XA_RBEND(default, null) : Int;
	
	/**
	* Resumption must occur where the suspension occurred.
	*/
	public static var XA_NOMIGRATE(default, null) : Int;
	
	/**
	* The transaction branch may have been heuristically completed.
	*/
	public static var XA_HEURHAZ(default, null) : Int;
	
	/**
	* The transaction branch has been heuristically committed.
	*/
	public static var XA_HEURCOM(default, null) : Int;
	
	/**
	* The transaction branch has been heuristically rolled back.
	*/
	public static var XA_HEURRB(default, null) : Int;
	
	/**
	* The transaction branch has been heuristically committed and
	* rolled back.
	*/
	public static var XA_HEURMIX(default, null) : Int;
	
	/**
	* Routine returned with no effect and may be reissued.
	*/
	public static var XA_RETRY(default, null) : Int;
	
	/**
	* The transaction branch was read-only and has been committed.
	*/
	public static var XA_RDONLY(default, null) : Int;
	
	/**
	* There is an asynchronous operation already outstanding.
	*/
	public static var XAER_ASYNC(default, null) : Int;
	
	/**
	* A resource manager error has occurred in the transaction branch.
	*/
	public static var XAER_RMERR(default, null) : Int;
	
	/**
	* The XID is not valid.
	*/
	public static var XAER_NOTA(default, null) : Int;
	
	/**
	* Invalid arguments were given.
	*/
	public static var XAER_INVAL(default, null) : Int;
	
	/**
	* Routine was invoked in an inproper context.
	*/
	public static var XAER_PROTO(default, null) : Int;
	
	/**
	* Resource manager is unavailable.
	*/
	public static var XAER_RMFAIL(default, null) : Int;
	
	/**
	* The XID already exists.
	*/
	public static var XAER_DUPID(default, null) : Int;
	
	/**
	* The resource manager is doing work outside a global transaction.
	*/
	public static var XAER_OUTSIDE(default, null) : Int;
	
	
}
