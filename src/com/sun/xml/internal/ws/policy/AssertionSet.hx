package com.sun.xml.internal.ws.policy;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AssertionSet implements java.lang.Iterable<com.sun.xml.internal.ws.policy.PolicyAssertion> implements java.lang.Comparable<AssertionSet>
{
	/**
	* Creates and returns new assertion set holding content of all provided policy assertion sets.
	* <p/>
	* This method should not be used to perform a merge of general Policy instances. A client should be aware of the
	* method's result meaning and the difference between merge of Policy instances and merge of AssertionSet instances.
	*
	*
	* @param alternatives collection of provided policy assertion sets which content is to be stored in the assertion set.
	*        May be {@code null} - empty assertion set is returned in such case.
	* @return new instance of assertion set holding the content of all provided policy assertion sets.
	*/
	@:overload public static function createMergedAssertionSet(alternatives : java.util.Collection<AssertionSet>) : AssertionSet;
	
	/**
	* Creates and returns new assertion set holding a set of provided policy assertions.
	*
	* @param assertions collection of provided policy assertions to be stored in the assertion set. May be {@code null}.
	* @return new instance of assertion set holding the provided policy assertions
	*/
	@:overload public static function createAssertionSet(assertions : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>) : AssertionSet;
	
	@:overload public static function emptyAssertionSet() : AssertionSet;
	
	/**
	* Returns an iterator over a set of child policy assertion objects.
	*
	* @return policy assertion Iterator.
	*/
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.PolicyAssertion>;
	
	/**
	* Searches for assertions with given name. Only assertions that are contained as immediate children of the assertion set are
	* searched, i.e. nested policies are not searched.
	*
	* @param name The fully qualified name of searched assertion
	* @return List of all assertions matching the requested name. If no assertions are found, the returned list is empty
	* (i.e. {@code null} value is never returned).
	*/
	@:overload public function get(name : javax.xml.namespace.QName) : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>;
	
	/**
	* Returns {@code true} if this assertion set contains no assertions.
	*
	* @return {@code true} if this assertion set contains no assertions.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns true if the assertion set contains the assertion name specified in its vocabulary
	*
	* @param assertionName the fully qualified name of the assertion
	* @return {@code true}, if an assertion with the given name could be found in the assertion set vocabulary {@code false} otherwise.
	*/
	@:overload public function contains(assertionName : javax.xml.namespace.QName) : Bool;
	
	/**
	* An {@code Comparable<T>.compareTo(T o)} interface method implementation.
	* @param that other alternative to compare with
	*/
	@:overload public function compareTo(that : AssertionSet) : Int;
	
	/**
	* An {@code Object.equals(Object obj)} method override.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* An {@code Object.hashCode()} method override.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* An {@code Object.toString()} method override.
	*/
	@:overload public function toString() : String;
	
	
}
