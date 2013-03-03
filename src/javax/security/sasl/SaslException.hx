package javax.security.sasl;
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
extern class SaslException extends java.io.IOException
{
	/**
	* Constructs a new instance of <tt>SaslException</tt>.
	* The root exception and the detailed message are null.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new instance of <tt>SaslException</tt> with a detailed message.
	* The root exception is null.
	* @param detail A possibly null string containing details of the exception.
	*
	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:public public function new(detail : String) : Void;
	
	/**
	* Constructs a new instance of <tt>SaslException</tt> with a detailed message
	* and a root exception.
	* For example, a SaslException might result from a problem with
	* the callback handler, which might throw a NoSuchCallbackException if
	* it does not support the requested callback, or throw an IOException
	* if it had problems obtaining data for the callback. The
	* SaslException's root exception would be then be the exception thrown
	* by the callback handler.
	*
	* @param detail A possibly null string containing details of the exception.
	* @param ex A possibly null root exception that caused this exception.
	*
	* @see java.lang.Throwable#getMessage
	* @see #getCause
	*/
	@:overload @:public public function new(detail : String, ex : java.lang.Throwable) : Void;
	
	/*
	* Override Throwable.getCause() to ensure deserialized object from
	* JSR 28 would return same value for getCause() (i.e., _exception).
	*/
	@:overload @:public override public function getCause() : java.lang.Throwable;
	
	/*
	* Override Throwable.initCause() to match getCause() by updating
	* _exception as well.
	*/
	@:overload @:public override public function initCause(cause : java.lang.Throwable) : java.lang.Throwable;
	
	/**
	* Returns the string representation of this exception.
	* The string representation contains
	* this exception's class name, its detailed messsage, and if
	* it has a root exception, the string representation of the root
	* exception. This string representation
	* is meant for debugging and not meant to be interpreted
	* programmatically.
	* @return The non-null string representation of this exception.
	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:public override public function toString() : String;
	
	
}
