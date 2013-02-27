package javax.crypto.spec;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class PBEKeySpec implements java.security.spec.KeySpec
{
	/**
	* Constructor that takes a password. An empty char[] is used if
	* null is specified.
	*
	* <p> Note: <code>password</code> is cloned before it is stored in
	* the new <code>PBEKeySpec</code> object.
	*
	* @param password the password.
	*/
	@:overload public function new(password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Constructor that takes a password, salt, iteration count, and
	* to-be-derived key length for generating PBEKey of variable-key-size
	* PBE ciphers.  An empty char[] is used if null is specified for
	* <code>password</code>.
	*
	* <p> Note: the <code>password</code> and <code>salt</code>
	* are cloned before they are stored in
	* the new <code>PBEKeySpec</code> object.
	*
	* @param password the password.
	* @param salt the salt.
	* @param iterationCount the iteration count.
	* @param keyLength the to-be-derived key length.
	* @exception NullPointerException if <code>salt</code> is null.
	* @exception IllegalArgumentException if <code>salt</code> is empty,
	* i.e. 0-length, <code>iterationCount</code> or
	* <code>keyLength</code> is not positive.
	*/
	@:overload public function new(password : java.NativeArray<java.StdTypes.Char16>, salt : java.NativeArray<java.StdTypes.Int8>, iterationCount : Int, keyLength : Int) : Void;
	
	/**
	* Constructor that takes a password, salt, iteration count for
	* generating PBEKey of fixed-key-size PBE ciphers. An empty
	* char[] is used if null is specified for <code>password</code>.
	*
	* <p> Note: the <code>password</code> and <code>salt</code>
	* are cloned before they are stored in the new
	* <code>PBEKeySpec</code> object.
	*
	* @param password the password.
	* @param salt the salt.
	* @param iterationCount the iteration count.
	* @exception NullPointerException if <code>salt</code> is null.
	* @exception IllegalArgumentException if <code>salt</code> is empty,
	* i.e. 0-length, or <code>iterationCount</code> is not positive.
	*/
	@:overload public function new(password : java.NativeArray<java.StdTypes.Char16>, salt : java.NativeArray<java.StdTypes.Int8>, iterationCount : Int) : Void;
	
	/**
	* Clears the internal copy of the password.
	*
	*/
	@:overload @:final public function clearPassword() : Void;
	
	/**
	* Returns a copy of the password.
	*
	* <p> Note: this method returns a copy of the password. It is
	* the caller's responsibility to zero out the password information after
	* it is no longer needed.
	*
	* @exception IllegalStateException if password has been cleared by
	* calling <code>clearPassword</code> method.
	* @return the password.
	*/
	@:overload @:final public function getPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns a copy of the salt or null if not specified.
	*
	* <p> Note: this method should return a copy of the salt. It is
	* the caller's responsibility to zero out the salt information after
	* it is no longer needed.
	*
	* @return the salt.
	*/
	@:overload @:final public function getSalt() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the iteration count or 0 if not specified.
	*
	* @return the iteration count.
	*/
	@:overload @:final public function getIterationCount() : Int;
	
	/**
	* Returns the to-be-derived key length or 0 if not specified.
	*
	* <p> Note: this is used to indicate the preference on key length
	* for variable-key-size ciphers. The actual key size depends on
	* each provider's implementation.
	*
	* @return the to-be-derived key length.
	*/
	@:overload @:final public function getKeyLength() : Int;
	
	
}
