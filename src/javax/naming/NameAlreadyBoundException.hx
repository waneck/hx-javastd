package javax.naming;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
* This exception is thrown by methods to indicate that
* a binding cannot be added because the name is already bound to
* another object.
* <p>
* Synchronization and serialization issues that apply to NamingException
* apply directly here.
*
* @author Rosanna Lee
* @author Scott Seligman
*
* @see Context#bind
* @see Context#rebind
* @see Context#createSubcontext
* @see javax.naming.directory.DirContext#bind
* @see javax.naming.directory.DirContext#rebind
* @see javax.naming.directory.DirContext#createSubcontext
* @since 1.3
*/
@:require(java3) extern class NameAlreadyBoundException extends javax.naming.NamingException
{
	/**
	* Constructs a new instance of NameAlreadyBoundException using the
	* explanation supplied. All other fields default to null.
	*
	*
	* @param   explanation     Possibly null additional detail about this exception.
	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:public public function new(explanation : String) : Void;
	
	/**
	* Constructs a new instance of NameAlreadyBoundException.
	* All fields are set to null;
	*/
	@:overload @:public public function new() : Void;
	
	
}
