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
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class Phaser
{
	/**
	* Creates a new phaser with no initially registered parties, no
	* parent, and initial phase number 0. Any thread using this
	* phaser will need to first register for it.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new phaser with the given number of registered
	* unarrived parties, no parent, and initial phase number 0.
	*
	* @param parties the number of parties required to advance to the
	* next phase
	* @throws IllegalArgumentException if parties less than zero
	* or greater than the maximum number of parties supported
	*/
	@:overload public function new(parties : Int) : Void;
	
	/**
	* Equivalent to {@link #Phaser(Phaser, int) Phaser(parent, 0)}.
	*
	* @param parent the parent phaser
	*/
	@:overload public function new(parent : java.util.concurrent.Phaser) : Void;
	
	/**
	* Creates a new phaser with the given parent and number of
	* registered unarrived parties.  When the given parent is non-null
	* and the given number of parties is greater than zero, this
	* child phaser is registered with its parent.
	*
	* @param parent the parent phaser
	* @param parties the number of parties required to advance to the
	* next phase
	* @throws IllegalArgumentException if parties less than zero
	* or greater than the maximum number of parties supported
	*/
	@:overload public function new(parent : java.util.concurrent.Phaser, parties : Int) : Void;
	
	/**
	* Adds a new unarrived party to this phaser.  If an ongoing
	* invocation of {@link #onAdvance} is in progress, this method
	* may await its completion before returning.  If this phaser has
	* a parent, and this phaser previously had no registered parties,
	* this child phaser is also registered with its parent. If
	* this phaser is terminated, the attempt to register has
	* no effect, and a negative value is returned.
	*
	* @return the arrival phase number to which this registration
	* applied.  If this value is negative, then this phaser has
	* terminated, in which case registration has no effect.
	* @throws IllegalStateException if attempting to register more
	* than the maximum supported number of parties
	*/
	@:overload public function register() : Int;
	
	/**
	* Adds the given number of new unarrived parties to this phaser.
	* If an ongoing invocation of {@link #onAdvance} is in progress,
	* this method may await its completion before returning.  If this
	* phaser has a parent, and the given number of parties is greater
	* than zero, and this phaser previously had no registered
	* parties, this child phaser is also registered with its parent.
	* If this phaser is terminated, the attempt to register has no
	* effect, and a negative value is returned.
	*
	* @param parties the number of additional parties required to
	* advance to the next phase
	* @return the arrival phase number to which this registration
	* applied.  If this value is negative, then this phaser has
	* terminated, in which case registration has no effect.
	* @throws IllegalStateException if attempting to register more
	* than the maximum supported number of parties
	* @throws IllegalArgumentException if {@code parties < 0}
	*/
	@:overload public function bulkRegister(parties : Int) : Int;
	
	/**
	* Arrives at this phaser, without waiting for others to arrive.
	*
	* <p>It is a usage error for an unregistered party to invoke this
	* method.  However, this error may result in an {@code
	* IllegalStateException} only upon some subsequent operation on
	* this phaser, if ever.
	*
	* @return the arrival phase number, or a negative value if terminated
	* @throws IllegalStateException if not terminated and the number
	* of unarrived parties would become negative
	*/
	@:overload public function arrive() : Int;
	
	/**
	* Arrives at this phaser and deregisters from it without waiting
	* for others to arrive. Deregistration reduces the number of
	* parties required to advance in future phases.  If this phaser
	* has a parent, and deregistration causes this phaser to have
	* zero parties, this phaser is also deregistered from its parent.
	*
	* <p>It is a usage error for an unregistered party to invoke this
	* method.  However, this error may result in an {@code
	* IllegalStateException} only upon some subsequent operation on
	* this phaser, if ever.
	*
	* @return the arrival phase number, or a negative value if terminated
	* @throws IllegalStateException if not terminated and the number
	* of registered or unarrived parties would become negative
	*/
	@:overload public function arriveAndDeregister() : Int;
	
	/**
	* Arrives at this phaser and awaits others. Equivalent in effect
	* to {@code awaitAdvance(arrive())}.  If you need to await with
	* interruption or timeout, you can arrange this with an analogous
	* construction using one of the other forms of the {@code
	* awaitAdvance} method.  If instead you need to deregister upon
	* arrival, use {@code awaitAdvance(arriveAndDeregister())}.
	*
	* <p>It is a usage error for an unregistered party to invoke this
	* method.  However, this error may result in an {@code
	* IllegalStateException} only upon some subsequent operation on
	* this phaser, if ever.
	*
	* @return the arrival phase number, or the (negative)
	* {@linkplain #getPhase() current phase} if terminated
	* @throws IllegalStateException if not terminated and the number
	* of unarrived parties would become negative
	*/
	@:overload public function arriveAndAwaitAdvance() : Int;
	
	/**
	* Awaits the phase of this phaser to advance from the given phase
	* value, returning immediately if the current phase is not equal
	* to the given phase value or this phaser is terminated.
	*
	* @param phase an arrival phase number, or negative value if
	* terminated; this argument is normally the value returned by a
	* previous call to {@code arrive} or {@code arriveAndDeregister}.
	* @return the next arrival phase number, or the argument if it is
	* negative, or the (negative) {@linkplain #getPhase() current phase}
	* if terminated
	*/
	@:overload public function awaitAdvance(phase : Int) : Int;
	
	/**
	* Awaits the phase of this phaser to advance from the given phase
	* value, throwing {@code InterruptedException} if interrupted
	* while waiting, or returning immediately if the current phase is
	* not equal to the given phase value or this phaser is
	* terminated.
	*
	* @param phase an arrival phase number, or negative value if
	* terminated; this argument is normally the value returned by a
	* previous call to {@code arrive} or {@code arriveAndDeregister}.
	* @return the next arrival phase number, or the argument if it is
	* negative, or the (negative) {@linkplain #getPhase() current phase}
	* if terminated
	* @throws InterruptedException if thread interrupted while waiting
	*/
	@:overload public function awaitAdvanceInterruptibly(phase : Int) : Int;
	
	/**
	* Awaits the phase of this phaser to advance from the given phase
	* value or the given timeout to elapse, throwing {@code
	* InterruptedException} if interrupted while waiting, or
	* returning immediately if the current phase is not equal to the
	* given phase value or this phaser is terminated.
	*
	* @param phase an arrival phase number, or negative value if
	* terminated; this argument is normally the value returned by a
	* previous call to {@code arrive} or {@code arriveAndDeregister}.
	* @param timeout how long to wait before giving up, in units of
	*        {@code unit}
	* @param unit a {@code TimeUnit} determining how to interpret the
	*        {@code timeout} parameter
	* @return the next arrival phase number, or the argument if it is
	* negative, or the (negative) {@linkplain #getPhase() current phase}
	* if terminated
	* @throws InterruptedException if thread interrupted while waiting
	* @throws TimeoutException if timed out while waiting
	*/
	@:overload public function awaitAdvanceInterruptibly(phase : Int, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : Int;
	
	/**
	* Forces this phaser to enter termination state.  Counts of
	* registered parties are unaffected.  If this phaser is a member
	* of a tiered set of phasers, then all of the phasers in the set
	* are terminated.  If this phaser is already terminated, this
	* method has no effect.  This method may be useful for
	* coordinating recovery after one or more tasks encounter
	* unexpected exceptions.
	*/
	@:overload public function forceTermination() : Void;
	
	/**
	* Returns the current phase number. The maximum phase number is
	* {@code Integer.MAX_VALUE}, after which it restarts at
	* zero. Upon termination, the phase number is negative,
	* in which case the prevailing phase prior to termination
	* may be obtained via {@code getPhase() + Integer.MIN_VALUE}.
	*
	* @return the phase number, or a negative value if terminated
	*/
	@:overload @:final public function getPhase() : Int;
	
	/**
	* Returns the number of parties registered at this phaser.
	*
	* @return the number of parties
	*/
	@:overload public function getRegisteredParties() : Int;
	
	/**
	* Returns the number of registered parties that have arrived at
	* the current phase of this phaser. If this phaser has terminated,
	* the returned value is meaningless and arbitrary.
	*
	* @return the number of arrived parties
	*/
	@:overload public function getArrivedParties() : Int;
	
	/**
	* Returns the number of registered parties that have not yet
	* arrived at the current phase of this phaser. If this phaser has
	* terminated, the returned value is meaningless and arbitrary.
	*
	* @return the number of unarrived parties
	*/
	@:overload public function getUnarrivedParties() : Int;
	
	/**
	* Returns the parent of this phaser, or {@code null} if none.
	*
	* @return the parent of this phaser, or {@code null} if none
	*/
	@:overload public function getParent() : java.util.concurrent.Phaser;
	
	/**
	* Returns the root ancestor of this phaser, which is the same as
	* this phaser if it has no parent.
	*
	* @return the root ancestor of this phaser
	*/
	@:overload public function getRoot() : java.util.concurrent.Phaser;
	
	/**
	* Returns {@code true} if this phaser has been terminated.
	*
	* @return {@code true} if this phaser has been terminated
	*/
	@:overload public function isTerminated() : Bool;
	
	/**
	* Overridable method to perform an action upon impending phase
	* advance, and to control termination. This method is invoked
	* upon arrival of the party advancing this phaser (when all other
	* waiting parties are dormant).  If this method returns {@code
	* true}, this phaser will be set to a final termination state
	* upon advance, and subsequent calls to {@link #isTerminated}
	* will return true. Any (unchecked) Exception or Error thrown by
	* an invocation of this method is propagated to the party
	* attempting to advance this phaser, in which case no advance
	* occurs.
	*
	* <p>The arguments to this method provide the state of the phaser
	* prevailing for the current transition.  The effects of invoking
	* arrival, registration, and waiting methods on this phaser from
	* within {@code onAdvance} are unspecified and should not be
	* relied on.
	*
	* <p>If this phaser is a member of a tiered set of phasers, then
	* {@code onAdvance} is invoked only for its root phaser on each
	* advance.
	*
	* <p>To support the most common use cases, the default
	* implementation of this method returns {@code true} when the
	* number of registered parties has become zero as the result of a
	* party invoking {@code arriveAndDeregister}.  You can disable
	* this behavior, thus enabling continuation upon future
	* registrations, by overriding this method to always return
	* {@code false}:
	*
	* <pre> {@code
	* Phaser phaser = new Phaser() {
	*   protected boolean onAdvance(int phase, int parties) { return false; }
	* }}</pre>
	*
	* @param phase the current phase number on entry to this method,
	* before this phaser is advanced
	* @param registeredParties the current number of registered parties
	* @return {@code true} if this phaser should terminate
	*/
	@:overload private function onAdvance(phase : Int, registeredParties : Int) : Bool;
	
	/**
	* Returns a string identifying this phaser, as well as its
	* state.  The state, in brackets, includes the String {@code
	* "phase = "} followed by the phase number, {@code "parties = "}
	* followed by the number of registered parties, and {@code
	* "arrived = "} followed by the number of arrived parties.
	*
	* @return a string identifying this phaser, as well as its state
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Wait nodes for Treiber stack representing wait queue
*/
@:native('java$util$concurrent$Phaser$QNode') @:internal extern class Phaser_QNode implements java.util.concurrent.ForkJoinPool.ForkJoinPool_ManagedBlocker
{
	@:overload public function isReleasable() : Bool;
	
	@:overload public function block() : Bool;
	
	
}
