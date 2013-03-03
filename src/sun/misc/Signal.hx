package sun.misc;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class Signal
{
	/* Returns the signal number */
	@:overload @:public public function getNumber() : Int;
	
	/**
	* Returns the signal name.
	*
	* @return the name of the signal.
	* @see sun.misc.Signal#Signal(String name)
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Compares the equality of two <code>Signal</code> objects.
	*
	* @param other the object to compare with.
	* @return whether two <code>Signal</code> objects are equal.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this Signal.
	*
	* @return  a hash code value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of this signal. For example, "SIGINT"
	* for an object constructed using <code>new Signal ("INT")</code>.
	*
	* @return a string representation of the signal
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Constructs a signal from its name.
	*
	* @param name the name of the signal.
	* @exception IllegalArgumentException unknown signal
	* @see sun.misc.Signal#getName()
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Registers a signal handler.
	*
	* @param sig a signal
	* @param handler the handler to be registered with the given signal.
	* @result the old handler
	* @exception IllegalArgumentException the signal is in use by the VM
	* @see sun.misc.Signal#raise(Signal sig)
	* @see sun.misc.SignalHandler
	* @see sun.misc.SignalHandler#SIG_DFL
	* @see sun.misc.SignalHandler#SIG_IGN
	*/
	@:overload @:public @:static @:synchronized public static function handle(sig : sun.misc.Signal, handler : sun.misc.SignalHandler) : sun.misc.SignalHandler;
	
	/**
	* Raises a signal in the current process.
	*
	* @param sig a signal
	* @see sun.misc.Signal#handle(Signal sig, SignalHandler handler)
	*/
	@:overload @:public @:static public static function raise(sig : sun.misc.Signal) : Void;
	
	
}
