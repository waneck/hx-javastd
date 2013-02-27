package com.sun.jndi.toolkit.ctx;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Continuation extends javax.naming.spi.ResolveResult
{
	/**
	* The name that we started out with. It is initialized by the constructor
	* and used to calculate to "resolved name" in NamingException in
	* fillInException().
	* %%% Note that this approach does not always do the calculation
	* correctly with respect to absence or presence of the trailing slash
	* for resolved name.
	*/
	private var starter : javax.naming.Name;
	
	/**
	* Whether links were encountered.
	*/
	private var followingLink : Dynamic;
	
	/**
	* The environment used by the caller. Initialized by constructor and
	* used when filling out a CannotProceedException.
	*/
	private var environment : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Indicates whether the Continuation instance indicates that the operation
	* should be continued using the data in the Continuation.
	* Typically, this is only false if an error has been encountered or if
	* the operation has succeeded.
	*/
	private var continuing : Bool;
	
	/**
	* The last resolved context. Used to set the "AltNameCtx" in a
	* CannotProceedException.
	*/
	private var resolvedContext : javax.naming.Context;
	
	/**
	* The resolved name relative to resolvedContext. Used to set the
	* "AltName" in a CannotProceedException.
	*/
	private var relativeResolvedName : javax.naming.Name;
	
	/**
	* Constructs a new instance of Continuation.
	* Used as dummy for contexts that do not do federation (e.g. for schema ops)
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new instance of Continuation.
	* @param top The name of the object that is to be resolved/operated upon.
	*          This becomes the Continuation's 'starter' and is used to
	*          calculate the "resolved name" when filling  in a NamingException.
	* @param environment The environment used by the caller. It is used
	* when setting the "environment" of a CannotProceedException.
	*/
	@:overload public function new(top : javax.naming.Name, environment : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Determines whether this Continuation contains data that should be
	* used to continue the operation.
	*
	* @return true if operation should continue; false if operation has
	* completed (successfully or unsuccessfully).
	*/
	@:overload public function isContinue() : Bool;
	
	/**
	* Sets this Continuation to indicate successful completion.
	* Subsequent calls to isContinue() will return false.
	* This method is different from the setError() methods only from
	* the standpoint that this method does not set any of the other
	* fields such as resolved object or resolved context. This is because
	* this method is typically called when the context recognizes that
	* the operation has successfully completed and that the continuation
	* already contains the appropriately set fields.
	* @see setError
	* @see setErrorNNS
	*/
	@:overload public function setSuccess() : Void;
	
	/**
	* Fills in an exception's fields using data from this Continuation.
	* The resolved name is set by subtracting remainingName from starter.
	* %%% This might not not always produce the correct answer wrt trailing "/".
	* If the exception is a CannotProceedException, its environment,
	* altName, and altNameCtx fields are set using this continuation's
	* environment, relativeResolvedName, and resolvedContext.
	*
	* @param e The non-null naming exception to fill.
	* @return The non-null naming exception with its fields set using
	* data from this Continuation.
	*/
	@:overload public function fillInException(e : javax.naming.NamingException) : javax.naming.NamingException;
	
	/**
	* Sets this Continuation to indicated that an error has occurred,
	* and that the remaining name is rename + "/".
	*
	* This method is typically called by _nns methods that have been
	* given a name to process. It might process part of that name but
	* encountered some error. Consequenetly, it would call setErrorNNS()
	* with the remaining name. Since the _nns method was expected to
	* operate upon the "nns" of the original name, the remaining name
	* must include the "nns". That's why this method adds a trailing "/".
	*<p>
	* After this method is called, isContinuing() returns false.
	*
	* @param resObj The possibly null object that was resolved to.
	* @param remain The non-null remaining name.
	*/
	@:overload public function setErrorNNS(resObj : Dynamic, remain : javax.naming.Name) : Void;
	
	/**
	* Form that accepts a String name instead of a Name name.

	* @param resObj The possibly null object that was resolved to.
	* @param remain The possibly String remaining name.
	*
	* @see #setErrorNNS(java.lang.Object, javax.naming.Name)
	*/
	@:overload public function setErrorNNS(resObj : Dynamic, remain : String) : Void;
	
	/**
	* Sets this Continuation to indicated that an error has occurred
	* and supply resolved information.
	*
	* This method is typically called by methods that have been
	* given a name to process. It might process part of that name but
	* encountered some error. Consequenetly, it would call setError()
	* with the resolved object and the remaining name.
	*<p>
	* After this method is called, isContinuing() returns false.
	*
	* @param resObj The possibly null object that was resolved to.
	* @param remain The possibly null remaining name.
	*/
	@:overload public function setError(resObj : Dynamic, remain : javax.naming.Name) : Void;
	
	/**
	* Form that accepts a String name instead of a Name name.

	* @param resObj The possibly null object that was resolved to.
	* @param remain The possibly String remaining name.
	*
	* @see #setError(java.lang.Object, javax.naming.Name)
	*/
	@:overload public function setError(resObj : Dynamic, remain : String) : Void;
	
	/**
	* Sets this Continuation with the supplied data, and set remaining name
	* to be "/".
	* This method is typically called by _nns methods that have been
	* given a name to process. It might the name (without the nns) and
	* continue process of the nns elsewhere.
	* Consequently, it would call this form of the setContinueNNS().
	* This method supplies "/" as the remaining name.
	*<p>
	* After this method is called, isContinuing() returns true.
	*
	* @param resObj The possibly null resolved object.
	* @param relResName The non-null resolved name relative to currCtx.
	* @param currCtx The non-null context from which relResName is to be resolved.
	*/
	@:overload public function setContinueNNS(resObj : Dynamic, relResName : javax.naming.Name, currCtx : javax.naming.Context) : Void;
	
	/**
	* Overloaded form that accesses String names.
	*
	* @param resObj The possibly null resolved object.
	* @param relResName The non-null resolved name relative to currCtx.
	* @param currCtx The non-null context from which relResName is to be resolved.
	* @see #setContinueNNS(java.lang.Object, javax.naming.Name, javax.naming.Context)
	*/
	@:overload public function setContinueNNS(resObj : Dynamic, relResName : String, currCtx : javax.naming.Context) : Void;
	
	/**
	* Sets this Continuation with the supplied data, and set remaining name
	* to be the empty name.
	* This method is typically called by list-style methods
	* in which the target context implementing list() expects an
	* empty name. For example when c_list() is given a non-empty name to
	* process, it would resolve that name, and then call setContinue()
	* with the resolved object so that the target context to be listed
	* would be called with the empty name (i.e. list the target context itself).
	*<p>
	* After this method is called, isContinuing() returns true.
	*
	* @param resObj The possibly null resolved object.
	* @param relResName The non-null resolved name relative to currCtx.
	* @param currCtx The non-null context from which relResName is to be resolved.
	*/
	@:overload public function setContinue(obj : Dynamic, relResName : javax.naming.Name, currCtx : javax.naming.Context) : Void;
	
	/**
	* Sets this Continuation with the supplied data.

	* This method is typically called by a method that has been asked
	* to operate on a name. The method resolves part of the name
	* (relResName) to obj and sets the unprocessed part to rename.
	* It calls setContinue() so that the operation can be continued
	* using this data.
	*<p>
	* After this method is called, isContinuing() returns true.
	*
	* @param resObj The possibly null resolved object.
	* @param relResName The non-null resolved name relative to currCtx.
	* @param currCtx The non-null context from which relResName is to be resolved.
	* @param remain The non-null remaining name.
	*/
	@:overload public function setContinue(obj : Dynamic, relResName : javax.naming.Name, currCtx : javax.naming.Context, remain : javax.naming.Name) : Void;
	
	/**
	* String overload.
	*
	* @param resObj The possibly null resolved object.
	* @param relResName The non-null resolved name relative to currCtx.
	* @param currCtx The non-null context from which relResName is to be resolved.
	* @param remain The non-null remaining name.
	* @see #setContinue(java.lang.Object, java.lang.String, javax.naming.Context, java.lang.String)
	*/
	@:overload public function setContinue(obj : Dynamic, relResName : String, currCtx : javax.naming.Context, remain : String) : Void;
	
	/**
	* %%% This method is kept only for backward compatibility. Delete when
	* old implementations updated.
	*
	* Replaced by setContinue(obj, relResName, (Context)currCtx);
	*
	* @deprecated
	*/
	@:overload public function setContinue(obj : Dynamic, currCtx : Dynamic) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function toString(detail : Bool) : String;
	
	
}
