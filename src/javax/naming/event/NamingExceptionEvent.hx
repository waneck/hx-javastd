package javax.naming.event;
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
extern class NamingExceptionEvent extends java.util.EventObject
{
	/**
	* Constructs an instance of <tt>NamingExceptionEvent</tt> using
	* the context in which the <tt>NamingException</tt> was thrown and the exception
	* that was thrown.
	*
	* @param source The non-null context in which the exception was thrown.
	* @param exc    The non-null <tt>NamingException</tt> that was thrown.
	*
	*/
	@:overload public function new(source : javax.naming.event.EventContext, exc : javax.naming.NamingException) : Void;
	
	/**
	* Retrieves the exception that was thrown.
	* @return The exception that was thrown.
	*/
	@:overload public function getException() : javax.naming.NamingException;
	
	/**
	* Retrieves the <tt>EventContext</tt> that fired this event.
	* This returns the same object as <tt>EventObject.getSource()</tt>.
	* @return The non-null <tt>EventContext</tt> that fired this event.
	*/
	@:overload public function getEventContext() : javax.naming.event.EventContext;
	
	/**
	* Invokes the <tt>namingExceptionThrown()</tt> method on
	* a listener using this event.
	* @param listener The non-null naming listener on which to invoke
	* the method.
	*/
	@:overload public function dispatch(listener : javax.naming.event.NamingListener) : Void;
	
	
}
