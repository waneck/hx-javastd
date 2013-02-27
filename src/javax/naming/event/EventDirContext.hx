package javax.naming.event;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface EventDirContext extends javax.naming.event.EventContext extends javax.naming.directory.DirContext
{
	/**
	* Adds a listener for receiving naming events fired
	* when objects identified by the search filter <tt>filter</tt> at
	* the object named by target are modified.
	* <p>
	* The scope, returningObj flag, and returningAttributes flag from
	* the search controls <tt>ctls</tt> are used to control the selection
	* of objects that the listener is interested in,
	* and determines what information is returned in the eventual
	* <tt>NamingEvent</tt> object. Note that the requested
	* information to be returned might not be present in the <tt>NamingEvent</tt>
	* object if they are unavailable or could not be obtained by the
	* service provider or service.
	*
	* @param target The nonnull name of the object resolved relative to this context.
	* @param filter The nonnull string filter (see RFC2254).
	* @param ctls   The possibly null search controls. If null, the default
	*        search controls are used.
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* adding the listener.
	* @see EventContext#removeNamingListener
	* @see javax.naming.directory.DirContext#search(javax.naming.Name, java.lang.String, javax.naming.directory.SearchControls)
	*/
	@:overload public function addNamingListener(target : javax.naming.Name, filter : String, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	/**
	* Adds a listener for receiving naming events fired when
	* objects identified by the search filter <tt>filter</tt> at the
	* object named by the string target name are modified.
	* See the overload that accepts a <tt>Name</tt> for details of
	* how this method behaves.
	*
	* @param target The nonnull string name of the object resolved relative to this context.
	* @param filter The nonnull string filter (see RFC2254).
	* @param ctls   The possibly null search controls. If null, the default
	*        search controls is used.
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* adding the listener.
	* @see EventContext#removeNamingListener
	* @see javax.naming.directory.DirContext#search(java.lang.String, java.lang.String, javax.naming.directory.SearchControls)
	*/
	@:overload public function addNamingListener(target : String, filter : String, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	/**
	* Adds a listener for receiving naming events fired
	* when objects identified by the search filter <tt>filter</tt> and
	* filter arguments at the object named by the target are modified.
	* The scope, returningObj flag, and returningAttributes flag from
	* the search controls <tt>ctls</tt> are used to control the selection
	* of objects that the listener is interested in,
	* and determines what information is returned in the eventual
	* <tt>NamingEvent</tt> object.  Note that the requested
	* information to be returned might not be present in the <tt>NamingEvent</tt>
	* object if they are unavailable or could not be obtained by the
	* service provider or service.
	*
	* @param target The nonnull name of the object resolved relative to this context.
	* @param filter The nonnull string filter (see RFC2254).
	* @param filterArgs The possibly null array of arguments for the filter.
	* @param ctls   The possibly null search controls. If null, the default
	*        search controls are used.
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* adding the listener.
	* @see EventContext#removeNamingListener
	* @see javax.naming.directory.DirContext#search(javax.naming.Name, java.lang.String, java.lang.Object[], javax.naming.directory.SearchControls)
	*/
	@:overload public function addNamingListener(target : javax.naming.Name, filter : String, filterArgs : java.NativeArray<Dynamic>, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	/**
	* Adds a listener for receiving naming events fired when
	* objects identified by the search filter <tt>filter</tt>
	* and filter arguments at the
	* object named by the string target name are modified.
	* See the overload that accepts a <tt>Name</tt> for details of
	* how this method behaves.
	*
	* @param target The nonnull string name of the object resolved relative to this context.
	* @param filter The nonnull string filter (see RFC2254).
	* @param filterArgs The possibly null array of arguments for the filter.
	* @param ctls   The possibly null search controls. If null, the default
	*        search controls is used.
	* @param l  The nonnull listener.
	* @exception NamingException If a problem was encountered while
	* adding the listener.
	* @see EventContext#removeNamingListener
	* @see javax.naming.directory.DirContext#search(java.lang.String, java.lang.String, java.lang.Object[], javax.naming.directory.SearchControls)      */
	@:overload public function addNamingListener(target : String, filter : String, filterArgs : java.NativeArray<Dynamic>, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	
}
