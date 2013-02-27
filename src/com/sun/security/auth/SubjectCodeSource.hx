package com.sun.security.auth;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SubjectCodeSource extends java.security.CodeSource implements java.io.Serializable
{
	/**
	* Returns true if this <code>SubjectCodeSource</code> object "implies"
	* the specified <code>CodeSource</code>.
	* More specifically, this method makes the following checks.
	* If any fail, it returns false.  If they all succeed, it returns true.
	*
	* <p>
	* <ol>
	* <li> The provided codesource must not be <code>null</code>.
	* <li> codesource must be an instance of <code>SubjectCodeSource</code>.
	* <li> super.implies(codesource) must return true.
	* <li> for each principal in this codesource's principal list:
	* <ol>
	* <li>     if the principal is an instanceof
	*          <code>PrincipalComparator</code>, then the principal must
	*          imply the provided codesource's <code>Subject</code>.
	* <li>     if the principal is not an instanceof
	*          <code>PrincipalComparator</code>, then the provided
	*          codesource's <code>Subject</code> must have an
	*          associated <code>Principal</code>, <i>P</i>, where
	*          P.getClass().getName equals principal.principalClass,
	*          and P.getName() equals principal.principalName.
	* </ol>
	* </ol>
	*
	* <p>
	*
	* @param codesource the <code>CodeSource</code> to compare against.
	*
	* @return true if this <code>SubjectCodeSource</code> implies the
	*          the specified <code>CodeSource</code>.
	*/
	@:overload public function implies(codesource : java.security.CodeSource) : Bool;
	
	/**
	* Tests for equality between the specified object and this
	* object. Two <code>SubjectCodeSource</code> objects are considered equal
	* if their locations are of identical value, if the two sets of
	* Certificates are of identical values, and if the
	* Subjects are equal, and if the PolicyParser.PrincipalEntry values
	* are of identical values.  It is not required that
	* the Certificates or PolicyParser.PrincipalEntry values
	* be in the same order.
	*
	* <p>
	*
	* @param obj the object to test for equality with this object.
	*
	* @return true if the objects are considered equal, false otherwise.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return a hashcode for this <code>SubjectCodeSource</code>.
	*
	* <p>
	*
	* @return a hashcode for this <code>SubjectCodeSource</code>.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Return a String representation of this <code>SubjectCodeSource</code>.
	*
	* <p>
	*
	* @return a String representation of this <code>SubjectCodeSource</code>.
	*/
	@:overload override public function toString() : String;
	
	
}
