package javax.imageio;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOException extends java.io.IOException
{
	/**
	* Constructs an <code>IIOException</code> with a given message
	* <code>String</code>.  No underlying cause is set;
	* <code>getCause</code> will return <code>null</code>.
	*
	* @param message the error message.
	*
	* @see #getMessage
	*/
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* Constructs an <code>IIOException</code> with a given message
	* <code>String</code> and a <code>Throwable</code> that was its
	* underlying cause.
	*
	* @param message the error message.
	* @param cause the <code>Throwable</code> (<code>Error</code> or
	* <code>Exception</code>) that caused this exception to occur.
	*
	* @see #getCause
	* @see #getMessage
	*/
	@:overload @:public public function new(message : String, cause : java.lang.Throwable) : Void;
	
	
}
