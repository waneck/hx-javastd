package java.lang;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassValue<T>
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload private function new() : Void;
	
	/**
	* Computes the given class's derived value for this {@code ClassValue}.
	* <p>
	* This method will be invoked within the first thread that accesses
	* the value with the {@link #get get} method.
	* <p>
	* Normally, this method is invoked at most once per class,
	* but it may be invoked again if there has been a call to
	* {@link #remove remove}.
	* <p>
	* If this method throws an exception, the corresponding call to {@code get}
	* will terminate abnormally with that exception, and no class value will be recorded.
	*
	* @param type the type whose class value must be computed
	* @return the newly computed value associated with this {@code ClassValue}, for the given class or interface
	* @see #get
	* @see #remove
	*/
	@:overload @:abstract private function computeValue(type : Class<Dynamic>) : T;
	
	/**
	* Returns the value for the given class.
	* If no value has yet been computed, it is obtained by
	* an invocation of the {@link #computeValue computeValue} method.
	* <p>
	* The actual installation of the value on the class
	* is performed atomically.
	* At that point, if several racing threads have
	* computed values, one is chosen, and returned to
	* all the racing threads.
	* <p>
	* The {@code type} parameter is typically a class, but it may be any type,
	* such as an interface, a primitive type (like {@code int.class}), or {@code void.class}.
	* <p>
	* In the absence of {@code remove} calls, a class value has a simple
	* state diagram:  uninitialized and initialized.
	* When {@code remove} calls are made,
	* the rules for value observation are more complex.
	* See the documentation for {@link #remove remove} for more information.
	*
	* @param type the type whose class value must be computed or retrieved
	* @return the current value associated with this {@code ClassValue}, for the given class or interface
	* @throws NullPointerException if the argument is null
	* @see #remove
	* @see #computeValue
	*/
	@:overload public function get(type : Class<Dynamic>) : T;
	
	/**
	* Removes the associated value for the given class.
	* If this value is subsequently {@linkplain #get read} for the same class,
	* its value will be reinitialized by invoking its {@link #computeValue computeValue} method.
	* This may result in an additional invocation of the
	* {@code computeValue} method for the given class.
	* <p>
	* In order to explain the interaction between {@code get} and {@code remove} calls,
	* we must model the state transitions of a class value to take into account
	* the alternation between uninitialized and initialized states.
	* To do this, number these states sequentially from zero, and note that
	* uninitialized (or removed) states are numbered with even numbers,
	* while initialized (or re-initialized) states have odd numbers.
	* <p>
	* When a thread {@code T} removes a class value in state {@code 2N},
	* nothing happens, since the class value is already uninitialized.
	* Otherwise, the state is advanced atomically to {@code 2N+1}.
	* <p>
	* When a thread {@code T} queries a class value in state {@code 2N},
	* the thread first attempts to initialize the class value to state {@code 2N+1}
	* by invoking {@code computeValue} and installing the resulting value.
	* <p>
	* When {@code T} attempts to install the newly computed value,
	* if the state is still at {@code 2N}, the class value will be initialized
	* with the computed value, advancing it to state {@code 2N+1}.
	* <p>
	* Otherwise, whether the new state is even or odd,
	* {@code T} will discard the newly computed value
	* and retry the {@code get} operation.
	* <p>
	* Discarding and retrying is an important proviso,
	* since otherwise {@code T} could potentially install
	* a disastrously stale value.  For example:
	* <ul>
	* <li>{@code T} calls {@code CV.get(C)} and sees state {@code 2N}
	* <li>{@code T} quickly computes a time-dependent value {@code V0} and gets ready to install it
	* <li>{@code T} is hit by an unlucky paging or scheduling event, and goes to sleep for a long time
	* <li>...meanwhile, {@code T2} also calls {@code CV.get(C)} and sees state {@code 2N}
	* <li>{@code T2} quickly computes a similar time-dependent value {@code V1} and installs it on {@code CV.get(C)}
	* <li>{@code T2} (or a third thread) then calls {@code CV.remove(C)}, undoing {@code T2}'s work
	* <li> the previous actions of {@code T2} are repeated several times
	* <li> also, the relevant computed values change over time: {@code V1}, {@code V2}, ...
	* <li>...meanwhile, {@code T} wakes up and attempts to install {@code V0}; <em>this must fail</em>
	* </ul>
	* We can assume in the above scenario that {@code CV.computeValue} uses locks to properly
	* observe the time-dependent states as it computes {@code V1}, etc.
	* This does not remove the threat of a stale value, since there is a window of time
	* between the return of {@code computeValue} in {@code T} and the installation
	* of the the new value.  No user synchronization is possible during this time.
	*
	* @param type the type whose class value must be removed
	* @throws NullPointerException if the argument is null
	*/
	@:overload public function remove(type : Class<Dynamic>) : Void;
	
	
}
/**
* Private key for retrieval of this object from ClassValueMap.
*/
@:native('java$lang$ClassValue$Identity') @:internal extern class ClassValue_Identity
{
	
}
@:native('java$lang$ClassValue$Version') @:internal extern class ClassValue_Version<T>
{
	
}
/** One binding of a value to a class via a ClassValue.
*  States are:<ul>
*  <li> promise if value == Entry.this
*  <li> else dead if version == null
*  <li> else stale if version != classValue.version
*  <li> else live </ul>
*  Promises are never put into the cache; they only live in the
*  backing map while a computeValue call is in flight.
*  Once an entry goes stale, it can be reset at any time
*  into the dead state.
*/
@:native('java$lang$ClassValue$Entry') @:internal extern class ClassValue_Entry<T> extends java.lang.ref.WeakReference<ClassValue_Version<T>>
{
	
}
/** A backing map for all ClassValues, relative a single given type.
*  Gives a fully serialized "true state" for each pair (ClassValue cv, Class type).
*  Also manages an unserialized fast-path cache.
*/
@:native('java$lang$ClassValue$ClassValueMap') @:internal extern class ClassValue_ClassValueMap extends java.util.WeakHashMap<ClassValue_Identity, java.util.Map.Map_Entry<Dynamic>>
{
	
}
