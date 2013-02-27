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
extern class JConsolePlugin
{
	/**
	* Constructor.
	*/
	@:overload private function new() : Void;
	
	/**
	* Sets the {@link JConsoleContext JConsoleContext} object representing
	* the connection to an application.  This method will be called
	* only once after the plugin is created and before the {@link #getTabs}
	* is called. The given {@code context} can be in any
	* {@link JConsoleContext#getConnectionState connection state} when
	* this method is called.
	*
	* @param context a {@code JConsoleContext} object
	*/
	@:overload @:final @:synchronized public function setContext(context : com.sun.tools.jconsole.JConsoleContext) : Void;
	
	/**
	* Returns the {@link JConsoleContext JConsoleContext} object representing
	* the connection to an application.  This method may return <tt>null</tt>
	* if it is called before the {@link #setContext context} is initialized.
	*
	* @return the {@link JConsoleContext JConsoleContext} object representing
	*         the connection to an application.
	*/
	@:overload @:final public function getContext() : com.sun.tools.jconsole.JConsoleContext;
	
	/**
	* Returns the tabs to be added in JConsole window.
	* <p>
	* The returned map contains one entry for each tab
	* to be added in the tabbed pane in a JConsole window with
	* the tab name as the key
	* and the {@link JPanel} object as the value.
	* This method returns an empty map if no tab is added by this plugin.
	* This method will be called from the <i>Event Dispatch Thread</i>
	* once at the new connection time.
	*
	* @return a map of a tab name and a {@link JPanel} object
	*         representing the tabs to be added in the JConsole window;
	*         or an empty map.
	*/
	@:overload @:abstract public function getTabs() : java.util.Map<String, javax.swing.JPanel>;
	
	/**
	* Returns a {@link SwingWorker} to perform
	* the GUI update for this plugin at the same interval
	* as JConsole updates the GUI.
	* <p>
	* JConsole schedules the GUI update at an interval specified
	* for a connection.  This method will be called at every
	* update to obtain a {@code SwingWorker} for each plugin.
	* <p>
	* JConsole will invoke the {@link SwingWorker#execute execute()}
	* method to schedule the returned {@code SwingWorker} for execution
	* if:
	* <ul>
	*   <li> the <tt>SwingWorker</tt> object has not been executed
	*        (i.e. the {@link SwingWorker#getState} method
	*        returns {@link javax.swing.SwingWorker.StateValue#PENDING PENDING}
	*        state); and</li>
	*   <li> the <tt>SwingWorker</tt> object returned in the previous
	*        update has completed the task if it was not <tt>null</tt>
	*        (i.e. the {@link SwingWorker#isDone SwingWorker.isDone} method
	*        returns <tt>true</tt>).</li>
	* </ul>
	* <br>
	* Otherwise, <tt>SwingWorker</tt> object will not be scheduled to work.
	*
	* <p>
	* A plugin can schedule its own GUI update and this method
	* will return <tt>null</tt>.
	*
	* @return a <tt>SwingWorker</tt> to perform the GUI update; or
	*         <tt>null</tt>.
	*/
	@:overload @:abstract public function newSwingWorker() : javax.swing.SwingWorker<Dynamic, Dynamic>;
	
	/**
	* Dispose this plugin. This method is called by JConsole to inform
	* that this plugin will be discarded and that it should free
	* any resources that it has allocated.
	* The {@link #getContext JConsoleContext} can be in any
	* {@link JConsoleContext#getConnectionState connection state} when
	* this method is called.
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Adds a {@link PropertyChangeListener PropertyChangeListener}
	* to the {@link #getContext JConsoleContext} object for this plugin.
	* This method is a convenient method for this plugin to register
	* a listener when the {@code JConsoleContext} object may or
	* may not be available.
	*
	* <p>For example, a plugin constructor can
	* call this method to register a listener to listen to the
	* {@link JConsoleContext.ConnectionState connectionState}
	* property changes and the listener will be added to the
	* {@link JConsoleContext#addPropertyChangeListener JConsoleContext}
	* object when it is available.
	*
	* @param listener  The {@code PropertyChangeListener} to be added
	*
	* @throws NullPointerException if {@code listener} is {@code null}.
	*/
	@:overload @:final public function addContextPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a {@link PropertyChangeListener PropertyChangeListener}
	* from the listener list of the {@link #getContext JConsoleContext}
	* object for this plugin.
	* If {@code listener} was never added, no exception is
	* thrown and no action is taken.
	*
	* @param listener the {@code PropertyChangeListener} to be removed
	*
	* @throws NullPointerException if {@code listener} is {@code null}.
	*/
	@:overload @:final public function removeContextPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	
}
