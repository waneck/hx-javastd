package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ConnectorImpl implements com.sun.jdi.connect.Connector
{
	@:overload public function defaultArguments() : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>;
	
	@:overload public function toString() : String;
	
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
	@:overload override public function transport() : com.sun.jdi.connect.Transport;
	
	
}
@:native('com$sun$tools$jdi$ConnectorImpl$ArgumentImpl') @:internal extern class ConnectorImpl_ArgumentImpl implements com.sun.jdi.connect.Connector.Connector_Argument implements java.lang.Cloneable implements java.io.Serializable
{
	@:overload @:abstract public function isValid(value : String) : Bool;
	
	@:overload public function name() : String;
	
	@:overload public function label() : String;
	
	@:overload public function description() : String;
	
	@:overload public function value() : String;
	
	@:overload public function setValue(value : String) : Void;
	
	@:overload public function mustSpecify() : Bool;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function clone() : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$ConnectorImpl$BooleanArgumentImpl') @:internal extern class ConnectorImpl_BooleanArgumentImpl extends ConnectorImpl_ArgumentImpl implements com.sun.jdi.connect.Connector.Connector_BooleanArgument
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
	@:overload override public function isValid(value : String) : Bool;
	
	/**
	* Return the string representation of the <code>value</code>
	* parameter.
	* Does not set or examine the value or the argument.
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
@:native('com$sun$tools$jdi$ConnectorImpl$IntegerArgumentImpl') @:internal extern class ConnectorImpl_IntegerArgumentImpl extends ConnectorImpl_ArgumentImpl implements com.sun.jdi.connect.Connector.Connector_IntegerArgument
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
	@:overload override public function isValid(value : String) : Bool;
	
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> if
	* <code>{@link #min()} &lt;= value  &lt;= {@link #max()}</code>
	*/
	@:overload public function isValid(value : Int) : Bool;
	
	/**
	* Return the string representation of the <code>value</code>
	* parameter.
	* Does not set or examine the value or the argument.
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
@:native('com$sun$tools$jdi$ConnectorImpl$StringArgumentImpl') @:internal extern class ConnectorImpl_StringArgumentImpl extends ConnectorImpl_ArgumentImpl implements com.sun.jdi.connect.Connector.Connector_StringArgument
{
	/**
	* Performs basic sanity check of argument.
	* @return <code>true</code> always
	*/
	@:overload override public function isValid(value : String) : Bool;
	
	
}
@:native('com$sun$tools$jdi$ConnectorImpl$SelectedArgumentImpl') @:internal extern class ConnectorImpl_SelectedArgumentImpl extends ConnectorImpl_ArgumentImpl implements com.sun.jdi.connect.Connector.Connector_SelectedArgument
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
	@:overload override public function isValid(value : String) : Bool;
	
	
}
