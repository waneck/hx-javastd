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
* A reflection-based utility that enables atomic updates to
* designated {@code volatile} reference fields of designated
* classes.  This class is designed for use in atomic data structures
* in which several reference fields of the same node are
* independently subject to atomic updates. For example, a tree node
* might be declared as
*
*  <pre> {@code
* class Node {
*   private volatile Node left, right;
*
*   private static final AtomicReferenceFieldUpdater<Node, Node> leftUpdater =
*     AtomicReferenceFieldUpdater.newUpdater(Node.class, Node.class, "left");
*   private static AtomicReferenceFieldUpdater<Node, Node> rightUpdater =
*     AtomicReferenceFieldUpdater.newUpdater(Node.class, Node.class, "right");
*
*   Node getLeft() { return left;  }
*   boolean compareAndSetLeft(Node expect, Node update) {
*     return leftUpdater.compareAndSet(this, expect, update);
*   }
*   // ... and so on
* }}</pre>
*
* <p>Note that the guarantees of the {@code compareAndSet}
* method in this class are weaker than in other atomic classes.
* Because this class cannot ensure that all uses of the field
* are appropriate for purposes of atomic access, it can
* guarantee atomicity only with respect to other invocations of
* {@code compareAndSet} and {@code set} on the same updater.
*
* @since 1.5
* @author Doug Lea
* @param <T> The type of the object holding the updatable field
* @param <V> The type of the field
*/
@:require(java5) extern class AtomicReferenceFieldUpdater<T, V>
{
	/**
	* Creates and returns an updater for objects with the given field.
	* The Class arguments are needed to check that reflective types and
	* generic types match.
	*
	* @param tclass the class of the objects holding the field.
	* @param vclass the class of the field
	* @param fieldName the name of the field to be updated.
	* @return the updater
	* @throws IllegalArgumentException if the field is not a volatile reference type.
	* @throws RuntimeException with a nested reflection-based
	* exception if the class does not hold field or is the wrong type.
	*/
	@:overload public static function newUpdater<U, W>(tclass : Class<U>, vclass : Class<W>, fieldName : String) : AtomicReferenceFieldUpdater<U, W>;
	
	/**
	* Protected do-nothing constructor for use by subclasses.
	*/
	@:overload private function new() : Void;
	
	/**
	* Atomically sets the field of the given object managed by this updater
	* to the given updated value if the current value {@code ==} the
	* expected value. This method is guaranteed to be atomic with respect to
	* other calls to {@code compareAndSet} and {@code set}, but not
	* necessarily with respect to other changes in the field.
	*
	* @param obj An object whose field to conditionally set
	* @param expect the expected value
	* @param update the new value
	* @return true if successful.
	*/
	@:overload @:abstract public function compareAndSet(obj : T, expect : V, update : V) : Bool;
	
	/**
	* Atomically sets the field of the given object managed by this updater
	* to the given updated value if the current value {@code ==} the
	* expected value. This method is guaranteed to be atomic with respect to
	* other calls to {@code compareAndSet} and {@code set}, but not
	* necessarily with respect to other changes in the field.
	*
	* <p>May <a href="package-summary.html#Spurious">fail spuriously</a>
	* and does not provide ordering guarantees, so is only rarely an
	* appropriate alternative to {@code compareAndSet}.
	*
	* @param obj An object whose field to conditionally set
	* @param expect the expected value
	* @param update the new value
	* @return true if successful.
	*/
	@:overload @:abstract public function weakCompareAndSet(obj : T, expect : V, update : V) : Bool;
	
	/**
	* Sets the field of the given object managed by this updater to the
	* given updated value. This operation is guaranteed to act as a volatile
	* store with respect to subsequent invocations of {@code compareAndSet}.
	*
	* @param obj An object whose field to set
	* @param newValue the new value
	*/
	@:overload @:abstract public function set(obj : T, newValue : V) : Void;
	
	/**
	* Eventually sets the field of the given object managed by this
	* updater to the given updated value.
	*
	* @param obj An object whose field to set
	* @param newValue the new value
	* @since 1.6
	*/
	@:require(java6) @:overload @:abstract public function lazySet(obj : T, newValue : V) : Void;
	
	/**
	* Gets the current value held in the field of the given object managed
	* by this updater.
	*
	* @param obj An object whose field to get
	* @return the current value
	*/
	@:overload @:abstract public function get(obj : T) : V;
	
	/**
	* Atomically sets the field of the given object managed by this updater
	* to the given value and returns the old value.
	*
	* @param obj An object whose field to get and set
	* @param newValue the new value
	* @return the previous value
	*/
	@:overload public function getAndSet(obj : T, newValue : V) : V;
	
	
}
@:native('java$util$concurrent$atomic$AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl') @:internal extern class AtomicReferenceFieldUpdater_AtomicReferenceFieldUpdaterImpl<T, V> extends AtomicReferenceFieldUpdater<T, V>
{
	@:overload override public function compareAndSet(obj : T, expect : V, update : V) : Bool;
	
	@:overload override public function weakCompareAndSet(obj : T, expect : V, update : V) : Bool;
	
	@:overload override public function set(obj : T, newValue : V) : Void;
	
	@:overload override public function lazySet(obj : T, newValue : V) : Void;
	
	@:overload override public function get(obj : T) : V;
	
	
}
