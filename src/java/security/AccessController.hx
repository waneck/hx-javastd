package java.security;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class AccessController
{
	/**
	* Performs the specified <code>PrivilegedAction</code> with privileges
	* enabled. The action is performed with <i>all</i> of the permissions
	* possessed by the caller's protection domain.
	*
	* <p> If the action's <code>run</code> method throws an (unchecked)
	* exception, it will propagate through this method.
	*
	* <p> Note that any DomainCombiner associated with the current
	* AccessControlContext will be ignored while the action is performed.
	*
	* @param action the action to be performed.
	*
	* @return the value returned by the action's <code>run</code> method.
	*
	* @exception NullPointerException if the action is <code>null</code>
	*
	* @see #doPrivileged(PrivilegedAction,AccessControlContext)
	* @see #doPrivileged(PrivilegedExceptionAction)
	* @see #doPrivilegedWithCombiner(PrivilegedAction)
	* @see java.security.DomainCombiner
	*/
	@:overload @:native public static function doPrivileged<T>(action : java.security.PrivilegedAction<T>) : T;
	
	/**
	* Performs the specified <code>PrivilegedAction</code> with privileges
	* enabled. The action is performed with <i>all</i> of the permissions
	* possessed by the caller's protection domain.
	*
	* <p> If the action's <code>run</code> method throws an (unchecked)
	* exception, it will propagate through this method.
	*
	* <p> This method preserves the current AccessControlContext's
	* DomainCombiner (which may be null) while the action is performed.
	*
	* @param action the action to be performed.
	*
	* @return the value returned by the action's <code>run</code> method.
	*
	* @exception NullPointerException if the action is <code>null</code>
	*
	* @see #doPrivileged(PrivilegedAction)
	* @see java.security.DomainCombiner
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public static function doPrivilegedWithCombiner<T>(action : java.security.PrivilegedAction<T>) : T;
	
	/**
	* Performs the specified <code>PrivilegedAction</code> with privileges
	* enabled and restricted by the specified
	* <code>AccessControlContext</code>.
	* The action is performed with the intersection of the permissions
	* possessed by the caller's protection domain, and those possessed
	* by the domains represented by the specified
	* <code>AccessControlContext</code>.
	* <p>
	* If the action's <code>run</code> method throws an (unchecked) exception,
	* it will propagate through this method.
	*
	* @param action the action to be performed.
	* @param context an <i>access control context</i>
	*                representing the restriction to be applied to the
	*                caller's domain's privileges before performing
	*                the specified action.  If the context is
	*                <code>null</code>,
	*                then no additional restriction is applied.
	*
	* @return the value returned by the action's <code>run</code> method.
	*
	* @exception NullPointerException if the action is <code>null</code>
	*
	* @see #doPrivileged(PrivilegedAction)
	* @see #doPrivileged(PrivilegedExceptionAction,AccessControlContext)
	*/
	@:overload @:native public static function doPrivileged<T>(action : java.security.PrivilegedAction<T>, context : java.security.AccessControlContext) : T;
	
	/**
	* Performs the specified <code>PrivilegedExceptionAction</code> with
	* privileges enabled.  The action is performed with <i>all</i> of the
	* permissions possessed by the caller's protection domain.
	*
	* <p> If the action's <code>run</code> method throws an <i>unchecked</i>
	* exception, it will propagate through this method.
	*
	* <p> Note that any DomainCombiner associated with the current
	* AccessControlContext will be ignored while the action is performed.
	*
	* @param action the action to be performed
	*
	* @return the value returned by the action's <code>run</code> method
	*
	* @exception PrivilegedActionException if the specified action's
	*         <code>run</code> method threw a <i>checked</i> exception
	* @exception NullPointerException if the action is <code>null</code>
	*
	* @see #doPrivileged(PrivilegedAction)
	* @see #doPrivileged(PrivilegedExceptionAction,AccessControlContext)
	* @see #doPrivilegedWithCombiner(PrivilegedExceptionAction)
	* @see java.security.DomainCombiner
	*/
	@:overload @:native public static function doPrivileged<T>(action : java.security.PrivilegedExceptionAction<T>) : T;
	
	/**
	* Performs the specified <code>PrivilegedExceptionAction</code> with
	* privileges enabled.  The action is performed with <i>all</i> of the
	* permissions possessed by the caller's protection domain.
	*
	* <p> If the action's <code>run</code> method throws an <i>unchecked</i>
	* exception, it will propagate through this method.
	*
	* <p> This method preserves the current AccessControlContext's
	* DomainCombiner (which may be null) while the action is performed.
	*
	* @param action the action to be performed.
	*
	* @return the value returned by the action's <code>run</code> method
	*
	* @exception PrivilegedActionException if the specified action's
	*         <code>run</code> method threw a <i>checked</i> exception
	* @exception NullPointerException if the action is <code>null</code>
	*
	* @see #doPrivileged(PrivilegedAction)
	* @see #doPrivileged(PrivilegedExceptionAction,AccessControlContext)
	* @see java.security.DomainCombiner
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public static function doPrivilegedWithCombiner<T>(action : java.security.PrivilegedExceptionAction<T>) : T;
	
	/**
	* Performs the specified <code>PrivilegedExceptionAction</code> with
	* privileges enabled and restricted by the specified
	* <code>AccessControlContext</code>.  The action is performed with the
	* intersection of the permissions possessed by the caller's
	* protection domain, and those possessed by the domains represented by the
	* specified <code>AccessControlContext</code>.
	* <p>
	* If the action's <code>run</code> method throws an <i>unchecked</i>
	* exception, it will propagate through this method.
	*
	* @param action the action to be performed
	* @param context an <i>access control context</i>
	*                representing the restriction to be applied to the
	*                caller's domain's privileges before performing
	*                the specified action.  If the context is
	*                <code>null</code>,
	*                then no additional restriction is applied.
	*
	* @return the value returned by the action's <code>run</code> method
	*
	* @exception PrivilegedActionException if the specified action's
	*         <code>run</code> method
	*         threw a <i>checked</i> exception
	* @exception NullPointerException if the action is <code>null</code>
	*
	* @see #doPrivileged(PrivilegedAction)
	* @see #doPrivileged(PrivilegedExceptionAction,AccessControlContext)
	*/
	@:overload @:native public static function doPrivileged<T>(action : java.security.PrivilegedExceptionAction<T>, context : java.security.AccessControlContext) : T;
	
	/**
	* This method takes a "snapshot" of the current calling context, which
	* includes the current Thread's inherited AccessControlContext,
	* and places it in an AccessControlContext object. This context may then
	* be checked at a later point, possibly in another thread.
	*
	* @see AccessControlContext
	*
	* @return the AccessControlContext based on the current context.
	*/
	@:overload public static function getContext() : java.security.AccessControlContext;
	
	/**
	* Determines whether the access request indicated by the
	* specified permission should be allowed or denied, based on
	* the current AccessControlContext and security policy.
	* This method quietly returns if the access request
	* is permitted, or throws an AccessControlException otherwise. The
	* getPermission method of the AccessControlException returns the
	* <code>perm</code> Permission object instance.
	*
	* @param perm the requested permission.
	*
	* @exception AccessControlException if the specified permission
	*            is not permitted, based on the current security policy.
	* @exception NullPointerException if the specified permission
	*            is <code>null</code> and is checked based on the
	*            security policy currently in effect.
	*/
	@:overload public static function checkPermission(perm : java.security.Permission) : Void;
	
	
}
