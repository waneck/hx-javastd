package com.sun.org.apache.xml.internal.resolver.helpers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// Debug.java - Print debug messages
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* Static debugging/messaging class for Catalogs.
*
* <p>This class defines a set of static methods that can be called
* to produce debugging messages. Messages have an associated "debug
* level" and messages below the current setting are not displayed.</p>
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
*/
extern class Debug
{
	/** The internal debug level. */
	@:protected private var debug : Int;
	
	/** Constructor */
	@:overload @:public public function new() : Void;
	
	/** Set the debug level for future messages. */
	@:overload @:public public function setDebug(newDebug : Int) : Void;
	
	/** Get the current debug level. */
	@:overload @:public public function getDebug() : Int;
	
	/**
	* Print debug message (if the debug level is high enough).
	*
	* <p>Prints "the message"</p>
	*
	* @param level The debug level of this message. This message
	* will only be
	* displayed if the current debug level is at least equal to this
	* value.
	* @param message The text of the message.
	*/
	@:overload @:public public function message(level : Int, message : String) : Void;
	
	/**
	* Print debug message (if the debug level is high enough).
	*
	* <p>Prints "the message: spec"</p>
	*
	* @param level The debug level of this message. This message
	* will only be
	* displayed if the current debug level is at least equal to this
	* value.
	* @param message The text of the message.
	* @param spec An argument to the message.
	*/
	@:overload @:public public function message(level : Int, message : String, spec : String) : Void;
	
	/**
	* Print debug message (if the debug level is high enough).
	*
	* <p>Prints "the message: spec1" and "spec2" indented on the next line.</p>
	*
	* @param level The debug level of this message. This message
	* will only be
	* displayed if the current debug level is at least equal to this
	* value.
	* @param message The text of the message.
	* @param spec1 An argument to the message.
	* @param spec2 Another argument to the message.
	*/
	@:overload @:public public function message(level : Int, message : String, spec1 : String, spec2 : String) : Void;
	
	
}
