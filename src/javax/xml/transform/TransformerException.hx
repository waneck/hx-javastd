package javax.xml.transform;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TransformerException extends java.lang.Exception
{
	/**
	* Method getLocator retrieves an instance of a SourceLocator
	* object that specifies where an error occured.
	*
	* @return A SourceLocator object, or null if none was specified.
	*/
	@:overload public function getLocator() : javax.xml.transform.SourceLocator;
	
	/**
	* Method setLocator sets an instance of a SourceLocator
	* object that specifies where an error occured.
	*
	* @param location A SourceLocator object, or null to clear the location.
	*/
	@:overload public function setLocator(location : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* This method retrieves an exception that this exception wraps.
	*
	* @return An Throwable object, or null.
	* @see #getCause
	*/
	@:overload public function getException() : java.lang.Throwable;
	
	/**
	* Returns the cause of this throwable or <code>null</code> if the
	* cause is nonexistent or unknown.  (The cause is the throwable that
	* caused this throwable to get thrown.)
	*/
	@:overload override public function getCause() : java.lang.Throwable;
	
	/**
	* Initializes the <i>cause</i> of this throwable to the specified value.
	* (The cause is the throwable that caused this throwable to get thrown.)
	*
	* <p>This method can be called at most once.  It is generally called from
	* within the constructor, or immediately after creating the
	* throwable.  If this throwable was created
	* with {@link #TransformerException(Throwable)} or
	* {@link #TransformerException(String,Throwable)}, this method cannot be called
	* even once.
	*
	* @param  cause the cause (which is saved for later retrieval by the
	*         {@link #getCause()} method).  (A <code>null</code> value is
	*         permitted, and indicates that the cause is nonexistent or
	*         unknown.)
	* @return  a reference to this <code>Throwable</code> instance.
	* @throws IllegalArgumentException if <code>cause</code> is this
	*         throwable.  (A throwable cannot
	*         be its own cause.)
	* @throws IllegalStateException if this throwable was
	*         created with {@link #TransformerException(Throwable)} or
	*         {@link #TransformerException(String,Throwable)}, or this method has already
	*         been called on this throwable.
	*/
	@:overload @:synchronized public function initCause(cause : java.lang.Throwable) : java.lang.Throwable;
	
	/**
	* Create a new TransformerException.
	*
	* @param message The error or warning message.
	*/
	@:overload public function new(message : String) : Void;
	
	/**
	* Create a new TransformerException wrapping an existing exception.
	*
	* @param e The exception to be wrapped.
	*/
	@:overload public function new(e : java.lang.Throwable) : Void;
	
	/**
	* Wrap an existing exception in a TransformerException.
	*
	* <p>This is used for throwing processor exceptions before
	* the processing has started.</p>
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param e Any exception
	*/
	@:overload public function new(message : String, e : java.lang.Throwable) : Void;
	
	/**
	* Create a new TransformerException from a message and a Locator.
	*
	* <p>This constructor is especially useful when an application is
	* creating its own exception from within a DocumentHandler
	* callback.</p>
	*
	* @param message The error or warning message.
	* @param locator The locator object for the error or warning.
	*/
	@:overload public function new(message : String, locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Wrap an existing exception in a TransformerException.
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param locator The locator object for the error or warning.
	* @param e Any exception
	*/
	@:overload public function new(message : String, locator : javax.xml.transform.SourceLocator, e : java.lang.Throwable) : Void;
	
	/**
	* Get the error message with location information
	* appended.
	*
	* @return A <code>String</code> representing the error message with
	*         location information appended.
	*/
	@:overload public function getMessageAndLocation() : String;
	
	/**
	* Get the location information as a string.
	*
	* @return A string with location info, or null
	* if there is no location information.
	*/
	@:overload public function getLocationAsString() : String;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	*/
	@:overload override public function printStackTrace() : Void;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	* @param s The stream where the dump will be sent to.
	*/
	@:overload override public function printStackTrace(s : java.io.PrintStream) : Void;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	* @param s The writer where the dump will be sent to.
	*/
	@:overload override public function printStackTrace(s : java.io.PrintWriter) : Void;
	
	
}
