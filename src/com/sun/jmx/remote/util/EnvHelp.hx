package com.sun.jmx.remote.util;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class EnvHelp
{
	/**
	* Get the Connector Server default class loader.
	* <p>
	* Returns:
	* <p>
	* <ul>
	* <li>
	*     The ClassLoader object found in <var>env</var> for
	*     <code>jmx.remote.default.class.loader</code>, if any.
	* </li>
	* <li>
	*     The ClassLoader pointed to by the ObjectName found in
	*     <var>env</var> for <code>jmx.remote.default.class.loader.name</code>,
	*     and registered in <var>mbs</var> if any.
	* </li>
	* <li>
	*     The current thread's context classloader otherwise.
	* </li>
	* </ul>
	*
	* @param env Environment attributes.
	* @param mbs The MBeanServer for which the connector server provides
	* remote access.
	*
	* @return the connector server's default class loader.
	*
	* @exception IllegalArgumentException if one of the following is true:
	* <ul>
	* <li>both
	*     <code>jmx.remote.default.class.loader</code> and
	*     <code>jmx.remote.default.class.loader.name</code> are specified,
	* </li>
	* <li>or
	*     <code>jmx.remote.default.class.loader</code> is not
	*     an instance of {@link ClassLoader},
	* </li>
	* <li>or
	*     <code>jmx.remote.default.class.loader.name</code> is not
	*     an instance of {@link ObjectName},
	* </li>
	* <li>or
	*     <code>jmx.remote.default.class.loader.name</code> is specified
	*     but <var>mbs</var> is null.
	* </li>
	* @exception InstanceNotFoundException if
	* <code>jmx.remote.default.class.loader.name</code> is specified
	* and the ClassLoader MBean is not found in <var>mbs</var>.
	*/
	@:overload public static function resolveServerClassLoader(env : java.util.Map<String, Dynamic>, mbs : javax.management.MBeanServer) : java.lang.ClassLoader;
	
	/**
	* Get the Connector Client default class loader.
	* <p>
	* Returns:
	* <p>
	* <ul>
	* <li>
	*     The ClassLoader object found in <var>env</var> for
	*     <code>jmx.remote.default.class.loader</code>, if any.
	* </li>
	* <li>The <tt>Thread.currentThread().getContextClassLoader()</tt>
	*     otherwise.
	* </li>
	* </ul>
	* <p>
	* Usually a Connector Client will call
	* <pre>
	* ClassLoader dcl = EnvHelp.resolveClientClassLoader(env);
	* </pre>
	* in its <code>connect(Map env)</code> method.
	*
	* @return The connector client default class loader.
	*
	* @exception IllegalArgumentException if
	* <code>jmx.remote.default.class.loader</code> is specified
	* and is not an instance of {@link ClassLoader}.
	*/
	@:overload public static function resolveClientClassLoader(env : java.util.Map<String, Dynamic>) : java.lang.ClassLoader;
	
	/**
	* Initialize the cause field of a {@code Throwable} object.
	*
	* @param throwable The {@code Throwable} on which the cause is set.
	* @param cause The cause to set on the supplied {@code Throwable}.
	* @return the {@code Throwable} with the cause field initialized.
	*/
	@:overload public static function initCause<T : java.lang.Throwable>(throwable : T, cause : java.lang.Throwable) : T;
	
	/**
	* Returns the cause field of a {@code Throwable} object.
	* The cause field can be got only if <var>t</var> has an
	* {@link Throwable#getCause()} method (JDK Version >= 1.4)
	* @param t {@code Throwable} on which the cause must be set.
	* @return the cause if getCause() succeeded and the got value is not
	* null, otherwise return the <var>t</var>.
	*/
	@:overload public static function getCause(t : java.lang.Throwable) : java.lang.Throwable;
	
	/**
	* <p>Name of the attribute that specifies the size of a notification
	* buffer for a connector server. The default value is 1000.
	*/
	public static var BUFFER_SIZE_PROPERTY(default, null) : String;
	
	/**
	* Returns the size of a notification buffer for a connector server.
	* The default value is 1000.
	*/
	@:overload public static function getNotifBufferSize(env : java.util.Map<String, Dynamic>) : Int;
	
	/**
	* <p>Name of the attribute that specifies the maximum number of
	* notifications that a client will fetch from its server.. The
	* value associated with this attribute should be an
	* <code>Integer</code> object.  The default value is 1000.</p>
	*/
	public static var MAX_FETCH_NOTIFS(default, null) : String;
	
	/**
	* Returns the maximum notification number which a client will
	* fetch every time.
	*/
	@:overload public static function getMaxFetchNotifNumber(env : java.util.Map<String, Dynamic>) : Int;
	
	/**
	* <p>Name of the attribute that specifies the timeout for a
	* client to fetch notifications from its server. The value
	* associated with this attribute should be a <code>Long</code>
	* object.  The default value is 60000 milliseconds.</p>
	*/
	public static var FETCH_TIMEOUT(default, null) : String;
	
	/**
	* Returns the timeout for a client to fetch notifications.
	*/
	@:overload public static function getFetchTimeout(env : java.util.Map<String, Dynamic>) : haxe.Int64;
	
	/**
	* <p>Name of the attribute that specifies an object that will check
	* accesses to add/removeNotificationListener and also attempts to
	* receive notifications.  The value associated with this attribute
	* should be a <code>NotificationAccessController</code> object.
	* The default value is null.</p>
	* This field is not public because of its com.sun dependency.
	*/
	public static var NOTIF_ACCESS_CONTROLLER(default, null) : String;
	
	@:overload public static function getNotificationAccessController(env : java.util.Map<String, Dynamic>) : com.sun.jmx.remote.security.NotificationAccessController;
	
	/**
	* Get an integer-valued attribute with name <code>name</code>
	* from <code>env</code>.  If <code>env</code> is null, or does
	* not contain an entry for <code>name</code>, return
	* <code>defaultValue</code>.  The value may be a Number, or it
	* may be a String that is parsable as a long.  It must be at
	* least <code>minValue</code> and at most<code>maxValue</code>.
	*
	* @throws IllegalArgumentException if <code>env</code> contains
	* an entry for <code>name</code> but it does not meet the
	* constraints above.
	*/
	@:overload public static function getIntegerAttribute(env : java.util.Map<String, Dynamic>, name : String, defaultValue : haxe.Int64, minValue : haxe.Int64, maxValue : haxe.Int64) : haxe.Int64;
	
	public static var DEFAULT_ORB(default, null) : String;
	
	/* Check that all attributes have a key that is a String.
	Could make further checks, e.g. appropriate types for attributes.  */
	@:overload public static function checkAttributes(attributes : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/* Return a writable map containing only those attributes that are
	serializable, and that are not hidden by
	jmx.remote.x.hidden.attributes or the default list of hidden
	attributes.  */
	@:overload public static function filterAttributes<V>(attributes : java.util.Map<String, V>) : java.util.Map<String, V>;
	
	/**
	* The value of this attribute, if present, is a string specifying
	* what other attributes should not appear in
	* JMXConnectorServer.getAttributes().  It is a space-separated
	* list of attribute patterns, where each pattern is either an
	* attribute name, or an attribute prefix followed by a "*"
	* character.  The "*" has no special significance anywhere except
	* at the end of a pattern.  By default, this list is added to the
	* list defined by {@link #DEFAULT_HIDDEN_ATTRIBUTES} (which
	* uses the same format).  If the value of this attribute begins
	* with an "=", then the remainder of the string defines the
	* complete list of attribute patterns.
	*/
	public static var HIDDEN_ATTRIBUTES(default, null) : String;
	
	/* This list is copied directly from the spec, plus
	java.naming.security.*.  Most of the attributes here would have
	been eliminated from the map anyway because they are typically
	not serializable.  But just in case they are, we list them here
	to conform to the spec.  */
	public static var DEFAULT_HIDDEN_ATTRIBUTES(default, null) : String;
	
	/**
	* <p>Name of the attribute that specifies the timeout to keep a
	* server side connection after answering last client request.
	* The default value is 120000 milliseconds.</p>
	*/
	public static var SERVER_CONNECTION_TIMEOUT(default, null) : String;
	
	/**
	* Returns the server side connection timeout.
	*/
	@:overload public static function getServerConnectionTimeout(env : java.util.Map<String, Dynamic>) : haxe.Int64;
	
	/**
	* <p>Name of the attribute that specifies the period in
	* millisecond for a client to check its connection.  The default
	* value is 60000 milliseconds.</p>
	*/
	public static var CLIENT_CONNECTION_CHECK_PERIOD(default, null) : String;
	
	/**
	* Returns the client connection check period.
	*/
	@:overload public static function getConnectionCheckPeriod(env : java.util.Map<String, Dynamic>) : haxe.Int64;
	
	/**
	* Computes a boolean value from a string value retrieved from a
	* property in the given map.
	*
	* @param stringBoolean the string value that must be converted
	* into a boolean value.
	*
	* @return
	*   <ul>
	*   <li>{@code false} if {@code stringBoolean} is {@code null}</li>
	*   <li>{@code false} if
	*       {@code stringBoolean.equalsIgnoreCase("false")}
	*       is {@code true}</li>
	*   <li>{@code true} if
	*       {@code stringBoolean.equalsIgnoreCase("true")}
	*       is {@code true}</li>
	*   </ul>
	*
	* @throws IllegalArgumentException if
	* {@code ((String)env.get(prop)).equalsIgnoreCase("false")} and
	* {@code ((String)env.get(prop)).equalsIgnoreCase("true")} are
	* {@code false}.
	*/
	@:overload public static function computeBooleanFromString(stringBoolean : String) : Bool;
	
	/**
	* Computes a boolean value from a string value retrieved from a
	* property in the given map.
	*
	* @param stringBoolean the string value that must be converted
	* into a boolean value.
	* @param defaultValue a default value to return in case no property
	*        was defined.
	*
	* @return
	*   <ul>
	*   <li>{@code defaultValue} if {@code stringBoolean}
	*   is {@code null}</li>
	*   <li>{@code false} if
	*       {@code stringBoolean.equalsIgnoreCase("false")}
	*       is {@code true}</li>
	*   <li>{@code true} if
	*       {@code stringBoolean.equalsIgnoreCase("true")}
	*       is {@code true}</li>
	*   </ul>
	*
	* @throws IllegalArgumentException if
	* {@code ((String)env.get(prop)).equalsIgnoreCase("false")} and
	* {@code ((String)env.get(prop)).equalsIgnoreCase("true")} are
	* {@code false}.
	*/
	@:overload public static function computeBooleanFromString(stringBoolean : String, defaultValue : Bool) : Bool;
	
	/**
	* Converts a map into a valid hash table, i.e.
	* it removes all the 'null' values from the map.
	*/
	@:overload public static function mapToHashtable<K, V>(map : java.util.Map<K, V>) : java.util.Hashtable<K, V>;
	
	/**
	* <p>Name of the attribute that specifies whether a connector server
	* should not prevent the VM from exiting
	*/
	public static var JMX_SERVER_DAEMON(default, null) : String;
	
	/**
	* Returns true if {@value SERVER_DAEMON} is specified in the {@code env}
	* as a key and its value is a String and it is equal to true ignoring case.
	*
	* @param env
	* @return
	*/
	@:overload public static function isServerDaemon(env : java.util.Map<String, Dynamic>) : Bool;
	
	
}
@:native('com$sun$jmx$remote$util$EnvHelp$SinkOutputStream') @:internal extern class EnvHelp_SinkOutputStream extends java.io.OutputStream
{
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function write(b : Int) : Void;
	
	
}
