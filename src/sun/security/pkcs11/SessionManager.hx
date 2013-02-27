package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Session manager. There is one session manager object per PKCS#11
* provider. It allows code to checkout a session, release it
* back to the pool, or force it to be closed.
*
* The session manager pools sessions to minimize the number of
* C_OpenSession() and C_CloseSession() that have to be made. It
* maintains two pools: one for "object" sessions and one for
* "operation" sessions.
*
* The reason for this separation is how PKCS#11 deals with session objects.
* It defines that when a session is closed, all objects created within
* that session are destroyed. In other words, we may never close a session
* while a Key created it in is still in use. We would like to keep the
* number of such sessions low. Note that we occasionally want to explicitly
* close a session, see P11Signature.
*
* NOTE that sessions obtained from this class SHOULD be returned using
* either releaseSession() or closeSession() using a finally block when
* not needed anymore. Otherwise, they will be left for cleanup via the
* PhantomReference mechanism when GC kicks in, but it's best not to rely
* on that since GC may not run timely enough since the native PKCS11 library
* is also consuming memory.
*
* Note that sessions are automatically closed when they are not used for a
* period of time, see Session.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class SessionManager
{
	
}
@:native('sun$security$pkcs11$SessionManager$Pool') @:internal extern class SessionManager_Pool
{
	
}
