package javax.naming.event;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface EventContext extends javax.naming.Context
{
	/**
	* Adds a listener for receiving naming events fired
	* when the object(s) identified by a target and scope changes.
	*
	* The event source of those events is this context. See the
	* class description for a discussion on event source and target.
	* See the descriptions of the constants <tt>OBJECT_SCOPE</tt>,
	* <tt>ONELEVEL_SCOPE</tt>, and <tt>SUBTREE_SCOPE</tt> to see how
	* <tt>scope</tt> affects the registration.
	*<p>
	* <tt>target</tt> needs to name a context only when <tt>scope</tt> is
	* <tt>ONELEVEL_SCOPE</tt>.
	* <tt>target</tt> may name a non-context if <tt>scope</tt> is either
	* <tt>OBJECT_SCOPE</tt> or <tt>SUBTREE_SCOPE</tt>.  Using
	* <tt>SUBTREE_SCOPE</tt> for a non-context might be useful,
	* for example, if the caller does not know in advance whether <tt>target</tt>
	* is a context and just wants to register interest in the (possibly
	* degenerate subtree) rooted at <tt>target</tt>.
	*<p>
	* When the listener is notified of an event, the listener may
	* in invoked in a thread other than the one in which
	* <tt>addNamingListener()</tt> is executed.
	* Care must be taken when multiple threads are accessing the same
	* <tt>EventContext</tt> concurrently.
	* See the
	* <a href=package-summary.html#THREADING>package description</a>
	* for more information on threading issues.
	*
	* @param target A nonnull name to be resolved relative to this context.
	* @param scope One of <tt>OBJECT_SCOPE</tt>, <tt>ONELEVEL_SCOPE</tt>, or
	* <tt>SUBTREE_SCOPE</tt>.
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* adding the listener.
	* @see #removeNamingListener
	*/
	@:overload public function addNamingListener(target : javax.naming.Name, scope : Int, l : javax.naming.event.NamingListener) : Void;
	
	/**
	* Adds a listener for receiving naming events fired
	* when the object named by the string target name and scope changes.
	*
	* See the overload that accepts a <tt>Name</tt> for details.
	*
	* @param target The nonnull string name of the object resolved relative
	* to this context.
	* @param scope One of <tt>OBJECT_SCOPE</tt>, <tt>ONELEVEL_SCOPE</tt>, or
	* <tt>SUBTREE_SCOPE</tt>.
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* adding the listener.
	* @see #removeNamingListener
	*/
	@:overload public function addNamingListener(target : String, scope : Int, l : javax.naming.event.NamingListener) : Void;
	
	/**
	* Removes a listener from receiving naming events fired
	* by this <tt>EventContext</tt>.
	* The listener may have registered more than once with this
	* <tt>EventContext</tt>, perhaps with different target/scope arguments.
	* After this method is invoked, the listener will no longer
	* receive events with this <tt>EventContext</tt> instance
	* as the event source (except for those events already in the process of
	* being dispatched).
	* If the listener was not, or is no longer, registered with
	* this <tt>EventContext</tt> instance, this method does not do anything.
	*
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* removing the listener.
	* @see #addNamingListener
	*/
	@:overload public function removeNamingListener(l : javax.naming.event.NamingListener) : Void;
	
	/**
	* Determines whether a listener can register interest in a target
	* that does not exist.
	*
	* @return true if the target must exist; false if the target need not exist.
	* @exception NamingException If the context's behavior in this regard cannot
	* be determined.
	*/
	@:overload public function targetMustExist() : Bool;
	
	
}
