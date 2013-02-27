package sun.misc;
/*
* Copyright (c) 1995, Oracle and/or its affiliates. All rights reserved.
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
/**
A Timer object is used by algorithms that require timed events.
For example, in an animation loop, a timer would help in
determining when to change frames.

A timer has an interval which determines when it "ticks";
that is, a timer delays for the specified interval and then
it calls the owner's tick() method.

Here's an example of creating a timer with a 5 sec interval:

<pre>
class Main implements Timeable {
public void tick(Timer timer) {
System.out.println("tick");
}
public static void main(String args[]) {
(new Timer(this, 5000)).cont();
}
}
</pre>

A timer can be stopped, continued, or reset at any time.
A timer's state is not stopped while it's calling the
owner's tick() method.

A timer can be regular or irregular.  If in regular mode,
a timer ticks at the specified interval, regardless of
how long the owner's tick() method takes.  While the timer
is running, no ticks are ever discarded.  That means that if
the owner's tick() method takes longer than the interval,
the ticks that would have occurred are delivered immediately.

In irregular mode, a timer starts delaying for exactly
the specified interval only after the tick() method returns.

Synchronization issues: do not hold the timer's monitor
while calling any of the Timer operations below otherwise
the Timer class will deadlock.

@author     Patrick Chan
*/
/*
Synchronization issues:  there are two data structures that
require locking.  A Timer object and the Timer queue
(described in the TimerThread class).  To avoid deadlock,
the timer queue monitor is always acquired before the timer
object's monitor.  However, the timer queue monitor is acquired
only if the timer operation will make use of the timer
queue, e.g. stop().

The class monitor on the class TimerThread severs as the monitor
to the timer queue.

Possible feature: perhaps a timer should have an associated
thread priority.  The thread that makes the callback temporarily
takes on that priority before calling the owner's tick() method.
*/
extern class Timer
{
	/**
	* This is the owner of the timer.  Its tick method is
	* called when the timer ticks.
	*/
	public var owner : sun.misc.Timeable;
	
	/**
	* Creates a timer object that is owned by 'owner' and
	* with the interval 'interval' milliseconds.  The new timer
	* object is stopped and is regular.  getRemainingTime()
	* return 'interval' at this point.  getStopTime() returns
	* the time this object was created.
	* @param owner    owner of the timer object
	* @param interval interval of the timer in milliseconds
	*/
	@:overload public function new(owner : sun.misc.Timeable, interval : haxe.Int64) : Void;
	
	/**
	* Returns true if this timer is stopped.
	*/
	@:overload @:synchronized public function isStopped() : Bool;
	
	/**
	* Stops the timer.  The amount of time the timer has already
	* delayed is saved so if the timer is continued, it will only
	* delay for the amount of time remaining.
	* Note that even after stopping a timer, one more tick may
	* still occur.
	* This method is MT-safe; i.e. it is synchronized but for
	* implementation reasons, the synchronized modifier cannot
	* be included in the method declaration.
	*/
	@:overload public function stop() : Void;
	
	/**
	* Continue the timer.  The next tick will come at getRemainingTime()
	* milliseconds later.  If the timer is not stopped, this
	* call will be a no-op.
	* This method is MT-safe; i.e. it is synchronized but for
	* implementation reasons, the synchronized modifier cannot
	* be included in the method declaration.
	*/
	@:overload public function cont() : Void;
	
	/**
	* Resets the timer's remaining time to the timer's interval.
	* If the timer's running state is not altered.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Returns the time at which the timer was last stopped.  The
	* return value is valid only if the timer is stopped.
	*/
	@:overload @:synchronized public function getStopTime() : haxe.Int64;
	
	/**
	* Returns the timer's interval.
	*/
	@:overload @:synchronized public function getInterval() : haxe.Int64;
	
	/**
	* Changes the timer's interval.  The new interval setting
	* does not take effect until after the next tick.
	* This method does not alter the remaining time or the
	* running state of the timer.
	* @param interval new interval of the timer in milliseconds
	*/
	@:overload @:synchronized public function setInterval(interval : haxe.Int64) : Void;
	
	/**
	* Returns the remaining time before the timer's next tick.
	* The return value is valid only if timer is stopped.
	*/
	@:overload @:synchronized public function getRemainingTime() : haxe.Int64;
	
	/**
	* Sets the remaining time before the timer's next tick.
	* This method does not alter the timer's running state.
	* This method is MT-safe; i.e. it is synchronized but for
	* implementation reasons, the synchronized modifier cannot
	* be included in the method declaration.
	* @param time new remaining time in milliseconds.
	*/
	@:overload public function setRemainingTime(time : haxe.Int64) : Void;
	
	/**
	* In regular mode, a timer ticks at the specified interval,
	* regardless of how long the owner's tick() method takes.
	* While the timer is running, no ticks are ever discarded.
	* That means that if the owner's tick() method takes longer
	* than the interval, the ticks that would have occurred are
	* delivered immediately.
	*
	* In irregular mode, a timer starts delaying for exactly
	* the specified interval only after the tick() method returns.
	*/
	@:overload @:synchronized public function setRegular(regular : Bool) : Void;
	
	/*
	* This method is used only for testing purposes.
	*/
	@:overload private function getTimerThread() : java.lang.Thread;
	
	
}
@:internal extern class TimerThread extends java.lang.Thread
{
	/*
	* Set to true to get debugging output.
	*/
	public static var debug : Bool;
	
	@:overload private function new() : Void;
	
	@:overload @:synchronized override public function run() : Void;
	
	/*
	* Uses timer.sleepUntil to determine where in the queue
	* to insert the timer object.
	* A new ticker thread is created only if the timer
	* is inserted at the beginning of the queue.
	* The timer must not already be in the queue.
	* Assumes the caller has the TimerThread monitor.
	*/
	@:overload private static function enqueue(timer : Timer) : Void;
	
	/*
	* If the timer is not in the queue, returns false;
	* otherwise removes the timer from the timer queue and returns true.
	* Assumes the caller has the TimerThread monitor.
	*/
	@:overload private static function dequeue(timer : Timer) : Bool;
	
	/*
	* Inserts the timer back into the queue.  This method
	* is used by a callback thread after it has called the
	* timer owner's tick() method.  This method recomputes
	* the sleepUntil field.
	* Assumes the caller has the TimerThread and Timer monitor.
	*/
	@:overload private static function requeue(timer : Timer) : Void;
	
	
}
@:internal extern class TimerTickThread extends java.lang.Thread
{
	/*
	* Creates a new callback thread to call the timer owner's
	* tick() method.  A thread is taken from the pool if one
	* is available, otherwise, a new thread is created.
	* The thread handle is returned.
	*/
	@:overload @:synchronized private static function call(timer : Timer, sleepUntil : haxe.Int64) : TimerTickThread;
	
	@:overload override public function run() : Void;
	
	
}
