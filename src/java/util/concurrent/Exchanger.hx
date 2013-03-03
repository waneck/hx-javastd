package java.util.concurrent;
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
* Written by Doug Lea, Bill Scherer, and Michael Scott with
* assistance from members of JCP JSR-166 Expert Group and released to
* the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class Exchanger<V>
{
	/**
	* Creates a new Exchanger.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Waits for another thread to arrive at this exchange point (unless
	* the current thread is {@linkplain Thread#interrupt interrupted}),
	* and then transfers the given object to it, receiving its object
	* in return.
	*
	* <p>If another thread is already waiting at the exchange point then
	* it is resumed for thread scheduling purposes and receives the object
	* passed in by the current thread.  The current thread returns immediately,
	* receiving the object passed to the exchange by that other thread.
	*
	* <p>If no other thread is already waiting at the exchange then the
	* current thread is disabled for thread scheduling purposes and lies
	* dormant until one of two things happens:
	* <ul>
	* <li>Some other thread enters the exchange; or
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread.
	* </ul>
	* <p>If the current thread:
	* <ul>
	* <li>has its interrupted status set on entry to this method; or
	* <li>is {@linkplain Thread#interrupt interrupted} while waiting
	* for the exchange,
	* </ul>
	* then {@link InterruptedException} is thrown and the current thread's
	* interrupted status is cleared.
	*
	* @param x the object to exchange
	* @return the object provided by the other thread
	* @throws InterruptedException if the current thread was
	*         interrupted while waiting
	*/
	@:overload @:public public function exchange(x : V) : V;
	
	/**
	* Waits for another thread to arrive at this exchange point (unless
	* the current thread is {@linkplain Thread#interrupt interrupted} or
	* the specified waiting time elapses), and then transfers the given
	* object to it, receiving its object in return.
	*
	* <p>If another thread is already waiting at the exchange point then
	* it is resumed for thread scheduling purposes and receives the object
	* passed in by the current thread.  The current thread returns immediately,
	* receiving the object passed to the exchange by that other thread.
	*
	* <p>If no other thread is already waiting at the exchange then the
	* current thread is disabled for thread scheduling purposes and lies
	* dormant until one of three things happens:
	* <ul>
	* <li>Some other thread enters the exchange; or
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	* <li>The specified waiting time elapses.
	* </ul>
	* <p>If the current thread:
	* <ul>
	* <li>has its interrupted status set on entry to this method; or
	* <li>is {@linkplain Thread#interrupt interrupted} while waiting
	* for the exchange,
	* </ul>
	* then {@link InterruptedException} is thrown and the current thread's
	* interrupted status is cleared.
	*
	* <p>If the specified waiting time elapses then {@link
	* TimeoutException} is thrown.  If the time is less than or equal
	* to zero, the method will not wait at all.
	*
	* @param x the object to exchange
	* @param timeout the maximum time to wait
	* @param unit the time unit of the <tt>timeout</tt> argument
	* @return the object provided by the other thread
	* @throws InterruptedException if the current thread was
	*         interrupted while waiting
	* @throws TimeoutException if the specified waiting time elapses
	*         before another thread enters the exchange
	*/
	@:overload @:public public function exchange(x : V, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : V;
	
	
}
/**
* Nodes hold partially exchanged data.  This class
* opportunistically subclasses AtomicReference to represent the
* hole.  So get() returns hole, and compareAndSet CAS'es value
* into hole.  This class cannot be parameterized as "V" because
* of the use of non-V CANCEL sentinels.
*/
@:native('java$util$concurrent$Exchanger$Node') @:internal extern class Exchanger_Node extends java.util.concurrent.atomic.AtomicReference<Dynamic>
{
	/** The element offered by the Thread creating this node. */
	@:public @:final public var item(default, null) : Dynamic;
	
	/** The Thread waiting to be signalled; null until waiting. */
	@:public @:volatile public var waiter : java.lang.Thread;
	
	/**
	* Creates node with given item and empty hole.
	* @param item the item
	*/
	@:overload @:public public function new(item : Dynamic) : Void;
	
	
}
/**
* A Slot is an AtomicReference with heuristic padding to lessen
* cache effects of this heavily CAS'ed location.  While the
* padding adds noticeable space, all slots are created only on
* demand, and there will be more than one of them only when it
* would improve throughput more than enough to outweigh using
* extra space.
*/
@:native('java$util$concurrent$Exchanger$Slot') @:internal extern class Exchanger_Slot extends java.util.concurrent.atomic.AtomicReference<Dynamic>
{
	
}
