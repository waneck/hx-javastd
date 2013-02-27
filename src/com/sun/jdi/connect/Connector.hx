package com.sun.jdi.connect;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Connector
{
	/**
	* Returns a short identifier for the connector. Connector implementors
	* should follow similar naming conventions as are used with packages
	* to avoid name collisions. For example, the Sun connector
	* implementations have names prefixed with "com.sun.jdi.".
	* Not intended for exposure to end-user.
	*
	* @return the name of this connector.
	*/
	@:overload public function name() : String;
	
	/**
	* Returns a human-readable description of this connector
	* and its purpose.
	*
	* @return the description of this connector
	*/
	@:overload public function description() : String;
	
	/**
	* Returns the transport mechanism used by this connector to establish
	* connections with a target VM.
	*
	* @return the {@link Transport} used by this connector.
	*/
	@:overload public function transport() : com.sun.jdi.connect.Transport;
	
	/**
	* Returns the arguments accepted by this Connector and their
	* default values. The keys of the returned map are string argument
	* names. The values are {@link Connector.Argument} containing
	* information about the argument and its default value.
	*
	* @return the map associating argument names with argument
	* information and default value.
	*/
	@:overload public function defaultArguments() : java.util.Map<String, Connector_Argument>;
	
	
}
/**
* Specification for and value of a Connector argument.
* Will always implement a subinterface of Argument:
* {@link Connector.StringArgument}, {@link Connector.BooleanArgument},
* {@link Connector.IntegerArgument},
* or {@link Connector.SelectedArgument}.
*/
@:native('com$sun$jdi$connect$Connector$Argument') extern interface Connector_Argument extends java.io.Serializable
{
	/**
	* Returns a short, unique identifier for the argument.
	* Not intended for exposure to end-user.
	*
	* @return the name of this argument.
	*/
	@:overload public function name() : String;
	
	/**
	* Returns a short human-readable label for this argument.
	*
	* @return a label for this argument
	*/
	@:overload public function label() : String;
	
	/**
	* Returns a human-readable description of this argument
	* and its purpose.
	*
	* @return the description of this argument
	*/
	@:overload public function description() : String;
	
	/**
	* Returns the current value of the argument. Initially, the
	* default value is returned. If the value is currently unspecified,
	* null is returned.
	*
	* @return the current value of the argument.
	*/
	@:overload public function value() : String;
	
	/**
	* Sets the value of the argument.
	* The value should be checked with {@link #isValid(String)}
	* before setting it; invalid values will throw an exception
	* when the connection is established - for example,
	* on {@link LaunchingConnector#launch}
	*/
	@:overload public function setValue(value : String) : Void;
	
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> if the value is valid to be
	* used in {@link #setValue(String)}
	*/
	@:overload public function isValid(value : String) : Bool;
	
	/**
	* Indicates whether the argument must be specified. If true,
	* {@link #setValue} must be used to set a non-null value before
	* using this argument in establishing a connection.
	*
	* @return <code>true</code> if the argument must be specified;
	* <code>false</code> otherwise.
	*/
	@:overload public function mustSpecify() : Bool;
	
	
}
/**
* Specification for and value of a Connector argument,
* whose value is Boolean.  Boolean values are represented
* by the localized versions of the strings "true" and "false".
*/
@:native('com$sun$jdi$connect$Connector$BooleanArgument') extern interface Connector_BooleanArgument extends Connector_Argument
{
	/**
	* Sets the value of the argument.
	*/
	@:overload public function setValue(value : Bool) : Void;
	
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> if value is a string
	* representation of a boolean value.
	* @see #stringValueOf(boolean)
	*/
	@:overload public function isValid(value : String) : Bool;
	
	/**
	* Return the string representation of the <code>value</code>
	* parameter.
	* Does not set or examine the current value of <code>this</code>
	* instance.
	* @return the localized String representation of the
	* boolean value.
	*/
	@:overload public function stringValueOf(value : Bool) : String;
	
	/**
	* Return the value of the argument as a boolean.  Since
	* the argument may not have been set or may have an invalid
	* value {@link #isValid(String)} should be called on
	* {@link #value()} to check its validity.  If it is invalid
	* the boolean returned by this method is undefined.
	* @return the value of the argument as a boolean.
	*/
	@:overload public function booleanValue() : Bool;
	
	
}
/**
* Specification for and value of a Connector argument,
* whose value is an integer.  Integer values are represented
* by their corresponding strings.
*/
@:native('com$sun$jdi$connect$Connector$IntegerArgument') extern interface Connector_IntegerArgument extends Connector_Argument
{
	/**
	* Sets the value of the argument.
	* The value should be checked with {@link #isValid(int)}
	* before setting it; invalid values will throw an exception
	* when the connection is established - for example,
	* on {@link LaunchingConnector#launch}
	*/
	@:overload public function setValue(value : Int) : Void;
	
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> if value represents an int that is
	* <code>{@link #min()} &lt;= value &lt;= {@link #max()}</code>
	*/
	@:overload public function isValid(value : String) : Bool;
	
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> if
	* <code>{@link #min()} &lt;= value  &lt;= {@link #max()}</code>
	*/
	@:overload public function isValid(value : Int) : Bool;
	
	/**
	* Return the string representation of the <code>value</code>
	* parameter.
	* Does not set or examine the current value of <code>this</code>
	* instance.
	* @return the String representation of the
	* int value.
	*/
	@:overload public function stringValueOf(value : Int) : String;
	
	/**
	* Return the value of the argument as a int.  Since
	* the argument may not have been set or may have an invalid
	* value {@link #isValid(String)} should be called on
	* {@link #value()} to check its validity.  If it is invalid
	* the int returned by this method is undefined.
	* @return the value of the argument as a int.
	*/
	@:overload public function intValue() : Int;
	
	/**
	* The upper bound for the value.
	* @return the maximum allowed value for this argument.
	*/
	@:overload public function max() : Int;
	
	/**
	* The lower bound for the value.
	* @return the minimum allowed value for this argument.
	*/
	@:overload public function min() : Int;
	
	
}
/**
* Specification for and value of a Connector argument,
* whose value is a String.
*/
@:native('com$sun$jdi$connect$Connector$StringArgument') extern interface Connector_StringArgument extends Connector_Argument
{
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> always
	*/
	@:overload public function isValid(value : String) : Bool;
	
	
}
/**
* Specification for and value of a Connector argument,
* whose value is a String selected from a list of choices.
*/
@:native('com$sun$jdi$connect$Connector$SelectedArgument') extern interface Connector_SelectedArgument extends Connector_Argument
{
	/**
	* Return the possible values for the argument
	* @return {@link List} of {@link String}
	*/
	@:overload public function choices() : java.util.List<String>;
	
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> if value is one of {@link #choices()}.
	*/
	@:overload public function isValid(value : String) : Bool;
	
	
}
