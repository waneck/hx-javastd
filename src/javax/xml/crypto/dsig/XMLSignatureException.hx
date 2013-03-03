package javax.xml.crypto.dsig;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* $Id: XMLSignatureException.java,v 1.5 2005/05/10 16:03:48 mullan Exp $
*/
extern class XMLSignatureException extends java.lang.Exception
{
	/**
	* Constructs a new <code>XMLSignatureException</code> with
	* <code>null</code> as its detail message.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>XMLSignatureException</code> with the specified
	* detail message.
	*
	* @param message the detail message
	*/
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* Constructs a new <code>XMLSignatureException</code> with the
	* specified detail message and cause.
	* <p>Note that the detail message associated with
	* <code>cause</code> is <i>not</i> automatically incorporated in
	* this exception's detail message.
	*
	* @param message the detail message
	* @param cause the cause (A <tt>null</tt> value is permitted, and
	*        indicates that the cause is nonexistent or unknown.)
	*/
	@:overload @:public public function new(message : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Constructs a new <code>XMLSignatureException</code> with the specified
	* cause and a detail message of
	* <code>(cause==null ? null : cause.toString())</code>
	* (which typically contains the class and detail message of
	* <code>cause</code>).
	*
	* @param cause the cause (A <tt>null</tt> value is permitted, and
	*        indicates that the cause is nonexistent or unknown.)
	*/
	@:overload @:public public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Returns the cause of this <code>XMLSignatureException</code> or
	* <code>null</code> if the cause is nonexistent or unknown.  (The
	* cause is the throwable that caused this
	* <code>XMLSignatureException</code> to get thrown.)
	*
	* @return the cause of this <code>XMLSignatureException</code> or
	*         <code>null</code> if the cause is nonexistent or unknown.
	*/
	@:overload @:public override public function getCause() : java.lang.Throwable;
	
	/**
	* Prints this <code>XMLSignatureException</code>, its backtrace and
	* the cause's backtrace to the standard error stream.
	*/
	@:overload @:public override public function printStackTrace() : Void;
	
	/**
	* Prints this <code>XMLSignatureException</code>, its backtrace and
	* the cause's backtrace to the specified print stream.
	*
	* @param s <code>PrintStream</code> to use for output
	*/
	@:overload @:public override public function printStackTrace(s : java.io.PrintStream) : Void;
	
	/**
	* Prints this <code>XMLSignatureException</code>, its backtrace and
	* the cause's backtrace to the specified print writer.
	*
	* @param s <code>PrintWriter</code> to use for output
	*/
	@:overload @:public override public function printStackTrace(s : java.io.PrintWriter) : Void;
	
	
}
