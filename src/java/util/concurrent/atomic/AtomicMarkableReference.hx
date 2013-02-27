package java.util.concurrent.atomic;
/*
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
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
/**
* An {@code AtomicMarkableReference} maintains an object reference
* along with a mark bit, that can be updated atomically.
*
* <p>Implementation note: This implementation maintains markable
* references by creating internal objects representing "boxed"
* [reference, boolean] pairs.
*
* @since 1.5
* @author Doug Lea
* @param <V> The type of object referred to by this reference
*/
@:require(java5) extern class AtomicMarkableReference<V>
{
	/**
	* Creates a new {@code AtomicMarkableReference} with the given
	* initial values.
	*
	* @param initialRef the initial reference
	* @param initialMark the initial mark
	*/
	@:overload public function new(initialRef : V, initialMark : Bool) : Void;
	
	/**
	* Returns the current value of the reference.
	*
	* @return the current value of the reference
	*/
	@:overload public function getReference() : V;
	
	/**
	* Returns the current value of the mark.
	*
	* @return the current value of the mark
	*/
	@:overload public function isMarked() : Bool;
	
	/**
	* Returns the current values of both the reference and the mark.
	* Typical usage is {@code boolean[1] holder; ref = v.get(holder); }.
	*
	* @param markHolder an array of size of at least one. On return,
	* {@code markholder[0]} will hold the value of the mark.
	* @return the current value of the reference
	*/
	@:overload public function get(markHolder : java.NativeArray<Bool>) : V;
	
	/**
	* Atomically sets the value of both the reference and mark
	* to the given update values if the
	* current reference is {@code ==} to the expected reference
	* and the current mark is equal to the expected mark.
	*
	* <p>May <a href="package-summary.html#Spurious">fail spuriously</a>
	* and does not provide ordering guarantees, so is only rarely an
	* appropriate alternative to {@code compareAndSet}.
	*
	* @param expectedReference the expected value of the reference
	* @param newReference the new value for the reference
	* @param expectedMark the expected value of the mark
	* @param newMark the new value for the mark
	* @return true if successful
	*/
	@:overload public function weakCompareAndSet(expectedReference : V, newReference : V, expectedMark : Bool, newMark : Bool) : Bool;
	
	/**
	* Atomically sets the value of both the reference and mark
	* to the given update values if the
	* current reference is {@code ==} to the expected reference
	* and the current mark is equal to the expected mark.
	*
	* @param expectedReference the expected value of the reference
	* @param newReference the new value for the reference
	* @param expectedMark the expected value of the mark
	* @param newMark the new value for the mark
	* @return true if successful
	*/
	@:overload public function compareAndSet(expectedReference : V, newReference : V, expectedMark : Bool, newMark : Bool) : Bool;
	
	/**
	* Unconditionally sets the value of both the reference and mark.
	*
	* @param newReference the new value for the reference
	* @param newMark the new value for the mark
	*/
	@:overload public function set(newReference : V, newMark : Bool) : Void;
	
	/**
	* Atomically sets the value of the mark to the given update value
	* if the current reference is {@code ==} to the expected
	* reference.  Any given invocation of this operation may fail
	* (return {@code false}) spuriously, but repeated invocation
	* when the current value holds the expected value and no other
	* thread is also attempting to set the value will eventually
	* succeed.
	*
	* @param expectedReference the expected value of the reference
	* @param newMark the new value for the mark
	* @return true if successful
	*/
	@:overload public function attemptMark(expectedReference : V, newMark : Bool) : Bool;
	
	
}
@:native('java$util$concurrent$atomic$AtomicMarkableReference$Pair') @:internal extern class AtomicMarkableReference_Pair<T>
{
	
}
