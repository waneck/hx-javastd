package javax.security.auth.callback;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Signals that a <code>CallbackHandler</code> does not
* recognize a particular <code>Callback</code>.
*
*/
extern class UnsupportedCallbackException extends java.lang.Exception
{
	/**
	* Constructs a <code>UnsupportedCallbackException</code>
	* with no detail message.
	*
	* <p>
	*
	* @param callback the unrecognized <code>Callback</code>.
	*/
	@:overload @:public public function new(_callback : javax.security.auth.callback.Callback) : Void;
	
	/**
	* Constructs a UnsupportedCallbackException with the specified detail
	* message.  A detail message is a String that describes this particular
	* exception.
	*
	* <p>
	*
	* @param callback the unrecognized <code>Callback</code>. <p>
	*
	* @param msg the detail message.
	*/
	@:overload @:public public function new(_callback : javax.security.auth.callback.Callback, msg : String) : Void;
	
	/**
	* Get the unrecognized <code>Callback</code>.
	*
	* <p>
	*
	* @return the unrecognized <code>Callback</code>.
	*/
	@:overload @:public public function getCallback() : javax.security.auth.callback.Callback;
	
	
}
