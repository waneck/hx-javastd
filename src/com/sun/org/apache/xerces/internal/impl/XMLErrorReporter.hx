package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2004 The Apache Software Foundation.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XMLErrorReporter implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
{
	/**
	* Severity: warning. Warnings represent informational messages only
	* that should not be considered serious enough to stop parsing or
	* indicate an error in the document's validity.
	*/
	@:public @:static @:final public static var SEVERITY_WARNING(default, null) : java.StdTypes.Int16;
	
	/**
	* Severity: error. Common causes of errors are document structure and/or
	* content that that does not conform to the grammar rules specified for
	* the document. These are typically validation errors.
	*/
	@:public @:static @:final public static var SEVERITY_ERROR(default, null) : java.StdTypes.Int16;
	
	/**
	* Severity: fatal error. Fatal errors are errors in the syntax of the
	* XML document or invalid byte sequences for a given encoding. The
	* XML 1.0 Specification mandates that errors of this type are not
	* recoverable.
	* <p>
	* <strong>Note:</strong> The parser does have a "continue after fatal
	* error" feature but it should be used with extreme caution and care.
	*/
	@:public @:static @:final public static var SEVERITY_FATAL_ERROR(default, null) : java.StdTypes.Int16;
	
	/** Feature identifier: continue after fatal error. */
	@:protected @:static @:final private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/** Property identifier: error handler. */
	@:protected @:static @:final private static var ERROR_HANDLER(default, null) : String;
	
	/** The locale to be used to format error messages. */
	@:protected private var fLocale : java.util.Locale;
	
	/** Mapping of Message formatters for domains. */
	@:protected private var fMessageFormatters : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Error handler. */
	@:protected private var fErrorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/** Document locator. */
	@:protected private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	/** Continue after fatal error feature. */
	@:protected private var fContinueAfterFatalError : Bool;
	
	/**
	* Default error handler. This error handler is only used in the
	* absence of a registered error handler so that errors are not
	* "swallowed" silently. This is one of the most common "problems"
	* reported by users of the parser.
	*/
	@:protected private var fDefaultErrorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/** Constructs an error reporter with a locator. */
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the current locale.
	*
	* @param locale The new locale.
	*/
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Gets the current locale.
	*
	* @return the current Locale
	*/
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* Sets the document locator.
	*
	* @param locator The locator.
	*/
	@:overload @:public public function setDocumentLocator(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator) : Void;
	
	/**
	* Registers a message formatter for the specified domain.
	* <p>
	* <strong>Note:</strong> Registering a message formatter for a domain
	* when there is already a formatter registered will cause the previous
	* formatter to be lost. This method replaces any previously registered
	* message formatter for the specified domain.
	*
	* @param domain
	* @param messageFormatter
	*/
	@:overload @:public public function putMessageFormatter(domain : String, messageFormatter : com.sun.org.apache.xerces.internal.util.MessageFormatter) : Void;
	
	/**
	* Returns the message formatter associated with the specified domain,
	* or null if no message formatter is registered for that domain.
	*
	* @param domain The domain of the message formatter.
	*/
	@:overload @:public public function getMessageFormatter(domain : String) : com.sun.org.apache.xerces.internal.util.MessageFormatter;
	
	/**
	* Removes the message formatter for the specified domain and
	* returns the removed message formatter.
	*
	* @param domain The domain of the message formatter.
	*/
	@:overload @:public public function removeMessageFormatter(domain : String) : com.sun.org.apache.xerces.internal.util.MessageFormatter;
	
	/**
	* Reports an error. The error message passed to the error handler
	* is formatted for the locale by the message formatter installed
	* for the specified error domain.
	*
	* @param domain    The error domain.
	* @param key       The key of the error message.
	* @param arguments The replacement arguments for the error message,
	*                  if needed.
	* @param severity  The severity of the error.
	* @return          The formatted error message.
	*
	* @see #SEVERITY_WARNING
	* @see #SEVERITY_ERROR
	* @see #SEVERITY_FATAL_ERROR
	*/
	@:overload @:public public function reportError(domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16) : String;
	
	/**
	* Reports an error. The error message passed to the error handler
	* is formatted for the locale by the message formatter installed
	* for the specified error domain.
	*
	* @param domain    The error domain.
	* @param key       The key of the error message.
	* @param arguments The replacement arguments for the error message,
	*                  if needed.
	* @param severity  The severity of the error.
	* @param exception The exception to wrap.
	* @return          The formatted error message.
	*
	* @see #SEVERITY_WARNING
	* @see #SEVERITY_ERROR
	* @see #SEVERITY_FATAL_ERROR
	*/
	@:overload @:public public function reportError(domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16, exception : java.lang.Exception) : String;
	
	/**
	* Reports an error at a specific location.
	*
	* @param location  The error location.
	* @param domain    The error domain.
	* @param key       The key of the error message.
	* @param arguments The replacement arguments for the error message,
	*                  if needed.
	* @param severity  The severity of the error.
	* @return          The formatted error message.
	*
	* @see #SEVERITY_WARNING
	* @see #SEVERITY_ERROR
	* @see #SEVERITY_FATAL_ERROR
	*/
	@:overload @:public public function reportError(location : com.sun.org.apache.xerces.internal.xni.XMLLocator, domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16) : String;
	
	/**
	* Reports an error at a specific location.
	*
	* @param location  The error location.
	* @param domain    The error domain.
	* @param key       The key of the error message.
	* @param arguments The replacement arguments for the error message,
	*                  if needed.
	* @param severity  The severity of the error.
	* @param exception The exception to wrap.
	* @return          The formatted error message.
	*
	* @see #SEVERITY_WARNING
	* @see #SEVERITY_ERROR
	* @see #SEVERITY_FATAL_ERROR
	*/
	@:overload @:public public function reportError(location : com.sun.org.apache.xerces.internal.xni.XMLLocator, domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16, exception : java.lang.Exception) : String;
	
	/**
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on initialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload @:public public function getRecognizedFeatures() : java.NativeArray<String>;
	
	/**
	* Sets the state of a feature. This method is called by the component
	* manager any time after reset when a feature changes state.
	* <p>
	* <strong>Note:</strong> Components should silently ignore features
	* that do not affect the operation of the component.
	*
	* @param featureId The feature identifier.
	* @param state     The state of the feature.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	@:overload @:public public function getFeature(featureId : String) : Bool;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload @:public public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Sets the value of a property. This method is called by the component
	* manager any time after reset when a property changes value.
	* <p>
	* <strong>Note:</strong> Components should silently ignore properties
	* that do not affect the operation of the component.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/**
	* Get the internal XMLErrrorHandler.
	*/
	@:overload @:public public function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/**
	* Gets the internal XMLErrorHandler
	* as SAX ErrorHandler.
	*/
	@:overload @:public public function getSAXErrorHandler() : org.xml.sax.ErrorHandler;
	
	
}
