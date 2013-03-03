package java.util.concurrent.locks;
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
extern class LockSupport
{
	/**
	* Makes available the permit for the given thread, if it
	* was not already available.  If the thread was blocked on
	* {@code park} then it will unblock.  Otherwise, its next call
	* to {@code park} is guaranteed not to block. This operation
	* is not guaranteed to have any effect at all if the given
	* thread has not been started.
	*
	* @param thread the thread to unpark, or {@code null}, in which case
	*        this operation has no effect
	*/
	@:overload @:public @:static public static function unpark(thread : java.lang.Thread) : Void;
	
	/**
	* Disables the current thread for thread scheduling purposes unless the
	* permit is available.
	*
	* <p>If the permit is available then it is consumed and the call returns
	* immediately; otherwise
	* the current thread becomes disabled for thread scheduling
	* purposes and lies dormant until one of three things happens:
	*
	* <ul>
	* <li>Some other thread invokes {@link #unpark unpark} with the
	* current thread as the target; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The call spuriously (that is, for no reason) returns.
	* </ul>
	*
	* <p>This method does <em>not</em> report which of these caused the
	* method to return. Callers should re-check the conditions which caused
	* the thread to park in the first place. Callers may also determine,
	* for example, the interrupt status of the thread upon return.
	*
	* @param blocker the synchronization object responsible for this
	*        thread parking
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function park(blocker : Dynamic) : Void;
	
	/**
	* Disables the current thread for thread scheduling purposes, for up to
	* the specified waiting time, unless the permit is available.
	*
	* <p>If the permit is available then it is consumed and the call
	* returns immediately; otherwise the current thread becomes disabled
	* for thread scheduling purposes and lies dormant until one of four
	* things happens:
	*
	* <ul>
	* <li>Some other thread invokes {@link #unpark unpark} with the
	* current thread as the target; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The specified waiting time elapses; or
	*
	* <li>The call spuriously (that is, for no reason) returns.
	* </ul>
	*
	* <p>This method does <em>not</em> report which of these caused the
	* method to return. Callers should re-check the conditions which caused
	* the thread to park in the first place. Callers may also determine,
	* for example, the interrupt status of the thread, or the elapsed time
	* upon return.
	*
	* @param blocker the synchronization object responsible for this
	*        thread parking
	* @param nanos the maximum number of nanoseconds to wait
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function parkNanos(blocker : Dynamic, nanos : haxe.Int64) : Void;
	
	/**
	* Disables the current thread for thread scheduling purposes, until
	* the specified deadline, unless the permit is available.
	*
	* <p>If the permit is available then it is consumed and the call
	* returns immediately; otherwise the current thread becomes disabled
	* for thread scheduling purposes and lies dormant until one of four
	* things happens:
	*
	* <ul>
	* <li>Some other thread invokes {@link #unpark unpark} with the
	* current thread as the target; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts} the
	* current thread; or
	*
	* <li>The specified deadline passes; or
	*
	* <li>The call spuriously (that is, for no reason) returns.
	* </ul>
	*
	* <p>This method does <em>not</em> report which of these caused the
	* method to return. Callers should re-check the conditions which caused
	* the thread to park in the first place. Callers may also determine,
	* for example, the interrupt status of the thread, or the current time
	* upon return.
	*
	* @param blocker the synchronization object responsible for this
	*        thread parking
	* @param deadline the absolute time, in milliseconds from the Epoch,
	*        to wait until
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function parkUntil(blocker : Dynamic, deadline : haxe.Int64) : Void;
	
	/**
	* Returns the blocker object supplied to the most recent
	* invocation of a park method that has not yet unblocked, or null
	* if not blocked.  The value returned is just a momentary
	* snapshot -- the thread may have since unblocked or blocked on a
	* different blocker object.
	*
	* @param t the thread
	* @return the blocker
	* @throws NullPointerException if argument is null
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getBlocker(t : java.lang.Thread) : Dynamic;
	
	/**
	* Disables the current thread for thread scheduling purposes unless the
	* permit is available.
	*
	* <p>If the permit is available then it is consumed and the call
	* returns immediately; otherwise the current thread becomes disabled
	* for thread scheduling purposes and lies dormant until one of three
	* things happens:
	*
	* <ul>
	*
	* <li>Some other thread invokes {@link #unpark unpark} with the
	* current thread as the target; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The call spuriously (that is, for no reason) returns.
	* </ul>
	*
	* <p>This method does <em>not</em> report which of these caused the
	* method to return. Callers should re-check the conditions which caused
	* the thread to park in the first place. Callers may also determine,
	* for example, the interrupt status of the thread upon return.
	*/
	@:overload @:public @:static public static function park() : Void;
	
	/**
	* Disables the current thread for thread scheduling purposes, for up to
	* the specified waiting time, unless the permit is available.
	*
	* <p>If the permit is available then it is consumed and the call
	* returns immediately; otherwise the current thread becomes disabled
	* for thread scheduling purposes and lies dormant until one of four
	* things happens:
	*
	* <ul>
	* <li>Some other thread invokes {@link #unpark unpark} with the
	* current thread as the target; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The specified waiting time elapses; or
	*
	* <li>The call spuriously (that is, for no reason) returns.
	* </ul>
	*
	* <p>This method does <em>not</em> report which of these caused the
	* method to return. Callers should re-check the conditions which caused
	* the thread to park in the first place. Callers may also determine,
	* for example, the interrupt status of the thread, or the elapsed time
	* upon return.
	*
	* @param nanos the maximum number of nanoseconds to wait
	*/
	@:overload @:public @:static public static function parkNanos(nanos : haxe.Int64) : Void;
	
	/**
	* Disables the current thread for thread scheduling purposes, until
	* the specified deadline, unless the permit is available.
	*
	* <p>If the permit is available then it is consumed and the call
	* returns immediately; otherwise the current thread becomes disabled
	* for thread scheduling purposes and lies dormant until one of four
	* things happens:
	*
	* <ul>
	* <li>Some other thread invokes {@link #unpark unpark} with the
	* current thread as the target; or
	*
	* <li>Some other thread {@linkplain Thread#interrupt interrupts}
	* the current thread; or
	*
	* <li>The specified deadline passes; or
	*
	* <li>The call spuriously (that is, for no reason) returns.
	* </ul>
	*
	* <p>This method does <em>not</em> report which of these caused the
	* method to return. Callers should re-check the conditions which caused
	* the thread to park in the first place. Callers may also determine,
	* for example, the interrupt status of the thread, or the current time
	* upon return.
	*
	* @param deadline the absolute time, in milliseconds from the Epoch,
	*        to wait until
	*/
	@:overload @:public @:static public static function parkUntil(deadline : haxe.Int64) : Void;
	
	
}
