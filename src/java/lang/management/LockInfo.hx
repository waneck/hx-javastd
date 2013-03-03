package java.lang.management;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class LockInfo
{
	/**
	* Constructs a <tt>LockInfo</tt> object.
	*
	* @param className the fully qualified name of the class of the lock object.
	* @param identityHashCode the {@link System#identityHashCode
	*                         identity hash code} of the lock object.
	*/
	@:overload @:public public function new(className : String, identityHashCode : Int) : Void;
	
	/**
	* Returns the fully qualified name of the class of the lock object.
	*
	* @return the fully qualified name of the class of the lock object.
	*/
	@:overload @:public public function getClassName() : String;
	
	/**
	* Returns the identity hash code of the lock object
	* returned from the {@link System#identityHashCode} method.
	*
	* @return the identity hash code of the lock object.
	*/
	@:overload @:public public function getIdentityHashCode() : Int;
	
	/**
	* Returns a string representation of a lock.  The returned
	* string representation consists of the name of the class of the
	* lock object, the at-sign character `@', and the unsigned
	* hexadecimal representation of the <em>identity</em> hash code
	* of the object.  This method returns a string equals to the value of:
	* <blockquote>
	* <pre>
	* lock.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(lock))
	* </pre></blockquote>
	* where <tt>lock</tt> is the lock object.
	*
	* @return the string representation of a lock.
	*/
	@:overload @:public public function toString() : String;
	
	
}
