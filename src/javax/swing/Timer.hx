package javax.swing;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Timer implements java.io.Serializable
{
	/*
	* NOTE: all fields need to be handled in readResolve
	*/
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Creates a {@code Timer} and initializes both the initial delay and
	* between-event delay to {@code delay} milliseconds. If {@code delay}
	* is less than or equal to zero, the timer fires as soon as it
	* is started. If <code>listener</code> is not <code>null</code>,
	* it's registered as an action listener on the timer.
	*
	* @param delay milliseconds for the initial and between-event delay
	* @param listener  an initial listener; can be <code>null</code>
	*
	* @see #addActionListener
	* @see #setInitialDelay
	* @see #setRepeats
	*/
	@:overload @:public public function new(delay : Int, listener : java.awt.event.ActionListener) : Void;
	
	/**
	* Adds an action listener to the <code>Timer</code>.
	*
	* @param listener the listener to add
	*
	* @see #Timer
	*/
	@:overload @:public public function addActionListener(listener : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes the specified action listener from the <code>Timer</code>.
	*
	* @param listener the listener to remove
	*/
	@:overload @:public public function removeActionListener(listener : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the action listeners registered
	* on this timer.
	*
	* @return all of the timer's <code>ActionListener</code>s or an empty
	*         array if no action listeners are currently registered
	*
	* @see #addActionListener
	* @see #removeActionListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param e the action event to fire
	* @see EventListenerList
	*/
	@:overload @:protected private function fireActionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Returns an array of all the objects currently registered as
	* <code><em>Foo</em>Listener</code>s
	* upon this <code>Timer</code>.
	* <code><em>Foo</em>Listener</code>s
	* are registered using the <code>add<em>Foo</em>Listener</code> method.
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a <code>Timer</code>
	* instance <code>t</code>
	* for its action listeners
	* with the following code:
	*
	* <pre>ActionListener[] als = (ActionListener[])(t.getListeners(ActionListener.class));</pre>
	*
	* If no such listeners exist,
	* this method returns an empty array.
	*
	* @param listenerType  the type of listeners requested;
	*          this parameter should specify an interface
	*          that descends from <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s
	*          on this timer,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code> doesn't
	*          specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getActionListeners
	* @see #addActionListener
	* @see #removeActionListener
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Enables or disables the timer log. When enabled, a message
	* is posted to <code>System.out</code> whenever the timer goes off.
	*
	* @param flag  <code>true</code> to enable logging
	* @see #getLogTimers
	*/
	@:overload @:public @:static public static function setLogTimers(flag : Bool) : Void;
	
	/**
	* Returns <code>true</code> if logging is enabled.
	*
	* @return <code>true</code> if logging is enabled; otherwise, false
	* @see #setLogTimers
	*/
	@:overload @:public @:static public static function getLogTimers() : Bool;
	
	/**
	* Sets the <code>Timer</code>'s between-event delay, the number of milliseconds
	* between successive action events. This does not affect the initial delay
	* property, which can be set by the {@code setInitialDelay} method.
	*
	* @param delay the delay in milliseconds
	* @see #setInitialDelay
	*/
	@:overload @:public public function setDelay(delay : Int) : Void;
	
	/**
	* Returns the delay, in milliseconds,
	* between firings of action events.
	*
	* @see #setDelay
	* @see #getInitialDelay
	*/
	@:overload @:public public function getDelay() : Int;
	
	/**
	* Sets the <code>Timer</code>'s initial delay, the time
	* in milliseconds to wait after the timer is started
	* before firing the first event. Upon construction, this
	* is set to be the same as the between-event delay,
	* but then its value is independent and remains unaffected
	* by changes to the between-event delay.
	*
	* @param initialDelay the initial delay, in milliseconds
	* @see #setDelay
	*/
	@:overload @:public public function setInitialDelay(initialDelay : Int) : Void;
	
	/**
	* Returns the <code>Timer</code>'s initial delay.
	*
	* @see #setInitialDelay
	* @see #setDelay
	*/
	@:overload @:public public function getInitialDelay() : Int;
	
	/**
	* If <code>flag</code> is <code>false</code>,
	* instructs the <code>Timer</code> to send only one
	* action event to its listeners.
	*
	* @param flag specify <code>false</code> to make the timer
	*             stop after sending its first action event
	*/
	@:overload @:public public function setRepeats(flag : Bool) : Void;
	
	/**
	* Returns <code>true</code> (the default)
	* if the <code>Timer</code> will send
	* an action event
	* to its listeners multiple times.
	*
	* @see #setRepeats
	*/
	@:overload @:public public function isRepeats() : Bool;
	
	/**
	* Sets whether the <code>Timer</code> coalesces multiple pending
	* <code>ActionEvent</code> firings.
	* A busy application may not be able
	* to keep up with a <code>Timer</code>'s event generation,
	* causing multiple
	* action events to be queued.  When processed,
	* the application sends these events one after the other, causing the
	* <code>Timer</code>'s listeners to receive a sequence of
	* events with no delay between them. Coalescing avoids this situation
	* by reducing multiple pending events to a single event.
	* <code>Timer</code>s
	* coalesce events by default.
	*
	* @param flag specify <code>false</code> to turn off coalescing
	*/
	@:overload @:public public function setCoalesce(flag : Bool) : Void;
	
	/**
	* Returns <code>true</code> if the <code>Timer</code> coalesces
	* multiple pending action events.
	*
	* @see #setCoalesce
	*/
	@:overload @:public public function isCoalesce() : Bool;
	
	/**
	* Sets the string that will be delivered as the action command
	* in <code>ActionEvent</code>s fired by this timer.
	* <code>null</code> is an acceptable value.
	*
	* @param command the action command
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setActionCommand(command : String) : Void;
	
	/**
	* Returns the string that will be delivered as the action command
	* in <code>ActionEvent</code>s fired by this timer. May be
	* <code>null</code>, which is also the default.
	*
	* @return the action command used in firing events
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getActionCommand() : String;
	
	/**
	* Starts the <code>Timer</code>,
	* causing it to start sending action events
	* to its listeners.
	*
	* @see #stop
	*/
	@:overload @:public public function start() : Void;
	
	/**
	* Returns <code>true</code> if the <code>Timer</code> is running.
	*
	* @see #start
	*/
	@:overload @:public public function isRunning() : Bool;
	
	/**
	* Stops the <code>Timer</code>,
	* causing it to stop sending action events
	* to its listeners.
	*
	* @see #start
	*/
	@:overload @:public public function stop() : Void;
	
	/**
	* Restarts the <code>Timer</code>,
	* canceling any pending firings and causing
	* it to fire with its initial delay.
	*/
	@:overload @:public public function restart() : Void;
	
	
}
/**
* DoPostEvent is a runnable class that fires actionEvents to
* the listeners on the EventDispatchThread, via invokeLater.
* @see Timer#post
*/
@:native('javax$swing$Timer$DoPostEvent') @:internal extern class Timer_DoPostEvent implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
