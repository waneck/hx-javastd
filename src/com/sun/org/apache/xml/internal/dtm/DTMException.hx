package com.sun.org.apache.xml.internal.dtm;
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
* $Id: DTMException.java,v 1.3 2005/09/28 13:48:50 pvedula Exp $
*/
extern class DTMException extends java.lang.RuntimeException
{
	/**
	* Method getLocator retrieves an instance of a SourceLocator
	* object that specifies where an error occured.
	*
	* @return A SourceLocator object, or null if none was specified.
	*/
	@:overload @:public public function getLocator() : javax.xml.transform.SourceLocator;
	
	/**
	* Method setLocator sets an instance of a SourceLocator
	* object that specifies where an error occured.
	*
	* @param location A SourceLocator object, or null to clear the location.
	*/
	@:overload @:public public function setLocator(location : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* This method retrieves an exception that this exception wraps.
	*
	* @return An Throwable object, or null.
	* @see #getCause
	*/
	@:overload @:public public function getException() : java.lang.Throwable;
	
	/**
	* Returns the cause of this throwable or <code>null</code> if the
	* cause is nonexistent or unknown.  (The cause is the throwable that
	* caused this throwable to get thrown.)
	*/
	@:overload @:public override public function getCause() : java.lang.Throwable;
	
	/**
	* Initializes the <i>cause</i> of this throwable to the specified value.
	* (The cause is the throwable that caused this throwable to get thrown.)
	*
	* <p>This method can be called at most once.  It is generally called from
	* within the constructor, or immediately after creating the
	* throwable.  If this throwable was created
	* with {@link #DTMException(Throwable)} or
	* {@link #DTMException(String,Throwable)}, this method cannot be called
	* even once.
	*
	* @param  cause the cause (which is saved for later retrieval by the
	*         {@link #getCause()} method).  (A <tt>null</tt> value is
	*         permitted, and indicates that the cause is nonexistent or
	*         unknown.)
	* @return  a reference to this <code>Throwable</code> instance.
	* @throws IllegalArgumentException if <code>cause</code> is this
	*         throwable.  (A throwable cannot
	*         be its own cause.)
	* @throws IllegalStateException if this throwable was
	*         created with {@link #DTMException(Throwable)} or
	*         {@link #DTMException(String,Throwable)}, or this method has already
	*         been called on this throwable.
	*/
	@:overload @:public @:synchronized override public function initCause(cause : java.lang.Throwable) : java.lang.Throwable;
	
	/**
	* Create a new DTMException.
	*
	* @param message The error or warning message.
	*/
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* Create a new DTMException wrapping an existing exception.
	*
	* @param e The exception to be wrapped.
	*/
	@:overload @:public public function new(e : java.lang.Throwable) : Void;
	
	/**
	* Wrap an existing exception in a DTMException.
	*
	* <p>This is used for throwing processor exceptions before
	* the processing has started.</p>
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param e Any exception
	*/
	@:overload @:public public function new(message : String, e : java.lang.Throwable) : Void;
	
	/**
	* Create a new DTMException from a message and a Locator.
	*
	* <p>This constructor is especially useful when an application is
	* creating its own exception from within a DocumentHandler
	* callback.</p>
	*
	* @param message The error or warning message.
	* @param locator The locator object for the error or warning.
	*/
	@:overload @:public public function new(message : String, locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Wrap an existing exception in a DTMException.
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param locator The locator object for the error or warning.
	* @param e Any exception
	*/
	@:overload @:public public function new(message : String, locator : javax.xml.transform.SourceLocator, e : java.lang.Throwable) : Void;
	
	/**
	* Get the error message with location information
	* appended.
	*/
	@:overload @:public public function getMessageAndLocation() : String;
	
	/**
	* Get the location information as a string.
	*
	* @return A string with location info, or null
	* if there is no location information.
	*/
	@:overload @:public public function getLocationAsString() : String;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	*/
	@:overload @:public override public function printStackTrace() : Void;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	* @param s The stream where the dump will be sent to.
	*/
	@:overload @:public override public function printStackTrace(s : java.io.PrintStream) : Void;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	* @param s The writer where the dump will be sent to.
	*/
	@:overload @:public override public function printStackTrace(s : java.io.PrintWriter) : Void;
	
	
}
