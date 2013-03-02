package com.sun.org.apache.xerces.internal.impl.io;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
extern class MalformedByteSequenceException extends java.io.CharConversionException
{
	/**
	* Constructs a MalformedByteSequenceException with the given
	* parameters which may be passed to an error reporter to
	* generate a localized string for this exception.
	*
	* @param formatter The MessageFormatter used for building the
	*                  message text for this exception.
	* @param locale    The Locale for which messages are to be reported.
	* @param domain    The error domain.
	* @param key       The key of the error message.
	* @param arguments The replacement arguments for the error message,
	*                  if needed.
	*/
	@:overload public function new(formatter : com.sun.org.apache.xerces.internal.util.MessageFormatter, locale : java.util.Locale, domain : String, key : String, arguments : java.NativeArray<Dynamic>) : Void;
	
	/**
	* <p>Returns the error domain of the error message.</p>
	*
	* @return the error domain
	*/
	@:overload public function getDomain() : String;
	
	/**
	* <p>Returns the key of the error message.</p>
	*
	* @return the error key of the error message
	*/
	@:overload public function getKey() : String;
	
	/**
	* <p>Returns the replacement arguments for the error
	* message or <code>null</code> if none exist.</p>
	*
	* @return the replacement arguments for the error message
	* or <code>null</code> if none exist
	*/
	@:overload public function getArguments() : java.NativeArray<Dynamic>;
	
	/**
	* <p>Returns the localized message for this exception.</p>
	*
	* @return the localized message for this exception.
	*/
	@:overload public function getMessage() : String;
	
	
}
