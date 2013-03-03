package javax.naming;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface NamingEnumeration<T> extends java.util.Enumeration<T>
{
	/**
	* Retrieves the next element in the enumeration.
	* This method allows naming exceptions encountered while
	* retrieving the next element to be caught and handled
	* by the application.
	* <p>
	* Note that <tt>next()</tt> can also throw the runtime exception
	* NoSuchElementException to indicate that the caller is
	* attempting to enumerate beyond the end of the enumeration.
	* This is different from a NamingException, which indicates
	* that there was a problem in obtaining the next element,
	* for example, due to a referral or server unavailability, etc.
	*
	* @return         The possibly null element in the enumeration.
	*     null is only valid for enumerations that can return
	*     null (e.g. Attribute.getAll() returns an enumeration of
	*     attribute values, and an attribute value can be null).
	* @exception NamingException If a naming exception is encountered while attempting
	*                 to retrieve the next element. See NamingException
	*                 and its subclasses for the possible naming exceptions.
	* @exception java.util.NoSuchElementException If attempting to get the next element when none is available.
	* @see java.util.Enumeration#nextElement
	*/
	@:overload @:public public function next() : T;
	
	/**
	* Determines whether there are any more elements in the enumeration.
	* This method allows naming exceptions encountered while
	* determining whether there are more elements to be caught and handled
	* by the application.
	*
	* @return         true if there is more in the enumeration ; false otherwise.
	* @exception NamingException
	*                 If a naming exception is encountered while attempting
	*                 to determine whether there is another element
	*                 in the enumeration. See NamingException
	*                 and its subclasses for the possible naming exceptions.
	* @see java.util.Enumeration#hasMoreElements
	*/
	@:overload @:public public function hasMore() : Bool;
	
	/**
	* Closes this enumeration.
	*
	* After this method has been invoked on this enumeration, the
	* enumeration becomes invalid and subsequent invocation of any of
	* its methods will yield undefined results.
	* This method is intended for aborting an enumeration to free up resources.
	* If an enumeration proceeds to the end--that is, until
	* <tt>hasMoreElements()</tt> or <tt>hasMore()</tt> returns <tt>false</tt>--
	* resources will be freed up automatically and there is no need to
	* explicitly call <tt>close()</tt>.
	*<p>
	* This method indicates to the service provider that it is free
	* to release resources associated with the enumeration, and can
	* notify servers to cancel any outstanding requests. The <tt>close()</tt>
	* method is a hint to implementations for managing their resources.
	* Implementations are encouraged to use appropriate algorithms to
	* manage their resources when client omits the <tt>close()</tt> calls.
	*
	* @exception NamingException If a naming exception is encountered
	* while closing the enumeration.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function close() : Void;
	
	
}
