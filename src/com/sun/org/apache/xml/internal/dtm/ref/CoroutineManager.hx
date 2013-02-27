package com.sun.org.apache.xml.internal.dtm.ref;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: CoroutineManager.java,v 1.2.4.1 2005/09/15 08:14:58 suresh_emailid Exp $
*/
extern class CoroutineManager
{
	/** <p>Each coroutine in the set managed by a single
	* CoroutineManager is identified by a small positive integer. This
	* brings up the question of how to manage those integers to avoid
	* reuse... since if two coroutines use the same ID number, resuming
	* that ID could resume either. I can see arguments for either
	* allowing applications to select their own numbers (they may want
	* to declare mnemonics via manefest constants) or generating
	* numbers on demand.  This routine's intended to support both
	* approaches.</p>
	*
	* <p>%REVIEW% We could use an object as the identifier. Not sure
	* it's a net gain, though it would allow the thread to be its own
	* ID. Ponder.</p>
	*
	* @param coroutineID  If >=0, requests that we reserve this number.
	* If <0, requests that we find, reserve, and return an available ID
	* number.
	*
	* @return If >=0, the ID number to be used by this coroutine. If <0,
	* an error occurred -- the ID requested was already in use, or we
	* couldn't assign one without going over the "unreasonable value" mark
	* */
	@:overload @:synchronized public function co_joinCoroutineSet(coroutineID : Int) : Int;
	
	/** In the standard coroutine architecture, coroutines are
	* identified by their method names and are launched and run up to
	* their first yield by simply resuming them; its's presumed that
	* this recognizes the not-already-running case and does the right
	* thing. We seem to need a way to achieve that same threadsafe
	* run-up...  eg, start the coroutine with a wait.
	*
	* %TBD% whether this makes any sense...
	*
	* @param thisCoroutine the identifier of this coroutine, so we can
	* recognize when we are being resumed.
	* @exception java.lang.NoSuchMethodException if thisCoroutine isn't
	* a registered member of this group. %REVIEW% whether this is the
	* best choice.
	* */
	@:overload @:synchronized public function co_entry_pause(thisCoroutine : Int) : Dynamic;
	
	/** Transfer control to another coroutine which has already been started and
	* is waiting on this CoroutineManager. We won't return from this call
	* until that routine has relinquished control.
	*
	* %TBD% What should we do if toCoroutine isn't registered? Exception?
	*
	* @param arg_object A value to be passed to the other coroutine.
	* @param thisCoroutine Integer identifier for this coroutine. This is the
	* ID we watch for to see if we're the ones being resumed.
	* @param toCoroutine  Integer identifier for the coroutine we wish to
	* invoke.
	* @exception java.lang.NoSuchMethodException if toCoroutine isn't a
	* registered member of this group. %REVIEW% whether this is the best choice.
	* */
	@:overload @:synchronized public function co_resume(arg_object : Dynamic, thisCoroutine : Int, toCoroutine : Int) : Dynamic;
	
	/** Terminate this entire set of coroutines. The others will be
	* deregistered and have exceptions thrown at them. Note that this
	* is intended as a panic-shutdown operation; under normal
	* circumstances a coroutine should always end with co_exit_to() in
	* order to politely inform at least one of its partners that it is
	* going away.
	*
	* %TBD% This may need significantly more work.
	*
	* %TBD% Should this just be co_exit_to(,,CoroutineManager.PANIC)?
	*
	* @param thisCoroutine Integer identifier for the coroutine requesting exit.
	* */
	@:overload @:synchronized public function co_exit(thisCoroutine : Int) : Void;
	
	/** Make the ID available for reuse and terminate this coroutine,
	* transferring control to the specified coroutine. Note that this
	* returns immediately rather than waiting for any further coroutine
	* traffic, so the thread can proceed with other shutdown activities.
	*
	* @param arg_object    A value to be passed to the other coroutine.
	* @param thisCoroutine Integer identifier for the coroutine leaving the set.
	* @param toCoroutine   Integer identifier for the coroutine we wish to
	* invoke.
	* @exception java.lang.NoSuchMethodException if toCoroutine isn't a
	* registered member of this group. %REVIEW% whether this is the best choice.
	* */
	@:overload @:synchronized public function co_exit_to(arg_object : Dynamic, thisCoroutine : Int, toCoroutine : Int) : Void;
	
	
}
