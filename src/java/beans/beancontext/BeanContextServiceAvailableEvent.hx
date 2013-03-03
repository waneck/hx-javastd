package java.beans.beancontext;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BeanContextServiceAvailableEvent extends java.beans.beancontext.BeanContextEvent
{
	/**
	* Construct a <code>BeanContextAvailableServiceEvent</code>.
	* @param bcs The context in which the service has become available
	* @param sc A <code>Class</code> reference to the newly available service
	*/
	@:overload @:public public function new(bcs : java.beans.beancontext.BeanContextServices, sc : Class<Dynamic>) : Void;
	
	/**
	* Gets the source as a reference of type <code>BeanContextServices</code>.
	* @return The context in which the service has become available
	*/
	@:overload @:public public function getSourceAsBeanContextServices() : java.beans.beancontext.BeanContextServices;
	
	/**
	* Gets the service class that is the subject of this notification.
	* @return A <code>Class</code> reference to the newly available service
	*/
	@:overload @:public public function getServiceClass() : Class<Dynamic>;
	
	/**
	* Gets the list of service dependent selectors.
	* @return the current selectors available from the service
	*/
	@:overload @:public public function getCurrentServiceSelectors() : java.util.Iterator<Dynamic>;
	
	/**
	* A <code>Class</code> reference to the newly available service
	*/
	@:protected private var serviceClass : Class<Dynamic>;
	
	
}
