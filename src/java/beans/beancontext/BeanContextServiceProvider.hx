package java.beans.beancontext;
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
extern interface BeanContextServiceProvider
{
	/**
	* Invoked by <code>BeanContextServices</code>, this method
	* requests an instance of a
	* service from this <code>BeanContextServiceProvider</code>.
	*
	* @param bcs The <code>BeanContextServices</code> associated with this
	* particular request. This parameter enables the
	* <code>BeanContextServiceProvider</code> to distinguish service
	* requests from multiple sources.
	*
	* @param requestor          The object requesting the service
	*
	* @param serviceClass       The service requested
	*
	* @param serviceSelector the service dependent parameter
	* for a particular service, or <code>null</code> if not applicable.
	*
	* @return a reference to the requested service
	*/
	@:overload public function getService(bcs : java.beans.beancontext.BeanContextServices, requestor : Dynamic, serviceClass : Class<Dynamic>, serviceSelector : Dynamic) : Dynamic;
	
	/**
	* Invoked by <code>BeanContextServices</code>,
	* this method releases a nested <code>BeanContextChild</code>'s
	* (or any arbitrary object associated with a
	* <code>BeanContextChild</code>) reference to the specified service.
	*
	* @param bcs the <code>BeanContextServices</code> associated with this
	* particular release request
	*
	* @param requestor the object requesting the service to be released
	*
	* @param service the service that is to be released
	*/
	@:overload public function releaseService(bcs : java.beans.beancontext.BeanContextServices, requestor : Dynamic, service : Dynamic) : Void;
	
	/**
	* Invoked by <code>BeanContextServices</code>, this method
	* gets the current service selectors for the specified service.
	* A service selector is a service specific parameter,
	* typical examples of which could include: a
	* parameter to a constructor for the service implementation class,
	* a value for a particular service's property, or a key into a
	* map of existing implementations.
	*
	* @param bcs           the <code>BeanContextServices</code> for this request
	* @param serviceClass  the specified service
	* @return   the current service selectors for the specified serviceClass
	*/
	@:overload public function getCurrentServiceSelectors(bcs : java.beans.beancontext.BeanContextServices, serviceClass : Class<Dynamic>) : java.util.Iterator<Dynamic>;
	
	
}
