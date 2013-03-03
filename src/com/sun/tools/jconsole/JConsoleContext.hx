package com.sun.tools.jconsole;
/*
* Copyright (c) 2006, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface JConsoleContext
{
	/**
	* Returns the {@link MBeanServerConnection MBeanServerConnection} for the
	* connection to an application.  The returned
	* {@code MBeanServerConnection} object becomes invalid when
	* the connection state is changed to the
	* {@link ConnectionState#DISCONNECTED DISCONNECTED} state.
	*
	* @return the {@code MBeanServerConnection} for the
	* connection to an application.
	*/
	@:overload @:public public function getMBeanServerConnection() : javax.management.MBeanServerConnection;
	
	/**
	* Returns the current connection state.
	* @return the current connection state.
	*/
	@:overload @:public public function getConnectionState() : com.sun.tools.jconsole.JConsoleContext.JConsoleContext_ConnectionState;
	
	/**
	* Add a {@link java.beans.PropertyChangeListener PropertyChangeListener}
	* to the listener list.
	* The listener is registered for all properties.
	* The same listener object may be added more than once, and will be called
	* as many times as it is added.
	* If {@code listener} is {@code null}, no exception is thrown and
	* no action is taken.
	*
	* @param listener  The {@code PropertyChangeListener} to be added
	*/
	@:overload @:public public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a {@link java.beans.PropertyChangeListener PropertyChangeListener}
	* from the listener list. This
	* removes a {@code PropertyChangeListener} that was registered for all
	* properties. If {@code listener} was added more than once to the same
	* event source, it will be notified one less time after being removed. If
	* {@code listener} is {@code null}, or was never added, no exception is
	* thrown and no action is taken.
	*
	* @param listener the {@code PropertyChangeListener} to be removed
	*/
	@:overload @:public public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	
}
/**
* Values for the {@linkplain #CONNECTION_STATE_PROPERTY
* <i>ConnectionState</i>} bound property.
*/
@:native('com$sun$tools$jconsole$JConsoleContext$ConnectionState') extern enum JConsoleContext_ConnectionState
{
	/**
	* The connection has been successfully established.
	*/
	CONNECTED;
	/**
	* No connection present.
	*/
	DISCONNECTED;
	/**
	* The connection is being attempted.
	*/
	CONNECTING;
	
}

