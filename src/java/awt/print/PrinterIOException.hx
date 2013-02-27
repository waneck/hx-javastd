package java.awt.print;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class PrinterIOException extends java.awt.print.PrinterException
{
	/**
	* Constructs a new <code>PrinterIOException</code>
	* with the string representation of the specified
	* {@link IOException}.
	* @param exception the specified <code>IOException</code>
	*/
	@:overload public function new(exception : java.io.IOException) : Void;
	
	/**
	* Returns the <code>IOException</code> that terminated
	* the print job.
	*
	* <p>This method predates the general-purpose exception chaining facility.
	* The {@link Throwable#getCause()} method is now the preferred means of
	* obtaining this information.
	*
	* @return the <code>IOException</code> that terminated
	* the print job.
	* @see IOException
	*/
	@:overload public function getIOException() : java.io.IOException;
	
	/**
	* Returns the the cause of this exception (the <code>IOException</code>
	* that terminated the print job).
	*
	* @return  the cause of this exception.
	* @since   1.4
	*/
	@:require(java4) @:overload override public function getCause() : java.lang.Throwable;
	
	
}
