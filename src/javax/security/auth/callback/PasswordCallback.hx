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
* <p> Underlying security services instantiate and pass a
* <code>PasswordCallback</code> to the <code>handle</code>
* method of a <code>CallbackHandler</code> to retrieve password information.
*
* @see javax.security.auth.callback.CallbackHandler
*/
extern class PasswordCallback implements javax.security.auth.callback.Callback implements java.io.Serializable
{
	/**
	* Construct a <code>PasswordCallback</code> with a prompt
	* and a boolean specifying whether the password should be displayed
	* as it is being typed.
	*
	* <p>
	*
	* @param prompt the prompt used to request the password. <p>
	*
	* @param echoOn true if the password should be displayed
	*                  as it is being typed.
	*
	* @exception IllegalArgumentException if <code>prompt</code> is null or
	*                  if <code>prompt</code> has a length of 0.
	*/
	@:overload public function new(prompt : String, echoOn : Bool) : Void;
	
	/**
	* Get the prompt.
	*
	* <p>
	*
	* @return the prompt.
	*/
	@:overload public function getPrompt() : String;
	
	/**
	* Return whether the password
	* should be displayed as it is being typed.
	*
	* <p>
	*
	* @return the whether the password
	*          should be displayed as it is being typed.
	*/
	@:overload public function isEchoOn() : Bool;
	
	/**
	* Set the retrieved password.
	*
	* <p> This method makes a copy of the input <i>password</i>
	* before storing it.
	*
	* <p>
	*
	* @param password the retrieved password, which may be null.
	*
	* @see #getPassword
	*/
	@:overload public function setPassword(password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Get the retrieved password.
	*
	* <p> This method returns a copy of the retrieved password.
	*
	* <p>
	*
	* @return the retrieved password, which may be null.
	*
	* @see #setPassword
	*/
	@:overload public function getPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Clear the retrieved password.
	*/
	@:overload public function clearPassword() : Void;
	
	
}
